Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6E75C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 06:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYe39Pdj+SNqTzT/Y98LEeYtt+fHhHF3+cU95ss6G5o=; b=HFiCHBfcFCOoyq
	VyHwzOPMGvQBtSldT0mZ5ON63nQjNJQXGe57id7KTkW/nElJTFwl/CGvx8tOfjRQtUOCJAmZLTBJW
	EwFhM3N17jjV6orKW8gciHBX3h7ycn4nXYX2UF0t74j8Gh/m3YXdMOPqezrlbNaaDcc4BqWNwUuBm
	9m/Hc8EOEbjrxeOwQ+KljdV/97coCvvKV3OvET2DcvyNvrnoCWGj0L3uFG6sTuAAujLqM3Ub11+sT
	l7LR6J6J6ENrmpslGxY/lCuD1vVJMlY3aKfLMZBR52+LI1nEBTM60gyXtUV2SWiqPL1p1vRRZtQLj
	Ehq/Jo8GNnQtDRqZnX0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okJxY-00893m-0L; Mon, 17 Oct 2022 06:50:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okJxT-0088t0-0B
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 06:50:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E5B5160F31;
	Mon, 17 Oct 2022 06:50:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B924BC433B5;
	Mon, 17 Oct 2022 06:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665989440;
	bh=KHrQ1n0ZcTTSsUzPGNs73NDeWcbPJWAXEpqMTIB4g14=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n4FU4E0hIXvjFKKoOY5TVObdyGrA4+BPCvRpOrHD8oF4716q+reGzPqIL0TEVPFDS
	 83DZPluW9oHHJyOyEjzAwHhdBr9NuKfSncpB7e1Tn9evtao8dgd/LJj7G40qTgFjMw
	 bnYZy8iNmKZ0d569EHbzDIdv5hF3GvdhwUN5KmNBum3FZSy6/pIfKHu67E+y0NDEyz
	 ulU5Ppb2Gxd46NDqNZ50ZGmRvT97bfvTkHcvhlGVrEtiXyXDs4mVV6AFsKEiNa9lst
	 bcZ7J/VncLld3cQG09UbiM2GDZrrO3QqAxSn1FihfyofasX1/2xMPuhxY9yrn1V14A
	 xbtxCfP/psvGQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1okJxG-00057V-77; Mon, 17 Oct 2022 08:50:30 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 01/11] phy: qcom-qmp: fix obsolete lane comments
Date: Mon, 17 Oct 2022 08:50:03 +0200
Message-Id: <20221017065013.19647-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017065013.19647-1-johan+linaro@kernel.org>
References: <20221017065013.19647-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_235043_175255_E238B45E 
X-CRM114-Status: GOOD (  11.45  )
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
index 9807c4d935cd..8a2a35c0855b 100644
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
index 461f0b5d464a..707ec81c7a2a 100644
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
index f3f75eda01a6..e0408c423ac6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2319,7 +2319,7 @@ static int qmp_pcie_create(struct device *dev, struct device_node *np, int id,
 	qphy->cfg = cfg;
 	qphy->serdes = serdes;
 	/*
-	 * Get memory resources for each phy lane:
+	 * Get memory resources for the PHY:
 	 * Resources are indexed as: tx -> 0; rx -> 1; pcs -> 2.
 	 * For dual lane PHYs: tx2 -> 3, rx2 -> 4, pcs_misc (optional) -> 5
 	 * For single lane PHYs: pcs_misc (optional) -> 3.
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index c08d34ad1313..db5642e1f715 100644
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
index b84c0d4b5754..965e486ab87d 100644
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
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
