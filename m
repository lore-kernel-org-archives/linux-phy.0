Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75DA8EB64DD
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 15:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nr9uWsvWhz5/QL3HZMwIpk6poc8kLZxZ4Zc61MmqvdA=; b=zdO2b/flYLNt3M
	lEdiXa5JfvgoKKez/giDvEJwHbnkxutHKvYnzTw2s3jieH7qwNK54hKJPIhash11D025zelEYwRK6
	qnE8iWuQi6AJ+8kLoNHsRJg68zNcClNc/GdWN8rj4eRvLe25JpJv8Lrsdq8w+z61mlfVwdWDkWce+
	p5UgVJQA9FhCP8lTMKpkKMgaHGXYci/TcZlD+WWBRBZfzh/oYk3eoFDzjEQFEKvDkutxz2HkhwfEZ
	l+83+y/o7NNKGPwEAWiWCI8lg/Ircyg5BgR/PIh3Mlf91OLmuGgtf4p4dfDiuSGo9tdR+CdCIdqBg
	MdzlWjO5fP7khUBXImuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBzpq-00ExK2-0Q;
	Wed, 21 Jun 2023 15:33:30 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBzpl-00ExGr-0q
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 15:33:27 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f955850e30so2088338e87.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Jun 2023 08:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687361604; x=1689953604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9/23tT0yJ4hRHUR7E3FSZzQwm4+dob7HrAkXw2r+SVI=;
        b=zKkkOR1J8CkA3TfSFX8/qvpTLynJjvdcwz8f61tqfAsKEf3CcB2FSyI0BIaGRvLfoC
         G9bxFJ3I0Fg8OGd5paBcdKRKLh7ipzWDT5lD6k4Q2e+x5zZNvsj/8Pu16gr6rccojLPT
         0yy8kR8lcfSDNGkReWlzRZOuVt7d9A2TPCJ1VcxuueNeKV5mjsKuSbZPcZGJ8p4mdFtC
         5SSySeNUJSmJcnvN8LuXb+k0uXv5SHXQC1xyykPz8fXOSlrMo1CkCXXbSpmHtvQELkpE
         in8yl/OL4VcGvTP2xL1h6G01RTGeGVBh2KjCQk1LryBtonAobFkFgGrNnFF/KQttm/my
         EaJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687361604; x=1689953604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9/23tT0yJ4hRHUR7E3FSZzQwm4+dob7HrAkXw2r+SVI=;
        b=KKw+VfcJLRqPswxJchsfokWS1htnrubguQQJHF1j4DjN5P7c9jefJCz8bqUyOzHdPa
         8WuaX410E6Pr+XRWlHFSbw8y8QGQtbiSl2297SS7daUcAC1fEnXA8FLABC09cho5yAuY
         9wZtQ+8uwc+eY1RHfp6MKWX2fSUBW7WHc/MAGq3YGkGUyy88DorBjZzgZj5W/3o5sCe9
         +nt2JluyD044BvPB7nXgAa9pxJQ8/V+faDeDN+jqBtYWME9MnbHa9ZIbbLJP8ju/kanD
         mrJqEXXPhO3rSMYyZj1tgzbS45oHJGglBy2y4GyJVnGJnChkejLc0NUFeXtQiS9+lJ6f
         AqxA==
X-Gm-Message-State: AC+VfDwJD2qtsxl1F9slcVkbQKhhD5QVoVcSKSpLQUKJZuXJ0z65NjaG
	dUNcnkZEoOWczwWh/Dl/IYLojg==
X-Google-Smtp-Source: ACHHUZ7+fcwTUOMWoYzRYL4AFKL7S8B3EYgSWizytxNncDj5wCXkqzAEluFyVjlO0XhpT/r9Mpchrg==
X-Received: by 2002:a19:640e:0:b0:4f8:5510:c897 with SMTP id y14-20020a19640e000000b004f85510c897mr5434712lfb.18.1687361603942;
        Wed, 21 Jun 2023 08:33:23 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id o3-20020a056512050300b004f8751285a5sm804888lfb.80.2023.06.21.08.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 08:33:23 -0700 (PDT)
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
Subject: [RESEND PATCH 6/7] phy: qcom: qmp-combo: drop qmp_v6_dp_aux_init()
Date: Wed, 21 Jun 2023 18:33:16 +0300
Message-Id: <20230621153317.1025914-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230621153317.1025914-1-dmitry.baryshkov@linaro.org>
References: <20230621153317.1025914-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_083325_346577_85E8BF16 
X-CRM114-Status: GOOD (  11.42  )
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

