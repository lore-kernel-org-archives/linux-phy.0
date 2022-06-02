Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5CACCCA479
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 07:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wFIAn2kb0Cc3/vFcOdwvcbXND4+tofTtD8Ugm/MkBEA=; b=bdIKJUTaprFq/p
	7pcUucBD/hcd7snj+yOUZco/+4wuBiWqOGV3nIttSlbRIWmf6f5h9S5Vn6JWl6FoyaulceC4yNXov
	/jLZPhxNi/XzGKQ7exbILgWzJjYBMMQMhl3tbxC2z/IGiU4zynPS4+8z2ppTWw7Hl7K7aHt/ykL+A
	YavXHd469Y2R7GJRkHZqAWqohDv6CHyJjIT2+iQJue8w9q7VlMGehjhLlLDaK0sS+BlGlptUPHVAC
	n531hE5X+c+KygC8iVTgxGxPMS3Li38HHpiWXERsHAYRpi6o3QQ5fmP1kzyBwzK7ApdbAAkjLvGj9
	AyNXtSTRw3sotkwxmH2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfRs-00233Q-8c; Thu, 02 Jun 2022 07:40:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfRp-0022xm-KI
	for linux-phy@bombadil.infradead.org; Thu, 02 Jun 2022 07:40:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=UAKyR81ddNuP6637Lad2Iz2FIhX299nucXwl0deW0aw=; b=hmxF+ndJx8TOjumxQjOgRPg410
	P9jGPI3UiQcOXYWzjYBDkQUHqfFl+RuvNSwW5biTlKpBa8IjtDXyFOE4YLLrss9VC4OZXyp9TgJRq
	p4E5N3Cmi+zEPir2Xyf0AdfGO6F7wkakPCdrrYiN+Ct7hnyfM9cBUsaFv2ArPxAq7MFFdIXt27lH3
	QUWkkQ9Wk7jcquGIpB8rFkKH9sErgc0oqEHHIdFOfZEGv+sw27Pnk9e1LgHJx951YVcgDK7t9COXo
	0AZuDvdbESkjw34cpjOSo70X0rh2k0+NdNn6QCzKPRoOgVEZkDD3imkF58tI/k3MHQbUMqp5Yqypu
	sbQ0eZ7Q==;
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwexf-0041jC-99
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 07:09:43 +0000
Received: by mail-lf1-x12b.google.com with SMTP id a2so274281lfg.5
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 00:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UAKyR81ddNuP6637Lad2Iz2FIhX299nucXwl0deW0aw=;
        b=z3Ta3fOk2Y/GamJd95ZtWJIO99IEWoBF8eJoq8+7M5DRpylf930pph2EG4q3ACoDfm
         /DIWBCj2w6Upbitcywlhxp8IFFraTZRY/wS3weLQPzXcuH8qGjoKyYQfvTEFyzrAJKnG
         n7fxO1lsRXUoNsh0GOskKhnHBFdT59mffXNoJ0p1hV/1QM2Q6kCvnM1k1pw3YYRtVZ33
         lrH/QOhej+rlXWj0j9opCe6a9aTogzbfY6S2iLHPgf52Ul5xmszjd14FEg4nkD17iSFX
         nsQGUO99cSdQkWc3THZT2Rn7C8bVX83EnTITumaz3XL0ZVCs5zWZzPppz2a6iEUCD3HN
         7FVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UAKyR81ddNuP6637Lad2Iz2FIhX299nucXwl0deW0aw=;
        b=tkqYLbpr71EJdzDgms/BxVeSWT+xkMC3fiWD3MvgJ6mYE09Wh8B8BjNz2Zf0TSjc/4
         A4Dyelxycn3ayKhNiWBCCaKHLDgNeGkN9WsmVXvpKU5LX0z6UfKC7V/daPuoXsT1EUQI
         TzoU0qXkLuAn7innV90PkHg88gFkRlp5UsManMn5hmdaSyvq2nytEDpR/XK9SeSmHS4S
         yseU3Aee+QXwMOFYKdnK/0WrJiboDZMCt0AK5xNPy317dG1pSzhxWnhsLoPRZcRanjya
         3yLpjjc+PMC3RbsIX35/UJw7x2KrpdQc08Pjv+oTv1EtnImNpLul+EaWQlPUtlBayHVX
         aWhg==
X-Gm-Message-State: AOAM530A1Jmbs7fMPNhqrW8GBVqekRsMBQL9J8CF5LfcuDyiMI7gYjnQ
	B+UchlwSfRGNwT7A/3SILhbyZA==
