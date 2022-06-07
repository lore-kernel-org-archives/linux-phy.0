Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C40FFCCA482
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 22:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdBFOo/NuDiTs4uXM5/09YK1VJhc8+KtGCDzVFOcqWs=; b=Gsh4IdyHaD1jmZ
	3UvpD931abrNE0GxWfycv1H8ddATC5stm9v16ZRtgUINWDtsRFWTUS7ZE5G0rd1i+GP4zLrcUWo5x
	4kcnFfIHa7Qx7ZyM2UifVq31tq+Rlphd3IWp/FDviQa9SzTnQrt41Ymu6nYvI3YGpoARFbCKXDNkw
	ZEKMXfrrdbs4yocxGw3DKQYyht9MseahwMyB04Uom9J+URZWbK4ZCMi3nGHDsPePe2GfXcps/Vtnx
	crUpSZ+mn8xhsoIkW1eLHVtD98pAMTPOVxK6izXMnJlg087R+e3y5p2/x8wv5TzNUhb1rtAavMERw
	KQAfGmnNzmEuCw2Z3+rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhss-009uhm-7n; Tue, 07 Jun 2022 22:41:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhso-009uUV-Bv
	for linux-phy@bombadil.infradead.org; Tue, 07 Jun 2022 22:41:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2imGqpmmUYIL/vBXDX4AMR6VhO9AAPmsJkl/66iJTZA=; b=Q8XnPGXhV2Dq1TsUHYpiXtqQFH
	YMbO2Ms6iiGAPDSCHJFxOYW9QIwgj0d8cavhHkicHa5+UJ5VKMX/LXRn119ZOwvU992xoN/XOVEj2
	cYI+l1/LwBhtuFq3uFUyu66cz9SEK8xUfttFlAP7yFelC/tKqFYAt68U3j9nMu+vaVUEPEHDRXgmk
	qgBg7gCSncH0+Zal/HbNmTjNKHRZgLrhVjYbZjyx36CZeZIjJ1GHKoRQQonegVylwNbCmM9VkDIVx
	9U058wv5hmry2PHwpIvR2Sc/PAS8pvvJVot9Vy6KKhGlC8iYZzUyW7XWd0evy0HH0Ne3ELwh69CZk
	nTGXeJwg==;
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygof-005pnJ-SG
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:32:51 +0000
Received: by mail-lf1-x12e.google.com with SMTP id y32so30276606lfa.6
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2imGqpmmUYIL/vBXDX4AMR6VhO9AAPmsJkl/66iJTZA=;
        b=wgyLw1ukIv27Jr7FA2UHBVDIW9I5o/409G8LQ9nro6bXSfsSl/TFXOinq21vCTFEeI
         cF5dvLd3L6VAc703EkdJdX9GVWHqFj3hZbWFwTQV10hHlty6g3Kaf5fRv3p2xAmVbOrw
         3m34tcLZ/6n6kh9uBNEoLUItkQAj1XntUTJosrpGAmypdiNRU5WQxAPtD/8aZpIGbCWH
         p6euAtnd9cuvFYP557qQBIPPd6kQIsUX3Bk1psVeid/+6UBZPBrasL01eA10tgyJuNxi
         6FaktP3dtytm4v/GCTwC1lPhe85rjV+WpRnUyYBwaeP4m+rxv3yyoyJzhPsbyjcOAc/e
         bTbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2imGqpmmUYIL/vBXDX4AMR6VhO9AAPmsJkl/66iJTZA=;
        b=jQyaNWo3AkwIdclFOunDV2F2sFySNPIlzewRJE+eaj6rWjRBSjhy3ZHJllC1exEtqH
         Oy/+r/rjTCsHFKoI7/tglWe/ydNQQmIdHNM//uBGtrkgoyO3CdhQJSBadYGvGU0bZVV8
         wZMzlfTfnQc5wKOgD9AYLBKghlZG4Cd2cFOghHSXKJyr3A829JWjjkgfGSJXRlg+fpIp
         yfMTL0fsOn4w6uIqBzFNyxL/Ucp2PhLvglZhNLFKbBpc662On3O5NDmFdvsRbJuFW+l2
         N0IXIxNusHYQyPsLMR51exr2r7wO65Tn8C9RwUHbtJ1dNmxc3nTj/gExHiu43t7x112v
         JR8A==
X-Gm-Message-State: AOAM531Yyj8MC++dRPmeA15Nl4EzkyiLpOG53iQfRbxtkI9bE6kXRzCx
	AGH/WoV96HlfwtSkWqDKuZlr46v0mLz5BgHbNEbMqA==
X-Google-Smtp-Source: ABdhPJwFMyzjnfwFMJTEVGamo8VIoOOTzr7r22uif+Mr+AFqfKxBSwM8n6+HCBp/2K2axHKxLqqKBw==
X-Received: by 2002:a05:6512:1052:b0:479:1f92:13b4 with SMTP id c18-20020a056512105200b004791f9213b4mr13089936lfb.200.1654637559197;
        Tue, 07 Jun 2022 14:32:39 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g23-20020ac24d97000000b0047255d21153sm3411343lfe.130.2022.06.07.14.32.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:32:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 25/30] phy: qcom-qmp-ufs: drop multi-PHY support
Date: Wed,  8 Jun 2022 00:31:58 +0300
Message-Id: <20220607213203.2819885-26-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
References: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_223246_696171_05C71AEC 
X-CRM114-Status: GOOD (  13.45  )
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

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org> # UFS, PCIe and USB on SC8180X
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
