Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8F56C64EC7
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 15:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KpbqhGT3F/ZP6f50LTpyJYIwqzLat5Mj0u6/6/udKp8=; b=i6Y8fbPnAsU9SC
	MfRArwp7/qBNJLdCBxQ1nPEbvwSVXGQOVOR3j6QUDkC8akzayguMeafLC3edNdzol1TmhdYzYAAxe
	u44UpoOnQB+i3IiAsRLwaGWroJl44gD8/pWazDbxArWIkD2zDtd01IBPzWfmlw63GYTtvRpjdVQXd
	VMAEUQ71cNZHkXm7tAuLgTZBzwFXKklsmAtkHR0gvJXn3RE4dIo6pUa1y83YqRH0DvO5YA2Ne7mtg
	V3QigVh3ujUWT33JVoecfhc6OQh6A6KedIGTtYbSmZhsGIxR91oimPjZYGal5xULo9Z1dQjk4K8DL
	jee1zvsXy7jEZnNB7YwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr81-00Csil-B0; Wed, 22 Feb 2023 15:33:57 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7w-00Csfd-FJ
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 15:33:55 +0000
Received: by mail-pg1-x52a.google.com with SMTP id s18so4289956pgq.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 07:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UXASpO0hsEy3ilJiBaB6wUQHYL6reFOimLPyPRNZ9VA=;
        b=XTDVVzjzYW6OglYKpErlEY5BTxwcoMAJ78jl41dTOOTDf55Kv5cfcE08L8Pc9AISuF
         /2q0DiiRDIViwFC7mM3YCiGJzfXzSoxUS3YPr3wvU9u/CwGq599m07Y32Rjc7cM8SF/I
         Kh0nB5eoL2iyG7Ey2oEG7LCwEgM5kvZctcnzF93D97rK5C9193/pK6aSXUPLWm82x91J
         Lj9HKLF+ZbYjeJAqoa61CzKXJzuFk32CI6OCvuTXlnL2NqiHZ+aE3sPhzfb1a0ry14Tp
         Ti+qYZs2rNvTnRijVowszUav5QMwx7E3Xr+Synw/G1kpyrqi4PR5jcoetbiNqQ6P9bzb
         ldlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UXASpO0hsEy3ilJiBaB6wUQHYL6reFOimLPyPRNZ9VA=;
        b=aYiz/UBDQdj5EPYvSB56ApKUB8P1s0zJNEF2i3xSRXnrVUpyHpwDmmEH3gui/5BS9o
         uWCNAMQKaGdC5oVqqj3gY6mkarhgpWmyraqIFOYuxil+rrEejW1lONyTwXuVL6lLhLjX
         3s7DPA8c4pWk+s3picK7+Kgw4bMeIC0gaJFjR5iEdR+xv4O9SjfAgJMGrFuhdQcWuVg6
         pN7RVLIInSs4vHXpKb8d6h02dxwIMTaEbwMwTxSj9se23jScE9QnPrvkgXxtfmD1gt89
         ZP7+G9Otj+cMNp45XNmKJZYhx5dT3YuD3KaiULW4vvVthcFm18mfzHTZUAbOJUeD6lUn
         QP1A==
X-Gm-Message-State: AO0yUKVplFtJB5nKX0T0TuP7CltaxrbTRutc+ZHgSMo7yQucT2KvlEOb
	IY8BYfIlEbUmfWs0Di30qpcf
X-Google-Smtp-Source: AK7set+gu6n0h38x+w8tUXCDKnpvPA7MuMDz5ZcjdcHUAaaQL/BfVtOqhq97jKCxYs4f/NOw18rLIA==
X-Received: by 2002:a62:1b4a:0:b0:5a8:ada1:cc6f with SMTP id b71-20020a621b4a000000b005a8ada1cc6fmr7092178pfb.33.1677080030353;
        Wed, 22 Feb 2023 07:33:50 -0800 (PST)
Received: from localhost.localdomain ([117.216.123.15])
        by smtp.gmail.com with ESMTPSA id f15-20020aa78b0f000000b005ac419804d3sm5222482pfd.186.2023.02.22.07.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:33:49 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 09/11] phy: qcom-qmp-pcie: Split out EP related init sequence for SDX55
Date: Wed, 22 Feb 2023 21:02:49 +0530
Message-Id: <20230222153251.254492-10-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_073352_538563_239BF1D8 
X-CRM114-Status: GOOD (  10.50  )
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

In preparation for adding RC support, let's split out the EP related init
sequence so that the common sequence could be reused by RC as well.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 42 ++++++++++++++++--------
 1 file changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 1b136a87053f..f526f73f76ef 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1122,10 +1122,25 @@ static const struct qmp_phy_init_tbl sm8250_qmp_gen3x2_pcie_pcs_misc_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl sdx55_qmp_pcie_serdes_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BG_TIMER, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN, 0x18),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYS_CLK_CTRL, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x46),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_CFG, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_HS_SWITCH_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORECLK_DIV_MODE0, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_MISC1, 0x88),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_MISC2, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_MODE, 0x17),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_DC_LEVEL_CTRL, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_HSCLK_SEL, 0x22),
+};
+
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_ep_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BG_TIMER, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYS_CLK_CTRL, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE0, 0x0a),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CP_CTRL_MODE1, 0x0a),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_RCTRL_MODE0, 0x19),
@@ -1133,8 +1148,6 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE0, 0x03),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_PLL_CCTRL_MODE1, 0x03),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_SYSCLK_EN_SEL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_EN, 0x46),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP_CFG, 0x04),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE0, 0x7f),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP2_MODE0, 0x02),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_LOCK_CMP1_MODE1, 0xff),
@@ -1146,21 +1159,11 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN1_MODE0, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN0_MODE1, 0xfb),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_INTEGLOOP_GAIN1_MODE1, 0x01),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_TUNE_MAP, 0x02),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_SEL, 0x12),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_HSCLK_HS_SWITCH_SEL, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORECLK_DIV_MODE0, 0x05),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CORECLK_DIV_MODE1, 0x04),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_CONFIG, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_MISC1, 0x88),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_MISC2, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_CMN_MODE, 0x17),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_VCO_DC_LEVEL_CTRL, 0x0b),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE0, 0x56),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE0, 0x1d),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE1_MODE1, 0x4b),
 	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_CMP_CODE2_MODE1, 0x1f),
-	QMP_PHY_INIT_CFG(QSERDES_V4_COM_BIN_VCOCAL_HSCLK_SEL, 0x22),
 };
 
 static const struct qmp_phy_init_tbl sdx55_qmp_pcie_tx_tbl[] = {
@@ -1212,6 +1215,9 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G4_RXEQEVAL_TIME, 0x13),
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG2, 0x01),
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG5, 0x02),
+};
+
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_ep_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
 };
@@ -2003,6 +2009,14 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 		.pcs_misc	= sdx55_qmp_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sdx55_qmp_pcie_pcs_misc_tbl),
 	},
+
+	.tbls_ep = &(const struct qmp_phy_cfg_tbls) {
+		.serdes		= sdx55_qmp_pcie_ep_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_serdes_tbl),
+		.pcs_misc	= sdx55_qmp_pcie_ep_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_pcs_misc_tbl),
+	},
+
 	.clk_list		= sdm845_pciephy_clk_l,
 	.num_clks		= ARRAY_SIZE(sdm845_pciephy_clk_l),
 	.reset_list		= sdm845_pciephy_reset_l,
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
