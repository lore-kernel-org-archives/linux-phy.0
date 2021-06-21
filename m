Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAAC4C48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 09:40:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8DA64611B0
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 09:40:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8DA64611B0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZYSLKQnS1bcOkuQvx6qARisv3aC7SAn6MMLuOHS0TA=; b=yzv/lGFxi0CIK+
	z+vv6Hd070f6Wn5eVA7FV+P/P3ttNKuznpIbiQXBrlFVSJtixDiZh4MLP9Qv1nOzWDC4vPiJKyvbZ
	k9BPekr6YE1QWAdbV6uxc4M/mSbs1VLn8cJVNBMfoLVeIIrJSjmEfaeFChoTW1syDSRRyH1bjiHjm
	s769TFTtAJ1Bk9wLGS1VdbEAC2Ke6iRlObcCt8nnEx4pijoeFQb0UMcWvWUU5ZZl6AsZ8+fzHce+n
	GadzJKh6fVM2Q/S2oMNP8LQwp8lu4Q95Tp0Sn4nnIL6lNuCZOEblcXX9OPYitPMxIPflIYaEZS2hm
	OESHc6YIGuDS7KrGVeXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvGPo-002xPR-3w; Mon, 21 Jun 2021 09:40:24 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvGPk-002xOt-F0
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 09:40:22 +0000
X-IronPort-AV: E=Sophos;i="5.83,289,1616425200"; d="scan'208";a="84924731"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie6.idc.renesas.com with ESMTP; 21 Jun 2021 18:40:19 +0900
Received: from localhost.localdomain (unknown [10.226.92.241])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id 6D783400C4C6;
 Mon, 21 Jun 2021 18:40:17 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 10/11] phy: renesas: phy-rcar-gen3-usb2: Add OTG support
 for RZ/G2L
Date: Mon, 21 Jun 2021 10:39:42 +0100
Message-Id: <20210621093943.12143-11-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
References: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_024020_659965_38034E00 
X-CRM114-Status: GOOD (  18.83  )
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

RZ/G2L USB2.0 phy is compatible with rcar gen3, but it uses
line ctrl register for OTG_ID pin changes. Apart from this
it uses a different OTG-BC interrupt bit for device recognition.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 63 ++++++++++++++++++------
 1 file changed, 48 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index fbc55232120e..aff0749be65d 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -22,6 +22,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/regulator/consumer.h>
 #include <linux/string.h>
+#include <linux/sys_soc.h>
 #include <linux/usb/of.h>
 #include <linux/workqueue.h>
 
@@ -64,6 +65,7 @@
 /* VBCTRL */
 #define USB2_VBCTRL_OCCLREN		BIT(16)
 #define USB2_VBCTRL_DRVVBUSSEL		BIT(8)
+#define USB2_VBCTRL_VBOUT		BIT(0)
 
 /* LINECTRL1 */
 #define USB2_LINECTRL1_DPRPD_EN		BIT(19)
@@ -78,6 +80,10 @@
 #define USB2_ADPCTRL_IDPULLUP		BIT(5)	/* 1 = ID sampling is enabled */
 #define USB2_ADPCTRL_DRVVBUS		BIT(4)
 
+/*  RZ/G2L specific */
+#define USB2_OBINT_IDCHG_EN		BIT(0)
+#define USB2_LINECTRL1_USB2_IDMON	BIT(0)
+
 #define NUM_OF_PHYS			4
 enum rcar_gen3_phy_index {
 	PHY_INDEX_BOTH_HC,
@@ -112,9 +118,11 @@ struct rcar_gen3_chan {
 	struct mutex lock;	/* protects rphys[...].powered */
 	enum usb_dr_mode dr_mode;
 	int irq;
+	u32 obint_enable_bits;
 	bool extcon_host;
 	bool is_otg_channel;
 	bool uses_otg_pins;
+	bool soc_no_adp_ctrl;
 };
 
 /*
@@ -172,14 +180,22 @@ static void rcar_gen3_set_linectrl(struct rcar_gen3_chan *ch, int dp, int dm)
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
@@ -188,9 +204,9 @@ static void rcar_gen3_control_otg_irq(struct rcar_gen3_chan *ch, int enable)
 	u32 val = readl(usb2_base + USB2_OBINTEN);
 
 	if (ch->uses_otg_pins && enable)
-		val |= USB2_OBINT_BITS;
+		val |= ch->obint_enable_bits;
 	else
-		val &= ~USB2_OBINT_BITS;
+		val &= ~ch->obint_enable_bits;
 	writel(val, usb2_base + USB2_OBINTEN);
 }
 
@@ -252,6 +268,9 @@ static bool rcar_gen3_check_id(struct rcar_gen3_chan *ch)
 	if (!ch->uses_otg_pins)
 		return (ch->dr_mode == USB_DR_MODE_HOST) ? false : true;
 
+	if (ch->soc_no_adp_ctrl)
+		return !!(readl(ch->base + USB2_LINECTRL1) & USB2_LINECTRL1_USB2_IDMON);
+
 	return !!(readl(ch->base + USB2_ADPCTRL) & USB2_ADPCTRL_IDDIG);
 }
 
@@ -376,16 +395,17 @@ static void rcar_gen3_init_otg(struct rcar_gen3_chan *ch)
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
@@ -397,9 +417,9 @@ static irqreturn_t rcar_gen3_phy_usb2_irq(int irq, void *_ch)
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
@@ -535,6 +555,11 @@ static const struct phy_ops rz_g1c_phy_usb2_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static const struct soc_device_attribute soc_no_adp_ctrl[] = {
+	{ .soc_id = "r9a07g044", .data = (void *)true },
+	{ /* Sentinel */ }
+};
+
 static const struct of_device_id rcar_gen3_phy_usb2_match_table[] = {
 	{
 		.compatible = "renesas,usb2-phy-r8a77470",
@@ -613,6 +638,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	struct phy_provider *provider;
 	const struct phy_ops *phy_usb2_ops;
 	int ret = 0, i;
+	const struct soc_device_attribute *attr;
 
 	if (!dev->of_node) {
 		dev_err(dev, "This driver needs device tree\n");
@@ -627,6 +653,7 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 	if (IS_ERR(channel->base))
 		return PTR_ERR(channel->base);
 
+	channel->obint_enable_bits = USB2_OBINT_SESSVLDCHG | USB2_OBINT_IDDIGCHG;
 	/* get irq number here and request_irq for OTG in phy_init */
 	channel->irq = platform_get_irq_optional(pdev, 0);
 	channel->dr_mode = rcar_gen3_get_dr_mode(dev->of_node);
@@ -634,6 +661,12 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
 		int ret;
 
 		channel->is_otg_channel = true;
+		attr = soc_device_match(soc_no_adp_ctrl);
+		if (attr) {
+			channel->soc_no_adp_ctrl = attr->data;
+			channel->obint_enable_bits = USB2_OBINT_IDCHG_EN;
+		}
+
 		channel->uses_otg_pins = !of_property_read_bool(dev->of_node,
 							"renesas,no-otg-pins");
 		channel->extcon = devm_extcon_dev_allocate(dev,
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
