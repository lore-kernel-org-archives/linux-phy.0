Return-Path: <SRS0=B4Pq=PG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B41C43219
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 01:42:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6EF2C61266
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 01:42:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6EF2C61266
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=socionext.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JKWhETZZ8GTnd8He8/nv7cOOiJpgvpP4MttCMi4/vc=; b=iTjO4+7rs/8mYf
	FKbwL7AXd36axzdG2DF7D8vm6NnR8gnJmiv2toHQpWvdyINStPI7tALnboKcOjeOS2IxN6+cat3Mk
	NcvCJR+FZR5gkUgsyrsfo0/lc0v11vOuZ+/cs/RyFyXi1PK7PQAEnRkXX5mQZGl2iy/NNF4j0/d0q
	jATbHob3KTbd+wElWJrOKFrPcoBqtVRccIFb09v9+4j0peMhAL2+Lxfdwsq1aNNB6YMox9keyaDea
	HIaDJLH4IDH65YGLSz5eeLUU3KGoba9CkLEoLbkLSYqrsIE2JNdsZfDI2RfnI5t0Rl2Lbaw7kERMW
	IMVu8aRqPnMbUk0ZzyoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcHf7-00Dj8w-Jp; Mon, 18 Oct 2021 01:42:01 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcHal-00Dh6a-SM; Mon, 18 Oct 2021 01:37:33 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 18 Oct 2021 10:37:31 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id F05C22058B40;
 Mon, 18 Oct 2021 10:37:30 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 18 Oct 2021 10:37:30 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id 466B0B62B7;
 Mon, 18 Oct 2021 10:37:30 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 6/8] phy: uniphier-pcie: Add dual-phy support for NX1 SoC
Date: Mon, 18 Oct 2021 10:37:11 +0900
Message-Id: <1634521033-17003-7-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1634521033-17003-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1634521033-17003-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_183732_095045_A2D62B83 
X-CRM114-Status: GOOD (  18.27  )
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

NX1 SoC supports 2 lanes and has dual-phy. Should set appropriate
configuration values to both PHY registers.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/phy/socionext/phy-uniphier-pcie.c | 48 ++++++++++++++++++++++---------
 1 file changed, 34 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/socionext/phy-uniphier-pcie.c b/drivers/phy/socionext/phy-uniphier-pcie.c
index 2bd8df619712..035d2496ab0c 100644
--- a/drivers/phy/socionext/phy-uniphier-pcie.c
+++ b/drivers/phy/socionext/phy-uniphier-pcie.c
@@ -27,6 +27,7 @@
 #define TESTI_DAT_MASK		GENMASK(13, 6)
 #define TESTI_ADR_MASK		GENMASK(5, 1)
 #define TESTI_WR_EN		BIT(0)
+#define TESTIO_PHY_SHIFT	16
 
 #define PCL_PHY_TEST_O		0x2004
 #define TESTO_DAT_MASK		GENMASK(7, 0)
@@ -65,43 +66,57 @@ struct uniphier_pciephy_priv {
 
 struct uniphier_pciephy_soc_data {
 	bool is_legacy;
+	bool is_dual_phy;
 	void (*set_phymode)(struct regmap *regmap);
 };
 
 static void uniphier_pciephy_testio_write(struct uniphier_pciephy_priv *priv,
-					  u32 data)
+					  int id, u32 data)
 {
+	if (id)
+		data <<= TESTIO_PHY_SHIFT;
+
 	/* need to read TESTO twice after accessing TESTI */
 	writel(data, priv->base + PCL_PHY_TEST_I);
 	readl(priv->base + PCL_PHY_TEST_O);
 	readl(priv->base + PCL_PHY_TEST_O);
 }
 
