#include "standard.h"
#include "standard-equips.h"
#include "general.h"
#include "engine.h"
#include "client.h"
#include "room.h"
#include "carditem.h"

Slash::Slash(Suit suit, int number): BasicCard(suit, number)
{
    setObjectName("slash");
    nature = DamageStruct::Normal;
}

DamageStruct::Nature Slash::getNature() const{
    return nature;
}

void Slash::setNature(DamageStruct::Nature nature){
    this->nature = nature;
}

bool Slash::IsAvailable(){
    if(Self->hasFlag("tianyi_failed") || Self->hasFlag("xianzhen_failed"))
        return false;

    if(Self->hasWeapon("crossbow"))
        return true;
    else
        return ClientInstance->canSlashWithCrossbow();
}

bool Slash::isAvailable() const{
    return IsAvailable();
}

QString Slash::getSubtype() const{
    return "attack_card";
}

void Slash::use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &targets) const{
    BasicCard::use(room, source, targets);

    if(source->hasFlag("drank")){
        LogMessage log;
        log.type = "#UnsetDrank";
        log.from = source;
        room->sendLog(log);

        room->setPlayerFlag(source, "-drank");
    }
}

void Slash::onEffect(const CardEffectStruct &card_effect) const{
    Room *room = card_effect.from->getRoom();

    SlashEffectStruct effect;
    effect.from = card_effect.from;
    effect.nature = nature;
    effect.slash = this;

    effect.to = card_effect.to;
    effect.drank = effect.from->hasFlag("drank");

    room->slashEffect(effect);
}

bool Slash::targetsFeasible(const QList<const ClientPlayer *> &targets) const{   
    return !targets.isEmpty();
}

bool Slash::targetFilter(const QList<const ClientPlayer *> &targets, const ClientPlayer *to_select) const{
    int slash_targets = 1;
    if(Self->hasWeapon("halberd") && Self->isLastHandCard(this)){
        slash_targets = 3;
    }

    bool distance_limit = true;

    if(Self->hasFlag("tianyi_success")){
        distance_limit = false;
        slash_targets ++;
    }

    if(targets.length() >= slash_targets)
        return false;

    if(inherits("WushenSlash")){
        distance_limit = false;
    }

    return Self->canSlash(to_select, distance_limit);
}

Jink::Jink(Suit suit, int number):BasicCard(suit, number){
    setObjectName("jink");

    target_fixed = true;
}

QString Jink::getSubtype() const{
    return "defense_card";
}

bool Jink::isAvailable() const{
    return false;
}

Peach::Peach(Suit suit, int number):BasicCard(suit, number){    
    setObjectName("peach");
    target_fixed = true;
}

QString Peach::getSubtype() const{
    return "recover_card";
}

QString Peach::getEffectPath(bool is_male) const{
    return Card::getEffectPath();
}

void Peach::use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &targets) const{
    room->throwCard(this);

    if(targets.isEmpty())
        room->cardEffect(this, source, source);
    else
        room->cardEffect(this, source, targets.first());
}

void Peach::onEffect(const CardEffectStruct &effect) const{
    Room *room = effect.to->getRoom();

    // do animation
    room->broadcastInvoke("animate", QString("peach:%1:%2")
                          .arg(effect.from->objectName())
                          .arg(effect.to->objectName()));

    // recover hp
    RecoverStruct recover;
    recover.card = this;
    recover.who = effect.from;

    room->recover(effect.to, recover);
}

bool Peach::isAvailable() const{
    return Self->isWounded();
}

Crossbow::Crossbow(Suit suit, int number)
    :Weapon(suit, number, 1)
{
    setObjectName("crossbow");
}

class DoubleSwordSkill: public WeaponSkill{
public:
    DoubleSwordSkill():WeaponSkill("double_sword"){
        events << SlashEffect;
    }

    virtual bool trigger(TriggerEvent, ServerPlayer *player, QVariant &data) const{
        SlashEffectStruct effect = data.value<SlashEffectStruct>();
        Room *room = player->getRoom();

        if(effect.from->getGeneral()->isMale() != effect.to->getGeneral()->isMale()){
            if(effect.from->askForSkillInvoke(objectName())){
                bool draw_card = false;

                if(effect.to->isKongcheng())
                    draw_card = true;
                else{
                    QString prompt = "double-sword-card:" + effect.from->getGeneralName();
                    const Card *card = room->askForCard(effect.to, ".", prompt);
                    if(card){
                        room->throwCard(card);
                    }else
                        draw_card = true;
                }

                if(draw_card)
                    effect.from->drawCards(1);
            }
        }

        return false;
    }
};

DoubleSword::DoubleSword(Suit suit, int number)
    :Weapon(suit, number, 2)
{
    setObjectName("double_sword");
    skill = new DoubleSwordSkill;
}

class QinggangSwordSkill: public WeaponSkill{
public:
    QinggangSwordSkill():WeaponSkill("qinggang_sword"){
        events << SlashEffect;
    }

