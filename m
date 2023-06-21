Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5067EB64D8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 15:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=looJZPGMx3QwgmcN2bfV6nWccSELCOsbJPNlq0NyTi4=; b=z+NFq++denxU+q
	nVVAmEbFnXTa7Ixesvrstrzi0mxwJ5JZ7w4WlhuDSvg3KvRGUlCZqggdOB9i5gIFNryw7w8FqaCBR
	dHFCVD6+FUdLuw3ljm7JQpNHxnAed4S2QZCYuXJYNe9K5lZBNnIP3hJjqTAMn3ns7RI76npXJpmSf
	ctBbD5avbjeVqdfIgcrNAm8GTawgi/F8RqVA1rQje/2eBDjWx1+ErHKvaYWrM+fEdJfDRerTzgbh8
	tUbavffaRJ7dGX/F8QmuGCAY5gGH3Oitt0XyCc/lMb8BR4ZjJ+CT5J6HrHskfUUTFLTm8HaRHIDsZ
	iz1COa05RSyVcqCNdLWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBzpr-00ExKP-1U;
	Wed, 21 Jun 2023 15:33:31 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBzpn-00ExIE-10
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 15:33:28 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b466066950so73475731fa.2
        for <linux-phy@lists.infradead.org>; Wed, 21 Jun 2023 08:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687361605; x=1689953605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3qfuToZ41zkQt1uaQ5WCl4kX3p32GHMidFTGVWWTPxM=;
        b=Slt7bijDPuc00cR7GK21PI0yAGTPJ3SLGd/LET/2bbzXsuQaxdTVmVcbnrLHGXRvld
         gTT5ixFlcGeEkU9SYB0rMeRUikh4htYyuxSkl2U1i2NEyi4XcxLOUzA6NfWbjKkwjHwX
         VcqG32Qi7i6LbAGLNXmcu4CwBhHsX6GoNqE4Ss4YMuRbG5Qp3LKJg4PSMOxJC2e0LxOD
         TpO4iPSb8MJYVmTgi/8sIKe+anTDS11qp3MhzdGf5runvrmZezNmv+RocWuQ06W8kyMf
         mRUbnb3LtnhkkiNM+16a56zozpMIjW7N655xTkUkpdEIoQZv2qW7Ey8KQtbdkqMGCaiI
         J5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687361605; x=1689953605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3qfuToZ41zkQt1uaQ5WCl4kX3p32GHMidFTGVWWTPxM=;
        b=WsK9zU7hYi6hpPlnoN0DUddmbwQL3Qww20jf9MxyCrx1nfkobEdY+I32mmorELePr8
         Og35Q4NXfk+C/f+dw7xHT/Kc2qOQFDWlUbgE+xg1FI3+nWIoYCLabapHH1E4aJpfkPD9
         Mlmgt6tX520HMAYbN96zbnQ+Ibw+a5dabdEWQetigpKImxPRugLkfjllV9AgqcthQK3i
         djPcfAn/pXMqOES1LycZNhcsyHrwzCqtS6XUNxfk5B/hLut5PozFM7KnP7AlKy1bsBC8
         VJEFcdIxFt3XI+qcyzhFR2W2fspZTR17fogolZBNytEfY2MqdNBnnvU+ImfAOd0OPiSb
         6ZDA==
X-Gm-Message-State: AC+VfDybksV4W/YFcAaGQH8dXkYX0VR5X1S1aeNnTQn/JDNndz25Vlqk
	bVLMvSNRXQMnhKDAAHSv2urg2w==
X-Google-Smtp-Source: ACHHUZ6d9tnTTJ+UQb/PHI4xbPX2ZfLY0+7PMXWtXYuWS2fTmOYXQBiE5sisx78XvHknGMhia9xARw==
X-Received: by 2002:ac2:4d9a:0:b0:4f8:66ec:6ed7 with SMTP id g26-20020ac24d9a000000b004f866ec6ed7mr8373364lfe.30.1687361604991;
        Wed, 21 Jun 2023 08:33:24 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id o3-20020a056512050300b004f8751285a5sm804888lfb.80.2023.06.21.08.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 08:33:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	freedreno@lists.freedesktop.org
