Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D81A2C43217
	for <linux-phy@archiver.kernel.org>; Wed, 11 May 2022 15:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ROJK3DxkULZP8YTXG2S/snPrwsAEppi1zh6QQ2N6Hjk=; b=uK+hQJpLcGwgNc
	hTz0VBvcgZGf1Mmit3Iy6OlQr5JzAGJaDTeXSt/a0MeFbA/nn1cwAZMAxkD0cZ2MWTvUhT0Ia0Srl
	cU5daGSrMtzY6FZt4Hje+rMDNdLQ2U5Kz3fI6RKoeL28I7j/RZiLi+LjVTbxztHKd+CmBnNLuD9ND
	Y8OEGW2n/nSBmdtn26jg2wgBmb890/CT4zKbOTwiamBinMK4iKLPEng8A0/p/72If0Tivwz7jtgmR
	/cEUjQtHoVN5UwidfSG8iH5rDfuYnexQZlDeOzn7nfggwkl4m2rrLoYckm/7PXwjxaHxt21TL+6Jn
	MLF6SgiThgs0Xko6RKFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nooF3-007ZPP-7X; Wed, 11 May 2022 15:27:09 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nooEz-007ZGN-Io
 for linux-phy@lists.infradead.org; Wed, 11 May 2022 15:27:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1652282825; x=1683818825;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=r4WzfYXCF4xrMYBwXxL8x/YcPGndJphykDumlO9Y6lo=;
 b=WG3GYfW+5t2wwHHarDspve3QHJ6TRFeJ58InkijGaIOHTPx7cvlqyVNx
 vxMFOa+K/1u7Q35O77lSNxkhwwCDNwupyG1UOBH39+fQLdp+KwK6orQl9
 /YxIJ830IY1qWETwy6N2ZExytcFUbEOw7LNNIDx21+dgM4IRhRs1SY1RE U=;
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 11 May 2022 08:26:59 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg03-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 08:26:58 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 11 May 2022 08:26:58 -0700
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Wed, 11 May 2022 08:26:52 -0700
From: Krishna Kurapati <quic_kriskura@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Stephen Boyd <swboyd@chromium.org>, "Doug
 Anderson" <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <quic_pkondeti@quicinc.com>,
 <quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>, Krishna Kurapati
 <quic_kriskura@quicinc.com>
Subject: [v4 2/3] phy: qcom-snps: Add support for overriding phy tuning
 parameters
Date: Wed, 11 May 2022 20:56:32 +0530
Message-ID: <1652282793-5580-3-git-send-email-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
References: <1652282793-5580-1-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_082705_705128_1F681EAB 
X-CRM114-Status: GOOD (  19.30  )
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

Add support for overriding electrical signal tuning parameters for
SNPS HS Phy.

Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
Reported-by: kernel test robot <lkp@intel.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 267 +++++++++++++++++++++++++-
 1 file changed, 265 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 5d20378..7d154e7 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -52,6 +52,12 @@
 #define USB2_SUSPEND_N				BIT(2)
 #define USB2_SUSPEND_N_SEL			BIT(3)
 
+#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X0		(0x6c)
+#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1		(0x70)
+#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X2		(0x74)
+#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X3		(0x78)
+#define PARAM_OVRD_MASK				0xFF
+
 #define USB2_PHY_USB_PHY_CFG0			(0x94)
 #define UTMI_PHY_DATAPATH_CTRL_OVERRIDE_EN	BIT(0)
 #define UTMI_PHY_CMN_CTRL_OVERRIDE_EN		BIT(1)
@@ -60,12 +66,76 @@
 #define REFCLK_SEL_MASK				GENMASK(1, 0)
 #define REFCLK_SEL_DEFAULT			(0x2 << 0)
 
