Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A5AAC433FE
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZR2ORm3kK1xBZf2f6J3lG8rvGwvzCIEg6hxxFmqNl4=; b=NuiT91vyLrtGrd
	Cy/yfcpehThdFQ0LWUEXbp10b9TG4jp+law5+7V3GQ2D8IzCurKlkw0kmNGfpGc0NV5vsB0GyqVfn
	LAdp7bistfdCXXqZmWr6VxH0HIQACvB5uMehBOJV5BlGIv0svD8huOnO3gGgnI4/3Bw6cN6S3iX5i
	+dXpya3vVQewqjNip18BMH0D158ch1xSUSXnHotM0/DU/64GG+lCFPD7sQ2M4/xSTLfen0EG6JXBw
	+A+DUIlCcbTTc3XR1tYajgqPMDc5Rvd3OEbUeytIENAWhNZb7QY31X4QuOzyuKFHH6wrsv53+0prO
	3TW6Qq7LUKsFxSSh4Ukw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncPGY-00BCDY-Br; Thu, 07 Apr 2022 10:21:26 +0000
Received: from mxout.security-mail.net ([85.31.212.42]
 helo=fx302.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncPGU-00BC98-S0
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 10:21:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id B37CC3D3B0EC
 for <linux-phy@lists.infradead.org>; Thu,  7 Apr 2022 12:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1649326877;
 bh=qeM5UihRfAhfzoiHR44SgCP5YCYY5Yg5beDIiKFiYjw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LtyALYjAXI/mUdztS+25BH4MmjY5W/DP94PzFoImKkkIF59sbofl8HhhE2nwEJaDe
 qP4UCO08rOjDuzNF3lTJ9wOY9+qOQUTfIQfievpFpXWTrlxZZ627SSSOfu56PqkFg0
 MKtWEaRDj34L2eoaWcnjvH4uAS+hhQNO19RqqmXg=
Received: from fx302 (localhost [127.0.0.1])
 by fx302.security-mail.net (Postfix) with ESMTP id C93023D3B0DE;
 Thu,  7 Apr 2022 12:21:16 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <180ad.624ebb1c.47d3a.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx302.security-mail.net (Postfix) with ESMTPS id 483AF3D3B0DC;
 Thu,  7 Apr 2022 12:21:16 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 2C76E27E044F;
 Thu,  7 Apr 2022 12:21:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 166DD27E044D;
 Thu,  7 Apr 2022 12:21:16 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 166DD27E044D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1649326876;
 bh=pJLQoI+CUXSinQ8V+o6Uj41mhRgAL58tDZolAf6mrKg=;
 h=From:To:Date:Message-Id;
 b=dfbp2qAuqyS0GKJyBZfP1lSX0m7X0mTNlZ+QI6JQXPy8oCARSj40bGNPnFcSYPZbm
 QZYQr5WHbJIoqdN8SVUBHsDG3nPrxBKZEPzQiDbkb/IiDJzSE8pHkW0ZsyV1YHzW+G
 Y99eAYZNvbUyWzhke45/2kARChcW1R5SHq6IY8s0=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id SJnR7KfZKuqP; Thu,  7 Apr 2022 12:21:16 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id EF3B127E0443;
 Thu,  7 Apr 2022 12:21:15 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: linux-phy@lists.infradead.org
Cc: linux-usb@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Amelie DELAUNAY <amelie.delaunay@foss.st.com>,
 Yann Sionneau <ysionneau@kalray.eu>,
 Michael Grzeschik <mgr@pengutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>, Arnd Bergmann <arnd@arndb.de>,
 Jules Maselbas <jmaselbas@kalray.eu>
Subject: [PATCH RESEND v3 2/3] phy: core: Update documentation syntax
Date: Thu,  7 Apr 2022 12:21:07 +0200
Message-Id: <20220407102108.24211-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220407102108.24211-1-jmaselbas@kalray.eu>
References: <20220407102108.24211-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_032123_206892_FDF4CEF0 
X-CRM114-Status: UNSURE (   8.40  )
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