Subject: [RESEND PATCH 7/7] phy: qcom: qmp-combo: extract common function to setup clocks
Date: Wed, 21 Jun 2023 18:33:17 +0300
Message-Id: <20230621153317.1025914-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230621153317.1025914-1-dmitry.baryshkov@linaro.org>
References: <20230621153317.1025914-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_083327_345403_F1532636 
X-CRM114-Status: GOOD (  10.59  )
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

Extact qmp_combo_configure_dp_clocks(), a common function to setup PHY
clocks depending on the selected link rate.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 63 ++++++++++-------------
 1 file changed, 26 insertions(+), 37 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index ab6cfa02ecf9..d82fcd060e77 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2074,18 +2074,12 @@ static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
 	return reverse;
 }
 
-static int qmp_v3_configure_dp_phy(struct qmp_combo *qmp)
+static int qmp_combo_configure_dp_clocks(struct qmp_combo *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	u32 phy_vco_div, status;
+	u32 phy_vco_div;
 	unsigned long pixel_freq;
 
-	qmp_combo_configure_dp_mode(qmp);
-
-	writel(0x05, qmp->dp_dp_phy + QSERDES_V3_DP_PHY_TX0_TX1_LANE_CTL);
-	writel(0x05, qmp->dp_dp_phy + QSERDES_V3_DP_PHY_TX2_TX3_LANE_CTL);
-
 	switch (dp_opts->link_rate) {
 	case 1620:
 		phy_vco_div = 0x1;
@@ -2107,11 +2101,29 @@ static int qmp_v3_configure_dp_phy(struct qmp_combo *qmp)
 		/* Other link rates aren't supported */
 		return -EINVAL;
 	}
-	writel(phy_vco_div, qmp->dp_dp_phy + QSERDES_V3_DP_PHY_VCO_DIV);
+	writel(phy_vco_div, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_VCO_DIV);
 
 	clk_set_rate(qmp->dp_link_hw.clk, dp_opts->link_rate * 100000);
 	clk_set_rate(qmp->dp_pixel_hw.clk, pixel_freq);
 
+	return 0;
+}
+
+static int qmp_v3_configure_dp_phy(struct qmp_combo *qmp)
+{
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	u32 status;
+	int ret;
+
+	qmp_combo_configure_dp_mode(qmp);
+
+	writel(0x05, qmp->dp_dp_phy + QSERDES_V3_DP_PHY_TX0_TX1_LANE_CTL);
+	writel(0x05, qmp->dp_dp_phy + QSERDES_V3_DP_PHY_TX2_TX3_LANE_CTL);
+
+	ret = qmp_combo_configure_dp_clocks(qmp);
+	if (ret)
+		return ret;
+
 	writel(0x04, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG2);
 	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 	writel(0x05, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
@@ -2210,10 +2222,9 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
 
 static int qmp_v456_configure_dp_phy(struct qmp_combo *qmp)
 {
-	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	u32 phy_vco_div, status;
-	unsigned long pixel_freq;
+	u32 status;
+	int ret;
 
 	writel(0x0f, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_CFG_1);
 
@@ -2225,31 +2236,9 @@ static int qmp_v456_configure_dp_phy(struct qmp_combo *qmp)
 	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX0_TX1_LANE_CTL);
 	writel(0x05, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_TX2_TX3_LANE_CTL);
 
-	switch (dp_opts->link_rate) {
-	case 1620:
-		phy_vco_div = 0x1;
-		pixel_freq = 1620000000UL / 2;
-		break;
-	case 2700:
-		phy_vco_div = 0x1;
-		pixel_freq = 2700000000UL / 2;
-		break;
-	case 5400:
-		phy_vco_div = 0x2;
-		pixel_freq = 5400000000UL / 4;
-		break;
-	case 8100:
-		phy_vco_div = 0x0;
-		pixel_freq = 8100000000UL / 6;
-		break;
-	default:
-		/* Other link rates aren't supported */
-		return -EINVAL;
-	}
-	writel(phy_vco_div, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_VCO_DIV);
-
-	clk_set_rate(qmp->dp_link_hw.clk, dp_opts->link_rate * 100000);
-	clk_set_rate(qmp->dp_pixel_hw.clk, pixel_freq);
+	ret = qmp_combo_configure_dp_clocks(qmp);
+	if (ret)
+		return ret;
 
 	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 	writel(0x05, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
