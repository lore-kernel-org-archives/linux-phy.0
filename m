Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7899CC433F5
	for <linux-phy@archiver.kernel.org>; Sun,  3 Apr 2022 13:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tOhvYmSUn7hVVe4UrRQ+LJa2orD0t7FhryhMgsXjX1Q=; b=4jwyiHIljdOsNt
	8y+fMQ+NPdP5SFmdXoZmsUUly2xiGvxOcImq9I6F1SuPvuHU3J/5K7x0pK1Q4T2I59UBimjrSKcZe
	AJTfMzaV8Oc3oUu2LkW5ndNLP8fH7JKY/DwR4/a/f2wvze0g1FR0xyFluGnp+711eJnswlxb42Y/A
	oOmZntDwNJZ+wXZddbYeEzFk9RHJByWzZXE4GPJBYqa/wUVioCYiEE2AOhP0DUNCacdozItMYmJ7e
	1lkwbJ3yvH//fwn68pYOVtiQeDWoszpkiUpQToQgD+JJMIn7xEGtfDvsHiGFRAPy7HOX1824hkQGu
	5RKVsDX/IJxIhwEOgPpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nazw2-00BPUx-Kw; Sun, 03 Apr 2022 13:06:26 +0000
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nazvy-00BPUf-AE
 for linux-phy@lists.infradead.org; Sun, 03 Apr 2022 13:06:24 +0000
Received: from pop-os.home ([90.126.236.122]) by smtp.orange.fr with ESMTPA
 id azvonDip2OAnaazvon4plZ; Sun, 03 Apr 2022 15:06:18 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Sun, 03 Apr 2022 15:06:18 +0200
X-ME-IP: 90.126.236.122
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Stephan Gerhold <stephan@gerhold.net>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 linux-phy@lists.infradead.org
Subject: [PATCH] phy: ti: tusb1210: Fix an error handling path in
 tusb1210_probe()
Date: Sun,  3 Apr 2022 15:06:08 +0200
Message-Id: <07c4926c42243cedb3b6067a241bb486fdda01b5.1648991162.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220403_060622_532098_5E0AF9FF 
X-CRM114-Status: UNSURE (   9.31  )
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

tusb1210_probe_charger_detect() must be undone by a corresponding
tusb1210_remove_charger_detect() in the error handling path, as already
done in the remove function.

Fixes: 48969a5623ed ("phy: ti: tusb1210: Add charger detection")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/phy/ti/phy-tusb1210.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
index a0cdbcadf09e..008d80977fc5 100644
--- a/drivers/phy/ti/phy-tusb1210.c
+++ b/drivers/phy/ti/phy-tusb1210.c
@@ -537,12 +537,18 @@ static int tusb1210_probe(struct ulpi *ulpi)
 	tusb1210_probe_charger_detect(tusb);
 
 	tusb->phy = ulpi_phy_create(ulpi, &phy_ops);
-	if (IS_ERR(tusb->phy))
-		return PTR_ERR(tusb->phy);
+	if (IS_ERR(tusb->phy)) {
+		ret = PTR_ERR(tusb->phy);
+		goto err_remove_charger;
+	}
 
 	phy_set_drvdata(tusb->phy, tusb);
 	ulpi_set_drvdata(ulpi, tusb);
 	return 0;
+
+err_remove_charger:
+	tusb1210_remove_charger_detect(tusb);
+	return ret;
 }
 
 static void tusb1210_remove(struct ulpi *ulpi)
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
