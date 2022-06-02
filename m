Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EE4BC43334
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJRWTqp5cyRXoblUBXjCNDlvi/GtXwa2FYdBea2RkCg=; b=CZQmbPgG7EXMmE
	worjwDYJkrfKj2m115bgQ8dGXgmxu5yAkRDV8KAOiM5ncrOIFSpZ8eV3WL/i044a4ik6ZXjdRvDII
	b2LQ9XFB5XI9m6bx8LEmxqxdPanSpPr6agB/j6CjQGnRj/wEG/HW7+rUxP/0W7yruaqmh1v7qwjqP
	DnBAdBAPAWt9aFTD1Z3Xav3sTI31e9PIV116arvaBgB6tsmbugvaFM9AELa1DD7DRPbtKPe6IPYmU
	d46Zx69XotgiT1SUp6kMMOfAwSH3w04RLBHCu+L+d3aYXYvBxqqQ9fWpwgkyfIy9Jnbhy8e+U3Pg6
	H4jgrPhJLBagJ0VGP4IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfRs-00233r-II; Thu, 02 Jun 2022 07:40:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfRr-0022xm-PC
	for linux-phy@bombadil.infradead.org; Thu, 02 Jun 2022 07:40:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=XFd4kCE85Pc/CVtzGL4uufUv957n+EtJyEGy4RFKWqo=; b=nUIeNFDaJaJzG2bUnGJoilWXkU
	XxFKH5xL684sOeXMcvRU3vF6drclIMaDPV7rh5fn2uYfNIAgsjZlzvzeC+Lb6axez9RwYDixCU9IE
	SfB3lwuzFobdZto1t6WSeLfg3tnUUoHAWZQvvrd5wjbaOqmDUbU0G4HNAi67JESgkuNBBkE/4N/aS
	cSlaofYwd0YMgF5rTK1IC+Q5CrLDvawmNRXSVSjWVFnqyTLfQhrUvRN7RdiibASqi/HMI6XBxspW+
	rwP5U/K0C6WjwwqMNSdQE/CIKMJCV77dJfAMRKWHJWKxJYM33NYqdVTm0VdzueVwG2hesHpSuGY1a
	HL0IR7yA==;
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwexb-0041kz-H9
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 07:09:38 +0000
Received: by mail-lf1-x12c.google.com with SMTP id y32so6386422lfa.6
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 00:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XFd4kCE85Pc/CVtzGL4uufUv957n+EtJyEGy4RFKWqo=;
        b=Jbe2q+C/zgKFJbrD1wXTCTOgO9hxBgEg1lsgcM/Tfn+fK+0lJPXsdCnNTR0rTEZsev
         mr9KK3F7MtJXdBBpCYD4BXOoJS7PZCZ7BKS2k7MASNTXswFYqMZna1UqLwOH5e7YhzrN
         ezTv0DppNcIST6TilPKyiLiI6ZtbiIsYu44B/ZnzXSkYei6rIcMooJrHjzZzQndW1QYU
         HOsSS9rluVWca98z2L0I/uYmpf4HDPjjG9ohoYGmxc/4vVL+4fCXvG2I84akBSqIHmKZ
         erpWWHfZ/F/2mhTJo3EdP0yDbFGloyI6lu3iIg5pGT07wZ6P+uVlgMHflxDD4rbTQyV8
         YuaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XFd4kCE85Pc/CVtzGL4uufUv957n+EtJyEGy4RFKWqo=;
        b=k/8pBtQ7NtU19fZ2noJOuLUkeKCVJAgehnJCVewJSUvQ5n83SVbykeCBEm4O02Pt4E
         oc5TfzU7Oft9AvC6MmRcZ08eAVwrnm2TqIYliLOQZtqVGdL7fmaeQ/NSgqWiF6CNMxme
         tYwSR9A02bImGVaat691uqnQ9QKFz1g8p8pnujftRm4elx1OVVyG0xE3zV4OXfwXQPDX
         YtHKYtCgbigxo/t9AcQplvkBmnOfL5qIpBtGt8kcYyNcvbJyAg9YBEXfa+n8WEssTwO2
         QW4nRrv0Njn+Qbgq/8coTUWHug8R430z1y0mdMuvmxT6h1s+vtH3J2rgHxaju1XiT0xX
         H1SQ==