    virtual bool trigger(TriggerEvent event, ServerPlayer *player, QVariant &data) const{
        SlashEffectStruct effect = data.value<SlashEffectStruct>();
        effect.to->addMark("qinggang");

        return false;
    }
};

QinggangSword::QinggangSword(Suit suit, int number)
    :Weapon(suit, number, 2)
{
    setObjectName("qinggang_sword");

    skill = new QinggangSwordSkill;
}

class BladeSkill : public WeaponSkill{
public:
    BladeSkill():WeaponSkill("blade"){
        events << SlashMissed;
    }

    virtual int getPriority() const{
        return -1;
    }

    virtual bool trigger(TriggerEvent, ServerPlayer *player, QVariant &data) const{
        SlashEffectStruct effect = data.value<SlashEffectStruct>();

        if(effect.to->hasSkill("kongcheng") && effect.to->isKongcheng())
            return false;

        Room *room = player->getRoom();
        const Card *card = room->askForCard(player, "slash", "blade-slash");
        if(card){
            // if player is drank, unset his flag
            if(player->hasFlag("drank"))
                room->setPlayerFlag(player, "-drank");

            room->cardEffect(card, player, effect.to);
        }

        return false;
    }
};

Blade::Blade(Suit suit, int number)
    :Weapon(suit, number, 2)
{
    setObjectName("blade");
    skill = new BladeSkill;
}

class SpearSkill: public ViewAsSkill{
public:
    SpearSkill():ViewAsSkill("spear"){

    }

    virtual bool isEnabledAtPlay() const{
        return Slash::IsAvailable();
    }

    virtual bool isEnabledAtResponse() const{
        return ClientInstance->card_pattern == "slash";
    }

    virtual bool viewFilter(const QList<CardItem *> &selected, const CardItem *to_select) const{
        return selected.length() < 2 && !to_select->isEquipped();
    }

    virtual const Card *viewAs(const QList<CardItem *> &cards) const{
        if(cards.length() != 2)
            return NULL;

        const Card *first = cards.at(0)->getFilteredCard();
        const Card *second = cards.at(1)->getFilteredCard();

        Card::Suit suit = Card::NoSuit;
        if(first->isBlack() && second->isBlack())
            suit = Card::Spade;
        else if(first->isRed() && second->isRed())
            suit = Card::Heart;

        Slash *slash = new Slash(suit, 0);
        slash->setSkillName(objectName());
        slash->addSubcard(first);
        slash->addSubcard(second);

        return slash;
    }
};

Spear::Spear(Suit suit, int number)
    :Weapon(suit, number, 3)
{
    setObjectName("spear");
    attach_skill = true;
}

class AxeViewAsSkill: public ViewAsSkill{
public:
    AxeViewAsSkill():ViewAsSkill("axe"){

    }

    bool isEnabledAtPlay() const{
        return false;
    }

    bool isEnabledAtResponse() const{
        return ClientInstance->card_pattern == "@axe-card";
    }

    virtual bool viewFilter(const QList<CardItem *> &selected, const CardItem *to_select) const{
        if(selected.length() >= 2)
            return false;

        if(to_select->getCard() == Self->getWeapon())
            return false;

        return true;
    }

    virtual const Card *viewAs(const QList<CardItem *> &cards) const{
        if(cards.length() != 2)
            return NULL;

        DummyCard *card = new DummyCard;
        card->setSkillName(objectName());
        card->addSubcards(cards);
        return card;
    }
};

class AxeSkill: public WeaponSkill{
public:
    AxeSkill():WeaponSkill("axe"){
        events << SlashMissed;
    }

    virtual bool trigger(TriggerEvent, ServerPlayer *player, QVariant &data) const{
        SlashEffectStruct effect = data.value<SlashEffectStruct>();

        Room *room = player->getRoom();
        CardStar card = room->askForCard(player, "@axe-card", "axe-card");
        if(card){
            QList<int> card_ids = card->getSubcards();
            foreach(int card_id, card_ids){
                LogMessage log;
                log.type = "$DiscardCard";
                log.from = player;
                log.card_str = QString::number(card_id);

                room->sendLog(log);
            }

            LogMessage log;
            log.type = "#AxeSkill";
            log.from = player;
            log.to << effect.to;
            room->sendLog(log);

            room->slashResult(effect, true);
        }

        return false;
    }
};

Axe::Axe(Suit suit, int number)
    :Weapon(suit, number, 3)
{
    setObjectName("axe");
    skill = new AxeSkill;
    attach_skill = true;
}

Halberd::Halberd(Suit suit, int number)
    :Weapon(suit, number, 4)
{
    setObjectName("halberd");
}

class KylinBowSkill: public WeaponSkill{
public:
    KylinBowSkill():WeaponSkill("kylin_bow"){
        events << SlashHit;
    }

