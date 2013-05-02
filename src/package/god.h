#ifndef GOD_H
#define GOD_H

#include "package.h"
#include "card.h"
#include "skill.h"
#include "standard.h"

class GodPackage : public Package{
    Q_OBJECT

public:
    GodPackage();
};

class ShenfenCard: public SkillCard{
    Q_OBJECT

public:
    Q_INVOKABLE ShenfenCard();

    virtual void use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &targets) const;
};

class WuqianCard: public SkillCard{
    Q_OBJECT

public:
    Q_INVOKABLE WuqianCard();

    virtual bool targetFilter(const QList<const Player *> &targets, const Player *to_select, const Player *Self) const;
    virtual void onEffect(const CardEffectStruct &effect) const;
};

class WushenSlash: public Slash{
    Q_OBJECT

public:
    Q_INVOKABLE WushenSlash(Card::Suit suit, int number);
};

class KuangfengCard: public SkillCard{
    Q_OBJECT

public:
    Q_INVOKABLE KuangfengCard();

    virtual bool targetFilter(const QList<const Player *> &targets, const Player *to_select, const Player *Self) const;
    virtual void onEffect(const CardEffectStruct &effect) const;
};

class DawuCard: public SkillCard{
    Q_OBJECT

public:
    Q_INVOKABLE DawuCard();

    virtual bool targetFilter(const QList<const Player *> &targets, const Player *to_select, const Player *Self) const;
    virtual void use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &targets) const;
};

class JilveCard: public SkillCard{
    Q_OBJECT

public:
    Q_INVOKABLE JilveCard();

    virtual void onUse(Room *room, const CardUseStruct &card_use) const;
};

#endif // GOD_H
