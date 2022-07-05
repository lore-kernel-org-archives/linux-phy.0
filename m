Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0741C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 02:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SYXbF+EdaBiUHi34syLhsSN5O8u51XZahiHq5g6xAZ0=; b=ssIb+FSt8McDN5
	kaX2E+4s2S+RQGR35b6EmuSjsOtITBWnVvezXpNZYvMc9nbm/YVPu9Dh/lSEfZRqYMdnPuzFw94s9
	2fhFga/XlDibTlxdtZHCrUpjSL+aipQAAjFVb1etg6ZQGzCFYywby5V9i3SYo0/1S2qDwFdwE15FB
	gc2J8oGcBh/L1vhDkU2UMiUkC6Ltq6JB25ekQ01hZT+oiF7M/bxX/s3Hvksh9lHKzcckZyJDywytb
	+MWwE+p3gJe7rIpyuEC3UU9LwglSFsSUu0CgZ0jy8D2/zek4zSVrTK2OhwgVEtrnNUAeYyCY/LXlv
	Z6VUIThY9xa0F/J68GzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Y6M-00E0mB-Vv; Tue, 05 Jul 2022 02:15:47 +0000
Received: from m15114.mail.126.com ([220.181.15.114])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Y6J-00E0iy-G3
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 02:15:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=ITG71
	9t7fdsnvip94dOqCPhaXNJz/mP1rotHoUqWoe8=; b=P9lGvsKvaG367VN1BM4Vd
	l28MrbStY4r1Riv0Rf226LxtlgOyQ8tDZ36vNqSOHB2PQuY4eHVxTnx1XYo61Owy
	1q7tfZM4d0t2bZdSC/kDSNJYTEVhI5kpNDqSg9pm22mXEZf+v9qCAlX+lhQQ5y7R
	nrDOc9rP/XgvQs4R3d6ZQA=
Received: from localhost.localdomain (unknown [124.16.139.61])
	by smtp7 (Coremail) with SMTP id DsmowADX1P2+nsNiphC+EQ--.28601S2;
	Tue, 05 Jul 2022 10:15:27 +0800 (CST)
From: Liang He <windhl@126.com>
To: kishon@ti.com,
	narmstrong@baylibre.com,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	windhl@126.com,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: amlogic: phy-meson-axg-mipi-pcie-analog: Hold reference returned by of_get_parent()
Date: Tue,  5 Jul 2022 10:15:26 +0800
Message-Id: <20220705021526.281441-1-windhl@126.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: DsmowADX1P2+nsNiphC+EQ--.28601S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7AryDWF4rGFWkJF13urW5trb_yoW8Xryxpa
	yxGF1ayrWUtr1rur1Fv3Z8AFWYq3ZxXayUua4kG3WrWFn3tF17X3WjkF1avwn5XrZ5Aa1f
	J34DtFyUJ3WkW3JanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0ziY9aPUUUUU=
X-Originating-IP: [124.16.139.61]
X-CM-SenderInfo: hzlqvxbo6rjloofrz/1tbiuAA1F2JVkNHDaQAAsG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_191543_971949_2D6EE623 
X-CRM114-Status: UNSURE (   8.25  )
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

We should hold the reference returned by of_get_parent() and use it
to call of_node_put() for reference balance.

Fixes: 8eff8b4e22d9 ("phy: amlogic: phy-meson-axg-mipi-pcie-analog: add support for MIPI DSI analog")
Signed-off-by: Liang He <windhl@126.com>
---
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
