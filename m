Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7955AC47DA2
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 01:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGagjaCbjRgMqvdvr/bJC4UnoN2xwCcwnAZUfTVIAeE=; b=2mZGkBzxgR0Vjg
	B9+YMAjNiZ9gFTs4KKwzGrpx3w0Tw+MSTBpRjUApyMS/86bUjJXUzRz7O487x9YquBN3DPvbVmqDq
	2+eW6IZIVYVZno7yxWNn6K7pA0L61Wf5c4X3EH2cmEEQI/MP/3QlvCSN6HEH8GlQDn/dDxtzy+bUX
	HhR9IMerfJKTwot62qa9zUZRNpelqbinxr0qeoyO9Lc/LfDCulXrg9LNb8NuWTqkuIkqnA2BmBY45
	u6byj0FmXGS7FNbs5vR+Eq3937v80T8diZLrgULSlVWRWH5B2A1x125JS1hivYSOFCF/nDfkRIJIN
	6nkcGKgCu2eimbqJHcwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwf-00AddX-0U;
	Tue, 16 Jan 2024 01:08:49 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXwZ-00AdXW-1p
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 01:08:45 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50eabd1c701so11346308e87.3
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 17:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367319; x=1705972119; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=72k1xLJVwiMJbLRb7ZUUcy6cJZtX/coZxcCHHlFdCmQ=;
        b=n+nXpF5MrfQfRekS/9cS77IzHS6ZBlYteRIN9mn0Rtdx9hD7b9FshAegC51dWhTwgy
         GYhTpkCJx46p+QG2vvKA6x+SkP9zaqIYgPs1N+t/nDfuaM8Q7n+wbBUUnEiwVJyx6gBy
         UwB6DT7tZOlMSppAxkCm3dkZ3PsLFqkEikqBN7LYU9JH4k9iouYU6FpEgrUNaAEvALkY
         TV4L8d60CMEAB00hdx8tAUrfSfRS1GrzIKubLd60kfPhL7skJZeCLOHawwkr78BQbKn2
         R9Cbk8lpGoy0XzT+LMzdgffjljAhX3CRhLQgje9BllMuEIFhFdxVBgN3z3lzAHw0QRyy
         RDKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367319; x=1705972119;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=72k1xLJVwiMJbLRb7ZUUcy6cJZtX/coZxcCHHlFdCmQ=;
        b=WFU3D4gkNA23u1to9d/JTFPKnTVhdXjHP0H9mk7AYiHhvrZxrhHe9nogxviFJlWLfg
         pNmaYZicPnX8jinzymKWkDx8oTEletbjpwRrtvY2c+WjqpGRvYaMNaG/NEzQ9czUrqED
         3Uo8RY3VGkPad4YA52xqHSE1CrHASJny04xUW7/78//JL1tltx2lAeK7g/V0KgJjYy5c
         5oGin6Q3U8ghqJ54GFA+VXfZ0ApZQrGjfU3ojkdsbpOyHMU8S8IGxcNoUy36irLu90WE
         KRefkSwtS+b9BADDTEHLq1WKgpOAc9GfmUiC73yhmCeBYSx2JnSIvoXDmVx+PQsKVarw
         4+FQ==
X-Gm-Message-State: AOJu0YwF9/cKj9IrHjoK034mlk1P1uz2/7Nu0pLeWxFWn4qqd7GEuZZz
	2CMLiaLTYSeZD222yS1/2+N69EeNr/SQ4A==
X-Google-Smtp-Source: AGHT+IEHdQjC67yxbs6st+8RK0H1j+plr/G5cN8fl+jFYO03z1ncTKNkq6S882wQrVV+SIuwuG943g==
X-Received: by 2002:a05:6512:31c3:b0:50e:cae4:1c52 with SMTP id j3-20020a05651231c300b0050ecae41c52mr3533875lfe.106.1705367319726;
        Mon, 15 Jan 2024 17:08:39 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t3-20020a056512208300b0050eb2325472sm1615507lfr.37.2024.01.15.17.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:08:39 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:08:29 +0200
Subject: [PATCH 3/6] phy: qcom: qmp-usbc: handle CLAMP register in a
 correct way
MIME-Version: 1.0
Message-Id: <20240116-usbc-phy-vls-clamp-v1-3-73b2da7691c5@linaro.org>
References: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
In-Reply-To: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=5055;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=XQ5Pv7+enL8CAcnblULFpJMoVjMYx0Ov7jzzVvGDtFw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdcUGwNBPnlX0CcdJ9wAyEjTedGPvRMPpezqV
 KveL8p7W3eJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXFAAKCRCLPIo+Aiko
 1f6eB/4tLjA4jNoELTTVUVfj7LoUH4GVYHmuiq1uVXGznyXax4TS9ZuxNQK6rcHQnRfV8jdq7fm
 3NFs26on14zIR0gWIFuqKiuBZ81mI0B+VNzXyKmOpKxYfo0ctY2Qy3dheLrSYB8xX9WJynLMzpO
 Eesq73QMO9pePPTr8mUFV7raPRuVudW/jmZfEVVag25lf5w4BmnfBkj0PtwzMtDN2ilh4b1Qvd2
 3kPT4ds+U3c987kDhz2yYeUOSQdUbwN8wOK5A17C6onM4bhMNkf0j/17ODI6NOlXrC5ZVmx0VHF
 zXd/d4F/NmBAZegDevoCnXbDtERoqDZbEefBjiNrjSCQdZVU
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_170843_604646_38120D53 
X-CRM114-Status: GOOD (  19.56  )
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

