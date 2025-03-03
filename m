Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C285C282CD
	for <linux-phy@archiver.kernel.org>; Mon,  3 Mar 2025 16:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tqgj+uoctzvkMQ8T20urvs1Al8aUu42gdJ0g9US75TM=; b=R3agtsp9LLmjM4
	S2hsylpTDcgWwaa3CtBYMmnOu8MYZO/n/ZS+1+SAFokOLskn9uYjqxn60xHdPV6hUGXL8YVfWmoQJ
	A9DpkRcxtQRp8XHo325NjEQ+4ubEoKycHF7wPcCoHf5SJE6FsX0cNYm2qqnTDPchZFyoBkwsaI8/0
	T41LGckQtcRud/g9ik399FFVjjY3RCOnIsS/QIlJOQY4awAHZMufEMcpx2tVUpcQygsIRHxBKMRhS
	fLON/azhZ0A/8MY59rqbBXlbidj8YmifHsa9JTdyq186BJlD0+g5gnlOMQRmW7+r+PPYuXdRa/2hH
	sLJo/sUs2cKgXbwUsW5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp8g2-00000001WxX-0GeX;
	Mon, 03 Mar 2025 16:29:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp8fz-00000001WwS-2Pd4
	for linux-phy@lists.infradead.org;
	Mon, 03 Mar 2025 16:29:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EE5F45C5A1A;
	Mon,  3 Mar 2025 16:27:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 318F8C4CED6;
	Mon,  3 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741019394;
	bh=PFXJy2FtP1emZFy6QDOvJlok8GqsNsNEQzNpXEqasCc=;
	h=From:To:Cc:Subject:Date:From;
	b=ujDpEibkKklbcGK/ipfoD+Si4hnuqaPwlw4eZeW4no9X8p3YQ101XO6bEpDkrlNrm
	 mVgKwbgfhk6JcTy5LcSg+GUSdM1ZeBK/WIGy0sCIVPJeN5RGZ8yuzCwTa/kDbg25gI
	 C1Uha01qvLEdUSLnfV7SQCblMkstrHgOyaRBRJ9RgnKw0D7htMBDoG6wqmEc6/uqwd
	 GcALWyNCHExcrzhccAAVJBZiKJBkW7We0nGZJY743H6P8QA1/IsR7H7rWjTlHGLdX1
	 QO6dbIKxjMZ4Qjhu6lFRCN6TY8SaiC9iLLVClB37JZvD4TvfuDlJ5YjiIGv1nyVmyT
	 Jy7rkosbAp3UA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Andrew Davis <afd@ti.com>,
	Nishanth Menon <nm@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	s-vadapalli@ti.com,
	krzysztof.kozlowski@linaro.org,
	rogerq@kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 6.13 01/17] phy: ti: gmii-sel: Do not use syscon helper to build regmap
Date: Mon,  3 Mar 2025 11:29:33 -0500
Message-Id: <20250303162951.3763346-1-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.13.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_082955_669589_19F4F7E2 
X-CRM114-Status: GOOD (  13.94  )
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

From: Andrew Davis <afd@ti.com>

[ Upstream commit 5ab90f40121a9f6a9b368274cd92d0f435dc7cfa ]

The syscon helper device_node_to_regmap() is used to fetch a regmap
registered to a device node. It also currently creates this regmap
if the node did not already have a regmap associated with it. This
should only be used on "syscon" nodes. This driver is not such a
device and instead uses device_node_to_regmap() on its own node as
a hacky way to create a regmap for itself.

This will not work going forward and so we should create our regmap
the normal way by defining our regmap_config, fetching our memory
resource, then using the normal regmap_init_mmio() function.

Signed-off-by: Andrew Davis <afd@ti.com>
Tested-by: Nishanth Menon <nm@ti.com>
Link: https://lore.kernel.org/r/20250123182234.597665-1-afd@ti.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/ti/phy-gmii-sel.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index e0ca59ae31531..ff5d5e29629fa 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -424,6 +424,12 @@ static int phy_gmii_sel_init_ports(struct phy_gmii_sel_priv *priv)
 	return 0;
 }
 
+static const struct regmap_config phy_gmii_sel_regmap_cfg = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+};
+
 static int phy_gmii_sel_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -468,7 +474,14 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
 
 	priv->regmap = syscon_node_to_regmap(node->parent);
 	if (IS_ERR(priv->regmap)) {
-		priv->regmap = device_node_to_regmap(node);
+		void __iomem *base;
+
+		base = devm_platform_ioremap_resource(pdev, 0);
+		if (IS_ERR(base))
+			return dev_err_probe(dev, PTR_ERR(base),
+					     "failed to get base memory resource\n");
+
+		priv->regmap = regmap_init_mmio(dev, base, &phy_gmii_sel_regmap_cfg);
 		if (IS_ERR(priv->regmap))
 			return dev_err_probe(dev, PTR_ERR(priv->regmap),
 					     "Failed to get syscon\n");
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
