Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8EA2C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 08:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WnVSsvsPagxfftHZmDAitF/vbovXXITnLyrwew9LE4=; b=G79BQodrQCFTd2
	cRrB17GtRkKpI0Hw9EtDsw2b4SghE3IlcrCS/XATec+Pa2W2lt0EbbfZe+ZFPEUXEw2rF7VCo2jqm
	cnWWE8BUOjHv9xwYlrSaNetzZPsnqabqx4VQdji6C/iVp4f1epntYQbhWXK4jukOfUFBhS97UywP8
	3iyC3HUq2ld15n4bZhz2Z6xKIEVdH5Nq9BmknEr4ZMItUPL3kbMFwiZrYduHjmYUL6f+VXPgSfg15
	7Upi8hn48cgneP92lJ0OCSNcVuk00x7xG6oRpXzYaF8SNxe7TTomKA7EW81dv0gpPB5mRCtXB8ylX
	cti3o2eGt7ooPw0YMV1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfzk-002BM3-QS; Thu, 02 Jun 2022 08:15:52 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwexb-001xPK-Ho
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 07:09:37 +0000
Received: by mail-lj1-x230.google.com with SMTP id r8so3747828ljp.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 00:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7STra2ppWviST4fEmSbxheGWkzqe4bH+WhSd88tTfjc=;
        b=Rz1eR8d99I4lLfQxw+GFRNA8ElX/Yz5npKMK4pPBDeR+8YLJUgknHiuJJBjevI4lJX
         EFGRmqcCMbY3K7gcjVpg7jd+TvmTySM6Ji32YFSK163o0zgjTGlwCTbGkQKZDfWI6uN/
         Q8vYX8onW4xK87P6NAiHDqa9Fokd/xgRGwOn5pqTKj/l/batfasTGbCyCTBhLlvLqn0F
         TT3pCQoeZHMWffhh5x1szvRQd3WQAGFCX96lQ/geSmH96j8KfK0gTQW2Mb+8qsFo9C9e
         eTPaCOX1fhbUb+NsGBA3VWuybpx76u9IFlvCSWAc6+qdw4YpWNq5nsvidXyBlVFpaUjO
         86wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7STra2ppWviST4fEmSbxheGWkzqe4bH+WhSd88tTfjc=;
        b=ISkUG9Kaiio0E/JgddAQU0N9g64sWyW3JRLGc5xoZWtT/WKDaXtSFCU9zXAN7ofG2A
         etsiDFohecW7GvXvuBy8HvQk46JQaX6mFWDyLORKMz45cYULwJg1rzx/0GpzIz7lusqv
         pn40hav/UfoltjqmYatAe5dUpCRsoAVUfidT1CIsmQE4uT8yAJVi/rmJqRdU2Q8cLefp
         QOvgEP+JIfNGaxkAaCxZdEMyivAbvxa4ZwQHSfoc9mDRcANI71z7XlSIE1L37fmmgn5b
         oVBk9BgQPaD1noEZS2SkQpVrMgWI4eflj1tXEaIXIhXIsdC6oYKW0AgYOllquT8ZZc2H
         B0Og==
X-Gm-Message-State: AOAM5312/PyJynPa5NtGLTe3+MIXLnFOfCMnd6YBI1J3RKjpcGf5nmW5
	1EVBduPcr6mdJ2B3lEG3od0xgA==
X-Google-Smtp-Source: ABdhPJyftYaXzst5H4OBZYD60Ot3bDQJTl2v5xDd0u8DrJ9AdTEkACJTUPDNQZK9qeaIR3FK2JYReQ==
X-Received: by 2002:a05:651c:98d:b0:24d:b554:7d18 with SMTP id b13-20020a05651c098d00b0024db5547d18mr40675355ljq.87.1654153775065;
        Thu, 02 Jun 2022 00:09:35 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d25-20020a056512369900b0047255d21114sm870218lfs.67.2022.06.02.00.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 00:09:34 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v3 26/30] phy: qcom-qmp-usb: drop multi-PHY support
Date: Thu,  2 Jun 2022 10:09:05 +0300
Message-Id: <20220602070909.1666068-27-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_000935_626950_CD9627D7 
X-CRM114-Status: GOOD (  15.05  )
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
