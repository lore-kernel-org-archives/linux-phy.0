Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66BDECFA466
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRFdH5aMwg6ptvkrBouRFlSABESEMGQE85l2mtPHes8=; b=evnHkNBJ6aEp8q
	V+GxGXXiJcgF2raMQR79t2MBWomoBaw9VsOiYweBmUiZmmooYKlJaWk8nzjLV8bFyuDxCKX7RwZQF
	Quf/e4LKk+7XrBEp7W3xo3G4dncpnAZwRyMT6xq3mti+trGD9v2OehApzKC8EJZuEoH1x0KIxykN8
	ZHhng4mha46I+wsJEPnbRkLhjR+UQ0TYq+6z9W9ckMdtswRH6GZOigItjg9KgtI9aqeWSybbDMztN
	FlRvcWvRiKssZPmJ66ofERvKd8HKnNR3JMepkxmBMDv49FhOLUQMa6vWmfrqyfhUWOUFsxovhXJsV
	3+kglgeu/sgBwnvo3z3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNUG4-0000000BTVS-0dBO;
	Mon, 24 Nov 2025 10:57:24 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNUFy-0000000BTSQ-0mGo
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:57:19 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20251124105714epoutp031bf13ed29ec4426989f5cb261492db4c~67CH90Myc2773027730epoutp03F
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:57:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20251124105714epoutp031bf13ed29ec4426989f5cb261492db4c~67CH90Myc2773027730epoutp03F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1763981834;
	bh=j5xDF7/ZDYe+564XyaggT3JcBXJ3ZGQspQYKnmEL6u0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XQJxjHt2cfK0kstRYACLw0PT2vZPl7aILVtD4ApRub7M80dTaJGf0+IaLo8jBDtGc
	 Dym03VmFFlZngHsd5C6NI3UbSKbo+pmGxfankjZXay++KsYd56TnqLjIMz/ZhSMjii
	 aDp9MLoQF80XEU2u0wYGO/tyO9ftxjOH9E34hIsY=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20251124105713epcas5p24da27bebcc49e9940f51d3c74a9a650b~67CGzc0v-0160201602epcas5p2L;
	Mon, 24 Nov 2025 10:57:13 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.92]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4dFN7X4HzTz6B9m5; Mon, 24 Nov
	2025 10:57:12 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20251124105711epcas5p244ca87a6ea6ab6d170d10c1f19ccd405~67CFHQZXQ0969809698epcas5p2T;
	Mon, 24 Nov 2025 10:57:11 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20251124105702epsmtip27af0e39c362b2cb2f383e57e7ebd456b~67B8NmoQg1792217922epsmtip2G;
	Mon, 24 Nov 2025 10:57:01 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org,
	johan@kernel.org, ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com,
	s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com
Subject: [PATCH v10 2/6] phy: exynos5-usbdrd: support HS phy for
 ExynosAutov920
Date: Mon, 24 Nov 2025 16:34:49 +0530
Message-Id: <20251124110453.2887437-3-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251124110453.2887437-1-pritam.sutar@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20251124105711epcas5p244ca87a6ea6ab6d170d10c1f19ccd405
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20251124105711epcas5p244ca87a6ea6ab6d170d10c1f19ccd405
References: <20251124110453.2887437-1-pritam.sutar@samsung.com>
	<CGME20251124105711epcas5p244ca87a6ea6ab6d170d10c1f19ccd405@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_025718_541195_2BF93DC6 
X-CRM114-Status: GOOD (  15.66  )
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

Enable UTMI+ phy support for this SoC which is very similar to what
the existing Exynos850 supports.

Add required change in phy driver to support HS phy for this SoC.

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c    | 123 ++++++++++++++++++++
 include/linux/soc/samsung/exynos-regs-pmu.h |   2 +
 2 files changed, 125 insertions(+)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 1c8bf80119f1..7416d2e1e358 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -2054,6 +2054,126 @@ static const struct exynos5_usbdrd_phy_drvdata exynos990_usbdrd_phy = {
 	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
 };
 
