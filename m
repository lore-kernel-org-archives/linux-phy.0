Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E1C6D3C91C
	for <linux-phy@archiver.kernel.org>; Sat, 19 Oct 2024 15:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KAgBIF+SOWGDHgDZw84apfmFlCgRVQ+AkljzEzNfTKk=; b=yhREyqDGeACHFf
	tcYTcKiJloVRpvDHwGESHyUoM75bPd7BvJdkst34xfVCuMd8zMnBrT4hETcLsPw7VDOK8UP6ggSrF
	QOLiNhM2Ws93brg6nkPxjehZFhn8pX97CRgmCiF8Cdgy9uoC+BF7wRdNAlwp51Xr31yhwVj595I/m
	YOHVSu0M+NeXjkJymLd9Env+3zeYThgNQhOz948S8LtoZv7Lk+C7heyOvQMKtxkCQ+orUAYycrqeH
	hqhO8ZgWwrpOnQEJeA21RrHG0kseBewTwvmzIsSN2QhzyaolYSj43G6d3BHf4DbaT7Z+2MdpBNmwN
	Eh+Q6icqUFw6ozfwlJDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Bdh-00000003XQI-3FJ3;
	Sat, 19 Oct 2024 15:45:13 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Bde-00000003XNj-1env
	for linux-phy@lists.infradead.org;
	Sat, 19 Oct 2024 15:45:11 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-539e63c8678so3865907e87.0
        for <linux-phy@lists.infradead.org>; Sat, 19 Oct 2024 08:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729352708; x=1729957508; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j8gd1TRUah4UlBv9ZsEU3Mqp5q0KNFXM5pn6NKjKpmw=;
        b=ySi01zmLx5LFBYCnMPDGcaRKr+BUjQyQkoxj/C5y/mtvHTFV0g4xeipK8ms4Xz9QoQ
         CoR/nFUzzb8uapYCIuXguxpFLgGdYKkvlPfJhq2QwzhQBXMFbol3XIbL7rqCF9Nh4Kns
         Jd23xEa0MVEmaWiYe4f3OAHygTEZcCkIt5MpqOkz1Q7KHSQlQYSfzsDZhwTi2D8tu1qU
         RZfi537Lw0qtfGGl4ydcLIifBmIuo79xPMr7F64UYcdT+/td2v6yPt6I9dZOUsBSSU/V
         hyRlr1qu3qt8QsmkcLocFPUGPkUbXzfIq9bHxC1YToGIBrlPB/TEZDel+UUiPwUKNOhM
         zOuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729352708; x=1729957508;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j8gd1TRUah4UlBv9ZsEU3Mqp5q0KNFXM5pn6NKjKpmw=;
        b=X06dFF7J35Xi7gURD4qNsPpykZnUboCdnF/IW0QQ38mEsxf3GMKAb1Hzw/rI2nE6mB
         KMl42Le/4IYz7ORCh+CPQMP65ZXdLhuSu/bFJy1lM9OuKgeySXgBxd6ZoojcwGhOJ6a8
         a7Cx+L7tQjFAHzWmN/X/ekKgofzD07v1SXSY6Mzdmti6Dbg2R6lVZYnRQQhKXW3Mz8XY
         9oXbHo3I5EW+DOsomXoL8a1KJ4gz7YOEqJc4UkA3vNKdDl2wP9CaLpHHL7Je8MczXC6k
         3kEoSA3DzJQ3kdbi4/KJj6N1JAzmeAf681nTDlnlSZnvboPbtAZKOqZRwlckclkHKHT4
         A5AA==
X-Forwarded-Encrypted: i=1; AJvYcCW/9u53odTrI4M5PQvbBGO+MqjxQtjv+zmehvZvsRM+Hzy/kpHm0T5mClK8bduBmUMW/h8c0DGghTM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyiumlm5WB7UJYKOGmDyXV2e3kmihPxJjbYuputCdPlh2UNHB2n
	bpLD+u+rhm5W/6M0dAdQQlFw6J4vaS0VsOtH62iB5qMH6TrAnCFhwAsbAZ8ru7U=
