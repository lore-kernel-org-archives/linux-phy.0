Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78592CCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 22:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+H0DdhX/1hd62rNtp0q/w2ykrOTlyzaQpd0jPKGvzs=; b=BzH90+NXSjkss1
	9bQJBIGEOgER1h7CKnd6TR+kEuTh7ShJvcuRCRC3HjbetEPRoyAdXuhT+E0I0M0Br93hOJ38CqXJc
	6QVJimW+7XnA7n4HFUZKAbnxfp95enDlNP7xF9U6LWcFkeqHCdPEg9Km12emA8eRcY4qMHZk1uLd5
	UNq8saFSkW8Riifv18TwZrIa2ifGjUOSzAJqHXeP5sA+dOmV0gT0Hex+HObNCDegj8WdJvupalEIN
	UxvVFt4HQQK3nhTupp2TQhLvvRv0oSxDBYO61R5S3rp46B+wMOyy01E/cTHwNb1bp4Z/ZQKdqs0SX
	EtZS2pMwSKdq4A0cPL5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhso-009ugM-V0; Tue, 07 Jun 2022 22:41:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhsn-009uUV-3T
	for linux-phy@bombadil.infradead.org; Tue, 07 Jun 2022 22:41:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=21UlWUVeGuL5Wj0QV2P26fpJU80guRGyg/45XMfVZDA=; b=qnffCNMHys6VfyzjG4Q4iBZFGv
	ZTxHhHUTvkM8mRi5pZ9wyrpxjPCt9RVzHC5IBqHdLdAtJbOxCj/YCVWXgaSHdbGm6fSyk2wz+4EDk
	IZ4SZIFqmNoLx0JrylvYs54kfRlwWona3N9qrjrbQPUXwnM8CZci0jGX8G+Rc2xGEIpwR94LOu0jr
	WRXfBY5BZBHLhF0p17yWfsN9rKvbryKpYPOU3pYpfzhE9wmXwPb9I94H53PU5PLsGS9GnXHRgVvSk
	/cO3NqAgLGXHMffllZ7c+t2DtHHUkdUby/EAMInHbEIszr1+EfKoi1imLxqekugnJM1a+Pugxa7uJ
	RCC/JveQ==;
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygof-005pnK-DH
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:32:53 +0000
Received: by mail-lj1-x233.google.com with SMTP id v9so20636188lja.12
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=21UlWUVeGuL5Wj0QV2P26fpJU80guRGyg/45XMfVZDA=;
        b=v0j8Zn3sbf/JlpIydZ47h1nMqkqIHiKhs8P8qH4VQy96KRMcgXe2E6iVh/rGiQhJJF
         lyDHhXo0VnhElj14FzPllr0ap86Sic9ApgQy7p/EF+MTMvrFWGFh7VrSbUlY54tcp3Me
         U7X2echMIG8PWNPrBCkYU7kHPonEVi3/WUNeqJnf50nxik7LDqS5cOwVvbSba70RRNUi
         ddya5JqViprDLaZYtDS+Q7A3Vz2jb6Nt8sHz/OF2FdMXmbxujjky4vojFsB/kO1+176m
         jxPWMdjYqAd7bPXBRVUQK8tW+P31yILW4GgDE+uouVblQKo1++HScO/mm+Vu9tGv3uJE
         /g7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=21UlWUVeGuL5Wj0QV2P26fpJU80guRGyg/45XMfVZDA=;
        b=4RBwIJkyn7HDSiGPfbiNObtoa85B/MiaemWsCKS5wh1wWEzl/g070hy8FHzXA9PktI
         rxZgX1TfP+0fDDDwU9MLR/FaGK+fkEO1ceMJxhXXMGaikokpuNdko0K4RkKxdCblqO92
         b00WAomaMyDCrQKgSiRPArvKbSfCrA+BU89oKipXNO0UeZUqYvFQ/C/cj3BY8MPksrTY
         sfF9kbbB+PFKVzPXxv7/ZwUdv3xOTKL0m0O+xhw8IaqpFeYDo6cHs63Dp3JQksh3OG2H
         FsAWTiu5s/3Z5awubjrw662YoLT31fqJuWKyeEEHT9as15U2yQ6Jsgaq1BKst3iML7rm
         fBHw==
X-Gm-Message-State: AOAM532W9pCvziVobRCtUl8M2F+jSC2XTzH88vqDgt0i5sgvm+S0Kyd4
	JT5b0YVikq8tGdtb25M2IJM5bQ==
