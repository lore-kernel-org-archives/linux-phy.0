Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7B32CCA47B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+hl9nIV2Crcu9s1fAhXmCZv3rqQzjdHb2cIndXbebc=; b=M0i+jq5BtWbfeK
	hR3tkRxWajDOzBZxDFj4mOWazF5tYAQoOY8O2fvh/tzAVHop5dDd1kyb85v/cptBSkt6rl/0NHPIZ
	ecRcG840yHzh3tp1iT6Mx/AQ3b0vNWKA0L+H5GnLcCfVyasUVdsVe3UC2iKwOvA6wgWX3xm1skteV
	qP3o0Lvk010sowoeUde4tpygBxZIo2k1YFpeae8F8KKFJA1uZ9k5WVW8DDBVlkc6Js+pZbYLtiOqE
	OfSPWylteAEm98c4dtVOysNgKpP5gBcBfPHQKUiEePA8mR9E6To/KnUnfly9c8Cu21nmUC3C5zURn
	Lc8qdPKc2j/v/+cQhmMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFN-00ENOD-PD; Thu, 14 Jul 2022 12:47:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCR-00EL6H-Iw
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 44A0F61F5F;
	Thu, 14 Jul 2022 12:44:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1261C341D6;
	Thu, 14 Jul 2022 12:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802645;
	bh=dBBUdqG3HG08FgR95FBeJSLPOANJallETi4YK4KPQew=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GfZXbRTN238URE8gWC7UmhRb9OwW3MuwVBZqyRztecKyIjqES/ylA0SnQOzlrUA1B
	 j/QPXMos0fya/YnNV14dmCGDOnkW4xRN/8pUh3hMbk42sR51hOzNsx/3ouLPMg3kmo
	 HnOTE39tymZbYBDmspa1sUHOnJ7no1mYZRgx3moOKQ/EBZvQjpRix9/ZKrA+BlVmxC
	 PNpwElh2uXh1Z/jVaSvPfLK+a7HeEp4GQMwEBcUOY5QbN2WPjXH1hSgCHskfW8GBMf
	 /LNViHS9L6X6aLghDbEC/rqmMgQAJTsei2SEJC3Qyjg0Ij0nDxURi0ujZTtYW5ToEH
	 C6iZC89/rLNhg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCR-0007EL-5v; Thu, 14 Jul 2022 14:44:11 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 27/30] phy: qcom-qmp-combo: drop pipe clock lane suffix
Date: Thu, 14 Jul 2022 14:43:30 +0200
Message-Id: <20220714124333.27643-28-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_054411_729237_EFEA016F 
X-CRM114-Status: GOOD (  13.65  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index faa50cf2e35e..fcb5c375425b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2533,7 +2533,6 @@ int qcom_qmp_phy_combo_create(struct device *dev, struct device_node *np, int id
 	struct phy *generic_phy;
 	struct qmp_phy *qphy;
 	const struct phy_ops *ops;
-	char prop_name[MAX_PROP_NAME];
 	int ret;
 
 	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
@@ -2599,8 +2598,7 @@ int qcom_qmp_phy_combo_create(struct device *dev, struct device_node *np, int id
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
