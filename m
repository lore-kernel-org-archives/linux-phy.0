Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4282CC52D7C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 07:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLimQbhrJ8csardWeWuKRVqwgbea4Pm2Dbt+Q9shd4Q=; b=Zezljd4JKPCWU7
	JPWujOBgTLL7p1EskFd9fnL7ifwKhskPigmQZhmmHjFjMz+HlEemZ5zm2bcz5J7sGLm8VQY2t4oy8
	Oqaj18aKCSyu9KzayVmF1f0e+HpN1bKfCfg4JpZd5x0kuyYz0YF3EVFb6F0d/ecwzXcavkrl+hPJf
	77QOuAXodCqAd7b2+H+nGB3adiC4XGF8D2xU2Voa1ttJ1eNLNJQNueUlwq80r5VNYRwWoDnVGm9IZ
	wTbC28zs+4z0ovI5U2fQAWYyEyt6oK1dJudAMoL3tNGzRbNdXjCMMAXqirHBfikJD0X0Sw4wCbK90
	7Y0KfpevUHi+Hct33RVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOLa-0000000FZBo-3HrY;
	Fri, 23 Aug 2024 07:04:34 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shOLW-0000000FZ97-2ODY
	for linux-phy@lists.infradead.org;
	Fri, 23 Aug 2024 07:04:32 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5a108354819so2400906a12.0
        for <linux-phy@lists.infradead.org>; Fri, 23 Aug 2024 00:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724396669; x=1725001469; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K9EVzof5rnrF7mBTDm9cmpbs8lruT3c0ahwVf6GsTNQ=;
        b=Xu8xJp8icD/EWwHrbFPkfjwY5p3o2AW3kJgN+/56qa2x7aeB+cB3Mny/N4XGLN48DH
         +xtDKd/9z7Q3pX8HJMepn5527NPbc2jPkPnGyNHx0T38CoX8XrMBaSDheoMz2qY0OOrw
         sahzM9Cgf5WwcjqAR6rsp3JwkdwFpWwiJ2CE5BbgdoH1Mm6UiHpKHNilozGvoE38GaEI
         o2YJQSG46zRmklnvfdAe1YE1sZtzAxT1nri+f0GNo6qrCg1Jh6pN63LDgmwxJ9YQpJ7s
         33Xm3MW73+JjNb0VOLehzFSBoM3hZyX/JSMW470hOaoOQmnnWQ8FfsiDnjvupNX5yK+R
         Og8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724396669; x=1725001469;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K9EVzof5rnrF7mBTDm9cmpbs8lruT3c0ahwVf6GsTNQ=;
        b=NjlxOvmJ+HHLfDeyaSqE2xYC7xcmdm1oxKxv8Cf8DbkiFDuX/HLpV2GeJ2aqeq4SPa
         CvcsjomRFowM21sJnt2gYx0t7Zu0/muocEe0G5F0vaz8yKbn4KlNCSdxUWnl234a3zQJ
         IqL+Rrv1DlT48lBVg5aYHlB+6o1pCpn/iCH/Nc4GOcx0/Cz1Sd+Tj3gK9StpjV/Xo7Cm
         IE6HdaWx0gaSp/W6TxLaHx+aeDpwGuyYiH/Ud8GigsMKPILvhQeRzb6+AGpOzVBLK5EV
         NjnxnCuM0G/qb7oXDdU65IGru2rcZWzMPsS7oSVcJBnB9inJX5s5mGpp6ri9SdtRVAZF
         Ncww==
X-Forwarded-Encrypted: i=1; AJvYcCUaUNXboNjAwIy5MVxA7A5Vu+RpYQuvoSwuv5U7Umcw74fLLPyb7ZYahWPBILhLTweVDDMH2/QnFaY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2ySMDyEQodEVR4trLZS7pAx53+/bMS3+SNM/Mz4aQj1LIDHyW
	X51VHMsdaFAUpYvgtHCITiGEk4seD/kbePrqHyOCSjBUlccTme0ZD4H132FsJl8=
X-Google-Smtp-Source: AGHT+IHjg4XmnO2sOWE82GNncjVHJpDpCtPri9+DoItYKOfnkhp4FmhI1YIfIFnKycH3bCttR0tviA==
X-Received: by 2002:a17:907:9604:b0:a7a:b561:3564 with SMTP id a640c23a62f3a-a86a54be101mr86976466b.61.1724396668635;
        Fri, 23 Aug 2024 00:04:28 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.176])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f48ae0dsm214820766b.184.2024.08.23.00.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 00:04:28 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 23 Aug 2024 10:04:16 +0300
