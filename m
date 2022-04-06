Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D00EBC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Apr 2022 15:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCRkm4+FIZHV1hBETjBWbGNeL4mT22mBeFuwoP4zkKg=; b=ZC098j3INKLFLv
	2VKbIx4l4VyoGV43rF0A/tZ+UPrPJuRmU6xi9BiQyiROtBi/jEH7RltSOJnFYyYzmW1q0MySs+yRy
	2HTyzZFgYjJzKz6Qd4CLQ9YT6y2rhuh5M0k6xGZ+YojjSZvyHVYERHY0KNp6WEBLS/VqQckKYrXSW
	/8U+u0vMSTEBF2NKMPDF14LiuS8cIZSeSDPDJM+QcslfregrVmwVNMFtfD4vSkX0cqYXtX2J+3CLY
	/bgwSNg03z3SdbyKXJOXyQyOp03C5pn6yV43Hm9SIdzPeKUablOm7IK0CQ0vtsIuV/Nee4FkXpUJS
	4mptkMDlCA+PZm3QiEaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc7vi-006yJI-8d; Wed, 06 Apr 2022 15:50:46 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc7vb-006yDb-Cf
 for linux-phy@lists.infradead.org; Wed, 06 Apr 2022 15:50:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 610631B7B2CC
 for <linux-phy@lists.infradead.org>; Wed,  6 Apr 2022 17:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1649260235;
 bh=2leB9N9MVO1isCk23h+tI5TUBCZFTqNDEKraPyTS3tI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=qP5/uB200Y7erB0YANDtTKqwXSyynmcLY+72Jsk80kdTUeBl7hN2A63KVm5gAzH8M
 /LQZb9RRuN5D4dXLbs8g6q4JKlYl0rbJDvVa436dzLJjpvr56Ezip+721e/31Pj64a
 N9kMNomSJyq/GDEtnpt9nYjjiI3XTfgL7sSJCvmY=
Received: from fx408 (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 756801B7B329;
 Wed,  6 Apr 2022 17:50:34 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <d215.624db6c9.e8bc2.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx408.security-mail.net (Postfix) with ESMTPS id EAA7B1B7B225;
 Wed,  6 Apr 2022 17:50:33 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id C975027E0443;
 Wed,  6 Apr 2022 17:50:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B25F727E0444;
 Wed,  6 Apr 2022 17:50:33 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu B25F727E0444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1649260233;
 bh=9IM9Pd49M0jFhF7iENBzRLSpXjLX1rGW2MgcQSst3IU=;
 h=From:To:Date:Message-Id;
 b=CgXCXikD5Lwm6XXsOrQQWtk8RRfjeWB5x0/2/V2IvT0NMSqPE9TuRb5LAFjXmOmHH
 m69SJHm8xTPDQyXi1HS6bIIOyJaijF/nfNucVzvP2ZhcMj2yZEQgPNy4uwcZQPPy7c
 49/kuayOw6jscz8y6TyAnKsoaCcbQiZCRoqoYJs8=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id JSSOpKD3yF_B; Wed,  6 Apr 2022 17:50:33 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 965F027E0443;
 Wed,  6 Apr 2022 17:50:33 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: linux-phy@lists.infradead.org
Cc: linux-usb@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Amelie DELAUNAY <amelie.delaunay@foss.st.com>,
 Yann Sionneau <ysionneau@kalray.eu>,
 Michael Grzeschik <mgr@pengutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>, Arnd Bergmann <arnd@arndb.de>,
 Jules Maselbas <jmaselbas@kalray.eu>
Subject: [PATCH v3 3/3] phy: core: Warn when phy_power_on is called before
 phy_init
Date: Wed,  6 Apr 2022 17:50:19 +0200
Message-Id: <20220406155019.22953-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220406155019.22953-1-jmaselbas@kalray.eu>
References: <20220406155019.22953-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_085039_650710_8421BAA0 
X-CRM114-Status: UNSURE (   9.14  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

A warning when the order of phy operation is mixed up by drivers,
this is an atempt to make the phy usage more uniform across (usb)
drivers.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Amelie DELAUNAY <amelie.delaunay@foss.st.com>
Cc: Minas Harutyunyan <hminas@synopsys.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/phy-core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index d11b517e283a..90f589563a60 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -253,6 +253,9 @@ int phy_init(struct phy *phy)
 	ret = 0; /* Override possible ret == -ENOTSUPP */
 
 	mutex_lock(&phy->mutex);
+	if (phy->power_count > phy->init_count)
+		dev_warn(&phy->dev, "phy_power_on was called before phy_init\n");
+
 	if (phy->init_count == 0 && phy->ops->init) {
 		ret = phy->ops->init(phy);
 		if (ret < 0) {
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