X-Google-Smtp-Source: ABdhPJzttC7oSsr5xT5K+iyqYJKYlL7tjx44F2JOlbA9KLrQLZ5JVq7qOdtWSKTRN0Ykt7ZfXIM9/Q==
X-Received: by 2002:a05:6512:2807:b0:477:b906:81af with SMTP id cf7-20020a056512280700b00477b90681afmr51334953lfb.299.1654153778905;
        Thu, 02 Jun 2022 00:09:38 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d25-20020a056512369900b0047255d21114sm870218lfs.67.2022.06.02.00.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 00:09:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v3 30/30] phy: qcom-qmp-usb: use bulk reset_control API
Date: Thu,  2 Jun 2022 10:09:09 +0300
Message-Id: <20220602070909.1666068-31-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_080941_741706_0B171831 
X-CRM114-Status: GOOD (  14.90  )
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

Switch qcom-qmp-usb driver to use reset_control_bulk_assert / _deassert
functions rather than hardcoding the loops in the driver itself.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 49 +++++++++----------------
 1 file changed, 18 insertions(+), 31 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 969253e7bdd9..aebe5ed4e4e3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1446,7 +1446,7 @@ struct qcom_qmp {
 	void __iomem *dp_com;
 
 	struct clk_bulk_data *clks;
-	struct reset_control **resets;
+	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
 	struct qmp_phy **phys;
@@ -2009,7 +2009,7 @@ static int qcom_qmp_phy_usb_com_init(struct qmp_phy *qphy)
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *pcs = qphy->pcs;
 	void __iomem *dp_com = qmp->dp_com;
-	int ret, i;
+	int ret;
 
 	/* turn on regulator supplies */
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
@@ -2018,22 +2018,16 @@ static int qcom_qmp_phy_usb_com_init(struct qmp_phy *qphy)
 		return ret;
 	}
 
-	for (i = 0; i < cfg->num_resets; i++) {
-		ret = reset_control_assert(qmp->resets[i]);
-		if (ret) {
-			dev_err(qmp->dev, "%s reset assert failed\n",
-				cfg->reset_list[i]);
-			goto err_disable_regulators;
-		}
+	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+	if (ret) {
+		dev_err(qmp->dev, "reset assert failed\n");
+		goto err_disable_regulators;
 	}
 
-	for (i = cfg->num_resets - 1; i >= 0; i--) {
-		ret = reset_control_deassert(qmp->resets[i]);
-		if (ret) {
-			dev_err(qmp->dev, "%s reset deassert failed\n",
-				qphy->cfg->reset_list[i]);
-			goto err_assert_reset;
-		}
+	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
+	if (ret) {
+		dev_err(qmp->dev, "reset deassert failed\n");
+		goto err_disable_regulators;
 	}
 
 	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
@@ -2074,8 +2068,7 @@ static int qcom_qmp_phy_usb_com_init(struct qmp_phy *qphy)
 	return 0;
 
 err_assert_reset:
-	while (++i < cfg->num_resets)
-		reset_control_assert(qmp->resets[i]);
+	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -2086,10 +2079,8 @@ static int qcom_qmp_phy_usb_com_exit(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	int i = cfg->num_resets;
 
-	while (--i >= 0)
-		reset_control_assert(qmp->resets[i]);
+	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
 
@@ -2376,23 +2367,19 @@ static int qcom_qmp_phy_usb_reset_init(struct device *dev, const struct qmp_phy_
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	int i;
+	int ret;
 
 	qmp->resets = devm_kcalloc(dev, cfg->num_resets,
 				   sizeof(*qmp->resets), GFP_KERNEL);
 	if (!qmp->resets)
 		return -ENOMEM;
 
-	for (i = 0; i < cfg->num_resets; i++) {
-		struct reset_control *rst;
-		const char *name = cfg->reset_list[i];
+	for (i = 0; i < cfg->num_resets; i++)
+		qmp->resets[i].id = cfg->reset_list[i];
 
-		rst = devm_reset_control_get_exclusive(dev, name);
-		if (IS_ERR(rst)) {
-			dev_err(dev, "failed to get %s reset\n", name);
-			return PTR_ERR(rst);
-		}
-		qmp->resets[i] = rst;
-	}
+	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_resets, qmp->resets);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to get resets\n");
 
 	return 0;
 }
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