X-Gm-Message-State: AOAM531ijS994wSHrN1ZzUgd+mgod/FV1Bt9XZ/UWLP9u9jnr2Rp6oOm
	n1FupAkbGLoZdTSR1EygX5IePA==
X-Google-Smtp-Source: ABdhPJwFrpODjo39JB4MMNSCL9vyix1beuQecykseKS3SQojCWyDHcoUeEHn7e5sxKTT6+5LQLGTlQ==
X-Received: by 2002:a19:f24e:0:b0:479:1376:793c with SMTP id d14-20020a19f24e000000b004791376793cmr123862lfk.526.1654153774254;
        Thu, 02 Jun 2022 00:09:34 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d25-20020a056512369900b0047255d21114sm870218lfs.67.2022.06.02.00.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 00:09:33 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v3 25/30] phy: qcom-qmp-ufs: drop multi-PHY support
Date: Thu,  2 Jun 2022 10:09:04 +0300
Message-Id: <20220602070909.1666068-26-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_080936_383616_D69D0729 
X-CRM114-Status: GOOD (  13.30  )
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

Each UFS QMP PHY device provides just a single UFS PHY. Drop support
for handling multiple child PHYs.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 33 +++----------------------
 1 file changed, 3 insertions(+), 30 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index e9b32a3d5adb..a2526068232b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -669,8 +669,6 @@ struct qmp_phy {
  * @vregs: regulator supplies bulk data
  *
  * @phys: array of per-lane phy descriptors
- * @phy_mutex: mutex lock for PHY common block initialization
- * @init_count: phy common block initialization count
  * @ufs_reset: optional UFS PHY reset handle
  */
 struct qcom_qmp {
@@ -681,9 +679,6 @@ struct qcom_qmp {
 
 	struct qmp_phy **phys;
 
-	struct mutex phy_mutex;
-	int init_count;
-
 	struct reset_control *ufs_reset;
 };
 
@@ -931,17 +926,11 @@ static int qcom_qmp_phy_ufs_com_init(struct qmp_phy *qphy)
 	void __iomem *pcs = qphy->pcs;
 	int ret;
 
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
 
 	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
@@ -956,14 +945,10 @@ static int qcom_qmp_phy_ufs_com_init(struct qmp_phy *qphy)
 		qphy_setbits(pcs, QPHY_POWER_DOWN_CONTROL,
 			     cfg->pwrdn_ctrl);
 
-	mutex_unlock(&qmp->phy_mutex);
-
 	return 0;
 
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
-err_unlock:
-	mutex_unlock(&qmp->phy_mutex);
 
 	return ret;
 }
@@ -973,20 +958,12 @@ static int qcom_qmp_phy_ufs_com_exit(struct qmp_phy *qphy)
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 
-	mutex_lock(&qmp->phy_mutex);
-	if (--qmp->init_count) {
-		mutex_unlock(&qmp->phy_mutex);
-		return 0;
-	}
-
 	reset_control_assert(qmp->ufs_reset);
 
 	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
-	mutex_unlock(&qmp->phy_mutex);
-
 	return 0;
 }
 
@@ -1322,7 +1299,7 @@ static int qcom_qmp_phy_ufs_probe(struct platform_device *pdev)
 	struct phy_provider *phy_provider;
 	void __iomem *serdes;
 	const struct qmp_phy_cfg *cfg = NULL;
-	int num, id, expected_phys;
+	int num, id;
 	int ret;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
@@ -1342,10 +1319,6 @@ static int qcom_qmp_phy_ufs_probe(struct platform_device *pdev)
 	if (IS_ERR(serdes))
 		return PTR_ERR(serdes);
 
-	expected_phys = cfg->nlanes;
-
-	mutex_init(&qmp->phy_mutex);
-
 	ret = qcom_qmp_phy_ufs_clk_init(dev, cfg);
 	if (ret)
 		return ret;
@@ -1360,7 +1333,7 @@ static int qcom_qmp_phy_ufs_probe(struct platform_device *pdev)
 
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