X-Google-Smtp-Source: AGHT+IEdk9gKDp9V6UJq6A3qcqXOFI4RANBmYP0+zd9w8CmABSUWEM2JaScDPFI3iWoIRU/Ovn7gRw==
X-Received: by 2002:ac2:4e0b:0:b0:535:6aa9:9855 with SMTP id 2adb3069b0e04-53a151dfe9emr3223671e87.0.1729352708339;
        Sat, 19 Oct 2024 08:45:08 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a15211401sm562854e87.249.2024.10.19.08.45.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 08:45:07 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 19 Oct 2024 18:44:55 +0300
Subject: [PATCH 6/6] phy: qualcomm: qmp-pcie: add support for SAR2130P
MIME-Version: 1.0
Message-Id: <20241019-sar2130p-phys-v1-6-bf06fcea2421@linaro.org>
References: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
In-Reply-To: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=8219;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=C8i0BK5hjIYTgbsrEcYZTdHLVO8L8ePy9YX6HVa1xfY=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnE9P2jko6w3kde7neGna5/ktrSulyIWKbhpVaq
 Gw/j0M3XYmJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxPT9gAKCRAU23LtvoBl
 uNpxD/sH67BmvGIsCeTk2/f2+RjXjSizWLw255nagDz+VvPSXDK2NKczpGmGvAEpk3WZ1q8mkr9
 n12VBvcnSplCaqpQsK6Z2gNbrGC50/+bOuyhOqCqNAy8W9sn9TOHj0TAloC0JAkWDAXbBQRjMqm
 KLLM35Wmn9WbyfY23FUgYslHsT5zgDqZS+5cUhxzPHvQXNnX7Eqg0mNKjTHsT69CFO62E3xjs5t
 WGYrPxYuih4dneR5do3i2hLILqtavUW1sANLSH2LwpMenf9JYvRA/h5AdMGiAlwPb9CtgsCA4Le
 0Wph+kiFgpxpvh/xohlz7n2qagXv9WC77a4Fhz6SblHTO5zPkO5Ep7NDtsHtO5Y8K7hHzFyRz/f
 Zz4SB5zmorU9wQDRSpsbk1hBOL6cXT4B4v7D8BXd/PoZH+bFvSlatWvmSPFbh6FYPtu6VL6W02g
 hgRQ3OZmHh7Mqhj/8eUL5Mosp+tS8PE3TxkesXE3ec9CG4rrzxX9RJhgojJfwPtbSAbNiZ0GuxO
 souURaX92m/v3MZbVgWD4y/ssqqs173fFmuXFSDIeReHc7jYjBoXIOuTEt1W9X/8DE/eAC9Hgl6
 +6POGIaXqK36vRBEi2ZsnCz5nd4zwtb5SWlY5/7E2AWN0+M7dVKssZyfMeOSMpiBmiaAAtsmMnv
 u4v/c011+4PsJ0Q==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_084510_561488_4B8717FA 
X-CRM114-Status: UNSURE (   9.55  )
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

Add PCIe QMP PHY configuration for the Qualcomm SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 141 +++++++++++++++++++++++++++++++
 1 file changed, 141 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 1ca1f21b1cc225f435da9c775c97dfa142117f95..c2ba411c6c90fbbc1b3e96b02e8e63c565f254f9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2725,6 +2725,101 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_ep_pcs_alt_tbl[] =
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_INSIG_SW_CTRL7, 0x00),
 };
 
