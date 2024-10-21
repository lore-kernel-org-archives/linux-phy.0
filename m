Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60341D0E6EA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 10:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3u1JK1uEjVeRzf+Jn7ocdw7f8OoV6EGrtwpNUPvlvdg=; b=Zfbg3PJcefzAsO
	bZpVaPQJgONGgi3GDqFhrutvHswgys7JTH26sdfoICeUynFRreu/jWbHHwTf+edDTDHWxPoKgWbPK
	LZ+tBblz4m6KJBogrYEzQFhfNdKn2wdy6z/s+VARHpjqkchYNO4SCVNuFPS9U3X+9atLrlSgaKAkp
	HYvWAiPbUKt/37KjF06gBFR8EG15j/mU2sgRsSCKYP1/OKkBdTKeOwKmWx96oAjXrZ5c/XbERL0yU
	2KLWvsgA6JRjrZ9/x8uvkapT+Od5/kbtzcPiXWzmxyjMGtKOUiLMvIgJY5Z/K+hckoc1Uw5Glexil
	cj7RZ/keulvdy8sPoU7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2pj3-00000006u1V-07iu;
	Mon, 21 Oct 2024 10:33:25 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2pix-00000006tyO-2FCm
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 10:33:21 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-539e63c8678so5086311e87.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 03:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729506797; x=1730111597; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LdncSAoP0KhDyf2xplN8lueVHyRZUHitLAgflAowdNI=;
        b=bPRqcHtQSSGWYKSQoQxiniq5cGwNRVLLMdF1gnPTnLvjvwUV+g+Rm/T+4XvJKoV03J
         sWGrAsw/qRFDpGL4pHN/H+4yy+3P17alxgNhloQnNp8778EFfm8RjkoY8agn+c9RpNgj
         uIhTeBM8p42aCvxQ6l9PXXZal8AsJZH5+9bN1xcl7AjLCEvvuIqZsu1aPHhPfxV927Vz
         xt1wMO0qWCF0s+VNc34q/GpDcEo0DDQik4zbGggZdGa3di+52NFkn3UKUAEmf/t28K+U
         /Io3I3XkujAymAeU79Ycs8DwcAjGHgEWWlbONwZo5ythKeBYFcGsmZl/YqSPXf4jxwym
         Lg0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506797; x=1730111597;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LdncSAoP0KhDyf2xplN8lueVHyRZUHitLAgflAowdNI=;
        b=XeW95t4+ZEjFx1QXLbXc9TGIuYlvzoesnUrsCJMn5qYHAa3vvabsIo/nDQPoun4mB8
         5vQoq816TH80AWLpCy/LNW1zqVn0qiFTif9WdRenv/mz8Ru/aD3qm8DCLuyHCwFIMT7p
         GUHG9tyN3hgc3MCJoCo1vwvrCbvruPLimsDubqLz8+/TA1v7aIXJzrZoetytA2SIAPEw
         UFObfux/g61QkrTDhmY/Xjo28o00rSxraTBA9VC5bC6yTvrMycNefntB+VvQaTC94jnE
         zMApuBIVuNLySwDWFkbJavDsNWsX9uhLCnzdDDTMiUUWCSJ4Uss1k8G/aozEqUPaHhT/
         CvkA==
X-Forwarded-Encrypted: i=1; AJvYcCXjKXqwOhiiOzWeJYsi64icrlEXqV/hSTbRvAINmvtNr7rFgKK7N/RHNQcR3EFocBATDwkXX/WOV2M=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZ8f6wtvFjMeZz68L1db6t7NT33Mo86dnWKGt9qQG2F/H34IaN
	FympmEi5XoFX38W6QX5xJZXQK6kmVKpADXHvBan9WvqUG5d0AGATECXXhqALH1g=
X-Google-Smtp-Source: AGHT+IEgTPbomFd3kO9GHICosRN/Yx8eZwp6HYOXT9lgepGaY23MR9/ZMzyGsQpSPnpqzZTAFmKDTQ==
X-Received: by 2002:a05:6512:31c3:b0:539:e1c6:2128 with SMTP id 2adb3069b0e04-53a154f901amr5172688e87.39.1729506797443;
        Mon, 21 Oct 2024 03:33:17 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a22420015sm454132e87.123.2024.10.21.03.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:33:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 21 Oct 2024 13:33:10 +0300
