Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16F18C761AF
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3d1Db9bWziL8TbNihxJCuBv1UI53pmCT55mQlx22wSI=; b=Lt2q+qdQlkw3Rh
	s2GqlFFZZq69MZ001GqFqzJqlfLAOZ28mJcYKsT81U7rnBMYdpMe4EkMlM7k0eUzWN1fPBkUxLdki
	s9Q/f0k95RRrV0KSXkN31c8YklIpKY8htMB0ZEWkNnQnnixH0JTpVVdrDZZiOgxFhZCuQDg1qC3gR
	4An/4DP0cccXIuFr55/r37XorUvoryvy+LvsqhBD9B8WwPjwS/6HmujMEHJapoyE+x4wOlBuTle9n
	SUsoRjDMdfZ+XYgP/O9Km3qv7wP2yEnRY7pi/wo4YxdCVjWBd87lGpBFPmuOlUNE0z8jTdGM7Ur7F
	CI7UNx+LtFNxdeUEeEAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7O-003OAp-2E;
	Fri, 24 Mar 2023 02:25:26 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7K-003O7h-2J
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:24 +0000
Received: by mail-lj1-x235.google.com with SMTP id 20so347421lju.0
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MYtDfQWx10YO17Wnn1ggV4D8R2RJGN5uqiLMueHHXec=;
        b=J3Jl4mSgedwERrEmVpNgYAV9VCsALiC6fMl5WYv0iM5EtKafuS8ukW0r03qXWEjZig
         RYJZr7rUceQUVQeB9OZBeijOQp04E2EANXcKTSLvxYSLZ6l2kZiBDWKmJGVGGB0zkFHh
         4jO30CncCfuHNeganl96XbBmwmEE1qWpZAjNFadBJcMRdtDaegXxXr32fEH6d+Dto1LT
         fa3f2wCnF0YXgpBmUURZHweca6pgFD5PAGT1ZuKtMgvQZV28d8Vjhvmhky65wSaFRafw
         ymZCvIzWzzvwtzvUi0mjx6SpvPNULNt+g7rpkdRxaDnBn0hKvtDlNSMSmX/dBm1l2V9F
         EQHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624721;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MYtDfQWx10YO17Wnn1ggV4D8R2RJGN5uqiLMueHHXec=;
        b=NRcZ5nmxEGvtOmcAipQGxL9pxNQV2ldmeyR/yAJwu63Wo/lWt7v/SkRsOYK3ScJEuq
         6pRJndXTvI2RRvYawQL0NE8Gb+u5FBQ8xL8SJDavuAvKgaywmlFEQj1OQSJSfEorAr/b
         hp7hxiwju2ZPKYQfU41CR5rUlsbK8I9XAg90u/R86JQkwQ+8WJsO+Q83A4NttoUBk1No
         L6zKCyf9+iRu5HcSAk0QOHv0OEUSTPlFe+bCTWMCm5fljYLXNOPybztsvthed1q8c9rG
         qKD5tXVK5OvWabey8hyjC/wk6Tt8inJQ4KEG4TQYGh1r4qWXNjd56hNnUw/Bk2YORuRr
         UzHA==
X-Gm-Message-State: AAQBX9eT3Ul5XjY2LUbiph2t2vqFCk8EX7ZOfLSZDKCXDh4p7lFg8vwF
	3v7dDmp7/4MNzR+qZAf/vKcVyQ==
X-Google-Smtp-Source: AKy350YdJ6dqlQlucGROPOEgXCKIMWwxg+ZMKqJ/8GKjjS9wXtybKPSwYHMqWAzeQ3peGMRYROdXnw==
X-Received: by 2002:a2e:b0c8:0:b0:298:8782:e5f with SMTP id g8-20020a2eb0c8000000b0029887820e5fmr289817ljl.43.1679624720837;
        Thu, 23 Mar 2023 19:25:20 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:20 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 05/41] phy: qcom-qmp-usb: make QPHY_PCS_MISC_CLAMP_ENABLE access conditional
Date: Fri, 24 Mar 2023 05:24:38 +0300
Message-Id: <20230324022514.1800382-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192522_750990_BCF9BD8D 
X-CRM114-Status: GOOD (  11.36  )
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
index a49711c5a63d..269350687259 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -95,6 +95,7 @@ enum qphy_reg_layout {
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	QPHY_PCS_POWER_DOWN_CONTROL,
+	QPHY_PCS_MISC_CLAMP_ENABLE,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
 };
@@ -115,6 +116,16 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
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
@@ -126,6 +137,7 @@ static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	/* In PCS_USB */
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
+	[QPHY_PCS_MISC_CLAMP_ENABLE]	= QPHY_V4_PCS_MISC_CLAMP_ENABLE,
 };
 
 static const unsigned int qmp_v5_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -1936,7 +1948,7 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.num_resets		= ARRAY_SIZE(qcm2290_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= qmp_v3_usb3phy_regs_layout,
+	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
 static void qmp_usb_configure_lane(void __iomem *base,
@@ -2198,8 +2210,8 @@ static void qmp_usb_enable_autonomous_mode(struct qmp_usb *qmp)
 	qphy_setbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL], intr_mask);
 
 	/* Enable i/o clamp_n for autonomous mode */
-	if (pcs_misc)
-		qphy_clrbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
+	if (pcs_misc && cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE])
+		qphy_clrbits(pcs_misc, cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE], CLAMP_EN);
 }
 
 static void qmp_usb_disable_autonomous_mode(struct qmp_usb *qmp)
@@ -2209,8 +2221,8 @@ static void qmp_usb_disable_autonomous_mode(struct qmp_usb *qmp)
 	void __iomem *pcs_misc = qmp->pcs_misc;
 
 	/* Disable i/o clamp_n on resume for normal mode */
-	if (pcs_misc)
-		qphy_setbits(pcs_misc, QPHY_V3_PCS_MISC_CLAMP_ENABLE, CLAMP_EN);
+	if (pcs_misc && cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE])
+		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE], CLAMP_EN);
 
 	qphy_clrbits(pcs_usb, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
 		     ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL | ALFPS_DTCT_EN);
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
