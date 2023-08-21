Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7719EE49B0
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVVCFsMF1QbXBpN+vlf9oG9yE/7yh+SnsBVLTxR0b6I=; b=tJZLSyEsD5HIA2
	FZRiETsgW+qB71biNL2O+E3PWOoluFKlO7vPE2aOiyrqMElia7pFps2Xvb5VCw2AdMRxJav+art1M
	JJZMizSPAPYODs/Eh+O4eTY/H6LL5ypsdhTV44JkniBC6WItXTC7nKwtaSZuw3Plbgy7VZhYDIiij
	dTbyAj5mdkzt+OHIe4HlWKegnv5F2/gzEAYkRjzjh2nbFYB205y9ZJhr4Xp24sjfoKCyHwF0DFGDv
	sSDfLzoLdPTUDXVif1meV/XLrCRH9TX+PC9qmaT/xwgjPCUmF294fuZ4fDobS8X2TMeRVQW5Zyz5G
	C4oCbN7mEtEnWDRb+QKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjo-00CjlC-11;
	Mon, 21 Aug 2023 00:25:44 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjk-00CjiR-0v
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:42 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2bcc14ea414so3215911fa.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577538; x=1693182338;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yhZSWof/ogOerzuI8LfoagdYZ1hN/OBCAtHXM1b5puA=;
        b=DkhdllJv4WUvtu9TVX1SyFXf/PsIBrwmPvkG6MiJB30T4ro+YdAQZGQa7/QOc5pXMW
         e6oblnT35qkg59jcpjG+ElFzFM6P9zRTCxAuIsmg43OogwcmSbhEAxjGMa6NiM0euPTe
         xXcFDtl5AMjaZcUKuCX636oZQPbjVmGt9Ml3YzvGvc0NumGToyBYL2WvITzcaH/M+Lpl
         7fQAtViVB9sMuk9fJzSAuEKBzvXDQclZsegiZuG4TiM58RXrxrbpfUyoKhymKBNb4jfY
         3cPRwjc6mDIBcwbrnHl5jeZDst7lTx6eRM/L0RRn5y/yrZug2eLC3dfrYHD5aSMJHoPn
         6oPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577538; x=1693182338;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yhZSWof/ogOerzuI8LfoagdYZ1hN/OBCAtHXM1b5puA=;
        b=FoqxZLmcPT20bI76jLCC31E92rzL3XXamXrdZR7+j0AJZh3zxr1R0efWWOArvbeYVF
         Ik72ilLb+S/nzbDtUorlwilf3meHAHQjcvqBjlrFNNJV3U5fzZoQ2aDJO66h9unOs60/
         CtrhmxxiVWH13QgYC62ahQI3Q4Z7Mo1w8ZrwsQI5tpKb4I/s24SUdQ/gPuxtXs/okMkM
         p2VKjk1w+Zunxp3PC+YBjf4Em/j03HeFwOKizentjxbuICsVxCWUdg+APJEDDWl8+Rby
         yDVQj5S2WlErDbeHZpExbsQRJqyhRis+YRpYD2gClFWTgFYoi8ckIBd0VfgRWq9nTMrz
         0V7A==
X-Gm-Message-State: AOJu0YyUvnvv9q1F3it6KWD27P05Fwj/RruVaIQAlnzWeP2hITUrYkZY
	6rN6ThapF7adBgJQjBa5ynYjFqlpvvI5c/srKi8=
X-Google-Smtp-Source: AGHT+IGvzgp2v8yf29tOvAEqzfsUSsvs9FbYqZLtwAQ6X8KV7SSfZVaBoS98TOQs8M5fslKfCtBk8g==
X-Received: by 2002:a2e:3112:0:b0:2b9:f13b:6139 with SMTP id x18-20020a2e3112000000b002b9f13b6139mr3570448ljx.20.1692577538346;
        Sun, 20 Aug 2023 17:25:38 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:37 -0700 (PDT)
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
Subject: [PATCH v2 02/16] phy: qcom-qmp-usb: simplify clock handling
Date: Mon, 21 Aug 2023 03:25:21 +0300
Message-Id: <20230821002535.585660-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172540_322749_DE2A9C5C 
X-CRM114-Status: GOOD (  18.27  )
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