The QMP USB PHYs on msm8998, qcm2290 and some other platforms don't have
the PCS_MISC_CLAMP_ENABLE register. Instead they need to toggle the
register in the TCSR space. Make the new phy-qcom-qmp-usbc driver
correctly handle the clamp register.

Fixes: a51969fafc82 ("phy: qcom-qmp: Add QMP V3 USB3 PHY support for msm8998")
Fixes: 8abe5e778b2c ("phy: qcom-qmp: Add QCM2290 USB3 PHY support")
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 48 ++++++++++++++++++++++++--------
 1 file changed, 37 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 214cf4203de4..3a4b4849db0f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -10,11 +10,13 @@
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/kernel.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
@@ -56,9 +58,6 @@
 /* QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR register bits */
 #define IRQ_CLEAR				BIT(0)
 
-/* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
-#define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
-
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
 struct qmp_phy_init_tbl {
@@ -94,7 +93,6 @@ enum qphy_reg_layout {
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	QPHY_PCS_POWER_DOWN_CONTROL,
-	QPHY_PCS_MISC_CLAMP_ENABLE,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
 };
@@ -106,7 +104,6 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
-	[QPHY_PCS_MISC_CLAMP_ENABLE]	= QPHY_V3_PCS_MISC_CLAMP_ENABLE,
 };
 
 static const unsigned int qmp_v3_usb3phy_regs_layout_qcm2290[QPHY_LAYOUT_SIZE] = {
@@ -369,6 +366,9 @@ struct qmp_usbc {
 	void __iomem *tx2;
 	void __iomem *rx2;
 
+	struct regmap *tcsr_map;
+	u32 vls_clamp_reg;
+
 	struct clk *pipe_clk;
 	struct clk_bulk_data *clks;
 	int num_clks;
@@ -691,7 +691,6 @@ static void qmp_usbc_enable_autonomous_mode(struct qmp_usbc *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
-	void __iomem *pcs_misc = qmp->pcs_misc;
 	u32 intr_mask;
 
 	if (qmp->mode == PHY_MODE_USB_HOST_SS ||
@@ -712,19 +711,18 @@ static void qmp_usbc_enable_autonomous_mode(struct qmp_usbc *qmp)
 	qphy_setbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL], intr_mask);
 
 	/* Enable i/o clamp_n for autonomous mode */
-	if (pcs_misc && cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE])
-		qphy_clrbits(pcs_misc, cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE], CLAMP_EN);
+	if (qmp->tcsr_map && qmp->vls_clamp_reg)
+		regmap_write(qmp->tcsr_map, qmp->vls_clamp_reg, 1);
 }
 
 static void qmp_usbc_disable_autonomous_mode(struct qmp_usbc *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
-	void __iomem *pcs_misc = qmp->pcs_misc;
 
 	/* Disable i/o clamp_n on resume for normal mode */
-	if (pcs_misc && cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE])
-		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE], CLAMP_EN);
+	if (qmp->tcsr_map && qmp->vls_clamp_reg)
+		regmap_write(qmp->tcsr_map, qmp->vls_clamp_reg, 0);
 
 	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
 		     ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL | ALFPS_DTCT_EN);
@@ -1063,6 +1061,30 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 	return 0;
 }
 
+static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
+{
+	struct of_phandle_args tcsr_args;
+	struct device *dev = qmp->dev;
+	int ret;
+
+	/*  for backwards compatibility ignore if there is no property */
+	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 0,
+					       &tcsr_args);
+	if (ret == -ENOENT)
+		return 0;
+	else if (ret < 0)
+		return dev_err_probe(dev, ret, "Failed to parse qcom,tcsr-reg\n");
+
+	qmp->tcsr_map = syscon_node_to_regmap(tcsr_args.np);
+	of_node_put(tcsr_args.np);
+	if (IS_ERR(qmp->tcsr_map))
+		return PTR_ERR(qmp->tcsr_map);
+
+	qmp->vls_clamp_reg = tcsr_args.args[0];
+
+	return 0;
+}
+
 static int qmp_usbc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1093,6 +1115,10 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ret = qmp_usbc_parse_vls_clamp(qmp);
+	if (ret)
+		return ret;
+
 	/* Check for legacy binding with child node. */
 	np = of_get_child_by_name(dev->of_node, "phy");
 	if (np) {

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
