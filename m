Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39C86CCA494
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EnzphIdNRpbURrXX5iG4AqUTwklE07CkF3MHFbQRz7M=; b=SXdki04pBc2Gpc
	crv4et+NcB+/Nj48styYwWJsXfEApXXdRlOcPvRtjsiXedolB2dgVAHO30yLyM6chE6sOSAskOcOL
	yl649NBUv7RdgeEhzv0sMUaB5XVw7h/LcRMPd2CugXAbS0OK9wNqUP9DyDuqJG92boVPW2mq44VMJ
	koBTMnCPQ5FuAJlse1VajdgzAdqiAtJ+L0iTDexeBsBr849F7SkLd+tqLMoNZNL+wk6yksIxBV+hd
	E6UXSo/BwubxrFl+CcLN2NFfJ+pOE4S3BvONjF4oawMHRNTolhog1hrd3c5EcBi6iktShSNAmfyP3
	b81wLo6WwbqNAgaXGp3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrT-00GL51-If; Thu, 07 Jul 2022 13:48:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrD-00GKmU-MM
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C71DB62165;
	Thu,  7 Jul 2022 13:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 581ABC36AE3;
	Thu,  7 Jul 2022 13:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201661;
	bh=81fBkqVO0wiCN/BlxX9juNl1UHR5VbfWAbrydxsSCok=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=coKpspB+X5nlgE9zSTfUQRUSzcyeDeCwIAhBwhOqfq35Y+fJ2BGSiXofPZ9jpnJ49
	 jWTaRBNY3UedLekf+/hZpjyTn7dven6f47XmV7khRukw3XKxRB40RWttP9cVnfW2hW
	 Yigjba019i6pyU0OT+9af92qqsRFUDgWkOUoiSr4aW2spn66CxlSaHDI84KCOV8JXl
	 Vhb5fKJSFuORaneHSyqlVen9i+Nmu29cuFRizbWnxjqSIuJ7931RwDLzCmWQ6lGsnD
	 pqP/4EK/abBDl0s4m04EUcgx3Yc9up5/01OaoU/NtCQ5Lb93SSeefkeesx6GQJH0ww
	 /JCWYCGuewcfg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr6-0000yg-0q; Thu, 07 Jul 2022 15:47:44 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 27/30] phy: qcom-qmp-combo: drop pipe clock lane suffix
Date: Thu,  7 Jul 2022 15:47:22 +0200
Message-Id: <20220707134725.3512-28-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064751_827315_47E33500 
X-CRM114-Status: GOOD (  14.22  )
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

The pipe clock is defined in the "lane" node so there's no need to keep
adding a redundant lane-number suffix to the clock name.

Update driver to support the new binding where the pipe clock name has
been deprecated by instead requesting the clock by index.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index b266514ae9ee..b90a28cad4ce 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2495,7 +2495,6 @@ int qcom_qmp_phy_combo_create(struct device *dev, struct device_node *np, int id
 	struct phy *generic_phy;
 	struct qmp_phy *qphy;
 	const struct phy_ops *ops;
-	char prop_name[MAX_PROP_NAME];
 	int ret;
 
 	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
@@ -2558,8 +2557,7 @@ int qcom_qmp_phy_combo_create(struct device *dev, struct device_node *np, int id
 	 * Otherwise, we initialize pipe clock to NULL for
 	 * all phys that don't need this.
 	 */
-	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
-	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
+	qphy->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
 	if (IS_ERR(qphy->pipe_clk)) {
 		if (cfg->type == PHY_TYPE_USB3) {
 			ret = PTR_ERR(qphy->pipe_clk);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