The only difference between qmp_v6_dp_aux_init() and
qmp_v4_dp_aux_init() is the address of COM_BIAS_EN_CLKBUFLR_EN register.
Move it to register layout and drop the duplicate function.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 44 +++++++----------------
 1 file changed, 12 insertions(+), 32 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 80a5bebf86a2..ab6cfa02ecf9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -110,6 +110,7 @@ enum qphy_reg_layout {
 	QPHY_COM_RESETSM_CNTRL,
 	QPHY_COM_C_READY_STATUS,
 	QPHY_COM_CMN_STATUS,
+	QPHY_COM_BIAS_EN_CLKBUFLR_EN,
 
 	QPHY_DP_PHY_STATUS,
 
@@ -134,6 +135,7 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V3_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V3_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V3_COM_CMN_STATUS,
+	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN,
 
 	[QPHY_DP_PHY_STATUS]		= QSERDES_V3_DP_PHY_STATUS,
 
@@ -157,6 +159,7 @@ static const unsigned int qmp_v45_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V4_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V4_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V4_COM_CMN_STATUS,
+	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN,
 
 	[QPHY_DP_PHY_STATUS]		= QSERDES_V4_DP_PHY_STATUS,
 
@@ -180,6 +183,7 @@ static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V5_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V5_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V5_COM_CMN_STATUS,
+	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN,
 
 	[QPHY_DP_PHY_STATUS]		= QSERDES_V5_DP_PHY_STATUS,
 
@@ -203,6 +207,7 @@ static const unsigned int qmp_v6_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V6_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V6_COM_C_READY_STATUS,
 	[QPHY_COM_CMN_STATUS]		= QSERDES_V6_COM_CMN_STATUS,
+	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN,
 
 	[QPHY_DP_PHY_STATUS]		= QSERDES_V6_DP_PHY_STATUS,
 
@@ -1433,8 +1438,6 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp);
 static int qmp_v4_configure_dp_phy(struct qmp_combo *qmp);
 static int qmp_v4_calibrate_dp_phy(struct qmp_combo *qmp);
 
-static void qmp_v6_dp_aux_init(struct qmp_combo *qmp);
-
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
 {
 	u32 reg;
@@ -1870,7 +1873,7 @@ static const struct qmp_phy_cfg sm8550_usb3dpphy_cfg = {
 	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
 
-	.dp_aux_init		= qmp_v6_dp_aux_init,
+	.dp_aux_init		= qmp_v4_dp_aux_init,
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
 	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
@@ -1945,6 +1948,8 @@ static int qmp_combo_dp_serdes_init(struct qmp_combo *qmp)
 
 static void qmp_v3_dp_aux_init(struct qmp_combo *qmp)
 {
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
@@ -1952,7 +1957,7 @@ static void qmp_v3_dp_aux_init(struct qmp_combo *qmp)
 	/* Turn on BIAS current for PHY/PLL */
 	writel(QSERDES_V3_COM_BIAS_EN | QSERDES_V3_COM_BIAS_EN_MUX |
 	       QSERDES_V3_COM_CLKBUF_L_EN | QSERDES_V3_COM_EN_SYSCLK_TX_SEL,
-	       qmp->dp_serdes + QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN);
+	       qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
 
 	writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
@@ -1966,7 +1971,7 @@ static void qmp_v3_dp_aux_init(struct qmp_combo *qmp)
 	       QSERDES_V3_COM_BIAS_EN_MUX | QSERDES_V3_COM_CLKBUF_R_EN |
 	       QSERDES_V3_COM_CLKBUF_L_EN | QSERDES_V3_COM_EN_SYSCLK_TX_SEL |
 	       QSERDES_V3_COM_CLKBUF_RX_DRIVE_L,
-	       qmp->dp_serdes + QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN);
+	       qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
 
 	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG0);
 	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
@@ -2162,39 +2167,14 @@ static int qmp_v3_calibrate_dp_phy(struct qmp_combo *qmp)
 
 static void qmp_v4_dp_aux_init(struct qmp_combo *qmp)
 {
-	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_PSR_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
-	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
-	       qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
-
-	/* Turn on BIAS current for PHY/PLL */
-	writel(0x17, qmp->dp_serdes + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
-
-	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG0);
-	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
-	writel(0xa4, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG2);
-	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG3);
-	writel(0x0a, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG4);
-	writel(0x26, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG5);
-	writel(0x0a, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG6);
-	writel(0x03, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG7);
-	writel(0xb7, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG8);
-	writel(0x03, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG9);
-	qmp->dp_aux_cfg = 0;
-
-	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
-	       PHY_AUX_SYNC_ERR_MASK | PHY_AUX_ALIGN_ERR_MASK |
-	       PHY_AUX_REQ_ERR_MASK,
-	       qmp->dp_dp_phy + QSERDES_V4_DP_PHY_AUX_INTERRUPT_MASK);
-}
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-static void qmp_v6_dp_aux_init(struct qmp_combo *qmp)
-{
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_PSR_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
 	/* Turn on BIAS current for PHY/PLL */
-	writel(0x17, qmp->dp_serdes + QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN);
+	writel(0x17, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
 
 	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG0);
 	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
