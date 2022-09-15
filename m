Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AF6DECAAD3
	for <linux-phy@archiver.kernel.org>; Thu, 15 Sep 2022 09:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FEsQ0UPO9YxHo5lC+JfQkWVZ3Zm3jSs0YaJuKp3jnDs=; b=QCXupVSs8nla4O
	uQf5Vdz5wPtz1cCt7P4SgB3/yCGU2qZWNG9L1qIplpDHRvkyjjjCO4ah7cX6G1vuzjG8UwAbXOjYh
	4FOKmKOT1Qe9P693YpEPdOz55W5Rr8I++3Jn5zq9uOebUeBzD4Xn2ZD48asHRI/ArXFbF1g16ZNng
	wiZQnbk6rkvALqTzkLesHrCVkEc7vbN0hvV1S8vCyIWB4uO/6XKEGe9gGggCUWy1V/3vAR6m5DRi5
	49rcnsVWSP2sF+GLFK3oPARKA1xdnVJ/ZnzXMVKuFjWPEtWBIbNpx8M3wejc2y9884KKVAHqWD1x7
	W5zaKjIzR6V3Bp84z0oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYlHM-005S4r-Bg; Thu, 15 Sep 2022 09:35:28 +0000
Received: from m15113.mail.126.com ([220.181.15.113])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYlHJ-005Rst-Fk
	for linux-phy@lists.infradead.org; Thu, 15 Sep 2022 09:35:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=o/fz+
	eSCS2YN7Ene9kLTTy8KVUf2hF1iQkc77Gy4OAw=; b=U2C7uTG305sX8p3TuaoSH
	DZ1yPXlYqdJOIcUWezOuLhPPvqcwVOAr2m9IhHiq2utMkJU7DVXvwientpy7KK3y
	xuELFgVCSo6yh31LO7ivqy9vobijJY/JDFWe1RBwrcSKA14HOwMkZKkKrWvIZ5+6
	iwrXW0Ul2BjMFOuC31GfY0=
Received: from localhost.localdomain (unknown [124.16.139.61])
	by smtp3 (Coremail) with SMTP id DcmowAA3P6vK8SJjZqhgBg--.48139S2;
	Thu, 15 Sep 2022 17:35:07 +0800 (CST)
From: Liang He <windhl@126.com>
To: kishon@ti.com,
	vkoul@kernel.org,
	narmstrong@baylibre.com,
	khilman@baylibre.com,
	linux-phy@lists.infradead.org
Cc: windhl@126.com
Subject: [PATCH v2] phy: amlogic: phy-meson-axg-mipi-pcie-analog: Hold reference returned by of_get_parent()
Date: Thu, 15 Sep 2022 17:35:06 +0800
Message-Id: <20220915093506.4009456-1-windhl@126.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: DcmowAA3P6vK8SJjZqhgBg--.48139S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tFWDJFyrZFyDZFy3Kr4rXwb_yoW8WrWUpa
	1xGF42yrWDtr4rur1rZ3Z8AFWFq3ZIq3yj93ykG3WrWFn3tF17X3WYkF1aywn5XrZ5Aayf
	X34DtF1UJ3WDW3JanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UYeHkUUUUU=
X-Originating-IP: [124.16.139.61]
X-CM-SenderInfo: hzlqvxbo6rjloofrz/1tbizgt9F18RP1S4bgAAsc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_023525_861285_12ADC54E 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
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

As the of_get_parent() will increase the refcount of the node->parent
and the reference will be discarded, so we should hold the reference
with which we can decrease the refcount when done.


Fixes: 8eff8b4e22d9 ("phy: amlogic: phy-meson-axg-mipi-pcie-analog: add support for MIPI DSI analog")
Signed-off-by: Liang He <windhl@126.com>

---
 
 v2: explain details of the patch and use Fixes: tag

 drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c b/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c
index 1027ece6ca12..a3e1108b736d 100644
--- a/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c
+++ b/drivers/phy/amlogic/phy-meson-axg-mipi-pcie-analog.c
@@ -197,7 +197,7 @@ static int phy_axg_mipi_pcie_analog_probe(struct platform_device *pdev)
 	struct phy_provider *phy;
 	struct device *dev = &pdev->dev;
 	struct phy_axg_mipi_pcie_analog_priv *priv;
-	struct device_node *np = dev->of_node;
+	struct device_node *np = dev->of_node, *parent_np;
 	struct regmap *map;
 	int ret;
 
@@ -206,7 +206,9 @@ static int phy_axg_mipi_pcie_analog_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	/* Get the hhi system controller node */
-	map = syscon_node_to_regmap(of_get_parent(dev->of_node));
+	parent_np = of_get_parent(dev->of_node);
+	map = syscon_node_to_regmap(parent_np);
+	of_node_put(parent_np);
 	if (IS_ERR(map)) {
 		dev_err(dev,
 			"failed to get HHI regmap\n");
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
