Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9717C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 27 Apr 2022 06:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WAhjX6HCn8Dnj42ikPV0hz7S3/4SoFFs4pDKk2gCXo=; b=D5FSUFDRxQ71Gi
	byn62ihxWoYxTSOTyLALwuPZHG1+J/aHQYeO5EM5iA4b5eBnbCuihocAc8zsVgqHnqB81Tq4AqjbB
	wIsOqawUnP6XoSjUiRWCKgQ7+0Bn4bYh9HwcB7ff4qNzDfiEVCb8RwJ5L+XPsVsyrjLum6l0EN8eR
	RjXZmFJeDkf8lJFPlPowpCshI1Z21xX+VKlagid4BiJ0ihgZQO0E2k/tIOmSQHLb2S/kiZel2BLNC
	1x4Cfsqk6OXbF4GQRoJ3AMdixxeox0Y5/vLgyG/+4M5/0nU71rYFoA3a/1mmUK2DhUt/Nvsv/wfB8
	YA9vP3vgGCM2F9852qrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njbH4-0001EN-BZ; Wed, 27 Apr 2022 06:35:42 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njbH0-0001AD-2u
 for linux-phy@lists.infradead.org; Wed, 27 Apr 2022 06:35:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 8F657B824AA;
 Wed, 27 Apr 2022 06:35:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51659C385AE;
 Wed, 27 Apr 2022 06:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651041335;
 bh=JfzgUR4uDHZ8zRHtskqu08bEed+yBY133dHufapfmEo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ck2iTmTAsUUE+2D6iR06PiNIQEb3JVDPmJ/lSsITZzm4JPbZKC4MxuuExgzHZIHHq
 RoqbjVKSKVn0y0+jkWbMXokKE8r6W86yXyaVZPABz/P7vewdNniI1XMlnBLYf8DDjW
 UOhg0CR/YbrMCUETIl91yAhATYI28NAOsb5ULeuNLJFAV4sDAygb/LWkEOAgaE+6yN
 dzFx3U8d6xOBCoGgKHlSWCsn/S+fBBux6nCockyprv+GapCU8YkURuqIsvGCRSZgqd
 o8dwRb/ep5k785B2A7ZxN40bGwWDIYFd131ZT+ue9zTHiShoWFHwL+ncsIDmvL8goR
 7Wk5CVwJXViiA==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1njbGy-0008VV-UJ; Wed, 27 Apr 2022 08:35:36 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Johan Hovold <johan+linaro@kernel.org>, stable@vger.kernel.org,
 Vivek Gautam <vivek.gautam@codeaurora.org>
Subject: [PATCH v2 1/3] phy: qcom-qmp: fix struct clk leak on probe errors
Date: Wed, 27 Apr 2022 08:32:41 +0200
Message-Id: <20220427063243.32576-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220427063243.32576-1-johan+linaro@kernel.org>
References: <20220427063243.32576-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_233538_301552_A8BAA096 
X-CRM114-Status: GOOD (  11.59  )
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

Make sure to release the pipe clock reference in case of a late probe
error (e.g. probe deferral).

Fixes: e78f3d15e115 ("phy: qcom-qmp: new qmp phy driver for qcom-chipsets")
Cc: stable@vger.kernel.org      # 4.12
Cc: Vivek Gautam <vivek.gautam@codeaurora.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 7d2d1ab061f7..a84f7d1fc9b7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -6077,7 +6077,7 @@ int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
 	 * all phys that don't need this.
 	 */
 	snprintf(prop_name, sizeof(prop_name), "pipe%d", id);
-	qphy->pipe_clk = of_clk_get_by_name(np, prop_name);
+	qphy->pipe_clk = devm_get_clk_from_child(dev, np, prop_name);
 	if (IS_ERR(qphy->pipe_clk)) {
 		if (cfg->type == PHY_TYPE_PCIE ||
 		    cfg->type == PHY_TYPE_USB3) {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