For the existing PHYs for new binding we are going to drop ref_clk_src
clock and always use ref clock. Rather than introducing additional code
to handle legacy vs current bindings (and clock names), use
devm_clk_bulk_get_optional() when new bindings are used and
devm_clk_bulk_get_all() when legacy bindings are in place.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 90 +++++++------------------
 1 file changed, 24 insertions(+), 66 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 0130bb8e809a..626cf4bf396b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1172,9 +1172,6 @@ struct qmp_phy_cfg {
 	const struct qmp_phy_init_tbl *pcs_usb_tbl;
 	int pcs_usb_tbl_num;
 
-	/* clock ids to be requested */
-	const char * const *clk_list;
-	int num_clks;
 	/* resets to be requested */
 	const char * const *reset_list;
 	int num_resets;
@@ -1208,6 +1205,7 @@ struct qmp_usb {
 
 	struct clk *pipe_clk;
 	struct clk_bulk_data *clks;
+	int num_clks;
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
@@ -1243,31 +1241,10 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 }
 
 /* list of clocks required by phy */
-static const char * const msm8996_phy_clk_l[] = {
-	"aux", "cfg_ahb", "ref",
-};
-
-static const char * const qmp_v3_phy_clk_l[] = {
+static const char * const qmp_usb_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref", "com_aux",
 };
 
-static const char * const qmp_v4_phy_clk_l[] = {
-	"aux", "ref", "com_aux",
-};
-
-static const char * const qmp_v4_ref_phy_clk_l[] = {
-	"aux", "ref_clk_src", "ref", "com_aux",
-};
-
-/* usb3 phy on sdx55 doesn't have com_aux clock */
-static const char * const qmp_v4_sdx55_usbphy_clk_l[] = {
-	"aux", "cfg_ahb", "ref"
-};
-
-static const char * const qcm2290_usb3phy_clk_l[] = {
-	"cfg_ahb", "ref", "com_aux",
-};
-
 /* list of resets */
 static const char * const msm8996_usb3phy_reset_l[] = {
 	"phy", "common",
@@ -1319,8 +1296,6 @@ static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(ipq8074_usb3_rx_tbl),
 	.pcs_tbl		= ipq8074_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(ipq8074_usb3_pcs_tbl),
-	.clk_list		= msm8996_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(msm8996_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1341,8 +1316,6 @@ static const struct qmp_phy_cfg ipq9574_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(ipq9574_usb3_rx_tbl),
 	.pcs_tbl		= ipq9574_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(ipq9574_usb3_pcs_tbl),
-	.clk_list		= msm8996_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(msm8996_phy_clk_l),
 	.reset_list		= qcm2290_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(qcm2290_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1361,8 +1334,6 @@ static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(msm8996_usb3_rx_tbl),
 	.pcs_tbl		= msm8996_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(msm8996_usb3_pcs_tbl),
-	.clk_list		= msm8996_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(msm8996_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1383,8 +1354,6 @@ static const struct qmp_phy_cfg sa8775p_usb3_uniphy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sc8280xp_usb3_uniphy_rx_tbl),
 	.pcs_tbl		= sa8775p_usb3_uniphy_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sa8775p_usb3_uniphy_pcs_tbl),
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= qcm2290_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(qcm2290_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1405,8 +1374,6 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sc8280xp_usb3_uniphy_rx_tbl),
 	.pcs_tbl		= sc8280xp_usb3_uniphy_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(sc8280xp_usb3_uniphy_pcs_tbl),
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= qcm2290_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(qcm2290_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1425,8 +1392,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_uniphy_rx_tbl),
 	.pcs_tbl		= qmp_v3_usb3_uniphy_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_uniphy_pcs_tbl),
-	.clk_list		= qmp_v3_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1447,8 +1412,6 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
 	.pcs_tbl                = msm8998_usb3_pcs_tbl,
 	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
-	.clk_list               = msm8996_phy_clk_l,
-	.num_clks               = ARRAY_SIZE(msm8996_phy_clk_l),
 	.reset_list             = msm8996_usb3phy_reset_l,
 	.num_resets             = ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list              = qmp_phy_vreg_l,
@@ -1469,8 +1432,6 @@ static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
 	.pcs_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_pcs_tbl),
 	.pcs_usb_tbl		= sm8150_usb3_uniphy_pcs_usb_tbl,
 	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8150_usb3_uniphy_pcs_usb_tbl),
-	.clk_list		= qmp_v4_ref_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_ref_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1494,8 +1455,6 @@ static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
 	.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_tbl),
 	.pcs_usb_tbl		= sm8250_usb3_uniphy_pcs_usb_tbl,
 	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_usb_tbl),
-	.clk_list		= qmp_v4_ref_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_ref_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1519,8 +1478,6 @@ static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
 	.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_tbl),
 	.pcs_usb_tbl		= sm8250_usb3_uniphy_pcs_usb_tbl,
 	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_usb_tbl),
-	.clk_list		= qmp_v4_sdx55_usbphy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_sdx55_usbphy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1544,8 +1501,6 @@ static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
 	.pcs_tbl_num		= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_tbl),
 	.pcs_usb_tbl		= sm8350_usb3_uniphy_pcs_usb_tbl,
 	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_usb_tbl),