    virtual bool trigger(TriggerEvent , ServerPlayer *player, QVariant &data) const{
        SlashEffectStruct effect = data.value<SlashEffectStruct>();

        QStringList horses;
        if(effect.to->getArmor())
            horses << "armor";
        if(effect.to->getDefensiveHorse())
            horses << "dhorse";
        if(effect.to->getOffensiveHorse())
            horses << "ohorse";

        if(horses.isEmpty())
            return false;

        Room *room = player->getRoom();
        if(!player->askForSkillInvoke(objectName(), data))
            return false;

        QString horse_type;
        if(horses.length() > 1)
            horse_type = room->askForChoice(player, objectName(), horses.join("+"));
        else
            horse_type = horses.first();

        if(horse_type == "dhorse")
            room->throwCard(effect.to->getDefensiveHorse());
        else if(horse_type == "ohorse")
            room->throwCard(effect.to->getOffensiveHorse());
        else if(horse_type == "armor")
            room->throwCard(effect.to->getArmor());

        return false;
    }
};

KylinBow::KylinBow(Suit suit, int number)
    :Weapon(suit, number, 5)
{
    setObjectName("kylin_bow");
    skill = new KylinBowSkill;
}

class EightDiagramSkill: public ArmorSkill{
public:
    EightDiagramSkill():ArmorSkill("eight_diagram"){
        events << CardAsked;
    }

    virtual int getPriority() const{
        return 2;
    }

    virtual bool trigger(TriggerEvent, ServerPlayer *player, QVariant &data) const{
        QString asked = data.toString();
        if(asked == "jink"){
            Room *room = player->getRoom();
            if(room->askForSkillInvoke(player, objectName())){
                JudgeStruct judge;
                judge.pattern = QRegExp("(.*):(heart|diamond):(.*)");
                judge.good = true;
                judge.reason = objectName();
                judge.who = player;

                room->judge(judge);
                if(judge.isGood()){
                    Jink *jink = new Jink(Card::NoSuit, 0);
                    jink->setSkillName(objectName());
                    room->provide(jink);
                    room->setEmotion(player, "good");

                    return true;
                }else
                    room->setEmotion(player, "bad");
            }
        }
        return false;
    }
};

EightDiagram::EightDiagram(Suit suit, int number)
    :Armor(suit, number){
    setObjectName("eight_diagram");
    skill = new EightDiagramSkill;
}

AmazingGrace::AmazingGrace(Suit suit, int number)
    :GlobalEffect(suit, number)
{
    setObjectName("amazing_grace");
}

void AmazingGrace::use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &) const{
    room->throwCard(this);

    QList<ServerPlayer *> players = room->getAllPlayers();
    QList<int> card_ids = room->getNCards(players.length());
    room->fillAG(card_ids);

    QVariantList ag_list;
    foreach(int card_id, card_ids)
        ag_list << card_id;
    room->setTag("AmazingGrace", ag_list);

    GlobalEffect::use(room, source, players);

    ag_list = room->getTag("AmazingGrace").toList();

    // throw the rest cards
    foreach(QVariant card_id, ag_list){
        room->takeAG(NULL, card_id.toInt());
    }

    room->broadcastInvoke("clearAG");
}

void AmazingGrace::onEffect(const CardEffectStruct &effect) const{
    Room *room = effect.from->getRoom();
    QVariantList ag_list = room->getTag("AmazingGrace").toList();
    QList<int> card_ids;
    foreach(QVariant card_id, ag_list)
        card_ids << card_id.toInt();

    int card_id = room->askForAG(effect.to, card_ids, false, objectName());
    card_ids.removeOne(card_id);

    room->takeAG(effect.to, card_id);
    ag_list.removeOne(card_id);

    room->setTag("AmazingGrace", ag_list);
}

GodSalvation::GodSalvation(Suit suit, int number)
    :GlobalEffect(suit, number)
{
    setObjectName("god_salvation");
}

bool GodSalvation::isCancelable(const CardEffectStruct &effect) const{
    return effect.to->isWounded();
}

void GodSalvation::onEffect(const CardEffectStruct &effect) const{
    Room *room = effect.to->getRoom();

    RecoverStruct recover;
    recover.card = this;
    recover.who = effect.from;
    room->recover(effect.to, recover);
}

SavageAssault::SavageAssault(Suit suit, int number)
    :AOE(suit, number)
{
    setObjectName("savage_assault");
}

void SavageAssault::onEffect(const CardEffectStruct &effect) const{
    Room *room = effect.to->getRoom();
    const Card *slash = room->askForCard(effect.to, "slash", "savage-assault-slash:" + effect.from->getGeneralName());
    if(slash == NULL){
        DamageStruct damage;
        damage.card = this;
        damage.damage = 1;
        damage.to = effect.to;
        damage.nature = DamageStruct::Normal;

        damage.from = effect.from;
        room->damage(damage);
    }
}

ArcheryAttack::ArcheryAttack(Card::Suit suit, int number)
    :AOE(suit, number)
{
    setObjectName("archery_attack");
}

