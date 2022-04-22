Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49093C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 13:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=viJHUOfEgE7eXP0Cc0li2yHB563P28++xsI7XgiZ+CE=; b=t/q560pK50ExVx
	KjSeL2mtbikjNs1f9BGF3Z1sY1upPKRUgeGW2gW0qQQpjSsLJAKpz3XSz/+2FotWbUsnqQPnp6sXs
	k8EtrnD8C4SdTDHqWKpWcQI/ssAUukLetAnj07mjv1o7RWIFZwzXYHVbBOaduK0aePnJ3NJTgzJBR
	cJieAjlKDhhWqloYorpcHUqqdJGohLlYwM930/P4hxQ0b4VeWEtT1S9Y4rvKie9JWurtXx0xi6Q0U
	R8D94Ih6U/1VhJXeHREg3jpYfZRhc0IaEKu9zPn5a6yi7NHfTmTJodElWMAyzZOHu3jdzjO0J1nRM
	9qRHJHuX0Z3wfMqQzaXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nht39-000Xjt-NR; Fri, 22 Apr 2022 13:10:15 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nht35-000Xi3-W8
 for linux-phy@lists.infradead.org; Fri, 22 Apr 2022 13:10:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1735AB82D3F;
 Fri, 22 Apr 2022 13:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B01EDC385A4;
 Fri, 22 Apr 2022 13:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650633007;
 bh=g3alPqst2KMNlYTZRbC5XyNbsp+KF7ToOB5E/iahWmM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BmSnXLbv3bCIK14FIUrfQg+LE4M2bHWoHYa9H5zEJcvaC8xjRJYEqpFnkS92TYhvt
 z8z3fM4w26I8XDJWLs18DuEjXHRNf2LKIU79t5JHYj437CsZ+2RCU/YS5bKZ/U8FL5
 +LY0Pd/WMQNNDFJoqWeR/149jWXk/7tULcD+nZTLJAaYQwtKe+RW7aPPoPg27wx2sy
 /pBl9AMACJdoiJSrFX6FxjSkqkBJlvH9uq+LMigFee4cDL9XVCPSaIQagqASs6YySH
 YP3qmqsAkdcA1fAXt49VzNTIAbo4pAj5CPWXEzZEFqZve6y3PliQpM42sHEkEn9xE8
 0eDbveaIAAmpA==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1nht2w-0000XO-5m; Fri, 22 Apr 2022 15:10:02 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Johan Hovold <johan+linaro@kernel.org>, stable@vger.kernel.org,
 Vivek Gautam <vivek.gautam@codeaurora.org>
Subject: [PATCH 2/2] phy: qcom-qmp: fix reset-controller leak on probe errors
Date: Fri, 22 Apr 2022 15:09:41 +0200
Message-Id: <20220422130941.2044-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422130941.2044-1-johan+linaro@kernel.org>
References: <20220422130941.2044-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_061012_217504_92334E6E 
X-CRM114-Status: GOOD (  11.70  )
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
(questionable) "lane" child nodes, devm_reset_control_get_exclusive()
cannot be used (and we shouldn't add devres helpers for the legacy reset
controller API).

Fixes: e78f3d15e115 ("phy: qcom-qmp: new qmp phy driver for qcom-chipsets")
Cc: stable@vger.kernel.org      # 4.12
Cc: Vivek Gautam <vivek.gautam@codeaurora.org>
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
