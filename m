Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE5D5C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 22:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVoAFU47AEkSS9yVxajVY5y4BHqptR3K+7rbZ7jZ1s4=; b=clBI5sw2OkSbR8
	kQQIVDSc6vYdzCvlpeiaw2nEuqY2Nt9KZw5pXsQbJHpcitsW8DYYsz0HMwlUZ5Lb0zvhkxL365m7s
	lCBonhOKvGodhFlrzk0tzvAQGYdnsBevPFQfriPDOhPH4NCHyuiLic2ujBcx68L8IoEPXgJU6xAT/
	uod1kaPv2jvXEB53aZ7Mo/n1fJBPV/K83xudfdjRNOFE7MPXS5WTIJbkj4Us9NpBy5XpzMRQytpSS
	fXfmY4F14p4Gtc8RCbVWLOypuTe1NyOqPaQ+XYjMIYNni56QGUISTimvUhCv60vErTriW13WMNqJk
	HG8xx6/JDO2OyPXXbBlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhsp-009ugg-2A; Tue, 07 Jun 2022 22:41:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhsn-009uUV-KO
	for linux-phy@bombadil.infradead.org; Tue, 07 Jun 2022 22:41:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YY4e9Zz6bSkVs/V4IICJ8QehkpKPV/jM41pR0vmkc5Y=; b=clsDjYGBU8OMemy//fwZ0fvwGb
	EFq9kkT8QvEwiMtc1r3pdoayRd/dq32AIvXTCMWLkBLHF04kGWP5JiuPx1n8g22HxppsFPRZzVP4e
	vEoGUWzzEfX1zc6KDEDLjhX704YDXmI5w7+Y5qFe0Lfg8tcEc9HNety+/B3HW7Q5AOm80xt190DwJ
	MTe8lhxgBzGIAyOyi2tVLTkcnquFqOkHjaV4M67/xQ9deuylVeQ7HJIGJuiZrLMdok63tu8s/a1IQ
	McJhQULXd+TuJCjSHuiDoN07yKEveJR03R7tVJTpI+P/octXToNdEa/ein6oskCwht2enOjFFFUFg
	kd8iGd1w==;
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygof-005pnI-MN
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:32:51 +0000
Received: by mail-lf1-x136.google.com with SMTP id u23so30310830lfc.1
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YY4e9Zz6bSkVs/V4IICJ8QehkpKPV/jM41pR0vmkc5Y=;
        b=uRvNN6JE8tTPx4g4seOzbpZryedm+vUSwKntcpxwS0emOkQEX53bdo2T/xn7QejuLO
         rRm9ZMphcwCyQwGNGcrOPAWlCvmTaWLvbzHUZG6vOvaq4nBFdCHoHoKydEFnATvYnv8y
         oCRH2AGPLznI6sWdjhdbaox8U1dHWFvyqhAPblsK9fESobM7kKmwhEx2YzuxsafKUpm9
         fN8DuzBCpwsIDnb0kmCND1UT3oxfuvLlC9iIELLAhKC4SuwjRUYlpPdD1WjyFegdRDck
         +m3Zv8UD34CznBX/bH+sdHx5JlssezNYGLogu8goqFrMz5ItGfN6UKc6mRyJDghBl9h9
         MMhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YY4e9Zz6bSkVs/V4IICJ8QehkpKPV/jM41pR0vmkc5Y=;
        b=Zm7oJthrtU6IzQMXzKZ31yVjYKyuHBvwm0BonwRrgvocSlEjaA+tPS0kBK+AkPqXi6
         9tR8l5JMHhP3Tv8GSZ5zpza+fWKJLFBPezQ1Kbcho+h/M2e7MJFgmZuUyMtTz7qgEONV
         HhR+9EjHgWjNVbdkgRoI2A5kC7PPA24qsrtLafkGkDsQR2ik/bffO5VhxiXG/LwwwBXB
         QCSJsew/+LpQY2XO1cxHj8j9bt5nti3pC+kSnmLI5Bp9e59+PhtKTyk5jKnhEa+vIkcE
         A8Flud+3DrwfCV2+jPpyuhkwefPRTZq7KFwhoTfm1JmirCwteEQpKEz4hFBIY2BS1Y7y
         xYIQ==
X-Gm-Message-State: AOAM5317XSNl/EoqZ/DvBhGZuO10N9uALiPKnzmIDh6USg2fSIiAV+BB
	M2ONjRUE41nJEEiPwfembD42qg==
