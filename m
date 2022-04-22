Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50C96C4167B
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 13:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFoDfpB7bnjFCwoHcbtr8dZIOq/+qmAb2Eh8Mm8TUPc=; b=PbnZolXGa7kpE/
	WT0HlRLJ+lTjRn52na4hOy8YBDkvu6DRk8Ekw7Zemo1fiqz67epp1RO2uwWxY04U80RIuKNYPQFXr
	Gqqx2kn+/3iYJy8GOwh7zlX6vFxMawQ9Jyv5DuOqEpTQrydRn3nZyXL2rUoxFB9EJII/27ibtq8P6
	qawqW+f4dQozynO72Nu31+ObnoC0dNnqdJwfzw/tHO3/1ErNW8gOCwXSDWhd+gk9VngLq0fP867EV
	ap5yRszgvVmlQA6DUCAYI4Y1zEVsyVHk1WGEwOS9ZqRB3Xb04Zu24RscKDm6qI7pVmCo4sOp28f+F
	6Z0Qw4Hkb2/zwUeTWxog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nht37-000Xiv-IQ; Fri, 22 Apr 2022 13:10:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nht35-000Xhy-Tv
 for linux-phy@lists.infradead.org; Fri, 22 Apr 2022 13:10:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 54D516203F;
 Fri, 22 Apr 2022 13:10:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B350AC385AB;
 Fri, 22 Apr 2022 13:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650633007;
 bh=ItXHPzCWaDbrNKiK53WMBEuShGLtb9S+gVvDhMea3zA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BRg+lJsQSUhF/pS107sPkge5fTxCbjdpNym7EP/J6tip7amPjyC8QJcLz5wN14ODv
 5Szcg/+3GNWkDRWb+Z/QZvdgsCt4vHw3KLV8KNTw2ipKIK8lIt9Q7+Lx+bEupT9k04
 apsWZOinAIy4J+Z0UL70kwo+dKVhnCFEKIBi2YVSpGMHNXNrqG4IJdSDk0TaA7MBTD
 1Tw1EexQbi4w5W7fiD8G76mn/VfRjqDK5rsQp+1VZmOjYj7mLNu50vXS2VOGqrMlrr
 vLwAzlWEIfiCa9LdWUWK9dAWWbfpQUNZDt7EKiRWwZ59MJng25xNIuY4xL6Uqr1y4R
 tBSUud6e9zxlg==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1nht2w-0000XM-3N; Fri, 22 Apr 2022 15:10:02 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Johan Hovold <johan+linaro@kernel.org>, stable@vger.kernel.org,
 Vivek Gautam <vivek.gautam@codeaurora.org>
Subject: [PATCH 1/2] phy: qcom-qmp: fix struct clk leak on probe errors
Date: Fri, 22 Apr 2022 15:09:40 +0200
Message-Id: <20220422130941.2044-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422130941.2044-1-johan+linaro@kernel.org>
References: <20220422130941.2044-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_061012_043016_23955A65 
X-CRM114-Status: GOOD (  11.69  )
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
