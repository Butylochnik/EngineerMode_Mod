.class public Lcom/mediatek/engineermode/sensor/Sensor;
.super Landroid/app/Activity;
.source "Sensor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v3, 0x7f03008b

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/sensor/Sensor;->setContentView(I)V

    .line 59
    const v3, 0x7f0b048d

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/sensor/Sensor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 61
    .local v2, "list":Landroid/widget/ListView;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v3, 0x7f080690

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/sensor/Sensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    const v3, 0x7f080695

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/sensor/Sensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const v3, 0x7f08069e

    invoke-virtual {p0, v3}, Lcom/mediatek/engineermode/sensor/Sensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 66
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_1

    .line 74
    const-class v1, Lcom/mediatek/engineermode/sensor/MSensor;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/sensor/Sensor;->startActivity(Landroid/content/Intent;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p3, :cond_2

    .line 77
    const-class v1, Lcom/mediatek/engineermode/sensor/SensorCalibrationSelect;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/sensor/Sensor;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 79
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p3, :cond_0

    .line 80
    const-class v1, Lcom/mediatek/engineermode/sensor/PSensor;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/sensor/Sensor;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