-	.clk_list		= qmp_v4_sdx55_usbphy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_sdx55_usbphy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1569,8 +1524,6 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 	.pcs_tbl_num		= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_tbl),
 	.pcs_usb_tbl		= sm8350_usb3_uniphy_pcs_usb_tbl,
 	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_usb_tbl),
-	.clk_list		= qmp_v4_ref_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_ref_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1594,8 +1547,6 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
-	.clk_list		= qcm2290_usb3phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qcm2290_usb3phy_clk_l),
 	.reset_list		= qcm2290_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(qcm2290_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1666,7 +1617,7 @@ static int qmp_usb_init(struct phy *phy)
 		goto err_disable_regulators;
 	}
 
-	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
+	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
 	if (ret)
 		goto err_assert_reset;
 
@@ -1689,7 +1640,7 @@ static int qmp_usb_exit(struct phy *phy)
 
 	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
-	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
+	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -1863,7 +1814,6 @@ static void qmp_usb_disable_autonomous_mode(struct qmp_usb *qmp)
 static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
 {
 	struct qmp_usb *qmp = dev_get_drvdata(dev);
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
@@ -1875,7 +1825,7 @@ static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
 	qmp_usb_enable_autonomous_mode(qmp);
 
 	clk_disable_unprepare(qmp->pipe_clk);
-	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
+	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 
 	return 0;
 }
@@ -1883,7 +1833,6 @@ static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
 static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
 {
 	struct qmp_usb *qmp = dev_get_drvdata(dev);
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	int ret = 0;
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
@@ -1893,14 +1842,14 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
 		return 0;
 	}
 
-	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
+	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
 	if (ret)
 		return ret;
 
 	ret = clk_prepare_enable(qmp->pipe_clk);
 	if (ret) {
 		dev_err(dev, "pipe_clk enable failed, err=%d\n", ret);
-		clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
+		clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 		return ret;
 	}
 
@@ -1955,9 +1904,8 @@ static int qmp_usb_reset_init(struct qmp_usb *qmp)
 
 static int qmp_usb_clk_init(struct qmp_usb *qmp)
 {
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
-	int num = cfg->num_clks;
+	int num = ARRAY_SIZE(qmp_usb_phy_clk_l);
 	int i;
 
 	qmp->clks = devm_kcalloc(dev, num, sizeof(*qmp->clks), GFP_KERNEL);
@@ -1965,9 +1913,11 @@ static int qmp_usb_clk_init(struct qmp_usb *qmp)
 		return -ENOMEM;
 
 	for (i = 0; i < num; i++)
-		qmp->clks[i].id = cfg->clk_list[i];
+		qmp->clks[i].id = qmp_usb_phy_clk_l[i];
 
-	return devm_clk_bulk_get(dev, num, qmp->clks);
+	qmp->num_clks = num;
+
+	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
 }
 
 static void phy_clk_release_provider(void *res)
@@ -2047,6 +1997,7 @@ static int qmp_usb_parse_dt_legacy(struct qmp_usb *qmp, struct device_node *np)
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
 	bool exclusive = true;
+	int ret;
 
 	qmp->serdes = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(qmp->serdes))
@@ -2107,6 +2058,12 @@ static int qmp_usb_parse_dt_legacy(struct qmp_usb *qmp, struct device_node *np)
 				     "failed to get pipe clock\n");
 	}
 
+	ret = devm_clk_bulk_get_all(qmp->dev, &qmp->clks);
+	if (ret < 0)
+		return ret;
+
+	qmp->num_clks = ret;
+
 	return 0;
 }
 
@@ -2117,6 +2074,7 @@ static int qmp_usb_parse_dt(struct qmp_usb *qmp)
 	const struct qmp_usb_offsets *offs = cfg->offsets;
 	struct device *dev = qmp->dev;
 	void __iomem *base;
+	int ret;
 
 	if (!offs)
 		return -EINVAL;
@@ -2137,6 +2095,10 @@ static int qmp_usb_parse_dt(struct qmp_usb *qmp)
 		qmp->rx2 = base + offs->rx2;
 	}
 
+	ret = qmp_usb_clk_init(qmp);
+	if (ret)
+		return ret;
+
 	qmp->pipe_clk = devm_clk_get(dev, "pipe");
 	if (IS_ERR(qmp->pipe_clk)) {
 		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
@@ -2164,10 +2126,6 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	if (!qmp->cfg)
 		return -EINVAL;
 
-	ret = qmp_usb_clk_init(qmp);
-	if (ret)
-		return ret;
-
 	ret = qmp_usb_reset_init(qmp);
 	if (ret)
 		return ret;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