+#define HS_DISCONNECT_MASK			GENMASK(2, 0)
+
+#define SQUELCH_DETECTOR_MASK			GENMASK(7, 5)
+
+#define HS_AMPLITUDE_MASK			GENMASK(3, 0)
+
+#define PREEMPHASIS_DURATION_MASK		BIT(5)
+
+#define PREEMPHASIS_AMPLITUDE_MASK		GENMASK(7, 6)
+
+#define HS_RISE_FALL_MASK			GENMASK(1, 0)
+
+#define HS_CROSSOVER_VOLTAGE_MASK		GENMASK(3, 2)
+
+#define HS_OUTPUT_IMPEDANCE_MASK		GENMASK(5, 4)
+
+#define LS_FS_OUTPUT_IMPEDANCE_MASK		GENMASK(3, 0)
+
+
 static const char * const qcom_snps_hsphy_vreg_names[] = {
 	"vdda-pll", "vdda33", "vdda18",
 };
 
 #define SNPS_HS_NUM_VREGS		ARRAY_SIZE(qcom_snps_hsphy_vreg_names)
 
+struct override_param {
+	s32	value;
+	u8	reg;
+};
+
+#define OVERRIDE_PARAM(bps, val)\
+{				\
+	.value = bps,		\
+	.reg = val,		\
+}
+
+struct override_param_map {
+	struct override_param *param_table;
+	u8 table_size;
+	u8 reg_offset;
+	u8 param_mask;
+};
+
+#define OVERRIDE_PARAM_MAP(table, num_elements, offset, mask)		\
+{									\
+	.param_table = table,						\
+	.table_size = num_elements,					\
+	.reg_offset = offset,						\
+	.param_mask = mask,						\
+}
+
+struct phy_override_seq {
+	bool	need_update;
+	u8	offset;
+	u8	value;
+	u8	mask;
+};
+
+static const char *phy_seq_props[] = {
+	"qcom,hs-disconnect-bps",
+	"qcom,squelch-detector-bps",
+	"qcom,hs-amplitude-bps",
+	"qcom,preemphasis-duration-bps",
+	"qcom,preemphasis-amplitude-bps",
+	"qcom,hs-rise-fall-time-bps",
+	"qcom,hs-crossover-voltage-mv",
+	"qcom,hs-output-impedance-mohm",
+	"qcom,ls-fs-output-impedance-bps",
+};
+
 /**
  * struct qcom_snps_hsphy - snps hs phy attributes
  *
@@ -91,6 +161,7 @@ struct qcom_snps_hsphy {
 
 	bool phy_initialized;
 	enum phy_mode mode;
+	struct phy_override_seq update_seq_cfg[ARRAY_SIZE(phy_seq_props)];
 };
 
 static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
@@ -173,10 +244,147 @@ static int qcom_snps_hsphy_set_mode(struct phy *phy, enum phy_mode mode,
 	return 0;
 }
 
+static struct override_param hs_disconnect_sc7280[] = {
+	OVERRIDE_PARAM(-272, 0),
+	OVERRIDE_PARAM(0, 1),
+	OVERRIDE_PARAM(317, 2),
+	OVERRIDE_PARAM(630, 3),
+	OVERRIDE_PARAM(973, 4),
+	OVERRIDE_PARAM(1332, 5),
+	OVERRIDE_PARAM(1743, 6),
+	OVERRIDE_PARAM(2156, 7),
+};
+
+static struct override_param squelch_det_threshold_sc7280[] = {
+	OVERRIDE_PARAM(-2090, 7),
+	OVERRIDE_PARAM(-1560, 6),
+	OVERRIDE_PARAM(-1030, 5),
+	OVERRIDE_PARAM(-530, 4),
+	OVERRIDE_PARAM(0, 3),
+	OVERRIDE_PARAM(530, 2),
+	OVERRIDE_PARAM(1060, 1),
+	OVERRIDE_PARAM(1590, 0),
+};
+
+static struct override_param hs_amplitude_sc7280[] = {
+	OVERRIDE_PARAM(-660, 0),
+	OVERRIDE_PARAM(-440, 1),
+	OVERRIDE_PARAM(-220, 2),
+	OVERRIDE_PARAM(0, 3),
+	OVERRIDE_PARAM(230, 4),
+	OVERRIDE_PARAM(440, 5),
+	OVERRIDE_PARAM(650, 6),
+	OVERRIDE_PARAM(890, 7),
+	OVERRIDE_PARAM(1110, 8),
+	OVERRIDE_PARAM(1330, 9),
+	OVERRIDE_PARAM(1560, 10),
+	OVERRIDE_PARAM(1780, 11),
+	OVERRIDE_PARAM(2000, 12),
+	OVERRIDE_PARAM(2220, 13),
+	OVERRIDE_PARAM(2430, 14),
+	OVERRIDE_PARAM(2670, 15),
+};
+
+static struct override_param preemphasis_duration_sc7280[] = {
+	OVERRIDE_PARAM(100, 1),
+	OVERRIDE_PARAM(200, 0),
+};
+
+static struct override_param preemphasis_amplitude_sc7280[] = {
+	OVERRIDE_PARAM(100, 1),
+	OVERRIDE_PARAM(200, 2),
+	OVERRIDE_PARAM(300, 3),
+	OVERRIDE_PARAM(400, 0),
+};
+
+static struct override_param hs_rise_fall_time_sc7280[] = {
+	OVERRIDE_PARAM(-4100, 3),
+	OVERRIDE_PARAM(0, 2),
+	OVERRIDE_PARAM(2810, 1),
+	OVERRIDE_PARAM(5430, 0),
+};
+
+static struct override_param hs_crossover_voltage_sc7280[] = {
+	OVERRIDE_PARAM(-31, 1),
+	OVERRIDE_PARAM(28, 2),
+	OVERRIDE_PARAM(0, 3),
+};
+
+static struct override_param hs_output_impedance_sc7280[] = {
+	OVERRIDE_PARAM(-2300, 3),
+	OVERRIDE_PARAM(0, 2),
+	OVERRIDE_PARAM(2600, 1),
+	OVERRIDE_PARAM(6100, 0),
+};
+
+static struct override_param ls_fs_output_impedance_sc7280[] = {
+	OVERRIDE_PARAM(-1053, 15),
+	OVERRIDE_PARAM(-557, 7),
+	OVERRIDE_PARAM(0, 3),
+	OVERRIDE_PARAM(612, 1),
+	OVERRIDE_PARAM(1310, 0),
+};
+
+struct override_param_map sc7280_idp[] = {
+	OVERRIDE_PARAM_MAP(
+			hs_disconnect_sc7280,
+			ARRAY_SIZE(hs_disconnect_sc7280),
+			USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X0,
+			HS_DISCONNECT_MASK),
+
+	OVERRIDE_PARAM_MAP(
+			squelch_det_threshold_sc7280,
+			ARRAY_SIZE(squelch_det_threshold_sc7280),
+			USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X0,
+			SQUELCH_DETECTOR_MASK),
+
+	OVERRIDE_PARAM_MAP(
+			hs_amplitude_sc7280,
+			ARRAY_SIZE(hs_amplitude_sc7280),
+			USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1,
+			HS_AMPLITUDE_MASK),
+
+	OVERRIDE_PARAM_MAP(
+			preemphasis_duration_sc7280,
+			ARRAY_SIZE(preemphasis_duration_sc7280),
+			USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1,
+			PREEMPHASIS_DURATION_MASK),
+
+	OVERRIDE_PARAM_MAP(
+			preemphasis_amplitude_sc7280,
+			ARRAY_SIZE(preemphasis_amplitude_sc7280),
+			USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1,
+			PREEMPHASIS_AMPLITUDE_MASK),
+
+	OVERRIDE_PARAM_MAP(
+			hs_rise_fall_time_sc7280,
+			ARRAY_SIZE(hs_rise_fall_time_sc7280),
+			USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X2,
+			HS_RISE_FALL_MASK),
+
+	OVERRIDE_PARAM_MAP(
+			hs_crossover_voltage_sc7280,
+			ARRAY_SIZE(hs_crossover_voltage_sc7280),
+			USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X2,
+			HS_CROSSOVER_VOLTAGE_MASK),
+
+	OVERRIDE_PARAM_MAP(
+			hs_output_impedance_sc7280,
+			ARRAY_SIZE(hs_output_impedance_sc7280),
+			USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X2,
+			HS_OUTPUT_IMPEDANCE_MASK),
+
+	OVERRIDE_PARAM_MAP(
+			ls_fs_output_impedance_sc7280,
+			ARRAY_SIZE(ls_fs_output_impedance_sc7280),
+			USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X3,
+			LS_FS_OUTPUT_IMPEDANCE_MASK),
+};
+
 static int qcom_snps_hsphy_init(struct phy *phy)
 {
 	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
-	int ret;
+	int ret, i;
 
 	dev_vdbg(&phy->dev, "%s(): Initializing SNPS HS phy\n", __func__);
 
@@ -223,6 +431,14 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL1,
 					VBUSVLDEXT0, VBUSVLDEXT0);
 
+	for (i = 0; i < ARRAY_SIZE(hsphy->update_seq_cfg); i++) {
+		if (hsphy->update_seq_cfg[i].need_update)
+			qcom_snps_hsphy_write_mask(hsphy->base,
+					hsphy->update_seq_cfg[i].offset,
+					hsphy->update_seq_cfg[i].mask,
+					hsphy->update_seq_cfg[i].value);
+	}
+
 	qcom_snps_hsphy_write_mask(hsphy->base,
 					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON2,
 					VREGBYPASS, VREGBYPASS);
@@ -280,7 +496,10 @@ static const struct phy_ops qcom_snps_hsphy_gen_ops = {
 static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
 	{ .compatible	= "qcom,sm8150-usb-hs-phy", },
 	{ .compatible	= "qcom,usb-snps-hs-5nm-phy", },
-	{ .compatible	= "qcom,usb-snps-hs-7nm-phy", },
+	{
+		.compatible	= "qcom,usb-snps-hs-7nm-phy",
+		.data		= &sc7280_idp,
+	},
 	{ .compatible	= "qcom,usb-snps-femto-v2-phy",	},
 	{ }
 };
@@ -291,6 +510,49 @@ static const struct dev_pm_ops qcom_snps_hsphy_pm_ops = {
 			   qcom_snps_hsphy_runtime_resume, NULL)
 };
 
+static void qcom_snps_hsphy_override_param_update_val(
+			const struct override_param_map map,
+			s32 dt_val, struct phy_override_seq *seq_entry)
+{
+	int i;
+
+	/*
+	 * Param table for each param is in increasing order
+	 * of dt values. We need to iterate over the list to
+	 * select the entry that has equal or the next highest value.
+	 */
+	for (i = 0 ; i < map.table_size-1; i++) {
+		if (map.param_table[i].value >= dt_val)
+			break;
+	}
+
+	seq_entry->need_update = true;
+	seq_entry->offset = map.reg_offset;
+	seq_entry->mask = map.param_mask;
+	seq_entry->value =  map.param_table[i].reg << __ffs(map.param_mask);
+}
+
+static void qcom_snps_hsphy_read_override_param_seq(struct device *dev)
+{
+	struct device_node *node = dev->of_node;
+	s32 val;
+	int ret, i;
+	struct qcom_snps_hsphy *hsphy;
+	struct override_param_map *cfg = of_device_get_match_data(dev);
+
+	hsphy = dev_get_drvdata(dev);
+
+	for (i = 0; i < ARRAY_SIZE(phy_seq_props); i++) {
+		ret = of_property_read_s32(node, phy_seq_props[i], &val);
+		if (!ret) {
+			dev_dbg(&hsphy->phy->dev, "Read param: %s val: %d\n",
+						phy_seq_props[i], val);
+			qcom_snps_hsphy_override_param_update_val(cfg[i], val,
+						&hsphy->update_seq_cfg[i]);
+		}
+	}
+}
+
 static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -352,6 +614,7 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 
 	dev_set_drvdata(dev, hsphy);
 	phy_set_drvdata(generic_phy, hsphy);
+	qcom_snps_hsphy_read_override_param_seq(dev);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 	if (!IS_ERR(phy_provider))
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