+static u32 uniphier_pciephy_testio_read(struct uniphier_pciephy_priv *priv, int id)
+{
+	u32 val = readl(priv->base + PCL_PHY_TEST_O);
+
+	if (id)
+		val >>= TESTIO_PHY_SHIFT;
+
+	return val & TESTO_DAT_MASK;
+}
+
 static void uniphier_pciephy_set_param(struct uniphier_pciephy_priv *priv,
-				       u32 reg, u32 mask, u32 param)
+				       int id, u32 reg, u32 mask, u32 param)
 {
 	u32 val;
 
 	/* read previous data */
 	val  = FIELD_PREP(TESTI_DAT_MASK, 1);
 	val |= FIELD_PREP(TESTI_ADR_MASK, reg);
-	uniphier_pciephy_testio_write(priv, val);
-	val = readl(priv->base + PCL_PHY_TEST_O) & TESTO_DAT_MASK;
+	uniphier_pciephy_testio_write(priv, id, val);
+	val = uniphier_pciephy_testio_read(priv, id);
 
 	/* update value */
 	val &= ~mask;
 	val |= mask & param;
 	val = FIELD_PREP(TESTI_DAT_MASK, val);
 	val |= FIELD_PREP(TESTI_ADR_MASK, reg);
-	uniphier_pciephy_testio_write(priv, val);
-	uniphier_pciephy_testio_write(priv, val | TESTI_WR_EN);
-	uniphier_pciephy_testio_write(priv, val);
+	uniphier_pciephy_testio_write(priv, id, val);
+	uniphier_pciephy_testio_write(priv, id, val | TESTI_WR_EN);
+	uniphier_pciephy_testio_write(priv, id, val);
 
 	/* read current data as dummy */
 	val  = FIELD_PREP(TESTI_DAT_MASK, 1);
 	val |= FIELD_PREP(TESTI_ADR_MASK, reg);
-	uniphier_pciephy_testio_write(priv, val);
-	readl(priv->base + PCL_PHY_TEST_O);
+	uniphier_pciephy_testio_write(priv, id, val);
+	uniphier_pciephy_testio_read(priv, id);
 }
 
 static void uniphier_pciephy_assert(struct uniphier_pciephy_priv *priv)
@@ -127,7 +142,7 @@ static int uniphier_pciephy_init(struct phy *phy)
 {
 	struct uniphier_pciephy_priv *priv = phy_get_drvdata(phy);
 	u32 val;
-	int ret;
+	int ret, id;
 
 	ret = clk_prepare_enable(priv->clk);
 	if (ret)
@@ -155,14 +170,16 @@ static int uniphier_pciephy_init(struct phy *phy)
 	if (priv->data->is_legacy)
 		return 0;
 
-	uniphier_pciephy_set_param(priv, PCL_PHY_R00,
+	for (id = 0; id < (priv->data->is_dual_phy ? 2 : 1); id++) {
+		uniphier_pciephy_set_param(priv, id, PCL_PHY_R00,
 				   RX_EQ_ADJ_EN, RX_EQ_ADJ_EN);
-	uniphier_pciephy_set_param(priv, PCL_PHY_R06, RX_EQ_ADJ,
+		uniphier_pciephy_set_param(priv, id, PCL_PHY_R06, RX_EQ_ADJ,
 				   FIELD_PREP(RX_EQ_ADJ, RX_EQ_ADJ_VAL));
-	uniphier_pciephy_set_param(priv, PCL_PHY_R26, VCO_CTRL,
+		uniphier_pciephy_set_param(priv, id, PCL_PHY_R26, VCO_CTRL,
 				   FIELD_PREP(VCO_CTRL, VCO_CTRL_INIT_VAL));
-	uniphier_pciephy_set_param(priv, PCL_PHY_R28, VCOPLL_CLMP,
+		uniphier_pciephy_set_param(priv, PCL_PHY_R28, VCOPLL_CLMP,
 				   FIELD_PREP(VCOPLL_CLMP, VCOPLL_CLMP_VAL));
+	}
 	usleep_range(1, 10);
 
 	uniphier_pciephy_deassert(priv);
@@ -282,15 +299,18 @@ static const struct uniphier_pciephy_soc_data uniphier_pro5_data = {
 
 static const struct uniphier_pciephy_soc_data uniphier_ld20_data = {
 	.is_legacy = false,
+	.is_dual_phy = false,
 	.set_phymode = uniphier_pciephy_ld20_setmode,
 };
 
 static const struct uniphier_pciephy_soc_data uniphier_pxs3_data = {
 	.is_legacy = false,
+	.is_dual_phy = false,
 };
 
 static const struct uniphier_pciephy_soc_data uniphier_nx1_data = {
 	.is_legacy = false,
+	.is_dual_phy = true,
 	.set_phymode = uniphier_pciephy_nx1_setmode,
 };
 
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
