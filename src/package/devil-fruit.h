#ifndef DEVILFRUITPACKAGE_H
#define DEVILFRUITPACKAGE_H

#include "package.h"
#include "card.h"

class JijiangCard: public SkillCard{
    Q_OBJECT

public:
    Q_INVOKABLE JijiangCard();

    virtual bool targetFilter(const QList<const Player *> &targets, const Player *to_select, const Player *Self) const;
    virtual void use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &targets) const;
};

class DevilFruitPackage: public Package{
    Q_OBJECT

public:
    DevilFruitPackage();
};

// test
class CheatCard: public SkillCard{
    Q_OBJECT

public:
    Q_INVOKABLE CheatCard();

    virtual void use(Room *room, ServerPlayer *source, const QList<ServerPlayer *> &targets) const;
};

class TestPackage: public Package{
    Q_OBJECT

public:
    TestPackage();
};

#endif // DEVILFRUIT_H
