Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13944C43217
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 14:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2ypZ8SZHZhUyziUXYzUHjm5mk8b1SOVdCj0+PWQfCU=; b=AoYmt7S91nxmcw
	qgo1ZkavzDFxbLg3wzmFnBb39ia9OgbpYihF67w0IYOLea4KlG06i+pfEdW/RCpjelLlI8O8mbGW8
	nM9EiLO2k5C6l+jc2jcBuLyC9ioTxBZ/2Tfe9LNqzEk8yqZK5TuDIiOveYFzfpUwKoF5blW5zB8n/
	AqJchFgoDEwwj/D6ROJU/hlbwg7MpJz5eC5ze6C6G29+1AuRpSzHTGYWj9EJDscbnoPRrqMc4lF/R
	W8nz+p9VI5FMlX4yhI7IW4JMvpbM7FPGy5p/rYj5l7hMS4gmIyouUJCyx5+2Oo7psv4Mbbh2Y+ZKP
	kGnn5F83DRRsILbBTJRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVt-00Czwu-3O; Mon, 17 Oct 2022 14:54:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVp-00CzsG-C3
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 14:54:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F1585611BF;
	Mon, 17 Oct 2022 14:54:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1B46C43146;
	Mon, 17 Oct 2022 14:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666018478;
	bh=3R9BPW6QSUhhXBNcO5z3mLwkQgvqyw63TThHmZ5QLXM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=i60zkr9MASFPcL30p8Ir1wUheuzLJgxNhDALpA+2hErpLnwI76fh+kmUbaKN7OFm2
	 KbIuejJNyq8m6HpMnIkwsJnaJpkP3ZVRu2/ix49biDcE4sISNFxF44YTiaE3MCANKC
	 C6NwYY8AfW0xn1marrhP7FmkoOyLPzwWf+APyJTaRuawkjiC8Mt/JRZ1BkcKsbxAzx
	 2a2Sj5nSYYmEkMcB0eNrAhTmqwhd2+oAoBVS4OswgJdt1rxFm9AKTc0IVF1WsRTivl
	 I2S5PyV1ixxRjekxu0jBEqMlicBYygsaCrFwVtTx8OLoCkR9wNLXziYfU7E0Lg85TU
	 4WJ/EcfGIGVuw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1okRVc-0005m3-P5; Mon, 17 Oct 2022 16:54:28 +0200
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
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 04/15] phy: qcom-qmp-pcie: clean up device-tree parsing
Date: Mon, 17 Oct 2022 16:53:17 +0200
Message-Id: <20221017145328.22090-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017145328.22090-1-johan+linaro@kernel.org>
References: <20221017145328.22090-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_075441_532952_3B4AC152 
X-CRM114-Status: GOOD (  17.81  )
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

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 34 +++++++-----------------
 1 file changed, 9 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 667a87e7c917..bc96518ad6b0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2250,7 +2250,6 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	void __iomem *serdes;
 	const struct qmp_phy_cfg *cfg = NULL;
 	struct qmp_pcie *qmp;
-	int num, id;
 	int ret;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
@@ -2283,34 +2282,19 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	num = of_get_available_child_count(dev->of_node);
-	/* do we have a rogue child node ? */
-	if (num > 1)
+	child = of_get_next_available_child(dev->of_node, NULL);
+	if (!child)
 		return -EINVAL;
 
-	id = 0;
-	for_each_available_child_of_node(dev->of_node, child) {
-		/* Create per-lane phy */
-		ret = qmp_pcie_create(dev, child, serdes, cfg);
-		if (ret) {
-			dev_err(dev, "failed to create lane%d phy, %d\n",
-				id, ret);
-			goto err_node_put;
-		}
+	ret = qmp_pcie_create(dev, child, serdes, cfg);
+	if (ret)
+		goto err_node_put;
 
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
+	ret = phy_pipe_clk_register(qmp, child);
+	if (ret)
+		goto err_node_put;
 
-		id++;
-	}
+	of_node_put(child);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
 
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
