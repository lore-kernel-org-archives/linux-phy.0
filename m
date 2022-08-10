Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC1F5C25B0E
	for <linux-phy@archiver.kernel.org>; Wed, 10 Aug 2022 03:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nCdNcfCII6CVbwXrEeM2TsxocahiT5Ki5S65FvvtQaY=; b=wQTj1U/RJBeiEE
	XSi19mR+8AW3OeEDLyTUVdJukk402+L1fTBo7XAZlY6SeG6B2gCNh2ofkrSA9aB7O/w/evVaYXeZA
	vxvW0BvWGYN9K4UE+J/4qKDpJwBB7zO/VuPrBMoN4W5OlgD01fP6eszPvgzxrZWvoNoHdzNrs0ww0
	9NRKxkS3ol/eulmETwJSWWEMh+GhEX82Li8noQ1bR6NgvktUTB52nIiXsyh24lYavYyEo2o5E0ttY
	u16H0O77MnPSQEj65mk8r2TvBISDzTQHdp2vPZBEJs2BDLAdkxXXYgAqKzCg8DxNy6x0OB+IjbeVY
	PzqgbTXwgTzx9U3Eqkig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLc6A-008dlS-VS; Wed, 10 Aug 2022 03:09:34 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLc68-008di0-97
	for linux-phy@lists.infradead.org; Wed, 10 Aug 2022 03:09:33 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-10ea30a098bso16334958fac.8
        for <linux-phy@lists.infradead.org>; Tue, 09 Aug 2022 20:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=o9OOX4mTumeWxGfGIlGSIHTnrvS7ZQdKXUpha8Z8G0Q=;
        b=mvbuZ5hQummlWWhg00HRmOlySExapbkSXpopIHAchaI/l9L9Owj7hr2qdU5nu87Igc
         dacKD61RGtwXYkr0sTVXKXrzgY3xvTHgQ+Lehcnhpyl2BwARsLcdWLkj6tPImLHYI1zh
         cL7jXyavKoPjc5kysLDJyu3m3eg4+DmwUPGGctCCUcQnwfinQ3/d0LrTn4ASKeKfGpCq
         xRO846gyQce4nRdTzGcYnC/phkrGLEZSEK90f4uiatkv8JrR+dSRhsmbWPMAbvSylrKY
         s3JpJzu7CL87x3xOiech525P0Kp+9Q8O6dNN16WRy9nYEqKsUX93//4DLHwMmiG8ERU1
         ofng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=o9OOX4mTumeWxGfGIlGSIHTnrvS7ZQdKXUpha8Z8G0Q=;
        b=oKuXC4GgB35ZGZWCBu69ozIYyhr3IkOToMyP8p5uChqS4a9yyzvxcVPb+YEZEbRMqW
         gWfQVXK8OMn3cAbb8TolUxMIEL87zOr/ZQSI5TZwCKYZ1pW7XFB6cJG1tl1FXver4XgG
         yE1C4zgwvvNN1KgkdtwLdcKtfbijH28dgcVWEGJe2J4zOQVr5QpTVOTglx6jDQm6YR7W
         2u9ozDdiihoU44n4SrxM2WdHQtqpj1tXtGnmsNHv/LH9M83Sjq0LixgJ5NmMopkOl8bT
         jZwj8ptqkSwAOomPb6hhQvHTNMmU22p6xjN8WtzPOz5E3fHQ+xZPqtqvWl4Cv78OOBuS
         8t6Q==
X-Gm-Message-State: ACgBeo3O8jkaz0vB0yPPkd3aKd65j0KJ3nzxavSQP9MpbjKYSoH4e7Oh
	pxEfrtM2loUsNcL15IGEgYTwXM3HkhA/jw==
X-Google-Smtp-Source: AA6agR7iTviPqVEw9B40nZ6Lak0B2tK8eToZFcYqTh1tYtSeNKzqauHW0s6cZwkBd15XPi75I7n/EA==
X-Received: by 2002:a05:6871:7a7:b0:10d:3fb6:b632 with SMTP id o39-20020a05687107a700b0010d3fb6b632mr599519oap.237.1660100967558;
        Tue, 09 Aug 2022 20:09:27 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id ba41-20020a056870c5a900b00101c76f7831sm3586268oab.24.2022.08.09.20.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 20:09:27 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: qualcomm: phy-qcom-qmp: add support for combo USB3+DP phy on SDM845
Date: Tue,  9 Aug 2022 22:09:26 -0500
Message-Id: <20220810030926.2794179-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_200932_371795_413101E7 
X-CRM114-Status: GOOD (  10.17  )
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

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Define configuration to be used by combo USB3 + DisplayPort phy on
SDM845 SoC family. It closely follows sc7180, however like the main USB3
phy it uses the qmp_v3_usb3phy_cfg config.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 41 +++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 4b1828976104..e9722d8aae59 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -903,6 +903,43 @@ static const struct qmp_phy_combo_cfg sc7180_usb3dpphy_cfg = {
 	.dp_cfg			= &sc7180_dpphy_cfg,
 };
 
+static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
+	.type			= PHY_TYPE_USB3,
+	.nlanes			= 1,
+
+	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
+	.tx_tbl			= qmp_v3_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_tx_tbl),
+	.rx_tbl			= qmp_v3_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_rx_tbl),
+	.pcs_tbl		= qmp_v3_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_pcs_tbl),
+	.clk_list		= qmp_v3_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout,
+
+	.start_ctrl		= SERDES_START | PCS_START,
+	.pwrdn_ctrl		= SW_PWRDN,
+	.phy_status		= PHYSTATUS,
+
+	.has_pwrdn_delay	= true,
+	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
+	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
+
+	.has_phy_dp_com_ctrl	= true,
+	.is_dual_lane_phy	= true,
+};
+
+static const struct qmp_phy_combo_cfg sdm845_usb3dpphy_cfg = {
+	.usb_cfg                = &sdm845_usb3phy_cfg,
+	.dp_cfg                 = &sc7180_dpphy_cfg,
+};
+
 static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
@@ -2441,6 +2478,10 @@ static const struct of_device_id qcom_qmp_combo_phy_of_match_table[] = {
 		.compatible = "qcom,sc7180-qmp-usb3-dp-phy",
 		.data = &sc7180_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sdm845-qmp-usb3-dp-phy",
+		.data = &sdm845_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
 		.data = &sm8250_usb3dpphy_cfg,
-- 
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
