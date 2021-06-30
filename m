Return-Path: <SRS0=FOTy=LY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10CA6C11F69
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 07:31:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C88E961D0D
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 07:31:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C88E961D0D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5wAhyOsSe2CLkHqdW1/B1kopoL5USMcEcFUfwNL79I=; b=FUXPjvte9U9u1h
	k1803WrEfyHyD1rEk3yigmjHKpszZLcMLyFoTuJBCg4mSPW3IICTSRi3Txp1JY60XNDz+Cka5ICis
	I2mAiDRYoOse+Yv7RYeSjNW85Kb8m3mMpnJzA5gF4SQhUcq62FQZKZBapczaCZxPMlH2pbwhErm5H
	nqoMo20iwLa9Ag5j9zUqlz9DzfEJyrmENo4MBKGfA/XsITR4j1H/zy4dUMo8DIqNa/5R1ThE3cBhl
	1mfsfqp/YGLAMVUGgGeFYk4XuBBpjbFXc68+Je7u6/0j+Vq0wKMsJAO1YouFBT+jKV2V4RqM1VXYC
	R8PblxUYcA85ASn1IRLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyUh2-00D4KZ-99; Wed, 30 Jun 2021 07:31:32 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyUgf-00D454-UM
 for linux-phy@lists.infradead.org; Wed, 30 Jun 2021 07:31:11 +0000
X-IronPort-AV: E=Sophos;i="5.83,311,1616425200"; d="scan'208";a="85884741"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie6.idc.renesas.com with ESMTP; 30 Jun 2021 16:31:09 +0900
Received: from localhost.localdomain (unknown [10.226.93.82])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id AF73F41DCD2E;
 Wed, 30 Jun 2021 16:31:06 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v3 10/11] phy: renesas: phy-rcar-gen3-usb2: Add OTG support
 for RZ/G2L
