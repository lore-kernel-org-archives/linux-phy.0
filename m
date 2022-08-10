Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC591C00140
	for <linux-phy@archiver.kernel.org>; Wed, 10 Aug 2022 04:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QYqCGB67UXwUwKIvSAzPlwfCO8i1HKOsL7Hmx2Jf74=; b=PtvOzGWevFHHYn
	4MPBJjjQs6SudPhDEBB7++ZLo98cGOhE5AJCD20lOxlCrl+JCQ7BbXZ5eagFjI7voXQHySYlOf0va
	54nlG/Fuc/h6onULv2jRn2XCoJTtaLgv3c7S465ZM8Ig4LxrJZ+YuV33y5GH4eRFGzFs0af1UPssN
	axSK9es2RZUtbOsDWH2mD4ua9fHIQ1EojEuGILfUHWtp5WHL6NZVxLNhIgixVYYKjmao0jxaoSET9
	AFzgT6UstoKIgq51IDtJJCeoSlCxJknUu2OcVERzl5Pdca0JgqyoFudHD0summ/cxFjOrn9sJiABD
	8KQf/3svRLRcny7cwgUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLcy6-0090WU-0o; Wed, 10 Aug 2022 04:05:18 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLcy1-0090SI-I8
	for linux-phy@lists.infradead.org; Wed, 10 Aug 2022 04:05:16 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-10ee900cce0so16457368fac.5
        for <linux-phy@lists.infradead.org>; Tue, 09 Aug 2022 21:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Ndd7GVOJq64yRB5q+nG+1O8Ki0y0Qk32lK28P7SYTeg=;
        b=ZICWcSO7UDTKte7hQmLufWNHbm5eqdJVlyaH3TLo+ctWq28fKrJE54I9E37Jk/KaGE
         UotXhHPN2sdiq2ezO8M9+JMZPM4BNPIswPeXzP04u5N8NESOt0lplh3yunlPFnNj4Jhw
         9ch3NJOKSU2FPI0BSUSJin6xrz+wEod8as13ejYGnJEP5uPfREhI86AHPOwBxjDrtMAO
         uTRsEPM0nKzgr0+oyhXOV9QXG/cWpYLoKwVm8w51qJmHCUi8idsnucBZA39C4te+xOU8
         dRIEIbc24LOUBYcl4mqoy4DoZAI13672TXZ8fSSbOwM8S3x1tmi4ImI1CI4piZQ17rB5
         +u0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Ndd7GVOJq64yRB5q+nG+1O8Ki0y0Qk32lK28P7SYTeg=;
        b=mF15pU8ovC5+xGfAS1wG01Ywav1GduwLA3nG1cL4+4WQ4evKC4Z6mFTI1ZI1MtcNxV
         Tci/W3Yukmwl6OcIwsSOix5smbOdkoNGF1NEofALgUtLr2FlEJrQy/mpbvCQTMXfCbE5
         dr54IcejKoQka4qWu9Gs0AUZERqgypANCaGmSRAQvXen6QLD55lEilJPBS+HaSEwfDvn
         uLH3Nn+V743hrrLkGPJgauofPyVItb9YouDOGOxHlJaOMFRZ6pwkwkaYZ1gNkz6NLTIp
         nVhHyHhZmYQrjDKauAju3+DMgb3lPyGhYON8jpvrmFUNusZWsT9W4ZZT9Zl9qazJznjq
         5vOA==
X-Gm-Message-State: ACgBeo35afEgJLMdvF2ihzMN7txTcyMSDGehwVVl5IaPQPnW7lFx+Yu/
	sc/yzTQ/CfpgZoorLjOPJMiZ3Q==
X-Google-Smtp-Source: AA6agR5DLkTSzdsowisb+O8eZGxuq561vdngF37Prt7DIl5waI3gba3oSw8Fj+0kjL3Ah7KRHQvo8A==
X-Received: by 2002:a05:6870:ec93:b0:10e:75ae:8177 with SMTP id eo19-20020a056870ec9300b0010e75ae8177mr686789oab.234.1660104312359;
        Tue, 09 Aug 2022 21:05:12 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q6-20020a056830440600b00616dfd2c859sm449027otv.59.2022.08.09.21.05.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 21:05:11 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/5] phy: qcom: edp: Introduce support for DisplayPort
Date: Tue,  9 Aug 2022 21:07:44 -0700
Message-Id: <20220810040745.3582985-5-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_210513_649638_4FED7595 
X-CRM114-Status: GOOD (  18.30  )
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

The eDP phy can be used to drive either eDP or DP output, with some
minor variations in some of the configuration and seemingly a need for
implementing swing and pre_emphasis calibration.