Subject: [PATCH v3 2/2] phy: qcom: qmp-pcie: Add Gen4 4-lanes mode for
 X1E80100
MIME-Version: 1.0
Message-Id: <20240823-x1e80100-phy-add-gen4x4-v3-2-b7765631ca01@linaro.org>
References: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
In-Reply-To: <20240823-x1e80100-phy-add-gen4x4-v3-0-b7765631ca01@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3189; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=b5lp9G5kmgGElPkC1EMZU1PTPbFZTnN0DYN7a06Uff8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmyDR3wFDJ2SAY4MkWDE3DejDh7JtRUTNDkC8+C
 cysi5JuaJKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZsg0dwAKCRAbX0TJAJUV
 VtAKD/9ALd2gF6a+o75iynnVAYMk+/sCqHJj/Lm/vd8KJA6Rv50EAV+Ucc+pnncbyxUR2jyLsdz
 NIzmWgJgNpSHR7tY52Rz/BvSlX5ES1ZhWpwny8x+4QbJ0MQ0hKk00/i7Mw0iVQ2wFiVE3hxCPWu
 cwMBKR5urOs8/pgRikupMduEMxkJigCvZZFCCb11l/2Tr5Iq3qVyaMEJU2npG+fpFF7DBmrAHUK
 ArD3BYWWRYb3OZ7UJzV4wpsST7X/fGnjoySuYsEEnStg2/QP+8FzfAK2pR0kTADK/Vz8meVozkn
 l5dzJU7iLkPSgaNA+7gGRWv+vS06pxP+9lrxzcurBxzlTstlIsF4Qcb3Eq3S4YwOCpr3djX0PqT
 wO/egk4w3OWaM2z8EoKOijbQWFoILcGcANtcxDy/v+Tcfx69q/p1tmKe4lClxOSsRLDu81f1m1P
 StCrHmNtoLVssS+j+0W0cB8Q6sW784OzxfNMr71WPxhMBiogEKDAi5V8dLTRvlUZLIkHJFxFYaf
 BKSIUBWUW5bNJ14lTnKdHt4Qsxx+cubXamOhQ0PMSnN+alZcwkQswIVh57jfMsLF7kSi558rqwQ
 xbPwFyb1e+wq5CV44sH1BV2LZeZgW9crVdXes2uR2ardI3gWp76L1NeZHoGRZMl+NQ0kumOF4n5
 Is4Fv3x0l51MqJg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_000430_726863_45D61377 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
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

The sixth PCIe controller on X1E80100 can be used in either
4-lanes mode or 2-lanes mode. Add the configuration and compatible
for the 4-lane mode.

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index a7e2ce0c500d..f71787fb4d7e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1242,6 +1242,10 @@ static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_VCO_DC_LEVEL_CTRL, 0x0f),
 };
 
+static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN, 0x1c),
+};
+
 static const struct qmp_phy_init_tbl x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_RXCLK_DIV2_CTRL, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V6_LN_SHRD_DFE_DAC_ENABLE1, 0x88),
@@ -3654,6 +3658,41 @@ static const struct qmp_phy_cfg x1e80100_qmp_gen4x2_pciephy_cfg = {
 		.ln_shrd		= x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl,
 		.ln_shrd_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl),
 	},
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= sm8550_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
+	.regs			= pciephy_v6_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+	.has_nocsr_reset	= true,
+};
+
+static const struct qmp_phy_cfg x1e80100_qmp_gen4x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets		= &qmp_pcie_offsets_v6_20,
+
+	.tbls = {
+		.serdes			= x1e80100_qmp_gen4x2_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_serdes_tbl),
+		.tx			= x1e80100_qmp_gen4x2_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_tx_tbl),
+		.rx			= x1e80100_qmp_gen4x2_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_rx_tbl),
+		.pcs			= x1e80100_qmp_gen4x2_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_pcs_tbl),
+		.pcs_misc		= x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_pcs_misc_tbl),
+		.ln_shrd		= x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl,
+		.ln_shrd_num		= ARRAY_SIZE(x1e80100_qmp_gen4x2_pcie_ln_shrd_tbl),
+	},
+
+	.serdes_4ln_tbl		= x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl,
+	.serdes_4ln_num		= ARRAY_SIZE(x1e80100_qmp_gen4x4_pcie_serdes_4ln_tbl),
+
 	.reset_list		= sdm845_pciephy_reset_l,
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
@@ -4436,6 +4475,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,x1e80100-qmp-gen4x2-pcie-phy",
 		.data = &x1e80100_qmp_gen4x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,x1e80100-qmp-gen4x4-pcie-phy",
+		.data = &x1e80100_qmp_gen4x4_pciephy_cfg,
 	},
 	{ },
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
