#ifndef MANEUVERING_H
#define MANEUVERING_H

#include "standard.h"

class NatureSlash: public Slash{
    Q_OBJECT

public:
    NatureSlash(Suit suit, int number, DamageStruct::Nature nature);
    virtual bool match(const QString &pattern) const;
};

class ThunderSlash: public NatureSlash{
    Q_OBJECT

public:
    Q_INVOKABLE ThunderSlash(Card::Suit suit, int number);
};

class FireSlash: public NatureSlash{
    Q_OBJECT

public:
    Q_INVOKABLE FireSlash(Card::Suit suit, int number);
};

class Analeptic: public BasicCard{
    Q_OBJECT

public:
    Q_INVOKABLE Analeptic(Card::Suit suit, int number);
    virtual QString getSubtype() const;
    virtual QString getEffectPath(bool is_male) const;

    static bool IsAvailable(const Player *player);

    virtual bool isAvailable(const Player *player) const;
    virtual void use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &targets) const;
    virtual void onEffect(const CardEffectStruct &effect) const;
};

class JuicePeach: public Peach{
    Q_OBJECT

public:
    Q_INVOKABLE JuicePeach(Card::Suit suit, int number);
    virtual bool targetFilter(const QList<const Player *> &targets, const Player *to_select, const Player *Self) const;
    virtual bool isAvailable(const Player *player) const;
};

class Fan: public Weapon{
    Q_OBJECT

public:
    Q_INVOKABLE Fan(Card::Suit suit, int number);
};

class GudingBlade: public Weapon{
    Q_OBJECT

public:
    Q_INVOKABLE GudingBlade(Card::Suit suit, int number);
};

class Vine: public Armor{
    Q_OBJECT

public:
    Q_INVOKABLE Vine(Card::Suit suit, int number);
};

class SilverLion: public Armor{
    Q_OBJECT

public:
    Q_INVOKABLE SilverLion(Card::Suit suit, int number);

    virtual void onUninstall(ServerPlayer *player) const;
};

class IronChain: public TrickCard{
    Q_OBJECT

public:
    Q_INVOKABLE IronChain(Card::Suit suit, int number);

    virtual QString getSubtype() const;
    virtual QString getEffectPath(bool is_male) const;

    virtual bool targetFilter(const QList<const Player *> &targets, const Player *to_select, const Player *Self) const;
    virtual bool targetsFeasible(const QList<const Player *> &targets, const Player *Self) const;

    virtual void onUse(Room *room, const CardUseStruct &card_use) const;
    virtual void use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &targets) const;
    virtual void onEffect(const CardEffectStruct &effect) const;
};

class FireAttack: public SingleTargetTrick{
    Q_OBJECT

public:
    Q_INVOKABLE FireAttack(Card::Suit suit, int number);

    virtual bool targetFilter(const QList<const Player *> &targets, const Player *to_select, const Player *Self) const;
    virtual void onEffect(const CardEffectStruct &effect) const;
};

class SupplyShortage: public DelayedTrick{
    Q_OBJECT

public:
    Q_INVOKABLE SupplyShortage(Card::Suit suit, int number);

    virtual bool targetFilter(const QList<const Player *> &targets, const Player *to_select, const Player *Self) const;
    virtual void takeEffect(ServerPlayer *target) const;
};

class BlackDragonPackage: public Package{
    Q_OBJECT

public:
    BlackDragonPackage();
};

//

class WindJink: public Jink{
    Q_OBJECT

public:
    Q_INVOKABLE WindJink(Card::Suit suit, int number);
};

class SoilJink: public Jink{
    Q_OBJECT

public:
    Q_INVOKABLE SoilJink(Card::Suit suit, int number);
};

class Bow: public Armor{
    Q_OBJECT

public:
    Q_INVOKABLE Bow(Card::Suit suit, int number);
};

class RenwangShield: public Armor{
    Q_OBJECT

public:
    Q_INVOKABLE RenwangShield(Card::Suit suit, int number);
};

class YxSword: public Weapon{
    Q_OBJECT

public:
    Q_INVOKABLE YxSword(Card::Suit suit, int number);
};

class Bat: public Weapon{
    Q_OBJECT

public:
    Q_INVOKABLE Bat(Card::Suit suit, int number);
};

class Railgun: public Weapon{
    Q_OBJECT

public:
    Q_INVOKABLE Railgun(Card::Suit suit, int number);
};

class Inspiration: public GlobalEffect{
    Q_OBJECT

public:
    Q_INVOKABLE Inspiration(Card::Suit suit, int number);

    virtual void onEffect(const CardEffectStruct &effect) const;
};

class Sacrifice: public SingleTargetTrick{
    Q_OBJECT

public:
    Q_INVOKABLE Sacrifice(Card::Suit suit, int number);

    virtual bool targetFilter(const QList<const Player *> &targets, const Player *to_select, const Player *Self) const;
    virtual void onEffect(const CardEffectStruct &effect) const;
};

class Potential: public SingleTargetTrick{
    Q_OBJECT

public:
    Q_INVOKABLE Potential(Card::Suit suit, int number);
    static bool IsAvailable(const Player *player);

    virtual bool isAvailable(const Player *player) const;
    virtual void onEffect(const CardEffectStruct &effect) const;
};

class RedAlert: public AOE{
    Q_OBJECT

public:
    Q_INVOKABLE RedAlert(Card::Suit suit, int number);
    virtual void onEffect(const CardEffectStruct &effect) const;
};

class Turnover: public SingleTargetTrick{
    Q_OBJECT

public:
    Q_INVOKABLE Turnover(Card::Suit suit, int number);

    virtual bool targetFilter(const QList<const Player *> &targets, const Player *to_select, const Player *Self) const;
    virtual void onEffect(const CardEffectStruct &effect) const;
};

class Locust: public Disaster{
    Q_OBJECT

public:
    Q_INVOKABLE Locust(Card::Suit suit, int number);
    virtual void use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &) const;
    virtual void takeEffect(ServerPlayer *target) const;
    virtual void onEffect(const CardEffectStruct &effect) const;
};

class Wolf: public SingleTargetTrick{
    Q_OBJECT

public:
    Q_INVOKABLE Wolf(Card::Suit suit, int number);
    virtual void onEffect(const CardEffectStruct &effect) const;
};

class Tantei: public Armor{
    Q_OBJECT

public:
    Q_INVOKABLE Tantei(Card::Suit suit, int number);
};

class Injector:public Weapon{
    Q_OBJECT

public:
    Q_INVOKABLE Injector(Card::Suit suit, int number);
};

class ThunderBirdPackage: public Package{
    Q_OBJECT

public:
    ThunderBirdPackage();
};

#endif // MANEUVERING_H