X-Google-Smtp-Source: ABdhPJx/pczHjfq0pnIh8oTbYtU8nwj+nIILdqcSlkYeM0HTzx4AFrNDVmgYTGB4sbj2gyqdgqbmyQ==
X-Received: by 2002:a2e:a374:0:b0:255:67e7:24a5 with SMTP id i20-20020a2ea374000000b0025567e724a5mr20026086ljn.58.1654637560263;
        Tue, 07 Jun 2022 14:32:40 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g23-20020ac24d97000000b0047255d21153sm3411343lfe.130.2022.06.07.14.32.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:32:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 26/30] phy: qcom-qmp-usb: drop multi-PHY support
Date: Wed,  8 Jun 2022 00:31:59 +0300
Message-Id: <20220607213203.2819885-27-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
References: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_223246_447637_9A18E140 
X-CRM114-Status: GOOD (  15.25  )
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

Each USB QMP PHY device provides just a single UFS PHY. Drop support
for handling multiple child PHYs. Use phy->init_count to check if the
PHY was initialized rather than duplicating this count.

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org> # UFS, PCIe and USB on SC8180X
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 37 ++++---------------------
 1 file changed, 5 insertions(+), 32 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index a633263c900d..969253e7bdd9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1440,8 +1440,6 @@ struct qmp_phy {
  * @vregs: regulator supplies bulk data
  *
  * @phys: array of per-lane phy descriptors
- * @phy_mutex: mutex lock for PHY common block initialization
- * @init_count: phy common block initialization count
  */
 struct qcom_qmp {
 	struct device *dev;
@@ -1452,9 +1450,6 @@ struct qcom_qmp {
 	struct regulator_bulk_data *vregs;
 
 	struct qmp_phy **phys;
-
-	struct mutex phy_mutex;
-	int init_count;
 };
 
 static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
@@ -2016,17 +2011,11 @@ static int qcom_qmp_phy_usb_com_init(struct qmp_phy *qphy)
 	void __iomem *dp_com = qmp->dp_com;
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
@@ -2082,8 +2071,6 @@ static int qcom_qmp_phy_usb_com_init(struct qmp_phy *qphy)
 		qphy_setbits(pcs, QPHY_POWER_DOWN_CONTROL,
 			     cfg->pwrdn_ctrl);
 
-	mutex_unlock(&qmp->phy_mutex);
-
 	return 0;
 
 err_assert_reset:
@@ -2091,8 +2078,6 @@ static int qcom_qmp_phy_usb_com_init(struct qmp_phy *qphy)
 		reset_control_assert(qmp->resets[i]);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
-err_unlock:
-	mutex_unlock(&qmp->phy_mutex);
 
 	return ret;
 }
@@ -2103,12 +2088,6 @@ static int qcom_qmp_phy_usb_com_exit(struct qmp_phy *qphy)
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
 
@@ -2116,8 +2095,6 @@ static int qcom_qmp_phy_usb_com_exit(struct qmp_phy *qphy)
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
-	mutex_unlock(&qmp->phy_mutex);
-
 	return 0;
 }
 
@@ -2332,7 +2309,7 @@ static int __maybe_unused qcom_qmp_phy_usb_runtime_suspend(struct device *dev)
 	if (cfg->type != PHY_TYPE_USB3)
 		return 0;
 
-	if (!qmp->init_count) {
+	if (!qphy->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -2358,7 +2335,7 @@ static int __maybe_unused qcom_qmp_phy_usb_runtime_resume(struct device *dev)
 	if (cfg->type != PHY_TYPE_USB3)
 		return 0;
 
-	if (!qmp->init_count) {
+	if (!qphy->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -2673,7 +2650,7 @@ static int qcom_qmp_phy_usb_probe(struct platform_device *pdev)
 	struct phy_provider *phy_provider;
 	void __iomem *serdes;
 	const struct qmp_phy_cfg *cfg = NULL;
-	int num, id, expected_phys;
+	int num, id;
 	int ret;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
@@ -2700,10 +2677,6 @@ static int qcom_qmp_phy_usb_probe(struct platform_device *pdev)
 			return PTR_ERR(qmp->dp_com);
 	}
 
-	expected_phys = cfg->nlanes;
-
-	mutex_init(&qmp->phy_mutex);
-
 	ret = qcom_qmp_phy_usb_clk_init(dev, cfg);
 	if (ret)
 		return ret;
@@ -2722,7 +2695,7 @@ static int qcom_qmp_phy_usb_probe(struct platform_device *pdev)
 
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
