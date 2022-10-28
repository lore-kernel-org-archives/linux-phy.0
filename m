Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB239C38A02
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fo7/fet6MMe58nZjb1Cip5XTKsFnFWLMgAMM7JLcA4A=; b=aE8h5cAznVDYnX
	JoUz9JKXJlh0H6dxxj1DkYOfaq9RlTIBwVHjGJcxnp4nABf83o0wEOlxivVMmCVDLbE5AYqUzCTrl
	aLISdYCntOCfGVlhgHytsX8hbMD+VXHEXxviB3aORb2c2P/m4leOF38O3Vd7UmpwsOKi+HIgfWSxn
	u3rmW7SSfJ2cYPcEjYnuPQTMYrYN7pPEVEk8TiHPFTUIWtD9gb/JNQmUWl7b4KdyJGW6YNMOYqOmq
	XDryu4WGFtxxrfEHrr2cD3P/hkjR6/3vsrSaaHNKsbfZDx27FWIU7qA0rXgxchML2f6a/n8C2mf0g
	2pZ7Zecl/NGHhZ1onpxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPfF-00HQZr-90; Fri, 28 Oct 2022 13:44:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPf9-00HQVN-Sp
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:44:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 00D8E6289C;
	Fri, 28 Oct 2022 13:44:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5AAAC4314D;
	Fri, 28 Oct 2022 13:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964680;
	bh=LoebmK+dBQqJvUZEDYtP9VtGUiwSzpQBi7HG41jq64s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lSBbhs5vj0PKnZ4O7vNNuAe77kM3zWiVfEfiIV/kzCQRN9NCPLNL9Z1S6TCFib5Gm
	 IPNRgcg27NSMlaSjAx8HKAwEW3pj1fL/KcXN+SDVkfRParbJbbS4VI3mbbljfHqyj2
	 74QH1tcClWpH1RKhMqx6xSyHB3iRz6lxf/7/yZyO9b5iuHUI7F8yn31j+9DNMD48On
	 VkY1A/AnHnAemqdR2agz52jBXr3pacOi1X6QqvuDypJ+3yYgHhpf9WQ0XSctXIa4CS
	 SrtH7IRvDMPTKvHA6MtB5vHTaDMHm6Ljt+bLB923/D1mNFfpnr1gedaFUm91NYh77b
	 nfBCzHAGqlNpw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooPet-00052E-AD; Fri, 28 Oct 2022 15:44:27 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 06/13] phy: qcom-qmp-usb: clean up device-tree parsing
Date: Fri, 28 Oct 2022 15:44:00 +0200
Message-Id: <20221028134407.19300-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028134407.19300-1-johan+linaro@kernel.org>
References: <20221028134407.19300-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_064444_065568_6A9D35DE 
X-CRM114-Status: GOOD (  18.34  )
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

Since the QMP driver split there will be at most a single child node so
drop the obsolete iteration construct.

While at it, drop the verbose error logging that would have been
printed also on probe deferrals.

Note that there's no need to check if there are additional child nodes
(the kernel is not a devicetree validator), but let's return an error if
there are no child nodes at all for now.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 40 ++++++++-----------------
 1 file changed, 12 insertions(+), 28 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index e009d63260e7..ccb834a08d5b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2471,7 +2471,6 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	void __iomem *serdes;
 	const struct qmp_phy_cfg *cfg = NULL;
 	struct qmp_usb *qmp;
-	int num, id;
 	int ret;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
@@ -2507,44 +2506,29 @@ static int qmp_usb_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	num = of_get_available_child_count(dev->of_node);
-	/* do we have a rogue child node ? */
-	if (num > 1)
+	child = of_get_next_available_child(dev->of_node, NULL);
+	if (!child)
 		return -EINVAL;
 
 	pm_runtime_set_active(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
-		return ret;
+		goto err_node_put;
 	/*
 	 * Prevent runtime pm from being ON by default. Users can enable
 	 * it using power/control in sysfs.
 	 */
 	pm_runtime_forbid(dev);
 
-	id = 0;
-	for_each_available_child_of_node(dev->of_node, child) {
-		/* Create per-lane phy */
-		ret = qmp_usb_create(dev, child, serdes, cfg);
-		if (ret) {
-			dev_err(dev, "failed to create lane%d phy, %d\n",
-				id, ret);
-			goto err_node_put;
-		}
-
-		/*
-		 * Register the pipe clock provided by phy.
-		 * See function description to see details of this pipe clock.
-		 */
-		ret = phy_pipe_clk_register(qmp, child);
-		if (ret) {
-			dev_err(qmp->dev,
-				"failed to register pipe clock source\n");
-			goto err_node_put;
-		}
-
-		id++;
-	}
+	ret = qmp_usb_create(dev, child, serdes, cfg);
+	if (ret)
+		goto err_node_put;
+
+	ret = phy_pipe_clk_register(qmp, child);
+	if (ret)
+		goto err_node_put;
+
+	of_node_put(child);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