Date: Wed, 30 Jun 2021 08:30:12 +0100
Message-Id: <20210630073013.22415-11-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210630073013.22415-1-biju.das.jz@bp.renesas.com>
References: <20210630073013.22415-1-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_003110_275192_1DE678D1 
X-CRM114-Status: GOOD (  20.82  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This patch adds OTG support for RZ/G2L SoC.

We need to use a different compatible string due to some differences
with R-Car Gen3 USB2.0 PHY. It uses line ctrl register for OTG_ID
pin changes and different OTG-BC interrupt bit for device recognition.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 v3:
  * Made seperate compativle for RZ/G2L.
  * Extended rcar_gen3_phy_usb2_match_table[].data to support RZ/G2L.
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 97 ++++++++++++++++++------
 1 file changed, 73 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index fbc55232120e..ce875188b8cf 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -64,6 +64,7 @@
 /* VBCTRL */
 #define USB2_VBCTRL_OCCLREN		BIT(16)
 #define USB2_VBCTRL_DRVVBUSSEL		BIT(8)
+#define USB2_VBCTRL_VBOUT		BIT(0)
 
 /* LINECTRL1 */
 #define USB2_LINECTRL1_DPRPD_EN		BIT(19)
@@ -78,6 +79,10 @@
 #define USB2_ADPCTRL_IDPULLUP		BIT(5)	/* 1 = ID sampling is enabled */
 #define USB2_ADPCTRL_DRVVBUS		BIT(4)
 
+/*  RZ/G2L specific */
+#define USB2_OBINT_IDCHG_EN		BIT(0)
+#define USB2_LINECTRL1_USB2_IDMON	BIT(0)
+
 #define NUM_OF_PHYS			4
 enum rcar_gen3_phy_index {
 	PHY_INDEX_BOTH_HC,
@@ -112,9 +117,16 @@ struct rcar_gen3_chan {
 	struct mutex lock;	/* protects rphys[...].powered */
 	enum usb_dr_mode dr_mode;
 	int irq;
+	u32 obint_enable_bits;
 	bool extcon_host;
 	bool is_otg_channel;
 	bool uses_otg_pins;
+	bool soc_no_adp_ctrl;
+};
+
+struct rcar_gen3_phy_drv_data {
+	const struct phy_ops *phy_usb2_ops;
+	bool no_adp_ctrl;
 };
 
 /*
@@ -172,14 +184,22 @@ static void rcar_gen3_set_linectrl(struct rcar_gen3_chan *ch, int dp, int dm)
 static void rcar_gen3_enable_vbus_ctrl(struct rcar_gen3_chan *ch, int vbus)
 {
 	void __iomem *usb2_base = ch->base;
-	u32 val = readl(usb2_base + USB2_ADPCTRL);
+	u32 vbus_ctrl_reg = USB2_ADPCTRL;
+	u32 vbus_ctrl_val = USB2_ADPCTRL_DRVVBUS;
+	u32 val;
 
 	dev_vdbg(ch->dev, "%s: %08x, %d\n", __func__, val, vbus);
+	if (ch->soc_no_adp_ctrl) {
+		vbus_ctrl_reg = USB2_VBCTRL;
+		vbus_ctrl_val = USB2_VBCTRL_VBOUT;
+	}
+
+	val = readl(usb2_base + vbus_ctrl_reg);
 	if (vbus)
-		val |= USB2_ADPCTRL_DRVVBUS;
+		val |= vbus_ctrl_val;
 	else
-		val &= ~USB2_ADPCTRL_DRVVBUS;
-	writel(val, usb2_base + USB2_ADPCTRL);
+		val &= ~vbus_ctrl_val;
+	writel(val, usb2_base + vbus_ctrl_reg);
 }
 
 static void rcar_gen3_control_otg_irq(struct rcar_gen3_chan *ch, int enable)
@@ -188,9 +208,9 @@ static void rcar_gen3_control_otg_irq(struct rcar_gen3_chan *ch, int enable)
 	u32 val = readl(usb2_base + USB2_OBINTEN);
 
 	if (ch->uses_otg_pins && enable)
-		val |= USB2_OBINT_BITS;
+		val |= ch->obint_enable_bits;
 	else
-		val &= ~USB2_OBINT_BITS;
+		val &= ~ch->obint_enable_bits;
 	writel(val, usb2_base + USB2_OBINTEN);
 }
 
@@ -252,6 +272,9 @@ static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
 	if (!ch->uses_otg_pins)
 		return (ch->dr_mode == USB_DR_MODE_HOST) ? false : true;
 
+	if (ch->soc_no_adp_ctrl)
+		return !!(readl(ch->base + USB2_LINECTRL1) & USB2_LINECTRL1_USB2_IDMON);
+
 	return !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
 }
 
@@ -376,16 +399,17 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
 	      USB2_LINECTRL1_DMRPD_EN | USB2_LINECTRL1_DM_RPD;
 	writel(val, usb2_base + USB2_LINECTRL1);
 
-	val = readl(usb2_base + USB2_VBCTRL);
-	val &= ~USB2_VBCTRL_OCCLREN;
-	writel(val | USB2_VBCTRL_DRVVBUSSEL, usb2_base + USB2_VBCTRL);
-	val = readl(usb2_base + USB2_ADPCTRL);
-	writel(val | USB2_ADPCTRL_IDPULLUP, usb2_base + USB2_ADPCTRL);
-
+	if (!ch->soc_no_adp_ctrl) {
+		val = readl(usb2_base + USB2_VBCTRL);
+		val &= ~USB2_VBCTRL_OCCLREN;
+		writel(val | USB2_VBCTRL_DRVVBUSSEL, usb2_base + USB2_VBCTRL);
+		val = readl(usb2_base + USB2_ADPCTRL);
+		writel(val | USB2_ADPCTRL_IDPULLUP, usb2_base + USB2_ADPCTRL);
+	}
 	msleep(20);
 
 	writel(0xffffffff, usb2_base + USB2_OBINTSTA);
-	writel(USB2_OBINT_BITS, usb2_base + USB2_OBINTEN);
+	writel(ch->obint_enable_bits, usb2_base + USB2_OBINTEN);
 
 	rcar_gen3_device_recognition(ch);
 }
@@ -397,9 +421,9 @@ static irqreturn_t rcar_gen3_phy_usb2_irq(int irq, void *_ch)
 	u32 status = readl(usb2_base + USB2_OBINTSTA);
 	irqreturn_t ret = IRQ_NONE;
 
-	if (status & USB2_OBINT_BITS) {
+	if (status & ch->obint_enable_bits) {
 		dev_vdbg(ch->dev, "%s: %08x\n", __func__, status);
-		writel(USB2_OBINT_BITS, usb2_base + USB2_OBINTSTA);
+		writel(ch->obint_enable_bits, usb2_base + USB2_OBINTSTA);
 		rcar_gen3_device_recognition(ch);
 		ret = IRQ_HANDLED;
 	}
@@ -535,26 +559,45 @@ static const struct phy_ops rz_g1c_phy_usb2_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static const struct rcar_gen3_phy_drv_data rcar_gen3_phy_usb2_data = {
+	.phy_usb2_ops = &rcar_gen3_phy_usb2_ops,
+	.no_adp_ctrl = false,
+};
+
+static const struct rcar_gen3_phy_drv_data rz_g1c_phy_usb2_data = {
+	.phy_usb2_ops = &rz_g1c_phy_usb2_ops,
+	.no_adp_ctrl = false,
+};
+
+static const struct rcar_gen3_phy_drv_data rz_g2l_phy_usb2_data = {
+	.phy_usb2_ops = &rcar_gen3_phy_usb2_ops,
+	.no_adp_ctrl = true,
+};
+
 static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
 	{
 		.compatible = "renesas,usb2-phy-r8a77470",
-		.data = &rz_g1c_phy_usb2_ops,
+		.data = &rz_g1c_phy_usb2_data,
 	},
 	{
 		.compatible = "renesas,usb2-phy-r8a7795",
-		.data = &rcar_gen3_phy_usb2_ops,
+		.data = &rcar_gen3_phy_usb2_data,
 	},
 	{
 		.compatible = "renesas,usb2-phy-r8a7796",
-		.data = &rcar_gen3_phy_usb2_ops,
+		.data = &rcar_gen3_phy_usb2_data,
 	},
 	{
 		.compatible = "renesas,usb2-phy-r8a77965",
-		.data = &rcar_gen3_phy_usb2_ops,
+		.data = &rcar_gen3_phy_usb2_data,
+	},
+	{
+		.compatible = "renesas,usb2-phy-r9a07g044",
+		.data = &rz_g2l_phy_usb2_data,
 	},
 	{
 		.compatible = "renesas,rcar-gen3-usb2-phy",
-		.data = &rcar_gen3_phy_usb2_ops,
+		.data = &rcar_gen3_phy_usb2_data,
 	},
 	{ /* sentinel */ },
 };