Subject: [PATCH v2 4/6] phy: qualcomm: qmp-pcie: split PCS_LANE1 region
MIME-Version: 1.0
Message-Id: <20241021-sar2130p-phys-v2-4-d883acf170f7@linaro.org>
References: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
In-Reply-To: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7955;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=UXDmPJ/23z2ls62ryM86x4tjZRAeCfpbFyCc69y6OPU=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnFi3l+CdWZbHkwyIW5A7LUrs3BwjflFZIUiQVh
 eq53nVGLZmJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxYt5QAKCRAU23LtvoBl
 uDTbD/4ydF3XTmXHXflRaxXCI6+ciQOzj2RBmrdndl8b3L8uZ1qeh4vTCMPxLZ0LNxqBIL1aU1S
 /c2cGzUiuBCeOYn3sU9FhbZYJxQblb8wXL/qld0mvINo9/CPv/qIrzQTkQNUNzmXKIJVv/Kw6no
 EyId6VriIsduhucUtw0vzmMmdY/LSztwHxCQIw+xALZ/sr6MTA+/qEv+x37BW5XcU2QxdetIiz1
 h6KgiVv/zXg1Ft1hUdygBnQR0XgGLypF6LY9cs0Q9vheEhEnIQA4kBPAUokYIndwwfDkYmP7oC8
 Yp6gOPvBaQmj45ga1PWG8NAcU8eB6I4W2Fd2OWwE8bu2fImgIPY9zIjbKga+4N7Vu4rQKswbYpB
 qbUpWGmhsYkvbxUCL7x2Kv/G6uaxddJzZDKNkaaG23NxMrUkpQx/YCJosj/qu6O5vWh2FBqZDpD
 1ubc1TAH+Bc3+I5PW3osJlnqxciLb8mnAcZNylpKokE0dIYtYJ+dl02PKyWB4sj6AI63lCiTmV/
 r0UikhNUpJLt7+sdm+GMGggXTgzUu3MO3R4PxqWAMJzUI3ljq5PsocAdhpPkP/R4Yn+BFqD4hF0
 AxZ4wuifh1CiXjXFZw5m3inoZB2nVN2v82yxe+F+o37ZrOrv0NKGp25jR3eQu648nQPDBQpAjxD
 DvRzOALuk353m1A==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_033319_601297_7FDB9129 
X-CRM114-Status: GOOD (  15.04  )
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

The PCS_LANE1 region isn't a part of the PCS_PCIE region. It was handled
this way as it simplified handled of devices with the old bindings.
Nowadays it can be handled as is, without hacks.

Split the PCS_LANE1 region from the PCS_PCIE / PCS_MISC region space.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 32 ++++++++++++++++++----
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h |  5 ++--
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  5 ++--
 3 files changed, 33 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 873f2f9844c66d7bd0b3bb3ab4bbd8be9a37cebd..1ca1f21b1cc225f435da9c775c97dfa142117f95 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1773,7 +1773,7 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_rc_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
 };
 
-static const struct qmp_phy_init_tbl sdx55_qmp_pcie_ep_pcs_misc_tbl[] = {
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_ep_pcs_lane1_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
 };
@@ -1907,6 +1907,9 @@ static const struct qmp_phy_init_tbl sdx65_qmp_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG2, 0x0d),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG5, 0x02),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
+};
+
+static const struct qmp_phy_init_tbl sdx65_qmp_pcie_pcs_lane1_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_LANE1_INSIG_SW_CTRL2, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
 };
@@ -2582,8 +2585,6 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl[] = {
 static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_EQ_CONFIG4, 0x16),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_EQ_CONFIG5, 0x22),
-	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_LANE1_INSIG_SW_CTRL2, 0x00),
-	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_G3S2_PRE_GAIN, 0x2e),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_RX_SIGDET_LVL, 0x66),
 };
@@ -2728,6 +2729,7 @@ struct qmp_pcie_offsets {
 	u16 serdes;
 	u16 pcs;
 	u16 pcs_misc;
+	u16 pcs_lane1;
 	u16 tx;
 	u16 rx;
 	u16 tx2;
@@ -2752,6 +2754,8 @@ struct qmp_phy_cfg_tbls {
 	int pcs_num;
 	const struct qmp_phy_init_tbl *pcs_misc;
 	int pcs_misc_num;
+	const struct qmp_phy_init_tbl *pcs_lane1;
+	int pcs_lane1_num;
 	const struct qmp_phy_init_tbl *ln_shrd;
 	int ln_shrd_num;
 };
@@ -2811,6 +2815,7 @@ struct qmp_pcie {
 	void __iomem *serdes;
 	void __iomem *pcs;
 	void __iomem *pcs_misc;
+	void __iomem *pcs_lane1;
 	void __iomem *tx;
 	void __iomem *rx;
 	void __iomem *tx2;
@@ -2927,6 +2932,7 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v4_20 = {
 	.serdes		= 0x1000,
 	.pcs		= 0x1200,
 	.pcs_misc	= 0x1600,
+	.pcs_lane1	= 0x1e00,
 	.tx		= 0x0000,
 	.rx		= 0x0200,
 	.tx2		= 0x0800,
@@ -2957,6 +2963,7 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_20 = {
 	.serdes		= 0x1000,
 	.pcs		= 0x1200,
 	.pcs_misc	= 0x1400,
+	.pcs_lane1	= 0x1e00,
 	.tx		= 0x0000,
 	.rx		= 0x0200,
 	.tx2		= 0x0800,
@@ -3440,8 +3447,8 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.tbls_ep = &(const struct qmp_phy_cfg_tbls) {
 		.serdes		= sdx55_qmp_pcie_ep_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_serdes_tbl),
-		.pcs_misc	= sdx55_qmp_pcie_ep_pcs_misc_tbl,
-		.pcs_misc_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_pcs_misc_tbl),
+		.pcs_lane1	= sdx55_qmp_pcie_ep_pcs_lane1_tbl,
+		.pcs_lane1_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_pcs_lane1_tbl),
 	},
 
 	.reset_list		= sdm845_pciephy_reset_l,
@@ -3540,6 +3547,8 @@ static const struct qmp_phy_cfg sdx65_qmp_pciephy_cfg = {
 			.pcs_num        = ARRAY_SIZE(sdx65_qmp_pcie_pcs_tbl),
 			.pcs_misc       = sdx65_qmp_pcie_pcs_misc_tbl,
 			.pcs_misc_num   = ARRAY_SIZE(sdx65_qmp_pcie_pcs_misc_tbl),
+			.pcs_lane1       = sdx65_qmp_pcie_pcs_lane1_tbl,
+			.pcs_lane1_num   = ARRAY_SIZE(sdx65_qmp_pcie_pcs_lane1_tbl),
 		},
 	.reset_list             = sdm845_pciephy_reset_l,
 	.num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
@@ -3739,6 +3748,8 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
 		.pcs_num		= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl),
 		.pcs_misc		= sa8775p_qmp_gen4_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_misc_tbl),
