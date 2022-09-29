Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E1CFC04A95
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 09:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9l9X3wxqqMj6tukoX48CdCrz7kLuxTvtiHYvYBCCrE=; b=Q90soFuikwXXp2
	paQg5805lvRqkm16jSDwPs443KWKpqURq6sB+9q3N2vs0yYOrlaWo1JcpNaq+xdWLiPZ/cG/OSzB8
	zJwAF4Lr+p03oS3bSqi4tPF9wsPt7iu79CON3FgG5jBY9gDptw6rgZ5kjjSj6EhmEscNh9EutNjqJ
	EgO3WgORQbWqP2yLHDNEnQtZL1q9hdf2fvtQZGieGbRNpckUItZhb4GDw7mPYrZjEkS6ywAaj1mSN
	5V6WV496/ZHinK9YF8KH++mwYqMDUklyL4LEcFS14dwDCdI+9ReBvU2pm1Xk5/wgSTnAbEMZQVyTb
	XK8Lq9lLpzepOalehhSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odprI-0026tM-Q0; Thu, 29 Sep 2022 09:29:32 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odprD-0026nh-Fp
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 09:29:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 3579BCE2128;
	Thu, 29 Sep 2022 09:29:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03CCEC433C1;
	Thu, 29 Sep 2022 09:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664443763;
	bh=kro7aDlZROhupYv5MZjecCfiwnFNkfBZUEuYby/yjeE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YI97mZfb169VX05+lNOg3+H7WS2L3bre/5RRB0YAfMnH4uwwgSq9U3htQfFPJth9G
	 ODrICMFBZ+5pvfTWKNnBydOn9UExyX3sxv8nSk2ZHIqRZl8Bx0dFgRJoBrYtofSgrt
	 ZbyFwfRBkqgJ6yvzSFlklklmcPQuD6TGP+SfwHh582HPt7STiY+/zWYpWep57gP6/T
	 3XsAMIasmSDU7iRSL3S/gwaZZrRB4d29/nvLfKmyW7h2tAJa3Ib6ZlclBUXW+5gEBq
	 KR1iRQX1LFb43piHbgY5Pv8GY1s+tf+9/8cm4Kob58kTsMkhVDtlZLdepKaNwDJxwt
	 gt8xu6/xuKiAg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1odprF-00061F-Ga; Thu, 29 Sep 2022 11:29:29 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 01/11] phy: qcom-qmp: fix obsolete lane comments
Date: Thu, 29 Sep 2022 11:29:06 +0200
Message-Id: <20220929092916.23068-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220929092916.23068-1-johan+linaro@kernel.org>
References: <20220929092916.23068-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_022927_927327_595B2464 
X-CRM114-Status: GOOD (  12.02  )
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

All QMP drivers but the MSM8996 and combo ones handle exactly one PHY
and the corresponding memory resources are not per-lane, but per PHY.

Update the obsolete comments.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 2 +-
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index ad3b0aa22048..0cf1eb8a62f6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2669,7 +2669,7 @@ static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
 	qphy->cfg = cfg;
 	qphy->serdes = serdes;
 	/*
-	 * Get memory resources for each phy lane:
+	 * Get memory resources for each PHY:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
 	 * For dual lane PHYs: tx2 -> 3, rx2 -> 4, pcs_misc (optional) -> 5
 	 * For single lane PHYs: pcs_misc (optional) -> 3.
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 0f8e739936ab..d9646bf5dc91 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -777,7 +777,7 @@ static int qmp_pcie_msm8996_create(struct device *dev, struct device_node *np, i
 	qphy->cfg = cfg;
 	qphy->serdes = serdes;
 	/*
-	 * Get memory resources for each phy lane:
+	 * Get memory resources for each PHY:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
 	 */
 	qphy->tx = devm_of_iomap(dev, np, 0, NULL);
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 83fbbb446c9d..f4634af75890 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2201,7 +2201,7 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 	qphy->cfg = cfg;
 	qphy->serdes = serdes;
 	/*
-	 * Get memory resources for each phy lane:
+	 * Get memory resources for the PHY:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
 	 * For dual lane PHYs: tx2 -> 3, rx2 -> 4, pcs_misc (optional) -> 5
 	 * For single lane PHYs: pcs_misc (optional) -> 3.
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index d21b977850b3..d7b35b715b95 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1094,7 +1094,7 @@ static int qmp_ufs_create(struct device *dev, struct device_node *np, int id,
 	qphy->cfg = cfg;
 	qphy->serdes = serdes;
 	/*
-	 * Get memory resources for each phy lane:
+	 * Get memory resources for the PHY:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
 	 * For dual lane PHYs: tx2 -> 3, rx2 -> 4, pcs_misc (optional) -> 5
 	 * For single lane PHYs: pcs_misc (optional) -> 3.
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index f01b3022a10d..f8685eddbf80 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2581,7 +2581,7 @@ int qmp_usb_create(struct device *dev, struct device_node *np, int id,
 	qphy->cfg = cfg;
 	qphy->serdes = serdes;
 	/*
-	 * Get memory resources for each phy lane:
+	 * Get memory resources for the PHY:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
 	 * For dual lane PHYs: tx2 -> 3, rx2 -> 4, pcs_misc (optional) -> 5
 	 * For single lane PHYs: pcs_misc (optional) -> 3.
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
