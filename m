Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 953EAC282D2
	for <linux-phy@archiver.kernel.org>; Mon,  3 Mar 2025 16:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hSnlyYe2B3uwgHeZq2E8wHZrgpB2I3LvunFo5iNPEWY=; b=4VA0dcmmg9/Buz
	J1RkwdzuV45eMt9PwlaivLtQNF93cjMTraliW7ejdA4bywdWJgH00xClJvWgJkCrQ701arzpkrHOD
	chHR8iHin6NaCU2p0uLRI2+3uQclwvEUhZtKG/s2asiPyGwH26KwlkNxnWjCcizAZTw1l6aGUSwz/
	AstyGEdxO20eGK8mUu/1yC74kMwoLHK5CwyFb5rAbbWh5bQAd/NKkTVuco4jHbOKRznGn+LPwQTej
	HSS1VDF1sKOgkt6o+B/qZEgf+meTB0MVVk0NpKpRwcuidR5TspbRgXqid5woQ42HpX/fGxF9LF+3O
	km1m8J8KaUzM8LdpiTdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tp8ge-00000001X93-1VHF;
	Mon, 03 Mar 2025 16:30:36 +0000
Received: from tor.source.kernel.org ([2600:3c04::f03c:95ff:fe5e:7468])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tp8gc-00000001X8f-2YF5
	for linux-phy@lists.infradead.org;
	Mon, 03 Mar 2025 16:30:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 213CD61211;
	Mon,  3 Mar 2025 16:30:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F6C0C4CEEA;
	Mon,  3 Mar 2025 16:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741019433;
	bh=wTFypdAzIqZeFYswuOLBZsENvscfswT3WAEBeEYt4+o=;
	h=From:To:Cc:Subject:Date:From;
	b=Pt30NuGaAar/9GspoWMpmv3lkvqiWxv9ZE2ky1dppAhhe+9lBin9atIeAeZPu2Frh
	 zxuTf20LNevc2vccB73Fpk3N1efmwHgtf09gE75/78TaKKzlc9mhUX6mXmGhaJvtbu
	 QNuJ61oMZkLgTrufMRw8vYsDSKgfily5yF+ArIDxSHxQmQAEsCJrQFUynlZfE7ZAK9
	 Tgg8Fk4//aBx7Ya47IrpleXrzr1EAOjn0R0ow7F6c+KP5fwfOSJCdtxaEdIqYSO4yF
	 ZsvhAiQEhWNDdw3LhoKyQBgpp/9msqIU3DM06mQSmliQVK46sjUjqasjf1EWIfET8r
	 8ZSNH1rHmxb3w==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Andrew Davis <afd@ti.com>,
	Nishanth Menon <nm@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	kishon@kernel.org,
	krzysztof.kozlowski@linaro.org,
	rogerq@kernel.org,
	s-vadapalli@ti.com,
	linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 6.12 01/17] phy: ti: gmii-sel: Do not use syscon helper to build regmap
Date: Mon,  3 Mar 2025 11:30:13 -0500
Message-Id: <20250303163031.3763651-1-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.12.17
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
index 103b266fec771..2c2256fe5a3b6 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -423,6 +423,12 @@ static int phy_gmii_sel_init_ports(struct phy_gmii_sel_priv *priv)
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
@@ -467,7 +473,14 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
 
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
