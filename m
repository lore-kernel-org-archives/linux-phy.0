Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCC40C64ED8
	for <linux-phy@archiver.kernel.org>; Fri, 24 Feb 2023 11:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KpbqhGT3F/ZP6f50LTpyJYIwqzLat5Mj0u6/6/udKp8=; b=Wn6XtRKtrZ+3Vo
	Ax3+3fF6iI0cga/CTxwGRbePujxDoq0xQ6t9kjXU/1P5QGpBTYpWOMprJh6odPmlM0BQvz+lodMCo
	p/b0C+4hW5KYRId4z3mG4PJDCe0E7rc+RCWwMKZrUG3hGZ9df7cq0jdAeNbcUwG8gk7Xwn8sfcj14
	qQ/aTLfwGUWEt7JQAdIXMHi7W+1vleFEM98VFGIpEiBQY5qlIn8okBGjWfCkOtu6xhkTqfs3l+X51
	6kq4LciGHwJ7SY2oiLbujlaZsPjjMINn07zHQmC2mRGMWa3yoBsdjcL9UnG0T5QQCoxi79egqxDV6
	4pGSfWmw3aayClMApXuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVoA-0029c1-7f; Fri, 24 Feb 2023 11:00:10 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVVo7-0029aV-Jg
	for linux-phy@lists.infradead.org; Fri, 24 Feb 2023 11:00:09 +0000
Received: by mail-pj1-x102b.google.com with SMTP id l1so5734506pjt.2
        for <linux-phy@lists.infradead.org>; Fri, 24 Feb 2023 03:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UXASpO0hsEy3ilJiBaB6wUQHYL6reFOimLPyPRNZ9VA=;
        b=BpOFhaz9H99S6MGDhrpiS4mIXldxwgZ9RcN0sHmDUvXIDWEWoac4b6wXbhweYUaHKp
         jaGCWVJfI+iV5Hv43g0EALXnjJ67Idu/DOVkPUCU4sGlEUFgyFYYg8Ixe6ADpJX8t5kN
         GIj3icM4iIgNxLHooEnVn25dx4N+h+ba0bhPtAxAh9PzENGSuNxbM85bqf3ViOUGC/88
         i3UWz76nsnKR+NUmjMmoxL9Tqsib+ijb1tpzlyHbaWtImG94HaPesJ6O/hrP6cQKY6u3
         aKeQ0v7DRz9AXV6oDbaiQ4vU1nCwNvwuR4luk5ZuKK3eooOJM3xsVny3c1xXtV9/RaXn
         Epmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UXASpO0hsEy3ilJiBaB6wUQHYL6reFOimLPyPRNZ9VA=;
        b=z+v+lYqJoyCjBqVCtlxUUKr25ny5p+dJrntpW9PSc8XY5Qghjhyqw0XHwP1BDih3iJ
         Z5WDXrHtCxYwpaKLE+OuDshEIe3W//lLVx2FoK0JBadrvlDb5JVhA5H+SgOarmsHEVfQ
         8yruJP7miFk0zj8wC9BV/uPr7MPo2YS10nNzKqYUZylgmlunuIOGwu2PPDCL/xNAMH13
         kOjNQT58p7/qC2afM1mhNHgYqXlz82COTRxd6OieSwxolmLa1G/Vb1AS6RkkPl4lDU7z
         YmOEQRbm8w01muyLe4vDl6VPBSQmRLjlUlvcRMtydeY2gF2lL0rWIFu2BJTb5WULj4ca
         2i9w==
X-Gm-Message-State: AO0yUKXpaGpIqmp7iszL/4RGAi8SlEgliRHmoExw2qQKdOaGNBtYOBr7
	8r6Ra9BD9rdQlFUzccq3Poai
X-Google-Smtp-Source: AK7set9bROFhUr2Oys35//JQ8Y2QL8MCdE/tDMeguFhpo10KFDG4z+Za5lXd/SJPGoz8zJg3YT6tOw==
X-Received: by 2002:a17:90b:1806:b0:234:a9df:db96 with SMTP id lw6-20020a17090b180600b00234a9dfdb96mr17825389pjb.33.1677236406995;
        Fri, 24 Feb 2023 03:00:06 -0800 (PST)
Received: from localhost.localdomain ([117.217.187.3])
        by smtp.gmail.com with ESMTPSA id gd5-20020a17090b0fc500b00233cde36909sm1263853pjb.21.2023.02.24.03.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 03:00:06 -0800 (PST)
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
Subject: [PATCH v2 11/13] phy: qcom-qmp-pcie: Split out EP related init sequence for SDX55
Date: Fri, 24 Feb 2023 16:29:04 +0530
Message-Id: <20230224105906.16540-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
References: <20230224105906.16540-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_030007_694261_F5CB30EC 
X-CRM114-Status: GOOD (  10.14  )
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
