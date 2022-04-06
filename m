Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEFB3C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Apr 2022 15:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZR2ORm3kK1xBZf2f6J3lG8rvGwvzCIEg6hxxFmqNl4=; b=bjJ6lmE6X5Nkho
	7+5R7+yEuymM8VXfEZ/M/Fd5EyUU0s6B4J+DhaxrPMmhTriOrgo/YJRD5gqoo9Zl3SUy69KtHajnZ
	nv9XtwVoVAQBwN9rNG7LbiF2aQm8XxvMWYn0KZZTJoa4Fivj/0DZCY4N7cLnWH4Vc2oI2b8UqmmUn
	CqJqTYUbWyrwV1BfzWyJrWI9OEE+fPVSeAiNPJYmPmnObaPmBBN5ilyuwfgNfse4kFeHrNeMDmXLt
	BOLcY77X9FiJ/sb/vYZ/k51YgURx8zTjdqb8O+8UCLUsWUKyL9doGSpVe3VZSXoXbhe7MyWPti4WK
	uuO+NAZfaDwzTkpzEZxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc7vf-006yIQ-Qg; Wed, 06 Apr 2022 15:50:43 +0000
Received: from smtpout30.security-mail.net ([85.31.212.36]
 helo=fx301.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc7va-006yE3-FB
 for linux-phy@lists.infradead.org; Wed, 06 Apr 2022 15:50:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id 02CB324BD0FC
 for <linux-phy@lists.infradead.org>; Wed,  6 Apr 2022 17:50:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1649260237;
 bh=qeM5UihRfAhfzoiHR44SgCP5YCYY5Yg5beDIiKFiYjw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=O52SXW0xQgj706i6c9TbifXKQn00BK9hdd2hbmlxsHPSxHT4Fc7TP1BaDWEwEGmOS
 t/1+jFFslvOV7fk39RWH2sLRKGr+uGYOpNCE5KCMaRN6Pj7TnCWo+E8xYIRc5bFgXv
 X3J0RWZnzexceZQIEdw+mB8rl/bf45SUyBpYpotc=
Received: from fx301 (localhost [127.0.0.1])
 by fx301.security-mail.net (Postfix) with ESMTP id 4F9A224BD0B5;
 Wed,  6 Apr 2022 17:50:33 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <18500.624db6c8.b7f29.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx301.security-mail.net (Postfix) with ESMTPS id B85BB24BD04F;
 Wed,  6 Apr 2022 17:50:32 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 9BE6927E0445;
 Wed,  6 Apr 2022 17:50:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 8611A27E0444;
 Wed,  6 Apr 2022 17:50:32 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 8611A27E0444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1649260232;
 bh=pJLQoI+CUXSinQ8V+o6Uj41mhRgAL58tDZolAf6mrKg=;
 h=From:To:Date:Message-Id;
 b=P2geK0espxv5h/s2WZScYDwwoOdYyolOrdrMl0zLlqAPi2hrjg1+5VnZKtk023nT8
 aP2eU7KEbm3fFYfW6vxxv2KMpH4pyKrr199Z3J260XzcHWwtd0Xd2FPF/fKHyIrSBs
 98tWx3f5lqbYbqL1ogbKNpe1i+W393095iWD2dDk=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id QUywgHUhWuKK; Wed,  6 Apr 2022 17:50:32 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 6979F27E0443;
 Wed,  6 Apr 2022 17:50:32 +0200 (CEST)
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
Subject: [PATCH v3 2/3] phy: core: Update documentation syntax
Date: Wed,  6 Apr 2022 17:50:18 +0200
Message-Id: <20220406155019.22953-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220406155019.22953-1-jmaselbas@kalray.eu>
References: <20220406155019.22953-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_085038_869021_6901352F 
X-CRM114-Status: UNSURE (   8.73  )
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

Update the syntax used by the documentation of phy operation functions.
This is to unify the syntax with the newly added documentation.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
v2: new patch
v3: no change

 drivers/phy/phy-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index d1817a0f2d09..d11b517e283a 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -467,7 +467,7 @@ EXPORT_SYMBOL_GPL(phy_reset);
  * runtime, which are otherwise lost after host controller reset and cannot
  * be applied in phy_init() or phy_power_on().
  *
- * Returns: 0 if successful, an negative error code otherwise
+ * Return: %0 if successful, a negative error code otherwise
  */
 int phy_calibrate(struct phy *phy)
 {
@@ -493,7 +493,7 @@ EXPORT_SYMBOL_GPL(phy_calibrate);
  * on the phy. The configuration will be applied on the current phy
  * mode, that can be changed using phy_set_mode().
  *
- * Returns: 0 if successful, an negative error code otherwise
+ * Return: %0 if successful, a negative error code otherwise
  */
 int phy_configure(struct phy *phy, union phy_configure_opts *opts)
 {
@@ -527,7 +527,7 @@ EXPORT_SYMBOL_GPL(phy_configure);
  * PHY, so calling it as many times as deemed fit will have no side
  * effect.
  *
- * Returns: 0 if successful, an negative error code otherwise
+ * Return: %0 if successful, a negative error code otherwise
  */
 int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
 		 union phy_configure_opts *opts)
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