void ArcheryAttack::onEffect(const CardEffectStruct &effect) const{
    Room *room = effect.to->getRoom();
    const Card *jink = room->askForCard(effect.to, "jink", "archery-attack-jink:" + effect.from->getGeneralName());
    if(jink == NULL){
        DamageStruct damage;
        damage.card = this;
        damage.damage = 1;
        damage.from = effect.from;
        damage.to = effect.to;
        damage.nature = DamageStruct::Normal;

        room->damage(damage);
    }
}

void SingleTargetTrick::use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &targets) const{
    room->throwCard(this);

    CardEffectStruct effect;
    effect.card = this;
    effect.from = source;
    effect.to = targets.first();

    room->cardEffect(effect);
}


Collateral::Collateral(Card::Suit suit, int number)
    :SingleTargetTrick(suit, number, false)
{
    setObjectName("collateral");
}

bool Collateral::isAvailable() const{
    QList<const ClientPlayer*> players = ClientInstance->getPlayers();
    foreach(const ClientPlayer *player, players){
        if(player->getWeapon() != NULL && player != Self)
            return true;
    }

    return false;
}

bool Collateral::targetsFeasible(const QList<const ClientPlayer *> &targets) const{
    return targets.length() == 2;
}

bool Collateral::targetFilter(const QList<const ClientPlayer *> &targets, const ClientPlayer *to_select) const{
    if(targets.isEmpty()){
        if(to_select->hasSkill("weimu") && isBlack())
            return false;

        return to_select->getWeapon() && to_select != Self;
    }else if(targets.length() == 1){
        const ClientPlayer *first = targets.first();
        return first != Self && first->canSlash(to_select);
    }else
        return false;
}

void Collateral::use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &targets) const{
    room->throwCard(this);

    ServerPlayer *killer = targets.at(0);
    ServerPlayer *victim = targets.at(1);
    const Weapon *weapon = killer->getWeapon();

    if(weapon == NULL)
        return;

    bool on_effect = room->cardEffect(this, source, killer);
    if(on_effect){
        QString prompt = QString("collateral-slash:%1:%2").arg(source->getGeneralName()).arg(victim->getGeneralName());
        const Card *slash = room->askForCard(killer, "slash", prompt);
        if(slash){
            CardUseStruct use;
            use.card = slash;
            use.from = killer;
            use.to << victim;
            room->useCard(use);
        }else{
            source->obtainCard(weapon);
        }
    }
}

Nullification::Nullification(Suit suit, int number)
    :SingleTargetTrick(suit, number, false)
{
    setObjectName("nullification");
}

void Nullification::use(Room *room, ServerPlayer *, const QList<ServerPlayer *> &) const{
    // does nothing, just throw it
    room->throwCard(this);
}

bool Nullification::isAvailable() const{
    return false;
}

ExNihilo::ExNihilo(Suit suit, int number)
    :SingleTargetTrick(suit, number, false)
{
    setObjectName("ex_nihilo");
    target_fixed = true;
}

void ExNihilo::use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &) const{
    room->throwCard(this);

    CardEffectStruct effect;
    effect.from = effect.to = source;
    effect.card = this;

    room->cardEffect(effect);
}

void ExNihilo::onEffect(const CardEffectStruct &effect) const{
    effect.to->drawCards(2);
}

Duel::Duel(Suit suit, int number)
    :SingleTargetTrick(suit, number, true)
{
    setObjectName("duel");
}

bool Duel::targetFilter(const QList<const ClientPlayer *> &targets, const ClientPlayer *to_select) const{
    if(to_select->hasSkill("kongcheng") && to_select->isKongcheng())
        return false;

    if(to_select == Self)
        return false;

    return targets.isEmpty();
}

void Duel::onEffect(const CardEffectStruct &effect) const{
    ServerPlayer *first = effect.to;
    ServerPlayer *second = effect.from;
    Room *room = first->getRoom();

    room->setEmotion(first, "duel-a");
    room->setEmotion(second, "duel-b");

    forever{
        if(second->hasSkill("wushuang")){
            room->playSkillEffect("wushuang");
            const Card *slash = room->askForCard(first, "slash", "@wushuang-slash-1:" + second->getGeneralName());
            if(slash == NULL)
                break;

            slash = room->askForCard(first, "slash", "@wushuang-slash-2:" + second->getGeneralName());
            if(slash == NULL)
                break;

        }else{
            const Card *slash = room->askForCard(first, "slash", "duel-slash:" + second->getGeneralName());
            if(slash == NULL)
                break;
        }

        qSwap(first, second);
    }

    DamageStruct damage;
    damage.card = this;
    damage.damage = 1;
    damage.from = second;
    damage.to = first;

    room->damage(damage);
}

Snatch::Snatch(Suit suit, int number):SingleTargetTrick(suit, number, true) {
    setObjectName("snatch");
}

