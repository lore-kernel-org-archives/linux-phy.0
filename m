Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7D5BC6FA96
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0xb1vJ0YiMuNnl9nYcSu1krq6ohqQHR+NcLWbyWGR0=; b=vXtW5bUt3qxoQ2
	QI8ATMFZuTqk3tcml557pECcLI2wXrFGKTSdIqyITHKsfmQDKjDA6iX0ceMJ364T7ICkte7nXnfmJ
	6wGRtzafTu4SamxCwnz/+WdETSmK1DdiDz1E0YuLs4sHxz7Zmbwo14QWh0l98ZCyiylx1YuoJ4jpR
	ky43ed7KUgrhr3XOEiir8dZHYlBTdIdQFlGNRuq7s1B+Wx9aaVRxDDHw8vA1LePQ8shy1DVYSilWC
	cJ7zbqFtzac+byN+K8N8RdL1nZJsnblLB+PcYVB0ezANKkBmQbeHEndXm1apgOtRoZwrz7pNdFrQ4
	NwTr4dOvZ7YWuu+dQw1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRq-00GZm4-1f; Tue, 30 Aug 2022 11:30:26 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRb-00GZeZ-Cf
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BB381B81A68;
	Tue, 30 Aug 2022 11:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 722C5C433C1;
	Tue, 30 Aug 2022 11:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859001;
	bh=UQQZwGZMsAgB6wntjPMvyAwdQR7zbV03fNjOm2r8HlU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=st9qQ5KvmdF62rXhskVV3dkakgNz8dtSIhCAltnPj9MW+DQPoW/tWOW2nRvVP2Vcx
	 3ZrtXos7R/zzQV/eHTQMlQ693gX7ufLkdDxCZfqT9qMHn3Jc1r7VH3fhhE0MzxnoNc
	 D7h9Mqkx7Fr8vH4CHSYUexGFon/1JBhR5QvXXNteNpHagF7SXr/Kf0U+yjtioBJjEq
	 g6sPBZLRQ6TQRSI9q2FNRrA4gmkH2CeZgXouoBNaYRkz+vDWKirIuvBHEWZ/N1HQHI
	 Q86cPk+OMMO1kuR8g0f/itUx4+awbuDcuLUR/TYsf3LSu2dr7/jsuZTIrZCe7p5WMX
	 V20WWcmZ3VGFA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRP-000117-82; Tue, 30 Aug 2022 13:29:59 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 27/30] phy: qcom-qmp-combo: drop pipe clock lane suffix
Date: Tue, 30 Aug 2022 13:29:20 +0200
Message-Id: <20220830112923.3725-28-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043012_321065_EE72B8A1 
X-CRM114-Status: GOOD (  13.86  )
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 41e7548ef0b5..d200cd5ca4fa 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2723,7 +2723,6 @@ int qcom_qmp_phy_combo_create(struct device *dev, struct device_node *np, int id
 	struct phy *generic_phy;
 	struct qmp_phy *qphy;
 	const struct phy_ops *ops;
-	char prop_name[MAX_PROP_NAME];
 	int ret;
 
 	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
@@ -2789,8 +2788,7 @@ int qcom_qmp_phy_combo_create(struct device *dev, struct device_node *np, int id
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