X-Google-Smtp-Source: ABdhPJyINP9p/K5UAIREx8rrVmL+ILhnLyhPaicwrF2HxwaVYESOd24rjOrHB7NOm7mcA115nVDdDA==
X-Received: by 2002:a05:6512:1327:b0:479:392d:aa0b with SMTP id x39-20020a056512132700b00479392daa0bmr9892956lfu.168.1654637558254;
        Tue, 07 Jun 2022 14:32:38 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g23-20020ac24d97000000b0047255d21153sm3411343lfe.130.2022.06.07.14.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:32:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 24/30] phy: qcom-qmp-pcie: drop multi-PHY support
Date: Wed,  8 Jun 2022 00:31:57 +0300
Message-Id: <20220607213203.2819885-25-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
References: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_223246_444270_1AA76D75 
X-CRM114-Status: GOOD (  14.61  )
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

Each PCIe QMP PHY device provides just a single PCIe PHY. Drop support
for handling multiple child PHYs.

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org> # UFS, PCIe and USB on SC8180X
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 33 +++---------------------
 1 file changed, 3 insertions(+), 30 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d9e8a3e88890..0676b67d3ff6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1329,8 +1329,6 @@ struct qmp_phy {
  * @vregs: regulator supplies bulk data
  *
  * @phys: array of per-lane phy descriptors
- * @phy_mutex: mutex lock for PHY common block initialization
- * @init_count: phy common block initialization count
  */
 struct qcom_qmp {
 	struct device *dev;
@@ -1340,9 +1338,6 @@ struct qcom_qmp {
 	struct regulator_bulk_data *vregs;
 
 	struct qmp_phy **phys;
-
-	struct mutex phy_mutex;
-	int init_count;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -1796,17 +1791,11 @@ static int qcom_qmp_phy_pcie_com_init(struct qmp_phy *qphy)
 	void __iomem *pcs = qphy->pcs;
 	int ret, i;
 
-	mutex_lock(&qmp->phy_mutex);
-	if (qmp->init_count++) {
-		mutex_unlock(&qmp->phy_mutex);
-		return 0;
-	}
-
 	/* turn on regulator supplies */
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
 	if (ret) {
 		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
-		goto err_unlock;
+		return ret;
 	}
 
 	for (i = 0; i < cfg->num_resets; i++) {
@@ -1839,8 +1828,6 @@ static int qcom_qmp_phy_pcie_com_init(struct qmp_phy *qphy)
 		qphy_setbits(pcs, QPHY_POWER_DOWN_CONTROL,
 				cfg->pwrdn_ctrl);
 
-	mutex_unlock(&qmp->phy_mutex);
-
 	return 0;
 
 err_assert_reset:
@@ -1848,8 +1835,6 @@ static int qcom_qmp_phy_pcie_com_init(struct qmp_phy *qphy)
 		reset_control_assert(qmp->resets[i]);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
-err_unlock:
-	mutex_unlock(&qmp->phy_mutex);
 
 	return ret;
 }
@@ -1860,12 +1845,6 @@ static int qcom_qmp_phy_pcie_com_exit(struct qmp_phy *qphy)
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	int i = cfg->num_resets;
 
-	mutex_lock(&qmp->phy_mutex);
-	if (--qmp->init_count) {
-		mutex_unlock(&qmp->phy_mutex);
-		return 0;
-	}
-
 	while (--i >= 0)
 		reset_control_assert(qmp->resets[i]);
 
@@ -1873,8 +1852,6 @@ static int qcom_qmp_phy_pcie_com_exit(struct qmp_phy *qphy)
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
-	mutex_unlock(&qmp->phy_mutex);
-
 	return 0;
 }
 
@@ -2334,7 +2311,7 @@ static int qcom_qmp_phy_pcie_probe(struct platform_device *pdev)
 	struct phy_provider *phy_provider;
 	void __iomem *serdes;
 	const struct qmp_phy_cfg *cfg = NULL;
-	int num, id, expected_phys;
+	int num, id;
 	int ret;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
@@ -2354,10 +2331,6 @@ static int qcom_qmp_phy_pcie_probe(struct platform_device *pdev)
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
 
-	expected_phys = cfg->nlanes;
-
-	mutex_init(&qmp->phy_mutex);
-
 	ret = qcom_qmp_phy_pcie_clk_init(dev, cfg);
 	if (ret)
 		return ret;
@@ -2376,7 +2349,7 @@ static int qcom_qmp_phy_pcie_probe(struct platform_device *pdev)
 
 	num = of_get_available_child_count(dev->of_node);
 	/* do we have a rogue child node ? */
-	if (num > expected_phys)
+	if (num > 1)
 		return -EINVAL;
 
 	qmp->phys = devm_kcalloc(dev, num, sizeof(*qmp->phys), GFP_KERNEL);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