bool Snatch::targetFilter(const QList<const ClientPlayer *> &targets, const ClientPlayer *to_select) const{
    if(!targets.isEmpty())
        return false;

    if(to_select->isAllNude())
        return false;

    if(to_select == Self)
        return false;

    if(Self->distanceTo(to_select) > 1 && !Self->hasSkill("qicai"))
        return false;

    return true;
}

void Snatch::onEffect(const CardEffectStruct &effect) const{
    if(effect.to->isAllNude())
        return;

    Room *room = effect.to->getRoom();
    int card_id = room->askForCardChosen(effect.from, effect.to, "hej", objectName());

    if(room->getCardPlace(card_id) == Player::Hand)
        room->moveCardTo(Sanguosha->getCard(card_id), effect.from, Player::Hand, false);
    else
        room->obtainCard(effect.from, card_id);
}

Dismantlement::Dismantlement(Suit suit, int number)
    :SingleTargetTrick(suit, number, false) {
    setObjectName("dismantlement");
}

bool Dismantlement::targetFilter(const QList<const ClientPlayer *> &targets, const ClientPlayer *to_select) const{
    if(!targets.isEmpty())
        return false;

    if(to_select->isAllNude())
        return false;

    if(to_select == Self)
        return false;

    return true;
}

void Dismantlement::onEffect(const CardEffectStruct &effect) const{
    if(effect.to->isAllNude())
        return;

    Room *room = effect.to->getRoom();
    int card_id = room->askForCardChosen(effect.from, effect.to, "hej", objectName());
    room->throwCard(card_id);
}

Indulgence::Indulgence(Suit suit, int number)
    :DelayedTrick(suit, number)
{
    setObjectName("indulgence");
    target_fixed = false;

    judge.pattern = QRegExp("(.*):(heart):(.*)");
    judge.good = true;
    judge.reason = objectName();
}

bool Indulgence::targetFilter(const QList<const ClientPlayer *> &targets, const ClientPlayer *to_select) const
{
    if(!targets.isEmpty())
        return false;

    if(to_select->containsTrick(objectName()))
        return false;

    if(to_select == Self)
        return false;

    return true;
}

void Indulgence::takeEffect(ServerPlayer *target) const{
    target->skip(Player::Play);
}

Disaster::Disaster(Card::Suit suit, int number)
    :DelayedTrick(suit, number, true)
{
    target_fixed = true;
}

bool Disaster::isAvailable() const{
    if(Self->containsTrick(objectName()))
        return false;

    return !ClientInstance->isProhibited(Self, this);
}

void Disaster::use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &) const{
    room->moveCardTo(this, source, Player::Judging);
}

Lightning::Lightning(Suit suit, int number):Disaster(suit, number){
    setObjectName("lightning");

    judge.pattern = QRegExp("(.*):(spade):([2-9])");
    judge.good = false;
    judge.reason = objectName();
}

void Lightning::takeEffect(ServerPlayer *target) const{
    DamageStruct damage;    
    damage.nature = DamageStruct::Thunder;
    damage.card = this;
    damage.damage = 3;
//    damage.from = NULL;
    damage.to = target;

    target->getRoom()->damage(damage);
}

// EX cards

class IceSwordSkill: public TriggerSkill{
public:
    IceSwordSkill():TriggerSkill("ice_sword"){
        events << SlashHit;
    }

    virtual bool triggerable(const ServerPlayer *target) const{
        return target->hasWeapon(objectName());
    }

    virtual bool trigger(TriggerEvent , ServerPlayer *player, QVariant &data) const{
        SlashEffectStruct effect = data.value<SlashEffectStruct>();

        Room *room = player->getRoom();

        if(!effect.to->isNude() && player->askForSkillInvoke("ice_sword", data)){
            int card_id = room->askForCardChosen(player, effect.to, "he", "ice_sword");
            room->throwCard(card_id);

            if(!effect.to->isNude()){
                card_id = room->askForCardChosen(player, effect.to, "he", "ice_sword");
                room->throwCard(card_id);
            }

            return true;
        }

        return false;
    }
};

IceSword::IceSword(Suit suit, int number)
    :Weapon(suit, number, 2)
{
    setObjectName("ice_sword");
    skill = new IceSwordSkill;
}


//���Ӽ���
class KoubuSkill: public TriggerSkill{
public:
    KoubuSkill():TriggerSkill("koubu"){
        events << Predamaged;
    }
    virtual bool triggerable(const ServerPlayer *target) const{
        return true;
      //  return target->getDefensiveHorse()->getSkill() == this;
    }
    virtual bool trigger(TriggerEvent, ServerPlayer *player, QVariant &data) const{
//        DamageStruct damage = data.value<DamageStruct>();
        if(player->getDefensiveHorse() == parent() && player->askForSkillInvoke(objectName(), data)){
          Room *room = player->getRoom();
          room->throwCard(player->getDefensiveHorse());
          return true;
        }

        return false;
    }
};

Koubu::Koubu(Suit suit, int number):DefensiveHorse(suit, number){
    setObjectName("koubu");
    jue_ying = new KoubuSkill;
    jue_ying->setParent(this);
}