+static int exynosautov920_usbdrd_phy_init(struct phy *phy)
+{
+	struct phy_usb_instance *inst = phy_get_drvdata(phy);
+	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
+	int ret;
+
+	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd->clks);
+	if (ret)
+		return ret;
+
+	/* Bypass PHY isol */
+	inst->phy_cfg->phy_isol(inst, false);
+
+	/* UTMI or PIPE3 specific init */
+	inst->phy_cfg->phy_init(phy_drd);
+
+	clk_bulk_disable_unprepare(phy_drd->drv_data->n_clks, phy_drd->clks);
+
+	return 0;
+}
+
+static int exynosautov920_usbdrd_phy_exit(struct phy *phy)
+{
+	struct phy_usb_instance *inst = phy_get_drvdata(phy);
+	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
+	int ret;
+
+	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd->clks);
+	if (ret)
+		return ret;
+
+	exynos850_usbdrd_phy_exit(phy);
+
+	/* enable PHY isol */
+	inst->phy_cfg->phy_isol(inst, true);
+
+	clk_bulk_disable_unprepare(phy_drd->drv_data->n_clks, phy_drd->clks);
+
+	return 0;
+}
+
+static int exynosautov920_usbdrd_phy_power_on(struct phy *phy)
+{
+	struct phy_usb_instance *inst = phy_get_drvdata(phy);
+	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
+	int ret;
+
+	dev_dbg(phy_drd->dev, "Request to power_on usbdrd_phy phy\n");
+
+	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_core_clks,
+				      phy_drd->core_clks);
+	if (ret)
+		return ret;
+
+	/* Enable supply */
+	ret = regulator_bulk_enable(phy_drd->drv_data->n_regulators,
+				    phy_drd->regulators);
+	if (ret) {
+		dev_err(phy_drd->dev, "Failed to enable PHY regulator(s)\n");
+		goto fail_supply;
+	}
+
+	return 0;
+
+fail_supply:
+	clk_bulk_disable_unprepare(phy_drd->drv_data->n_core_clks,
+				   phy_drd->core_clks);
+
+	return ret;
+}
+
+static int exynosautov920_usbdrd_phy_power_off(struct phy *phy)
+{
+	struct phy_usb_instance *inst = phy_get_drvdata(phy);
+	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
+
+	dev_dbg(phy_drd->dev, "Request to power_off usbdrd_phy phy\n");
+
+	/* Disable supply */
+	regulator_bulk_disable(phy_drd->drv_data->n_regulators,
+			       phy_drd->regulators);
+
+	clk_bulk_disable_unprepare(phy_drd->drv_data->n_core_clks,
+				   phy_drd->core_clks);
+
+	return 0;
+}
+
+static const char * const exynosautov920_usb20_regulators[] = {
+	"dvdd", "vdd18", "vdd33",
+};
+
+static const struct phy_ops exynosautov920_usbdrd_phy_ops = {
+	.init		= exynosautov920_usbdrd_phy_init,
+	.exit		= exynosautov920_usbdrd_phy_exit,
+	.power_on       = exynosautov920_usbdrd_phy_power_on,
+	.power_off      = exynosautov920_usbdrd_phy_power_off,
+	.owner		= THIS_MODULE,
+};
+
+static const struct exynos5_usbdrd_phy_config phy_cfg_exynosautov920[] = {
+	{
+		.id		= EXYNOS5_DRDPHY_UTMI,
+		.phy_isol	= exynos5_usbdrd_phy_isol,
+		.phy_init	= exynos850_usbdrd_utmi_init,
+	},
+};
+
+static const struct exynos5_usbdrd_phy_drvdata exynosautov920_usbdrd_phy = {
+	.phy_cfg		= phy_cfg_exynosautov920,
+	.phy_ops		= &exynosautov920_usbdrd_phy_ops,
+	.pmu_offset_usbdrd0_phy	= EXYNOSAUTOV920_PHY_CTRL_USB20,
+	.clk_names		= exynos5_clk_names,
+	.n_clks			= ARRAY_SIZE(exynos5_clk_names),
+	.core_clk_names		= exynos5_core_clk_names,
+	.n_core_clks		= ARRAY_SIZE(exynos5_core_clk_names),
+	.regulator_names	= exynosautov920_usb20_regulators,
+	.n_regulators		= ARRAY_SIZE(exynosautov920_usb20_regulators),
+};
+
 static const struct exynos5_usbdrd_phy_config phy_cfg_gs101[] = {
 	{
 		.id		= EXYNOS5_DRDPHY_UTMI,
@@ -2260,6 +2380,9 @@ static const struct of_device_id exynos5_usbdrd_phy_of_match[] = {
 	}, {
 		.compatible = "samsung,exynos990-usbdrd-phy",
 		.data = &exynos990_usbdrd_phy
+	}, {
+		.compatible = "samsung,exynosautov920-usbdrd-phy",
+		.data = &exynosautov920_usbdrd_phy
 	},
 	{ },
 };
diff --git a/include/linux/soc/samsung/exynos-regs-pmu.h b/include/linux/soc/samsung/exynos-regs-pmu.h
index 532c6c2d1195..ab4d8be0e073 100644
--- a/include/linux/soc/samsung/exynos-regs-pmu.h
+++ b/include/linux/soc/samsung/exynos-regs-pmu.h
@@ -1015,4 +1015,6 @@
 #define GS101_GRP2_INTR_BID_UPEND				(0x0208)
 #define GS101_GRP2_INTR_BID_CLEAR				(0x020c)
 
+/* exynosautov920 */
+#define EXYNOSAUTOV920_PHY_CTRL_USB20				(0x0710)
 #endif /* __LINUX_SOC_EXYNOS_REGS_PMU_H */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
