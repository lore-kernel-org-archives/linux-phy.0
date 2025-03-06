Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8973C19F32
	for <linux-phy@archiver.kernel.org>; Thu,  6 Mar 2025 01:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0QSjR+DCJzXBBazuTWmaLyBKFHX42v8sLKMlvD3nHMI=; b=MdBWZCONURDQaI
	IZ1y+p8DsT4K2Omf4TDDlX9EV1k0h3tS8QxUYEqVncNK02WiUPRujkLeNg8sD5QQo2l0RsZqx0sUk
	tIypC5dWV52ITuUnAKPwZP9emfSoLyghW9gY2Amk2j5c8DLEEbKt5ZxDY7NABXCbdb/ZT5v8qeoKE
	b/IIzvdGoppu0s9Wuku4umVQHL33FMCbTdn0uwHJUhqFKt4+bpMn6XDXE7GWTXgDJb11rdNgaICwH
	ncemQcYWwg8zjeXZHBbtqM2dqnyckmNvjhG6EUy2XqQisU6Lak3IRQaI2Rvf8b2y0Z3EUPfv84A+a
	0RrWGnGDUnyiX9c7W1ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq0RF-00000009ofj-0MGb;
	Thu, 06 Mar 2025 01:54:17 +0000
Received: from mx.treblig.org ([2a00:1098:5b::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq0RC-00000009of8-182A
	for linux-phy@lists.infradead.org;
	Thu, 06 Mar 2025 01:54:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
	:Subject; bh=zUxmmMbgf1RNRHXcyd++iuassFmugcTEcG95pQk+WSA=; b=cGjuCDsYXzKjmAhq
	B96877Nl4wqf/6a8vCfJFvBq/syZjJA4UZvny5ycWw1d1xe5erw5uo0cP2mDr9VxwtvzjMRoWmWry
	ci8qpagKCs1aRr8D5w+bl3kv1QxfFiKwl8P+1rdqGbN7bNFu74gDyDK4GxVIV5YITsjOthvjdIh3G
	+rwTMGeZIMPiQepRfjLA5vrFfrc9SX9Xk7v70UdS9wHTdvuGkSfcbTZyVzjEcxiM8GKmzEm6TFpTP
	kJVCmi/1dOsZQUWoyxdt9USsIJTlWmy5k/Lzcee4eBYGpm6UC3gGOPHDRkizlfNwPqG1CRi0uMnHL
	G9ubgnnHABbx8AiV7g==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
	by mx.treblig.org with esmtp (Exim 4.96)
	(envelope-from <linux@treblig.org>)
	id 1tq0R6-0030Fm-2b;
	Thu, 06 Mar 2025 01:54:08 +0000
From: linux@treblig.org
To: vkoul@kernel.org,
	kishon@kernel.org,
	corbet@lwn.net
Cc: linux-phy@lists.infradead.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	"Dr. David Alan Gilbert" <linux@treblig.org>
Subject: [PATCH] phy: core: Remove unused phy_pm_runtime_(allow|forbid)
Date: Thu,  6 Mar 2025 01:54:08 +0000
Message-ID: <20250306015408.277729-1-linux@treblig.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_175414_352527_D2F06B89 
X-CRM114-Status: UNSURE (   8.27  )
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

phy_pm_runtime_allow() and phy_pm_runtime_forbid() were added in 2013
as part of
commit ff764963479a ("drivers: phy: add generic PHY framework")
but have remained unused.

Remove them.
Fix up the (English) docs - I've left the Chinese translation.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 Documentation/driver-api/phy/phy.rst |  3 +--
 drivers/phy/phy-core.c               | 24 ------------------------
 include/linux/phy/phy.h              | 12 ------------
 3 files changed, 1 insertion(+), 38 deletions(-)

diff --git a/Documentation/driver-api/phy/phy.rst b/Documentation/driver-api/phy/phy.rst
index 81785c084f3e..719a2b3fd2ab 100644
--- a/Documentation/driver-api/phy/phy.rst
+++ b/Documentation/driver-api/phy/phy.rst
@@ -198,8 +198,7 @@ pm_runtime_get_sync of PHY provider device because of parent-child relationship.
 It should also be noted that phy_power_on and phy_power_off performs
 phy_pm_runtime_get_sync and phy_pm_runtime_put respectively.
 There are exported APIs like phy_pm_runtime_get, phy_pm_runtime_get_sync,
-phy_pm_runtime_put, phy_pm_runtime_put_sync, phy_pm_runtime_allow and
-phy_pm_runtime_forbid for performing PM operations.
+phy_pm_runtime_put and phy_pm_runtime_put_sync for performing PM operations.
 
 PHY Mappings
 ============
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 8dfdce605a90..8c2c13978299 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -214,30 +214,6 @@ int phy_pm_runtime_put_sync(struct phy *phy)
 }
 EXPORT_SYMBOL_GPL(phy_pm_runtime_put_sync);
 
-void phy_pm_runtime_allow(struct phy *phy)
-{
-	if (!phy)
-		return;
-
-	if (!pm_runtime_enabled(&phy->dev))
-		return;
-
-	pm_runtime_allow(&phy->dev);
-}
-EXPORT_SYMBOL_GPL(phy_pm_runtime_allow);
-
-void phy_pm_runtime_forbid(struct phy *phy)
-{
-	if (!phy)
-		return;
-
-	if (!pm_runtime_enabled(&phy->dev))
-		return;
-
-	pm_runtime_forbid(&phy->dev);
-}
-EXPORT_SYMBOL_GPL(phy_pm_runtime_forbid);
-
 /**
  * phy_init - phy internal initialization before phy operation
  * @phy: the phy returned by phy_get()
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 03cd5bae92d3..e63e6e70e860 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -227,8 +227,6 @@ int phy_pm_runtime_get(struct phy *phy);
 int phy_pm_runtime_get_sync(struct phy *phy);
 int phy_pm_runtime_put(struct phy *phy);
 int phy_pm_runtime_put_sync(struct phy *phy);
-void phy_pm_runtime_allow(struct phy *phy);
-void phy_pm_runtime_forbid(struct phy *phy);
 int phy_init(struct phy *phy);
 int phy_exit(struct phy *phy);
 int phy_power_on(struct phy *phy);
@@ -321,16 +319,6 @@ static inline int phy_pm_runtime_put_sync(struct phy *phy)
 	return -ENOSYS;
 }
 
-static inline void phy_pm_runtime_allow(struct phy *phy)
-{
-	return;
-}
-
-static inline void phy_pm_runtime_forbid(struct phy *phy)
-{
-	return;
-}
-
 static inline int phy_init(struct phy *phy)
 {
 	if (!phy)
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