Introduce a config object, indicating if the phy is operating in eDP or
DP mode and swing/pre-emphasis calibration to support this.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 80 +++++++++++++++++++++++++++--
 1 file changed, 76 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 32614fb838b5..301ac422d2fe 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -70,8 +70,19 @@
 
 #define TXn_TRAN_DRVR_EMP_EN                    0x0078
 
+struct qcom_edp_cfg {
+	bool is_dp;
+
+	/* DP PHY swing and pre_emphasis tables */
+	const u8 (*swing_hbr_rbr)[4][4];
+	const u8 (*swing_hbr3_hbr2)[4][4];
+	const u8 (*pre_emphasis_hbr_rbr)[4][4];
+	const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
+};
+
 struct qcom_edp {
 	struct device *dev;
+	const struct qcom_edp_cfg *cfg;
 
 	struct phy *phy;
 
@@ -92,7 +103,9 @@ struct qcom_edp {
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
+	const struct qcom_edp_cfg *cfg = edp->cfg;
 	int ret;
+	u8 cfg8;
 
 	ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
 	if (ret)
@@ -117,6 +130,13 @@ static int qcom_edp_phy_init(struct phy *phy)
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
 
+	if (cfg && cfg->is_dp)
+		cfg8 = 0xb7;
+	else
+		cfg8 = 0x37;
+
+	writel(0xfc, edp->edp + DP_PHY_MODE);
+
 	writel(0x00, edp->edp + DP_PHY_AUX_CFG0);
 	writel(0x13, edp->edp + DP_PHY_AUX_CFG1);
 	writel(0x24, edp->edp + DP_PHY_AUX_CFG2);
@@ -125,7 +145,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	writel(0x26, edp->edp + DP_PHY_AUX_CFG5);
 	writel(0x0a, edp->edp + DP_PHY_AUX_CFG6);
 	writel(0x03, edp->edp + DP_PHY_AUX_CFG7);
-	writel(0x37, edp->edp + DP_PHY_AUX_CFG8);
+	writel(cfg8, edp->edp + DP_PHY_AUX_CFG8);
 	writel(0x03, edp->edp + DP_PHY_AUX_CFG9);
 
 	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
@@ -142,14 +162,60 @@ static int qcom_edp_phy_init(struct phy *phy)
 	return ret;
 }
 
+static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
+{
+	const struct qcom_edp_cfg *cfg = edp->cfg;
+	unsigned int v_level = 0;
+	unsigned int p_level = 0;
+	u8 ldo_config;
+	u8 swing;
+	u8 emph;
+	int i;
+
+	if (!cfg)
+		return 0;
+
+	for (i = 0; i < dp_opts->lanes; i++) {
+		v_level = max(v_level, dp_opts->voltage[i]);
+		p_level = max(p_level, dp_opts->pre[i]);
+	}
+
+	if (dp_opts->link_rate <= 2700) {
+		swing = (*cfg->swing_hbr_rbr)[v_level][p_level];
+		emph = (*cfg->pre_emphasis_hbr_rbr)[v_level][p_level];
+	} else {
+		swing = (*cfg->swing_hbr3_hbr2)[v_level][p_level];
+		emph = (*cfg->pre_emphasis_hbr3_hbr2)[v_level][p_level];
+	}
+
+	if (swing == 0xff || emph == 0xff)
+		return -EINVAL;
+
+	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
+
+	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
+	writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
+	writel(emph, edp->tx0 + TXn_TX_EMP_POST1_LVL);
+
+	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
+	writel(swing, edp->tx1 + TXn_TX_DRV_LVL);
+	writel(emph, edp->tx1 + TXn_TX_EMP_POST1_LVL);
+
+	return 0;
+}
+
 static int qcom_edp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 {
 	const struct phy_configure_opts_dp *dp_opts = &opts->dp;
 	struct qcom_edp *edp = phy_get_drvdata(phy);
+	int ret = 0;
 
 	memcpy(&edp->dp_opts, dp_opts, sizeof(*dp_opts));
 
-	return 0;
+	if (dp_opts->set_voltages)
+		ret = qcom_edp_set_voltages(edp, dp_opts);
+
+	return ret;
 }
 
 static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
@@ -315,7 +381,9 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp)
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
+	const struct qcom_edp_cfg *cfg = edp->cfg;
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
+	u8 ldo_config;
 	int timeout;
 	int ret;
 	u32 val;
@@ -332,8 +400,11 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	if (timeout)
 		return timeout;
 
-	writel(0x01, edp->tx0 + TXn_LDO_CONFIG);
-	writel(0x01, edp->tx1 + TXn_LDO_CONFIG);
+
+	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
+
+	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
+	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
 	writel(0x00, edp->tx0 + TXn_LANE_MODE_1);
 	writel(0x00, edp->tx1 + TXn_LANE_MODE_1);
 
@@ -635,6 +706,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	edp->dev = dev;
+	edp->cfg = of_device_get_match_data(&pdev->dev);
 
 	edp->edp = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(edp->edp))
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
