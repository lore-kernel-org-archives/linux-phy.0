Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0DA0CCA479
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaycOf6XaZfzja3ielHFAu8zGT9lfwkQJf3BME92QKg=; b=tzg4c2OZIMR0xH
	i2EjaG+lOc92tJar2K0xv7VVKTasjnTMTXTiWoSv436X90ygj+33nnAFoN3BGXsU35uWWBJKRTQzb
	FxNcquZPGBM82sV1YHGIDhgwfVOl96O0y87KFtRKKmz9Hu3vhi7t2tdb5StpAWE8DkGYrT0UTb/Jz
	zEZDi+E4pCKMzEBpSjhnmI+4eCsfTWoNhkqit6aPdAwCB7lZM/v9wxBLwHqJTK4zILc/WZmB+lZzl
	Neo+QU9lVU2FVKxK0+6fKlm8YPBKbYqFRIl5bq1SMz/RucQ41GdnU607JYe9Ip5udhOKIpJibfGEo
	SRLoffkgNNVfQlSbg05w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrP-00GKzV-SD; Thu, 07 Jul 2022 13:48:03 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrA-00GKhe-0K
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E67ECB82226;
	Thu,  7 Jul 2022 13:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C583C341ED;
	Thu,  7 Jul 2022 13:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201661;
	bh=idICe18a4rExFwkuq6iAbQ7o+y4Szu7dxszLezAghwc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Hdndot8kAOYaU2vt0MiEFqIRdcZ2hy2MWCB30RAEpocCM+7ahwUuLWjASUDUCxd1l
	 /GWPweUnuuqnTgJVtQJHg3WgzJC1hgShkZvZZsh9x2xLYvYDQNDw3XctMJfz0fk1ID
	 +0cV7xTDJsvzROkpJx9mWPsDtSMcpx+tRGALrXKvEgNU/TznV1uQ6XhKYPpQ3OxKDn
	 t5HU4YGcjVXZqqAQr2bcHx71AfXInNZMenCeT6/hCwoqDI4PFuwUGT5QczCT3yQ6qG
	 cl/LFCbbVQIiMAX5zqW6KY04IxKvq1NuVE8/QOKdJMX5L8uOhrU5DB/GzkINtKQDyr
	 cjeNewiPOVdMw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr6-0000yk-3N; Thu, 07 Jul 2022 15:47:44 +0200
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
Subject: [PATCH v2 28/30] phy: qcom-qmp-pcie-msm8996: drop pipe clock lane suffix
Date: Thu,  7 Jul 2022 15:47:23 +0200
Message-Id: <20220707134725.3512-29-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064748_244178_14231762 
X-CRM114-Status: GOOD (  13.26  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 812d14afb5ec..af2f14a53b38 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -872,7 +872,6 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	struct phy *generic_phy;
 	struct qmp_phy *qphy;
-	char prop_name[MAX_PROP_NAME];
 	int ret;
 
 	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
@@ -904,8 +903,7 @@ int qcom_qmp_phy_pcie_msm8996_create(struct device *dev, struct device_node *np,
 	if (!qphy->pcs_misc)
 		dev_vdbg(dev, "PHY pcs_misc-reg not used\n");
 
-	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
-	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
+	qphy->pipe_clk = devm_get_clk_from_child(dev, np, NULL);
 	if (IS_ERR(qphy->pipe_clk)) {
 		return dev_err_probe(dev, PTR_ERR(qphy->pipe_clk),
 				     "failed to get lane%d pipe clock\n", id);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