@@ -608,10 +651,10 @@ static enum usb_dr_mode rcar_gen3_get_dr_mode(struct device_node *np)
 
 static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 {
+	const struct rcar_gen3_phy_drv_data *phy_data;
 	struct device *dev = &pdev->dev;
 	struct rcar_gen3_chan *channel;
 	struct phy_provider *provider;
-	const struct phy_ops *phy_usb2_ops;
 	int ret = 0, i;
 
 	if (!dev->of_node) {
@@ -627,6 +670,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	if (IS_ERR(channel->base))
 		return PTR_ERR(channel->base);
 
+	channel->obint_enable_bits = USB2_OBINT_BITS;
 	/* get irq number here and request_irq for OTG in phy_init */
 	channel->irq = platform_get_irq_optional(pdev, 0);
 	channel->dr_mode = rcar_gen3_get_dr_mode(dev->of_node);
@@ -653,16 +697,21 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	 * And then, phy-core will manage runtime pm for this device.
 	 */
 	pm_runtime_enable(dev);
-	phy_usb2_ops = of_device_get_match_data(dev);
-	if (!phy_usb2_ops) {
+
+	phy_data = of_device_get_match_data(dev);
+	if (!phy_data) {
 		ret = -EINVAL;
 		goto error;
 	}
 
+	channel->soc_no_adp_ctrl = phy_data->no_adp_ctrl;
+	if (phy_data->no_adp_ctrl)
+		channel->obint_enable_bits = USB2_OBINT_IDCHG_EN;
+
 	mutex_init(&channel->lock);
 	for (i = 0; i < NUM_OF_PHYS; i++) {
 		channel->rphys[i].phy = devm_phy_create(dev, NULL,
-							phy_usb2_ops);
+							phy_data->phy_usb2_ops);
 		if (IS_ERR(channel->rphys[i].phy)) {
 			dev_err(dev, "Failed to create USB2 PHY\n");
 			ret = PTR_ERR(channel->rphys[i].phy);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
