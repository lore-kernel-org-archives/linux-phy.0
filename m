Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BAB7C43217
	for <linux-phy@archiver.kernel.org>; Fri, 21 Oct 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2ypZ8SZHZhUyziUXYzUHjm5mk8b1SOVdCj0+PWQfCU=; b=yKwQ5eDLVygVGm
	OwsOLYkcTf8D2tfAO+eCCy7ovdNBFq7ZvTaZlh4zZzHcnz6K0T+geZWK2KU5l0/yuGqyrDaMFq+Oo
	8bgt/IsJngc621VShcUARMFvId1wU0bIxcdUNTP+ho4l9k/ws67kB4tpfVQzNM0Dcux32gDZHVm8F
	KsHqOQucpuOg38AOKO/6nCcMP618jGHboL9+lqjm8EZforsVPQFckrV1Eiw5pqMJvcDcWn+fHYNG3
	y7I11Ri/r5ihy3+S5ZOIUhNpebZsgVdsc3DTm6FRpAhpLfGdZre/sA+UsIOlWbtMA5xUwuuGbFit1
	1jiOlf59R52kSL7e+NzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olpvR-007Iki-6X; Fri, 21 Oct 2022 11:10:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olpvL-007Ie9-F2
	for linux-phy@lists.infradead.org; Fri, 21 Oct 2022 11:10:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CFE0E61E66;
	Fri, 21 Oct 2022 11:10:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7621AC433C1;
	Fri, 21 Oct 2022 11:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666350643;
	bh=3R9BPW6QSUhhXBNcO5z3mLwkQgvqyw63TThHmZ5QLXM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=njx/wF7mXSH687bj/cE1Bamu1OxiK0SjROBp5r3K+onUp8FwcPWN2SDsgbOkNIIB2
	 7RHk1Yi6iNZpKdoIqOf7oBw/3vim9VvUgzvwJVqPnZuWVskdWXTKPqaaeRLe3FPMps
	 c+NU5qNdKbJvE3YGiRi67tA/smAc5knViFgVEcAl48qO/k0Lh1BHURwDGdTEa+DYmX
	 1hfXiDvACCxFGfDHWRFHZZdyBHTxnb3u90XWHTA2Eic4vCJVMWtc3CGAo9tVaRlgfq
	 y1Tz1eh7BvqsAmuYFbNfDizJvdN54YLn0dxuWKdA+mRz7L8218YYqMd8vIF7JBgYdX
	 ZZo7oeNu/pt8Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1olpv4-0007Ka-M9; Fri, 21 Oct 2022 13:10:30 +0200
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
Subject: [PATCH v3 04/15] phy: qcom-qmp-pcie: clean up device-tree parsing
Date: Fri, 21 Oct 2022 13:09:36 +0200
Message-Id: <20221021110947.28103-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221021110947.28103-1-johan+linaro@kernel.org>
References: <20221021110947.28103-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_041047_606077_C2586C75 
X-CRM114-Status: GOOD (  18.27  )
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