void Koubu::onInstall(ServerPlayer *player) const{
    player->getRoom()->getThread()->addTriggerSkill(jue_ying);
}

void Koubu::onUninstall(ServerPlayer *player) const{
    player->getRoom()->getThread()->removeTriggerSkill(jue_ying);
}

class KoubuxSkill: public TriggerSkill{
public:
    KoubuxSkill():TriggerSkill("koubux"){
        events << Damaged;
    }
    virtual bool triggerable(const ServerPlayer *target) const{
        return true;
     //  return target->getDefensiveHorse()->getSkill() == this;
    }
    virtual bool trigger(TriggerEvent, ServerPlayer *player, QVariant &data) const{
        DamageStruct damage = data.value<DamageStruct>();
        Room *room = player->getRoom();
        if(player->getDefensiveHorse() == parent() && player->isAlive()){
            const Card *card = player->getDefensiveHorse();
            ServerPlayer *from = damage.from;
            int damag = damage.damage;
            if (player->askForSkillInvoke(objectName(),data)){
                room->throwCard(card);
                DamageStruct damage2;
                damage2.card = card;
                damage2.damage = damag;
                damage2.from = player;
                damage2.to = from;

                room->damage(damage2);
            }
        }
    }
};

Koubux::Koubux(Suit suit, int number):DefensiveHorse(suit, number){
    setObjectName("koubux");
    di_lu = new KoubuxSkill;
    di_lu->setParent(this);
}

void Koubux::onInstall(ServerPlayer *player) const{
    player->getRoom()->getThread()->addTriggerSkill(di_lu);
}

void Koubux::onUninstall(ServerPlayer *player) const{
    player->getRoom()->getThread()->removeTriggerSkill(di_lu);
}

class IsenclightSkill: public TriggerSkill{
public:
    IsenclightSkill():TriggerSkill("isenclight"){
        events << Predamaged << Predamage;
    }
    virtual bool triggerable(const ServerPlayer *) const{
        return true;
     //   return !target->hasSkill(objectName());
     //   return target->getOffensiveHorse()->getSkill() == this;
    }
    virtual bool trigger(TriggerEvent event, ServerPlayer *player, QVariant &data) const{
        Room *room = player->getRoom();
        if(event == Predamage){
            DamageStruct damage = data.value<DamageStruct>();
               if(damage.nature == DamageStruct::Thunder){
                   QList<ServerPlayer *> players = room->getOtherPlayers(player);
                   foreach(ServerPlayer *p, players){
                   if(p->getOffensiveHorse() == parent()){
                     //room->playSkillEffect(objectName());
                    damage.from = p;
                    room->damage(damage);
                    return true;}
                }
                }
            }
        else if(event == Predamaged){
            DamageStruct damage = data.value<DamageStruct>();
            if(damage.nature == DamageStruct::Thunder && damage.to->getOffensiveHorse() == parent()){
                LogMessage log;
                log.type = "#Isenclightprotect";
                log.to << player;
                log.from = damage.from;
                log.arg = QString::number(damage.damage);
                room->sendLog(log);
                return true;
                }
/*            else if(damage.nature == DamageStruct::Thunder && damage.card->inherits("Lightning") && damage.to->getOffensiveHorse() != parent()){
                QList<ServerPlayer *> players = room->getOtherPlayers(player);
                foreach(ServerPlayer *p, players){
                if(p->getOffensiveHorse() == parent()){
                damage.from = p;
                room->damage(damage);
                return true;}}
            }*/
            }
        return false;
    }
};

Isenclight::Isenclight(Suit suit, int number):OffensiveHorse(suit, number){
    setObjectName("isenclight");
    chi_tu = new IsenclightSkill;
    chi_tu->setParent(this);
}

void Isenclight::onInstall(ServerPlayer *player) const{
    player->getRoom()->getThread()->addTriggerSkill(chi_tu);
}

void Isenclight::onUninstall(ServerPlayer *player) const{
    player->getRoom()->getThread()->removeTriggerSkill(chi_tu);
}

class KoubuFSkill: public TriggerSkill{
public:
    KoubuFSkill():TriggerSkill("koubuf"){
        events << CardEffect;
    }
    virtual bool triggerable(const ServerPlayer *target) const{
        return true;
     //   return target->getOffensiveHorse()->getSkill() == this;
    }
    virtual bool trigger(TriggerEvent, ServerPlayer *player, QVariant &data) const{
        CardEffectStruct effect = data.value<CardEffectStruct>();
        if(effect.to == effect.from)
            return false;
        if(effect.card->getTypeId() == Card::Trick && !effect.card->inherits("Dismantlement")){
            Room *room = player->getRoom();
            if(effect.to->getOffensiveHorse() == parent() && effect.from){
                LogMessage log;
                log.type = "#KoubuF";
                log.from = effect.to;
                log.to << effect.from;
                log.arg = effect.card->objectName();
                room->sendLog(log);
                return true;
            }
        }
        return false;
    }
};