+		.pcs_lane1	= sdx65_qmp_pcie_pcs_lane1_tbl,
+		.pcs_lane1_num	= ARRAY_SIZE(sdx65_qmp_pcie_pcs_lane1_tbl),
 	},
 
 	.tbls_rc = &(const struct qmp_phy_cfg_tbls) {
@@ -3945,6 +3956,7 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
 	void __iomem *rx2 = qmp->rx2;
 	void __iomem *pcs = qmp->pcs;
 	void __iomem *pcs_misc = qmp->pcs_misc;
+	void __iomem *pcs_lane1 = qmp->pcs_lane1;
 	void __iomem *ln_shrd = qmp->ln_shrd;
 
 	if (!tbls)
@@ -3969,6 +3981,7 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
 
 	qmp_configure(qmp->dev, pcs, tbls->pcs, tbls->pcs_num);
 	qmp_configure(qmp->dev, pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
+	qmp_configure(qmp->dev, pcs_lane1, tbls->pcs_lane1, tbls->pcs_lane1_num);
 
 	if (cfg->lanes >= 4 && qmp->tcsr_4ln_config) {
 		qmp_configure(qmp->dev, serdes, cfg->serdes_4ln_tbl,
@@ -4420,6 +4433,14 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
 		}
 	}
 
+	/*
+	 * For all platforms where legacy bindings existed, PCS_LANE1 was
+	 * mapped as a part of the PCS_MISC region.
+	 */
+	if (!IS_ERR(qmp->pcs_misc) && cfg->offsets->pcs_lane1 != 0)
+		qmp->pcs_lane1 = qmp->pcs_misc +
+			(cfg->offsets->pcs_lane1 - cfg->offsets->pcs_misc);
+
 	clk = devm_get_clk_from_child(dev, np, NULL);
 	if (IS_ERR(clk)) {
 		return dev_err_probe(dev, PTR_ERR(clk),
@@ -4487,6 +4508,7 @@ static int qmp_pcie_parse_dt(struct qmp_pcie *qmp)
 	qmp->serdes = base + offs->serdes;
 	qmp->pcs = base + offs->pcs;
 	qmp->pcs_misc = base + offs->pcs_misc;
+	qmp->pcs_lane1 = base + offs->pcs_lane1;
 	qmp->tx = base + offs->tx;
 	qmp->rx = base + offs->rx;
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
index ac872a9eff9a8fe7fc3307759288aee15d17bd24..ab892d1067c219e8db0ba0591921b38a9cebebe7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
@@ -13,7 +13,8 @@
 #define QPHY_V4_20_PCS_PCIE_G4_RXEQEVAL_TIME		0x0f4
 #define QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG2		0x0fc
 #define QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG5		0x108
-#define QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2		0x824
-#define QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2		0x828
+
+#define QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2		0x024
+#define QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2		0x028
 
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
index cdf8c04ea078a985be82d561ad0918dfdece9987..283d63c8159338b57a5026b6c2a86e3cce21097c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
@@ -17,7 +17,8 @@
 #define QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG5		0x108
 #define QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN			0x15c
 #define QPHY_V5_20_PCS_PCIE_RX_MARGINING_CONFIG3	0x184
-#define QPHY_V5_20_PCS_LANE1_INSIG_SW_CTRL2		0xa24
-#define QPHY_V5_20_PCS_LANE1_INSIG_MX_CTRL2		0xa28
+
+#define QPHY_V5_20_PCS_LANE1_INSIG_SW_CTRL2		0x024
+#define QPHY_V5_20_PCS_LANE1_INSIG_MX_CTRL2		0x028
 
 #endif

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
