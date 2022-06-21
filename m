Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48F21C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 19:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wfv93hSiXdk/qOPq3sudkV2AsyR2yioNx25aO198KAI=; b=EEPaaPGDPYN3RQ
	R8mLx2EQOP5WBwUud087ni9VhpCOEqKLV/0OAdHPqph/h8v+Ogu0fI4HmBZFkrdW5kj/tR5XXXOxw
	Fi08O13dbo5r34B0fBGZwGFfgCOigo9IISi76qgKIa2UAm03SnllN/EkKcelu3MBMW3sEZjyPAHsE
	LLPk2zv8XM1hGPVMVEgcVHj6o56akj6T2/PMP4HDq+d8BBPChAw6WlbB0GY3s21O8NQsLqsZ8MvWN
	C+cgf8dBkOo//fSxT1XLTqhZ52Bs1oXf7jPrEcHXBgQ1Pg5ZQ2IQSKt4//PrQcZ/W1wS92INu+RAY
	I18n5c4loSjidtLMvxYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3jfh-006wFl-CL; Tue, 21 Jun 2022 19:36:21 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3jZz-006tFu-2I
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 19:30:28 +0000
Received: by mail-ed1-x536.google.com with SMTP id eq6so13412555edb.6
        for <linux-phy@lists.infradead.org>; Tue, 21 Jun 2022 12:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wdHBkj+4ZdkV/uUFyg2QTppwSfxAOXkl09rOiaLgUXs=;
        b=dLzY7d6dJY68lARzRFWqIRmufc21HOmI8w11oARO3czwKsRXiBJ+rW8BNh+s2Ss7q/
         R2Ha7Jvro/JjRGT43SiijsW8Zxep66KGQov30/vTcRPlvj+OojYYR6/+ndrLb/7FmAU9
         0qunuPM0gZ8eG1JW1O+FSTjJq1uuZa2zHvGqvNDbHRPJzXeImG0JFrB8BjkG40NCvCQy
         Qhh2urMTxaSpwgedSRz83ug/yy05XrY1waMxPZ/GJ2Y8Nz+2RPJpJ/fhy2tfYAiZCwOm
         ySisZ3ghDFfaLFmUW/Ycx+WAGM7+2BfmE+OJQd2pw+W2QCgdeYVnQsnxMtLc2zqpoieF
         821g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wdHBkj+4ZdkV/uUFyg2QTppwSfxAOXkl09rOiaLgUXs=;
        b=P5zUoamw8wVZ0BvyUvbDFxs2QIS+o6wiOaRG3UqxUm7kQ+Z6DQqrWPS1JrHrulcH7c
         f5DH03AZeRrwxRBWWL3jJ6ub+dgdRV6nIQX99oH36b+wWtpdrehhbyPR4IXHmhvVvVst
         /3WL2AEqTZErcuV8KjKMyOnmRX2S2sZ+DG7JwMoDlSGpf+F7h0989enpIqtmG/pDnkbb
         W9aVxh53+CCh6KdEh3n0zt16VyEKeL/4rzzAjRMF2gY/ESY+OcOqTe082YGOrXT2xMKq
         q3zsm8Em1J4oq+Wbas/NdjMnPaUaZMx/V+pQsyieVdUQTdqMaDKcith1xstG66r5AxOl
         G3xA==
X-Gm-Message-State: AJIora+/WlX9XXzMigVw+nvUALxU/AV1sZzJzMf0jKTFGzLIQOP/xq/J
	mYk7SdTWsKD9SlqgG79OVkM=
X-Google-Smtp-Source: AGRyM1si+I5bosOC9QK73GZXOx1sWqFcTOU6m3eCUm6K/R01xsSrdGFR1yLNvFylmZXSPCeveAZoZA==
X-Received: by 2002:a05:6402:e9f:b0:435:644e:4a7d with SMTP id h31-20020a0564020e9f00b00435644e4a7dmr27800636eda.114.1655839823310;
        Tue, 21 Jun 2022 12:30:23 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-99-158.xnet.hr. [88.207.99.158])
        by smtp.googlemail.com with ESMTPSA id f5-20020a1709064dc500b00706287ba061sm8020586ejw.180.2022.06.21.12.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 12:30:22 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: agross@kernel.org,
	bjorn.andersson@linaro.org,
	kishon@ti.com,
	vkoul@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Cc: Robert Marko <robimarko@gmail.com>
Subject: [PATCH v3 1/3] phy: qcom-qmp-pcie: make pipe clock rate configurable
Date: Tue, 21 Jun 2022 21:30:18 +0200
Message-Id: <20220621193020.1630180-1-robimarko@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_123027_163102_BAC02298 
X-CRM114-Status: GOOD (  12.56  )
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

IPQ8074 Gen3 PCIe PHY uses 250MHz as the pipe clock rate instead of 125MHz
like every other PCIe QMP PHY does, so make it configurable as part of the
qmp_phy_cfg.

Set all of the current configs to use 125MHz as currently done.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 28 ++++++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index b2cd0cf965d8..4dc4d4f8547e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1284,6 +1284,9 @@ struct qmp_phy_cfg {
 
 	/* true, if PHY has secondary tx/rx lanes to be configured */
 	bool is_dual_lane_phy;
+
+	/* QMP PHY pipe clock interface rate */
+	unsigned long pipe_clock_rate;
 };
 
 /**
@@ -1419,6 +1422,8 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
+
+	.pipe_clock_rate	= 125000000,
 };
 
 static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
@@ -1447,6 +1452,8 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
+
+	.pipe_clock_rate	= 125000000,
 };
 
 static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
@@ -1478,6 +1485,8 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
+
+	.pipe_clock_rate	= 125000000,
 };
 
 static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
@@ -1507,6 +1516,8 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
+
+	.pipe_clock_rate	= 125000000,
 };
 
 static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
@@ -1546,6 +1557,8 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
+
+	.pipe_clock_rate	= 125000000,
 };
 
 static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
@@ -1586,6 +1599,8 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
+
+	.pipe_clock_rate	= 125000000,
 };
 
 static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
@@ -1611,6 +1626,8 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
 	.start_ctrl             = SERDES_START | PCS_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS,
+
+	.pipe_clock_rate	= 125000000,
 };
 
 static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
@@ -1641,6 +1658,8 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
+
+	.pipe_clock_rate	= 125000000,
 };
 
 static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
@@ -1673,6 +1692,8 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
+
+	.pipe_clock_rate	= 125000000,
 };
 
 static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
@@ -1704,6 +1725,8 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
+
+	.pipe_clock_rate	= 125000000,
 };
 
 static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
@@ -1736,6 +1759,8 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 	.has_pwrdn_delay	= true,
 	.pwrdn_delay_min	= 995,		/* us */
 	.pwrdn_delay_max	= 1005,		/* us */
+
+	.pipe_clock_rate	= 125000000,
 };
 
 static void qcom_qmp_phy_pcie_configure_lane(void __iomem *base,
@@ -2121,8 +2146,7 @@ static int phy_pipe_clk_register(struct qcom_qmp *qmp, struct device_node *np)
 
 	init.ops = &clk_fixed_rate_ops;
 
-	/* controllers using QMP phys use 125MHz pipe clock interface */
-	fixed->fixed_rate = 125000000;
+	fixed->fixed_rate = qmp->phys[0]->cfg->pipe_clock_rate;
 	fixed->hw.init = &init;
 
 	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