KoubuF::KoubuF(Suit suit, int number):OffensiveHorse(suit, number){
    setObjectName("koubuf");
    da_yuan = new KoubuFSkill;
    da_yuan->setParent(this);
}

void KoubuF::onInstall(ServerPlayer *player) const{
    player->getRoom()->getThread()->addTriggerSkill(da_yuan);
}

void KoubuF::onUninstall(ServerPlayer *player) const{
    player->getRoom()->getThread()->removeTriggerSkill(da_yuan);
}

class MocaoSkill: public TriggerSkill{
public:
    MocaoSkill():TriggerSkill("mocao"){
        events << Predamaged << SlashEffected << CardEffected;
    }
    virtual bool triggerable(const ServerPlayer *target) const{
        return true;
       //     return target->getDefensiveHorse()->getSkill() == this;
    }
    virtual bool trigger(TriggerEvent event, ServerPlayer *player, QVariant &data) const{
        if(event == SlashEffected){
            SlashEffectStruct effect = data.value<SlashEffectStruct>();
            if(effect.to->getDefensiveHorse() == parent() && effect.nature == DamageStruct::Normal){
                LogMessage log;
                log.from = player;
                log.type = "#ArmorNullify";
                log.arg = objectName();
                log.arg2 = effect.slash->objectName();
                player->getRoom()->sendLog(log);

                return true;
            }
        }else if(event == CardEffected){
            CardEffectStruct effect = data.value<CardEffectStruct>();
            if(effect.card->inherits("ArcheryAttack") && player->getDefensiveHorse() == parent()){
                LogMessage log;
                log.from = player;
                log.type = "#ArmorNullify";
                log.arg = objectName();
                log.arg2 = effect.card->objectName();
                player->getRoom()->sendLog(log);

                return true;
            }
        }else if(event == Predamaged){
            DamageStruct damage = data.value<DamageStruct>();
            if(damage.to->getDefensiveHorse() == parent() && damage.nature == DamageStruct::Fire){
                LogMessage log;
                log.type = "#MocaoDamage";
                log.from = player;
                log.arg = QString::number(damage.damage);
                log.arg2 = QString::number(damage.damage + 1);
                player->getRoom()->sendLog(log);

                damage.damage ++;
                data = QVariant::fromValue(damage);
            }
        }

        return false;
    }
};

Mocao::Mocao(Suit suit, int number):DefensiveHorse(suit, number){
    setObjectName("mocao");
    zhua_h = new MocaoSkill;
    zhua_h->setParent(this);
}

void Mocao::onInstall(ServerPlayer *player) const{
    player->getRoom()->getThread()->addTriggerSkill(zhua_h);
}

void Mocao::onUninstall(ServerPlayer *player) const{
    player->getRoom()->getThread()->removeTriggerSkill(zhua_h);
}

class WatkemoSkill: public TriggerSkill{
public:
    WatkemoSkill():TriggerSkill("watkemo"){
        events << Predamaged;
    }
    virtual bool triggerable(const ServerPlayer *target) const{
        return true;
     //   return target->getOffensiveHorse()->getSkill() == this;
    }
    virtual bool trigger(TriggerEvent, ServerPlayer *player, QVariant &data) const{
        DamageStruct damage = data.value<DamageStruct>();
        if(damage.to->getOffensiveHorse() == parent() && damage.damage > 1){
            LogMessage log;
            log.type = "#Watkemo";
            log.from = player;
            log.arg = QString::number(damage.damage);
            player->getRoom()->sendLog(log);

            damage.damage = 1;
            data = QVariant::fromValue(damage);
        }

        return false;
    }
};

Watkemo::Watkemo(Suit suit, int number):OffensiveHorse(suit, number){
    setObjectName("watkemo");
    zi_xing = new WatkemoSkill;
    zi_xing->setParent(this);
}

void Watkemo::onInstall(ServerPlayer *player) const{
    player->getRoom()->getThread()->addTriggerSkill(zi_xing);
}

void Watkemo::onUninstall(ServerPlayer *player) const{
    if(player->isAlive()){
        RecoverStruct recover;
        recover.card = this;
        player->getRoom()->recover(player, recover);
    }
    player->getRoom()->getThread()->removeTriggerSkill(zi_xing);
}





