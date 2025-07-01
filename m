Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E40CC7EE30
	for <linux-phy@archiver.kernel.org>; Tue,  1 Jul 2025 14:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G5pNnSWHry9f2PD4ZRv4aocn9BH3NvewUBCslEYIj40=; b=rhK/JN8Zh6XCwW
	iD/plJ2atszRJelnTaJEHSOwJeeSjEvHCjShxDw98+pka/p+r+QqKrAa0+ruweQh3kGBn0PuxFD9Q
	vBqAxfS2oedvKu5un37FjCAAu8P+xH2vVzKWj2orBW0HZN5Kt6Wzu6yIm6w8BaJZSoIEiZjW9GJ3x
	HrcxcnYtAvKUbjPZL1kaArhXELNA1kERDJ9KZpPxZuwZk3Ddlvr6xIDfULI5yZ8ru5Ph2/OQ2BpMA
	mYKk7y3n990GgDXvMK/mQ07ErPnd8UZ8KxgnxNftmn6Pp+6mSLQNIWMlRoDbqQbJtO5fHNsK+Mor7
	h0V8Ujq/YBni/o3deO7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWcI9-00000005loB-1hrj;
	Tue, 01 Jul 2025 14:49:01 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWaiZ-00000005SNZ-2OBd
	for linux-phy@lists.infradead.org;
	Tue, 01 Jul 2025 13:08:12 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250701130809epoutp0304c1078ce3a131f6cd656a9f0c414e6a~OIovupDAU1351213512epoutp03i
	for <linux-phy@lists.infradead.org>; Tue,  1 Jul 2025 13:08:09 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250701130809epoutp0304c1078ce3a131f6cd656a9f0c414e6a~OIovupDAU1351213512epoutp03i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1751375289;
	bh=pvoHxXvlrlKde8j+ma+r7GZr6pK2wxjLK7jGp5m/Tr8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UFW9uTotF5JNcXZqMUxLXpPYNe2VF0PhCDzUbqiVrQleH4Fvr/e1fc9TiYt0Qx43f
	 Lzv4Tm0/LXOmz7MH7odGsJNAHtiwFT8vQHJW/zfpkPwAJnibqrrW1h4cnvC38cAXcQ
	 Yy4OQq/UTzcHjiJdZZvVYpWQLORVyG5oCMzp02s0=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250701130808epcas5p141519839fbd01223fd53a85cccefabee~OIouvWza11094810948epcas5p1p;
	Tue,  1 Jul 2025 13:08:08 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.182]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bWjxy3lmFz3hhT7; Tue,  1 Jul
	2025 13:08:06 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250701120005epcas5p24a8cfb5037524127416756fb723ccae7~OHtUl4_WI0527505275epcas5p2u;
	Tue,  1 Jul 2025 12:00:05 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250701120002epsmtip1963c41750682632818c9ba20a18b8e5e~OHtRvKFrW1373213732epsmtip15;
	Tue,  1 Jul 2025 12:00:02 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org,
	neil.armstrong@linaro.org, kauschluss@disroot.org,
	ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com,
	s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com
Subject: [PATCH v4 4/6] phy: exynos5-usbdrd: support HS combo phy for
 ExynosAutov920
Date: Tue,  1 Jul 2025 17:37:04 +0530
Message-Id: <20250701120706.2219355-5-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250701120706.2219355-1-pritam.sutar@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250701120005epcas5p24a8cfb5037524127416756fb723ccae7
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250701120005epcas5p24a8cfb5037524127416756fb723ccae7
References: <20250701120706.2219355-1-pritam.sutar@samsung.com>
	<CGME20250701120005epcas5p24a8cfb5037524127416756fb723ccae7@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_060811_912491_2AC82CEE 
