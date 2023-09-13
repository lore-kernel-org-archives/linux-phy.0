Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24B3DEEB597
	for <linux-phy@archiver.kernel.org>; Wed, 13 Sep 2023 06:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3V4zoGpeogRrv4X8M+QRSo3bnOhX1ze04QH5I/STifE=; b=l3RRLZ2ItB23Jv
	NFk8EtY3LukBVv2fdBTKV7n/rVNuXoSpMwfqGG3ac3oN0RoqLN+xoYQY0AOBJDzpCCgkJeWbl9Qg/
	ZH57Ory8EW60E6EJOoODqbCQ+up8gg6JXYOCJoUJollaoXqtaBoH29nLYX7EP/5D5aF8S1LSrKCIU
	K6j6Dr9gvkzPoT1Pfv8JTcZvtJRokJNkQdMyB++i4i+h7BDp7updaYjEArppLq46fIrOdIttSTiqE
	oal1aluvoCJcAM9L9JO9epufbG3Z3BQXOE7c2xTiAAh02fxYP8LPvvY3kUobqtCFOegptS9YAex1d
	AHZhfBkt5tEVo2lU2+5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgIzg-004kBA-2o;
	Wed, 13 Sep 2023 06:04:56 +0000
Received: from muru.com ([72.249.23.125])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgIze-004kAE-1q
	for linux-phy@lists.infradead.org;
	Wed, 13 Sep 2023 06:04:55 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTP id 7D3A38106;
	Wed, 13 Sep 2023 06:04:52 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
	Merlijn Wajer <merlijn@wizzup.org>,
	Miaoqian Lin <linmq006@gmail.com>,
	Pavel Machek <pavel@ucw.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-phy@lists.infradead.org,
	Sebastian Reichel <sre@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH v2 2/3] phy: mapphone-mdm6600: Fix runtime PM for remove
Date: Wed, 13 Sep 2023 09:04:28 +0300
Message-ID: <20230913060433.48373-2-tony@atomide.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230913060433.48373-1-tony@atomide.com>
References: <20230913060433.48373-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_230454_685945_88D60965 
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

Otherwise we will get an underflow on remove.

Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Cc: Merlijn Wajer <merlijn@wizzup.org>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Sebastian Reichel <sre@kernel.org>
Fixes: f7f50b2a7b05 ("phy: mapphone-mdm6600: Add runtime PM support for n_gsm on USB suspend")
Signed-off-by: Tony Lindgren <tony@atomide.com>
---

Changes since v1:

- Using pm_runtime_get_noresume() is enough on remove as suggested by
  Sebastian

---
 drivers/phy/motorola/phy-mapphone-mdm6600.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
--- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
+++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
@@ -641,6 +641,7 @@ static void phy_mdm6600_remove(struct platform_device *pdev)
 	struct phy_mdm6600 *ddata = platform_get_drvdata(pdev);
 	struct gpio_desc *reset_gpio = ddata->ctrl_gpios[PHY_MDM6600_RESET];
 
+	pm_runtime_get_noresume(ddata->dev);
 	pm_runtime_dont_use_autosuspend(ddata->dev);
 	pm_runtime_put_sync(ddata->dev);
 	pm_runtime_disable(ddata->dev);
-- 
2.42.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
