Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68906C43334
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 08:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36LBs54JY2z6E9kYWIBENerMtmjoLrXe8ORfg6TEV4U=; b=aGbJeNrvqfrXDe
	ZxHGKKCqDDd1MQMz2nrzbDhZzI47hnQd49Zrjld279lH1mMV9imJLsv53vc5Hhc3ifZxk1TXPEsNZ
	o5TJx7U3k76DSHU48a6TVWH965XbP+VLoRCXiQBWkk7MVM7Cjrj7Wewl8vT/mUlenHvYQco4pTePb
	drB+kraBb3hwBXTvhK0Avt7IrruUDlTZeUj7aMkv8RlCgy/7jyMmYc7N4Sac/4wOFVu1ABigWQpBo
	lZhBZiVs1s/8KzSvd3QZHnkNSceNtPxZuJysUcgsr4jO+XP/iXFUNZSVqTS7l/WU8KoFcUEUrvSbk
	p+G8RU6S2NfQy06dUAyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfzk-002BLk-M7; Thu, 02 Jun 2022 08:15:52 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwexZ-001xPy-OX
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 07:09:35 +0000
Received: by mail-lj1-x230.google.com with SMTP id 1so4305194ljp.8
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 00:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=s3y6uxL9GWMiIU5MJAD/kaZnxjYJSgwQ2CdF81MUFk8=;
        b=Kg1K4zTLvzUNEjpElrfNZbI6MtnUXCTox19zjg3A/YUHA8CfNtLHgfMeXL0RXN21co
         DdQPEP12IS59j7UwqTa4i8fSBI8DuOpUU9nEtR11LwjrADqfHcWaalKWBHhBU0lIbCka
         c3C3w5rbQt7ZMePIw8p5CoWDJkEPTXgp87W4kdT7fJHpQ+xY3vy1Y4DMp3mvxHCx8G05
         iDTTm764I2B5AaqjNyM95xAH9dVm9QuqeJz2wWQsZkF87uFOE/RsfU3hQtYzxbJ1w/TG
         7jpUsSE6DgmhipxGKJWsyEkKRdKc4ArPoqIZNAD6K9hEKCTUjO/Pw7sqO5puQBIWH9Pc
         HBjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=s3y6uxL9GWMiIU5MJAD/kaZnxjYJSgwQ2CdF81MUFk8=;
        b=8CbkIwCQE/+tJg/4HD6+OI1f8v7Gmb2RJPR7CeapP18mBCj4Fpv4uWBb5irtnw1I7o
         wRD1STIIEYJKJIkVqxWHq+XfPgNSFSuvMRf6PN+yKWgOctgOiJPE2O2kGmDfJAJWoIhX
         4sNRotvwClb7TJasV9/CwElKiFaM4NNj7RAaTEjXwUGPXC14+uWoaoe8LesXUA1W/NYA
         Kia6vmVBgA7K4pgKP4iiZa5mAWyDgPKtpUNLSO4MA3tzZ4OUHz8VAF5MrBlRf+fALDGo
         0B5NgxoePVO3FMNxf2Y3t/gVrEdb/RRp8hZL5Pj4ehMCitCmhP9tQtXtSUyUzFrzbKzE
         NeYA==
X-Gm-Message-State: AOAM530kxU9RFqlOaLyO24sd5RxVxHOdtRdXK6T4HWNy/YI68pSpFXtg
	kVcu46WISJGlukBaad4k9ofvng==
X-Google-Smtp-Source: ABdhPJz65js20LKHzgFUkIDnOm2dLEtBsXPFiNhEUzdxMnAWRide8zmZeDWRG/zw6nFnbKG0Qexc0Q==
X-Received: by 2002:a2e:b88d:0:b0:253:ee2a:6b70 with SMTP id r13-20020a2eb88d000000b00253ee2a6b70mr30005757ljp.247.1654153773267;
        Thu, 02 Jun 2022 00:09:33 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d25-20020a056512369900b0047255d21114sm870218lfs.67.2022.06.02.00.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 00:09:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v3 24/30] phy: qcom-qmp-pcie: drop multi-PHY support
Date: Thu,  2 Jun 2022 10:09:03 +0300
Message-Id: <20220602070909.1666068-25-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_000933_835825_9D762A9F 
X-CRM114-Status: GOOD (  14.41  )
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
