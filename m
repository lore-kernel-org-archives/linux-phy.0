Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AB1CEE49B8
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5RDUJbBLKyY6mH9AJLphjdAkShioh8zXiX1eO1DB6U=; b=T5ZYqMCcaR6p24
	GuUxqzjYQQMe6SeqiR1D69II4n4+2hpX9MhyoL5HJAjY+NgaJTbOgiGe6vSqRGc0SNW4Isl4CpyGH
	Gyq6AG++1qbLubQTDdU7W4L1jj0Zit/POhvbgdl6Pnf7Gvt9xidljcZsJMbrPfVT3vjHKtXGv9aHl
	2apQd+OKpvKSkQhn4nKCyTm2viiRwpPEtvurxZiiSh1vv9YUnbYofXrbH3Q1qgQ8+AOeJOyVNqDe7
	FeQuIOaDawSAnVwsdIvcg/SFcJC683GlUtOBaB4k5Y33fN/NwKm4U2AtnEEeEWgR5mLlEuh2fnNxF
	kXm5jYTvAicKwrH3fI0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjp-00Cjmb-2B;
	Mon, 21 Aug 2023 00:25:45 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjm-00CjjG-0e
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:43 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2b9cdba1228so44899991fa.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577540; x=1693182340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R7mOGTx5+h4i0NdOspjuoR2EZoV3NOPl1+DrGOJBMv8=;
        b=h3VFOdUUAp6UTqdXvdmsGMzceYw74Lo5b1EVKQ68DqjIsokBogneUVhDbBP/6HHKZA
         vUzbfv1v+rSydRVIrpnqUdz/AfcFixIeb+e1vY6tdrropy0AlvJmB4F9hcMbGwMTlFK6
         1r92WkJnf6e2h628rwTfitI4vNAJrSaH5m4ilqWQ1/69Z4SnYnIOyetbFqumJlIXCRrQ
         GQ1tRvLmgWM+i60MQKq5HocSdpt8LoQMKyV0otBCJu6R6ZmqOdbCHvwcdKQJmEs6iCW+
         ogSXRP8QuqTigI9/Hu7LKwyYK3UsLRXmY7BiPtVC9vWf79l7UbFJ75NGABOPaBUwibfh
         gedg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577540; x=1693182340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R7mOGTx5+h4i0NdOspjuoR2EZoV3NOPl1+DrGOJBMv8=;
        b=cNIaH+CLrlrHO4/apjFbJEpNGS9C7GrrcROdqDvovXPeL0V+oq5ZwQ9HUAUCHHPdxM
         ekPTNXuN5hckCcWcqTX06+8neEac05KYEJAmHbWJQ7lO884+wcWqGsyjpRHY0ddBEUdN
         HXwWNSnPmZ6648T2N/v5Mk9lsufdSH4vl+bTXiJMcujNdcFJsqY1E0lK4lwQle5USCPv
         41xk4Eab7VLTw7WQ1BJIWUGP4CeK61nffoVYuVPfZhq97cjkMpHuGTUC0dbgkyeiojws
         q8HqJReHJaqBjBKN+4MySeJ+3mdER+8dRrKyurxjszgdNdHdhIW0lmZevdLsJiOV2ygJ
         K3Tw==
X-Gm-Message-State: AOJu0Yy4cQTFvOPF+RBbD75F/s23tggbGlEHcvjZDRuoXLcOYc7UOBQD
	EtKcYSeL5WtcMUHRvq9CRXxuhA==
X-Google-Smtp-Source: AGHT+IHn7jyOh6+VmCZ+roGxzQ1plsGxx/PqjBxTKWqMzPDyQB0CfUeklb9YM1mNrsYzzEWlYO1WMQ==
X-Received: by 2002:a2e:3204:0:b0:2bb:c22a:f28c with SMTP id y4-20020a2e3204000000b002bbc22af28cmr3141551ljy.32.1692577540195;
        Sun, 20 Aug 2023 17:25:40 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 04/16] phy: qcom-qmp-usb: make QPHY_PCS_MISC_CLAMP_ENABLE access conditional
Date: Mon, 21 Aug 2023 03:25:23 +0300
Message-Id: <20230821002535.585660-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172542_244117_49BD32B9 
X-CRM114-Status: GOOD (  12.43  )
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

The register QPHY_V[34]_PCS_MISC_CLAMP_ENABLE is present only on some
SoC families. Other platforms (qcm2290) can have PCS_MISC region, but do
not have this register. Add it to the register layout table and check
that it is defined before toggling CLAMP settings.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 8f43de20fb8c..411cf0ae148d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -94,6 +94,7 @@ enum qphy_reg_layout {
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	QPHY_PCS_POWER_DOWN_CONTROL,
+	QPHY_PCS_MISC_CLAMP_ENABLE,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
 };
@@ -114,6 +115,16 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
+	[QPHY_PCS_MISC_CLAMP_ENABLE]	= QPHY_V3_PCS_MISC_CLAMP_ENABLE,
+};
+
+static const unsigned int qmp_v3_usb3phy_regs_layout_qcm2290[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= QPHY_V3_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V3_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V3_PCS_PCS_STATUS,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
 };
 
 static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -125,6 +136,7 @@ static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	/* In PCS_USB */
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
+	[QPHY_PCS_MISC_CLAMP_ENABLE]	= QPHY_V4_PCS_MISC_CLAMP_ENABLE,
 };
 
 static const unsigned int qmp_v5_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -1523,7 +1535,7 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v3_usb3phy_regs_layout,
+	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
 static void qmp_usb_configure_lane(void __iomem *base,
@@ -1761,8 +1773,8 @@ static void qmp_usb_enable_autonomous_mode(struct qmp_usb *qmp)
 	qphy_setbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL], intr_mask);
 
 	/* Enable i/o clamp_n for autonomous mode */
-	if (pcs_misc)
-		qphy_clrbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
+	if (pcs_misc && cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE])
+		qphy_clrbits(pcs_misc, cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE], CLAMP_EN);
 }
 
 static void qmp_usb_disable_autonomous_mode(struct qmp_usb *qmp)
@@ -1772,8 +1784,8 @@ static void qmp_usb_disable_autonomous_mode(struct qmp_usb *qmp)
 	void __iomem *pcs_misc = qmp->pcs_misc;
 
 	/* Disable i/o clamp_n on resume for normal mode */
-	if (pcs_misc)
-		qphy_setbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
+	if (pcs_misc && cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE])
+		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE], CLAMP_EN);
 
 	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
 		     ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL | ALFPS_DTCT_EN);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
