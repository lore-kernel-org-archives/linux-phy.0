Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E3CC6377E
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 22:58:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8AFB56124C
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 22:58:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8AFB56124C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LH00TRZWcCBaMF9QFYpu+S2TFTTKoWte7gwNSAJIwZY=; b=0ha5srQFEe9amP
	MX/RQnE6U3kVXKw1VPYfJSSw76Afobr8jYdi+C2dzq8FxevpSTqciLldaZwukG6cNHYYtgGd5LVEP
	MrMXunHx6vVPqDkVfglHho7uYMiiYAQLqb9u4ldwDCPSGPIRwplID88weTVS5aXBzmr4Nz02k5/ew
	Mi5QdL3bUq6Cxrc1FuOjd7uyUDkdJ38OSLAG74HkzDggNWqYVOMIYDBBF7Ad0gVixRUfYdU5Kf8tX
	Me4ANEe38cIcTi3Gw2Jp6dEML/o+sA1x35JuuBuSig5kQmOyTZpDgqCp0Kjf1w7PED80OoJFhxn3i
	23fCWPqSxTqTw36+9WoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6LAS-00HPvO-2U; Wed, 21 Jul 2021 22:58:20 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6LAP-00HPpN-Gd
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 22:58:18 +0000
Received: by mail-ot1-x332.google.com with SMTP id
 b18-20020a0568303112b02904cf73f54f4bso619185ots.2
 for <linux-phy@lists.infradead.org>; Wed, 21 Jul 2021 15:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7g+i+w4u53CyM8L4HKCjxO+eyCNUNLkuoMzloAm4KQI=;
 b=ZwYiGPaZ6LwP/2mmJmuoYa4dCUWha+220rfFKh5KWHSz1Ybdx1BQUhFS00Ojfwxhgo
 91OS1Umn2EDgDnrhiQtlBzAjK5BN5BX2G1eAoJNM+1T/cvPazG3GtO4UQarZPm4qSwAD
 WFgYCw2Q3FE47Q2C/4CFBV0QyxrPwsFemEbf1erDw/SjclvAxbE+4+1LhNTnYYBslots
 Ez/KTpCcq6kbOO3fIbVHyQNFZi+RTLjTF2sowQATJ2hCWoU6HxuVRJddeWtr2hbHk7iW
 +MVadYSa6EUHZXUixBzUlonRb6iewtaDO1VntbWVjrdS0xtcG895oZMPiUopw+H79Sr8
 KC7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7g+i+w4u53CyM8L4HKCjxO+eyCNUNLkuoMzloAm4KQI=;
 b=mZag1w7EZne8P4WajSe07J5+2Wo3QbXRWXliOchPLv+LyhdaupwXF/uR4HHjv9pIMk
 vmShJw8B7KRhfbLW7yL/VITEW6FOnHjOQIF69XKdxMMwWntkllBOoHoOf4skKUB75AES
 zoSLvG5Wba18/q/eNqnwsFFrRVc3eTZVL5egFyMWIaoGzkvSxijdEH4X0Qlwr3ds6z34
 WtJfA4F6wprd+40KsTNNpSlOrH6Xz02HGVE4/jUvu/2UDRymo31PBe/U+AdHQ04KAnYp
 qtmITXnKUCkT3uiiXmUnCssYejfvzYLVPuCKSoJZsPMY9kOOVOzMSLDW4eLw/ygI+vFY
 3tGg==
X-Gm-Message-State: AOAM533os6kK7+tRqoUt1TwKnL7QADDo9aM5stizGSODXXD2Don3E6Dr
 fWnpoF6WjHFUM+o9lQT33bw94A==
X-Google-Smtp-Source: ABdhPJwZwrPv5a2WWTgoPZaQ7i9PzKCzyolQ/8+MSNsX66kU4vMdZ3lKibqZ47NLTg5TOydplnIxYg==
X-Received: by 2002:a9d:3a34:: with SMTP id j49mr27870764otc.102.1626908293828; 
 Wed, 21 Jul 2021 15:58:13 -0700 (PDT)
Received: from localhost.localdomain
 (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id h24sm5035388otl.41.2021.07.21.15.58.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 15:58:13 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Manu Gautam <mgautam@codeaurora.org>
Cc: Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] phy: qcom: qmp: Add SC8180x USB/DP combo
Date: Wed, 21 Jul 2021 15:56:30 -0700
Message-Id: <20210721225630.3035861-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210721225630.3035861-1-bjorn.andersson@linaro.org>
References: <20210721225630.3035861-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210721_155817_635071_9ED4F446 
X-CRM114-Status: GOOD (  10.83  )
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

The two USB QMPs are USB/DP compbo PHYs, add the compatible for this
combination to allow DP output.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 47 +++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 2195f8ac393b..5e302830d061 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -3536,6 +3536,46 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.pwrdn_delay_max	= 1005,		/* us */
 };
 
+static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
+	.type			= PHY_TYPE_DP,
+	.nlanes			= 1,
+
+	.serdes_tbl		= qmp_v4_dp_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
+	.tx_tbl			= qmp_v4_dp_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qmp_v4_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qmp_v4_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qmp_v4_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qmp_v4_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr2),
+	.serdes_tbl_hbr3	= qmp_v4_dp_serdes_tbl_hbr3,
+	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl_hbr3),
+
+	.clk_list		= qmp_v3_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
+	.reset_list		= sc7180_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout,
+
+	.has_phy_dp_com_ctrl	= true,
+	.is_dual_lane_phy	= true,
+
+	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
+	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
+	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
+	.calibrate_dp_phy = qcom_qmp_v4_dp_phy_calibrate,
+};
+
+static const struct qmp_phy_combo_cfg sc8180x_usb3dpphy_cfg = {
+	.usb_cfg		= &sm8150_usb3phy_cfg,
+	.dp_cfg			= &sc8180x_dpphy_cfg,
+};
+
 static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
@@ -5377,6 +5417,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sc8180x-qmp-usb3-phy",
 		.data = &sm8150_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
+		/* It's a combo phy */
 	}, {
 		.compatible = "qcom,sdm845-qhp-pcie-phy",
 		.data = &sdm845_qhp_pciephy_cfg,
@@ -5454,6 +5497,10 @@ static const struct of_device_id qcom_qmp_combo_phy_of_match_table[] = {
 		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
 		.data = &sm8250_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sc8180x-qmp-usb3-dp-phy",
+		.data = &sc8180x_usb3dpphy_cfg,
+	},
 	{ }
 };
 
-- 
2.29.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
