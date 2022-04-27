Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9744C43217
	for <linux-phy@archiver.kernel.org>; Wed, 27 Apr 2022 06:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuBF+yMaC3tIFn5RL8LmFqN8hi/ZLnqE3Gjk2EOHiAs=; b=3qTrkOJpLJBTDy
	IsCjRBkdhO0jmCGSDTjOhnBAFr+8MyCLZHQ3rHWnvjBHaVDK9mmqFT+7lFCRNKAhE3oV7uXCJ27DL
	+ukxf78IwjubAzaAjqJ42MlnkbJf0jaxhYCvLtMkhFEwwq+o39kLuWkhUSzU7dYa8tXKfZc4KGCBm
	A9Mmuo6nZNLFQAzC7co24M1WkdU3F7QAjUZ6NCz8rz42fC1pmuE+3N2c3At0bHSBvz9N8HUZEFyVA
	Dm/V1pQocTIn4DLJEtzUebiosdziS1Sbrr/GRUf4UaDlBioDdUOu1Eo9tMOBrYfUllftBJolvWWUM
	muB18RDuMYPmuf7YFsww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njbH4-0001EE-7V; Wed, 27 Apr 2022 06:35:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njbGz-0001A2-IM
 for linux-phy@lists.infradead.org; Wed, 27 Apr 2022 06:35:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EFD80618E5;
 Wed, 27 Apr 2022 06:35:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D70FC385A7;
 Wed, 27 Apr 2022 06:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651041335;
 bh=3dR4OmJG6gvns4unQ6WAXw8yKHmRGcvo/1l1zQKbAjo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SrC/WdTNWFNfHhphHcADN0Uj1HB/ajgQQk/SVaFmBHboQexT0Ni0bhvnDn2GAc0pu
 ayv1DqjD4KA0GArUFsiIy5odk7lkBFJtrbEiy3IZCK7E1Wq2hMHvQv0eEKARppo5yI
 nr+DFInofCApcnGan60uvb/2Wwww6LgobLRX4aK10CED2i2LoGnE1+qMZnt+634ugN
 EnwHfcvCuWTb0CYPApsbwW5ejHDvocYYpioljUKjchKZZ9XIKCOHutdTbCr8WTiL70
 Dwzd/1TKoHR+VV9L724z73kaFFNO2w7I3mH6WjvI2uUt0yMBIEthkl47+oBcbrX5sl
 +r37uP99tFkUw==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1njbGz-0008VX-0a; Wed, 27 Apr 2022 08:35:37 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Johan Hovold <johan+linaro@kernel.org>, stable@vger.kernel.org,
 Vivek Gautam <vivek.gautam@codeaurora.org>
Subject: [PATCH v2 2/3] phy: qcom-qmp: fix reset-controller leak on probe
 errors
Date: Wed, 27 Apr 2022 08:32:42 +0200
Message-Id: <20220427063243.32576-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220427063243.32576-1-johan+linaro@kernel.org>
References: <20220427063243.32576-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_233537_677747_C242961F 
X-CRM114-Status: GOOD (  11.07  )
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

Make sure to release the lane reset controller in case of a late probe
error (e.g. probe deferral).

Note that due to the reset controller being defined in devicetree in
"lane" child nodes, devm_reset_control_get_exclusive() cannot be used
directly.

Fixes: e78f3d15e115 ("phy: qcom-qmp: new qmp phy driver for qcom-chipsets")
Cc: stable@vger.kernel.org      # 4.12
Cc: Vivek Gautam <vivek.gautam@codeaurora.org>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index a84f7d1fc9b7..3f77830921f5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -6005,6 +6005,11 @@ static const struct phy_ops qcom_qmp_pcie_ufs_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static void qcom_qmp_reset_control_put(void *data)
+{
+	reset_control_put(data);
+}
+
 static
 int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
 			void __iomem *serdes, const struct qmp_phy_cfg *cfg)
@@ -6099,6 +6104,10 @@ int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
 			dev_err(dev, "failed to get lane%d reset\n", id);
 			return PTR_ERR(qphy->lane_rst);
 		}
+		ret = devm_add_action_or_reset(dev, qcom_qmp_reset_control_put,
+					       qphy->lane_rst);
+		if (ret)
+			return ret;
 	}
 
 	if (cfg->type == PHY_TYPE_UFS || cfg->type == PHY_TYPE_PCIE)
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