+static const struct qmp_phy_init_tbl sar2130p_qmp_gen3x2_pcie_rc_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER1, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_PER2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE1_MODE1, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SSC_STEP_SIZE2_MODE1, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CLK_ENABLE1, 0x90),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYS_CLK_CTRL, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x68),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE0, 0xea),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START1_MODE1, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START2_MODE1, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DIV_FRAC_START3_MODE1, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CLK_SELECT, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_ADDITIONAL_MISC_3, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORE_CLK_EN, 0xa0),
+};
+
+static const struct qmp_phy_init_tbl sar2130p_qmp_gen3x2_pcie_pcs_lane1_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_LANE1_INSIG_SW_CTRL2, 0x01),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_LANE1_INSIG_MX_CTRL2, 0x01),
+};
+
+static const struct qmp_phy_init_tbl sar2130p_qmp_gen3x2_pcie_rc_tx_tbl[] = {
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_TX_BIST_MODE_LANENO, 0x00, 2),
+};
+
+static const struct qmp_phy_init_tbl sar2130p_qmp_gen3x2_pcie_rc_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_G12S1_TXDEEMPH_M6DB, 0x17),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_G3S2_PRE_GAIN, 0x2e),
+};
+
+static const struct qmp_phy_init_tbl sar2130p_qmp_gen3x2_pcie_ep_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYS_CLK_CTRL, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x42),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_INTEGLOOP_GAIN0_MODE0, 0xfb),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_INTEGLOOP_GAIN1_MODE0, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_INTEGLOOP_GAIN0_MODE1, 0xfb),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_INTEGLOOP_GAIN1_MODE1, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORECLK_DIV_MODE1, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_MODE, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CORE_CLK_EN, 0xa0),
+};
+
+static const struct qmp_phy_init_tbl sar2130p_qmp_gen3x2_pcie_ep_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_G12S1_TXDEEMPH_M6DB, 0x17),
+};
+
+static const struct qmp_phy_init_tbl sar2130p_qmp_gen3x2_pcie_ep_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_EQ_CONFIG1, 0x1e),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG2, 0x14),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_PCS_PCIE_POWER_STATE_CONFIG4, 0x07),
+};
+
 struct qmp_pcie_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -3290,6 +3385,49 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 	.skip_start_delay	= true,
 };
 
+static const struct qmp_phy_cfg sar2130p_qmp_gen3x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v5,
+
+	.tbls = {
+		.tx		= sm8550_qmp_gen3x2_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_tx_tbl),
+		.rx		= sm8550_qmp_gen3x2_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_rx_tbl),
+		.pcs		= sm8550_qmp_gen3x2_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_tbl),
+		.pcs_lane1	= sar2130p_qmp_gen3x2_pcie_pcs_lane1_tbl,
+		.pcs_lane1_num	= ARRAY_SIZE(sar2130p_qmp_gen3x2_pcie_pcs_lane1_tbl),
+	},
+	.tbls_rc = &(const struct qmp_phy_cfg_tbls) {
+		.serdes		= sar2130p_qmp_gen3x2_pcie_rc_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sar2130p_qmp_gen3x2_pcie_rc_serdes_tbl),
+		.tx		= sar2130p_qmp_gen3x2_pcie_rc_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sar2130p_qmp_gen3x2_pcie_rc_tx_tbl),
+		.pcs		= sar2130p_qmp_gen3x2_pcie_rc_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sar2130p_qmp_gen3x2_pcie_rc_pcs_tbl),
+		.pcs_misc	= sm8550_qmp_gen3x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8550_qmp_gen3x2_pcie_pcs_misc_tbl),
+	},
+	.tbls_ep = &(const struct qmp_phy_cfg_tbls) {
+		.serdes		= sar2130p_qmp_gen3x2_pcie_ep_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sar2130p_qmp_gen3x2_pcie_ep_serdes_tbl),
+		.pcs		= sar2130p_qmp_gen3x2_pcie_ep_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sar2130p_qmp_gen3x2_pcie_ep_pcs_tbl),
+		.pcs_misc	= sar2130p_qmp_gen3x2_pcie_ep_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sar2130p_qmp_gen3x2_pcie_ep_pcs_misc_tbl),
+	},
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v5_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
 static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.lanes			= 2,
 
@@ -4639,6 +4777,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy",
 		.data = &sa8775p_qmp_gen4x4_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sar2130p-qmp-gen3x2-pcie-phy",
+		.data = &sar2130p_qmp_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sc8180x-qmp-pcie-phy",
 		.data = &sc8180x_pciephy_cfg,

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