X-CRM114-Status: GOOD (  19.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This SoC has a single USB 3.1 DRD combo phy that supports both
UTMI+ (HS) and PIPE3 (SS) and three USB2.0 DRD HS phy controllers
those only support the UTMI+ (HS) interface.

Support UTMI+ combo phy for this SoC which is somewhat simmilar to
what the existing Exynos850 support does. The difference is that
some register offsets and bit fields are defferent from Exynos850.

Add required change in phy driver to support combo HS phy for this SoC.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 212 +++++++++++++++++++++++
 1 file changed, 212 insertions(+)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 64f3316f6ad4..8a1cd63b29ce 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -41,6 +41,13 @@
 #define EXYNOS2200_CLKRST_LINK_PCLK_SEL		BIT(1)
 
 #define EXYNOS2200_DRD_UTMI			0x10
+
+/* ExynosAutov920 bits */
+#define UTMICTL_FORCE_UTMI_SUSPEND		BIT(13)
+#define UTMICTL_FORCE_UTMI_SLEEP		BIT(12)
+#define UTMICTL_FORCE_DPPULLDOWN		BIT(9)
+#define UTMICTL_FORCE_DMPULLDOWN		BIT(8)
+
 #define EXYNOS2200_UTMI_FORCE_VBUSVALID		BIT(1)
 #define EXYNOS2200_UTMI_FORCE_BVALID		BIT(0)
 
@@ -250,6 +257,22 @@
 #define EXYNOS850_DRD_HSP_TEST			0x5c
 #define HSP_TEST_SIDDQ				BIT(24)
 
+#define EXYNOSAUTOV920_DRD_HSP_CLKRST		0x100
+#define HSPCLKRST_PHY20_SW_PORTRESET		BIT(3)
+#define HSPCLKRST_PHY20_SW_POR			BIT(1)
+#define HSPCLKRST_PHY20_SW_POR_SEL		BIT(0)
+
+#define EXYNOSAUTOV920_DRD_HSPCTL		0x104
+#define HSPCTRL_VBUSVLDEXTSEL			BIT(13)
+#define HSPCTRL_VBUSVLDEXT			BIT(12)
+#define HSPCTRL_EN_UTMISUSPEND			BIT(9)
+#define HSPCTRL_COMMONONN			BIT(8)
+
+#define EXYNOSAUTOV920_DRD_HSP_TEST		0x10c
+
+#define EXYNOSAUTOV920_DRD_HSPPLLTUNE		0x110
+#define HSPPLLTUNE_FSEL				GENMASK(18, 16)
+
 /* Exynos9 - GS101 */
 #define EXYNOS850_DRD_SECPMACTL			0x48
 #define SECPMACTL_PMA_ROPLL_REF_CLK_SEL		GENMASK(13, 12)
@@ -2056,6 +2079,139 @@ static const struct exynos5_usbdrd_phy_drvdata exynos990_usbdrd_phy = {
 	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
 };
 
+static void
+exynosautov920_usbdrd_utmi_init(struct exynos5_usbdrd_phy *phy_drd)
+{
+	void __iomem *reg_phy = phy_drd->reg_phy;
+	u32 reg;
+
+	/*
+	 * Disable HWACG (hardware auto clock gating control). This
+	 * forces QACTIVE signal in Q-Channel interface to HIGH level,
+	 * to make sure the PHY clock is not gated by the hardware.
+	 */
+	reg = readl(reg_phy + EXYNOS850_DRD_LINKCTRL);
+	reg |= LINKCTRL_FORCE_QACT;
+	writel(reg, reg_phy + EXYNOS850_DRD_LINKCTRL);
+
+	/* De-assert link reset */
+	reg = readl(reg_phy + EXYNOS2200_DRD_CLKRST);
+	reg &= ~CLKRST_LINK_SW_RST;
+	writel(reg, reg_phy + EXYNOS2200_DRD_CLKRST);
+
+	/* Set PHY POR High */
+	reg = readl(reg_phy + EXYNOSAUTOV920_DRD_HSP_CLKRST);
+	reg |= HSPCLKRST_PHY20_SW_POR | HSPCLKRST_PHY20_SW_POR_SEL;
+	writel(reg, reg_phy + EXYNOSAUTOV920_DRD_HSP_CLKRST);
+
+	/* Enable UTMI+ */
+	reg = readl(reg_phy + EXYNOS2200_DRD_UTMI);
+	reg &= ~(UTMICTL_FORCE_UTMI_SUSPEND | UTMICTL_FORCE_UTMI_SLEEP |
+		UTMICTL_FORCE_DPPULLDOWN | UTMICTL_FORCE_DMPULLDOWN);
+	writel(reg, reg_phy + EXYNOS2200_DRD_UTMI);
+
+	/* set phy clock & control HS phy */
+	reg = readl(reg_phy + EXYNOSAUTOV920_DRD_HSPCTL);
+	reg |= HSPCTRL_EN_UTMISUSPEND | HSPCTRL_COMMONONN;
+	writel(reg, reg_phy + EXYNOSAUTOV920_DRD_HSPCTL);
+
+	fsleep(100);
+
+	/* Set VBUS Valid and DP-Pull up control by VBUS pad usage */
+	reg = readl(reg_phy + EXYNOS850_DRD_LINKCTRL);
+	reg |= FIELD_PREP_CONST(LINKCTRL_BUS_FILTER_BYPASS, 0xf);
+	writel(reg, reg_phy + EXYNOS850_DRD_LINKCTRL);
+
+	reg = readl(reg_phy + EXYNOS2200_DRD_UTMI);
+	reg |= EXYNOS2200_UTMI_FORCE_VBUSVALID | EXYNOS2200_UTMI_FORCE_BVALID;
+	writel(reg, reg_phy + EXYNOS2200_DRD_UTMI);
+
+	reg = readl(reg_phy + EXYNOSAUTOV920_DRD_HSPCTL);
+	reg |= HSPCTRL_VBUSVLDEXTSEL | HSPCTRL_VBUSVLDEXT;
+	writel(reg, reg_phy + EXYNOSAUTOV920_DRD_HSPCTL);
+
+	/* Setting FSEL for refference clock */
+	reg = readl(reg_phy + EXYNOSAUTOV920_DRD_HSPPLLTUNE);
+	reg &= ~HSPPLLTUNE_FSEL;
+	switch (phy_drd->extrefclk) {
+	case EXYNOS5_FSEL_50MHZ:
+		reg |= FIELD_PREP(HSPPLLTUNE_FSEL, 7);
+		break;
+	case EXYNOS5_FSEL_26MHZ:
+		reg |= FIELD_PREP(HSPPLLTUNE_FSEL, 6);
+		break;
+	case EXYNOS5_FSEL_24MHZ:
+		reg |= FIELD_PREP(HSPPLLTUNE_FSEL, 2);
+		break;
+	case EXYNOS5_FSEL_20MHZ:
+		reg |= FIELD_PREP(HSPPLLTUNE_FSEL, 1);
+		break;
+	case EXYNOS5_FSEL_19MHZ2:
+		reg |= FIELD_PREP(HSPPLLTUNE_FSEL, 0);
+		break;
+	default:
+		dev_warn(phy_drd->dev, "unsupported ref clk: %#.2x\n",
+			 phy_drd->extrefclk);
+		break;
+	}
+	writel(reg, reg_phy + EXYNOSAUTOV920_DRD_HSPPLLTUNE);
+
+	/* Enable PHY Power Mode */
+	reg = readl(reg_phy + EXYNOSAUTOV920_DRD_HSP_TEST);
+	reg &= ~HSP_TEST_SIDDQ;
+	writel(reg, reg_phy + EXYNOSAUTOV920_DRD_HSP_TEST);
+
+	/* before POR low, 10us delay is needed to Finish PHY reset */
+	fsleep(10);
+
+	/* Set PHY POR Low */
+	reg = readl(reg_phy + EXYNOSAUTOV920_DRD_HSP_CLKRST);
+	reg |= HSPCLKRST_PHY20_SW_POR_SEL;
+	reg &= ~(HSPCLKRST_PHY20_SW_POR | HSPCLKRST_PHY20_SW_PORTRESET);
+	writel(reg, reg_phy + EXYNOSAUTOV920_DRD_HSP_CLKRST);
+
+	/* after POR low and delay 75us, PHYCLOCK is guaranteed. */
+	fsleep(75);
+
+	/* force pipe3 signal for link */
+	reg = readl(reg_phy + EXYNOS850_DRD_LINKCTRL);
+	reg |= LINKCTRL_FORCE_PIPE_EN;
+	reg &= ~LINKCTRL_FORCE_PHYSTATUS;
+	reg |= LINKCTRL_FORCE_RXELECIDLE;
+	writel(reg, reg_phy + EXYNOS850_DRD_LINKCTRL);
+}
+
+static void
+exynosautov920_usbdrd_hsphy_disable(struct exynos5_usbdrd_phy *phy_drd)
+{
+	u32 reg;
+	void __iomem *reg_phy = phy_drd->reg_phy;
+
+	/* set phy clock & control HS phy */
+	reg = readl(reg_phy + EXYNOS2200_DRD_UTMI);
+	reg |= UTMICTL_FORCE_UTMI_SUSPEND | UTMICTL_FORCE_UTMI_SLEEP;
+	reg &= ~(UTMICTL_FORCE_DPPULLDOWN | UTMICTL_FORCE_DMPULLDOWN);
+	writel(reg, reg_phy + EXYNOS2200_DRD_UTMI);
+
+	/* Disable PHY Power Mode */
+	reg = readl(reg_phy + EXYNOSAUTOV920_DRD_HSP_TEST);
+	reg |= HSP_TEST_SIDDQ;
+	writel(reg, reg_phy + EXYNOSAUTOV920_DRD_HSP_TEST);
+
+	/* clear force q-channel */
+	reg = readl(reg_phy + EXYNOS850_DRD_LINKCTRL);
+	reg &= ~LINKCTRL_FORCE_QACT;
+	writel(reg, reg_phy + EXYNOS850_DRD_LINKCTRL);
+
+	/* link sw reset is need for USB_DP/DM high-z in host mode */
+	reg = readl(reg_phy + EXYNOS2200_DRD_CLKRST);
+	reg |= CLKRST_LINK_SW_RST;
+	writel(reg, reg_phy + EXYNOS2200_DRD_CLKRST);
+	fsleep(10);
+	reg &= ~CLKRST_LINK_SW_RST;
+	writel(reg, reg_phy + EXYNOS2200_DRD_CLKRST);
+}
+
 static int exynosautov920_usbdrd_phy_init(struct phy *phy)
 {
 	struct phy_usb_instance *inst = phy_get_drvdata(phy);
@@ -2103,6 +2259,29 @@ static int exynosautov920_usbdrd_phy_exit(struct phy *phy)
 	return 0;
 }
 
+static int exynosautov920_usbdrd_combo_phy_exit(struct phy *phy)
+{
+	struct phy_usb_instance *inst = phy_get_drvdata(phy);
+	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
+	int ret = 0;
+
+	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd->clks);
+	if (ret)
+		return ret;
+
+	if (inst->phy_cfg->id == EXYNOS5_DRDPHY_UTMI) {
+		exynosautov920_usbdrd_hsphy_disable(phy_drd);
+
+		/* enable PHY isol when all USBs are powered off */
+		if (atomic_dec_and_test(&usage_count))
+			inst->phy_cfg->phy_isol(inst, true);
+	}
+
+	clk_bulk_disable_unprepare(phy_drd->drv_data->n_clks, phy_drd->clks);
+
+	return 0;
+}
+
 static int exynosautov920_usbdrd_phy_power_on(struct phy *phy)
 {
 	int ret;
@@ -2154,6 +2333,36 @@ static const char * const exynosautov920_regulator_names[] = {
 	"avdd075_usb", "avdd18_usb20", "avdd33_usb20",
 };
 
+static const struct phy_ops exynosautov920_usbdrd_combo_hsphy_ops = {
+	.init		= exynosautov920_usbdrd_phy_init,
+	.exit		= exynosautov920_usbdrd_combo_phy_exit,
+	.power_on	= exynosautov920_usbdrd_phy_power_on,
+	.power_off	= exynosautov920_usbdrd_phy_power_off,
+	.owner		= THIS_MODULE,
+};
+
+static const struct
+exynos5_usbdrd_phy_config usbdrd_hsphy_cfg_exynosautov920[] = {
+	{
+		.id		= EXYNOS5_DRDPHY_UTMI,
+		.phy_isol	= exynos5_usbdrd_phy_isol,
+		.phy_init	= exynosautov920_usbdrd_utmi_init,
+	},
+};
+
+static const
+struct exynos5_usbdrd_phy_drvdata exynosautov920_usbdrd_combo_hsphy = {
+	.phy_cfg		= usbdrd_hsphy_cfg_exynosautov920,
+	.phy_ops		= &exynosautov920_usbdrd_combo_hsphy_ops,
+	.pmu_offset_usbdrd0_phy	= EXYNOSAUTOV920_PHY_CTRL_USB20,
+	.clk_names		= exynos5_clk_names,
+	.n_clks			= ARRAY_SIZE(exynos5_clk_names),
+	.core_clk_names		= exynos5_core_clk_names,
+	.n_core_clks		= ARRAY_SIZE(exynos5_core_clk_names),
+	.regulator_names	= exynosautov920_regulator_names,
+	.n_regulators		= ARRAY_SIZE(exynosautov920_regulator_names),
+};
+
 static const struct phy_ops exynosautov920_usbdrd_phy_ops = {
 	.init		= exynosautov920_usbdrd_phy_init,
 	.exit		= exynosautov920_usbdrd_phy_exit,
@@ -2388,6 +2597,9 @@ static const struct of_device_id exynos5_usbdrd_phy_of_match[] = {
 	}, {
 		.compatible = "samsung,exynos990-usbdrd-phy",
 		.data = &exynos990_usbdrd_phy
+	}, {
+		.compatible = "samsung,exynosautov920-usbdrd-combo-hsphy",
+		.data = &exynosautov920_usbdrd_combo_hsphy
 	}, {
 		.compatible = "samsung,exynosautov920-usbdrd-phy",
 		.data = &exynosautov920_usbdrd_phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