void StandardPackage::addCards(){
    QList<Card*> cards;

    cards << new Slash(Card::Spade, 7)
          << new Slash(Card::Spade, 8)
          << new Slash(Card::Spade, 8)
          << new Slash(Card::Spade, 9)
          << new Slash(Card::Spade, 9)
          << new Slash(Card::Spade, 10)
          << new Slash(Card::Spade, 10)

          << new Slash(Card::Club, 2)
          << new Slash(Card::Club, 3)
          << new Slash(Card::Club, 4)
          << new Slash(Card::Club, 5)
          << new Slash(Card::Club, 6)
          << new Slash(Card::Club, 7)
          << new Slash(Card::Club, 8)
          << new Slash(Card::Club, 8)
          << new Slash(Card::Club, 9)
          << new Slash(Card::Club, 9)
          << new Slash(Card::Club, 10)
          << new Slash(Card::Club, 10)
          << new Slash(Card::Club, 11)
          << new Slash(Card::Club, 11)

          << new Slash(Card::Heart, 10)
          << new Slash(Card::Heart, 10)
          << new Slash(Card::Heart, 11)

          << new Slash(Card::Diamond, 6)
          << new Slash(Card::Diamond, 7)
          << new Slash(Card::Diamond, 8)
          << new Slash(Card::Diamond, 9)
          << new Slash(Card::Diamond, 10)
          << new Slash(Card::Diamond, 13)

          << new Jink(Card::Heart, 2)
          << new Jink(Card::Heart, 2)
          << new Jink(Card::Heart, 13)

          << new Jink(Card::Diamond, 2)
          << new Jink(Card::Diamond, 2)
          << new Jink(Card::Diamond, 3)
          << new Jink(Card::Diamond, 4)
          << new Jink(Card::Diamond, 5)
          << new Jink(Card::Diamond, 6)
          << new Jink(Card::Diamond, 7)
          << new Jink(Card::Diamond, 8)
          << new Jink(Card::Diamond, 9)
          << new Jink(Card::Diamond, 10)
          << new Jink(Card::Diamond, 11)
          << new Jink(Card::Diamond, 11)

          << new Peach(Card::Heart, 3)
          << new Peach(Card::Heart, 4)
          << new Peach(Card::Heart, 6)
          << new Peach(Card::Heart, 7)
          << new Peach(Card::Heart, 8)
          << new Peach(Card::Heart, 9)
          << new Peach(Card::Heart, 12)

          << new Peach(Card::Diamond, 12)

          << new Crossbow(Card::Club)
          << new Crossbow(Card::Diamond)
          << new IceSword(Card::Spade, 7)
          << new DoubleSword
          << new QinggangSword
          << new Blade
          << new Spear
          << new Axe
          << new Halberd
          << new KylinBow

          << new EightDiagram(Card::Spade)
          << new EightDiagram(Card::Club);

/*    {
        QList<Card *> horses;
        horses << new DefensiveHorse(Card::Spade, 5)
                << new DefensiveHorse(Card::Club, 5)
                << new DefensiveHorse(Card::Heart, 13)
                << new OffensiveHorse(Card::Heart, 5)
                << new OffensiveHorse(Card::Spade, 13)
                << new OffensiveHorse(Card::Diamond, 13);

        horses.at(0)->setObjectName("koubu");
        horses.at(1)->setObjectName("koubux");
        horses.at(2)->setObjectName("mocaouangfeidian");
        horses.at(3)->setObjectName("isenclight");
        horses.at(4)->setObjectName("koubuf");
        horses.at(5)->setObjectName("watkemo");

        cards << horses;
    }
*/
    cards << new Koubu(Card::Spade, 5)
          << new Koubux(Card::Club, 5)
          << new Isenclight(Card::Heart, 5)
          << new KoubuF(Card::Spade, 13)
          << new Mocao(Card::Heart, 13)
          << new Watkemo(Card::Diamond, 13);


    cards << new AmazingGrace(Card::Heart, 3)
          << new AmazingGrace(Card::Heart, 4)
          << new GodSalvation
          << new SavageAssault(Card::Spade, 13)
          << new SavageAssault(Card::Club, 7)
          << new ArcheryAttack
          << new Duel(Card::Spade, 1)
          << new Duel(Card::Club, 1)
          << new Duel(Card::Diamond, 1)
          << new ExNihilo(Card::Heart, 7)
          << new ExNihilo(Card::Heart, 8)
          << new ExNihilo(Card::Heart, 9)
          << new ExNihilo(Card::Heart, 11)
          << new Snatch(Card::Spade, 3)
          << new Snatch(Card::Spade, 4)
          << new Snatch(Card::Spade, 11)
          << new Snatch(Card::Diamond, 3)
          << new Snatch(Card::Diamond, 4)
          << new Dismantlement(Card::Spade, 3)
          << new Dismantlement(Card::Spade, 4)
          << new Dismantlement(Card::Spade, 12)
          << new Dismantlement(Card::Club, 3)
          << new Dismantlement(Card::Club, 4)
          << new Dismantlement(Card::Heart, 12)
          << new Collateral(Card::Club, 12)
          << new Collateral(Card::Club, 13)
          << new Nullification(Card::Spade, 11)
          << new Nullification(Card::Club, 12)
          << new Nullification(Card::Club, 13)
          << new Indulgence(Card::Spade, 6)
          << new Indulgence(Card::Club, 6)
          << new Indulgence(Card::Heart, 6)
          << new Lightning(Card::Spade, 1);

    foreach(Card *card, cards)
        card->setParent(this);    

    skills << new SpearSkill << new AxeViewAsSkill;       
}
