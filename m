Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10C4FE6ADE7
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 20:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53At6FkoPfSH67SdA99GJCVSnKHjR8qr89gqLt4+q2c=; b=sD1NGUd/xjpHnP
	QX+6rvNV9e3SEjCkLtrsh9Fh19b99xYhOl4hycUBCrNRGoakq/5rGYV0qE7B0RWga+SsY17Edqgpi
	rW+kyQLRJQ0hQrtwGeHe4UE265Ujuir1XzBWbYIY6+5XCTe46SopbIfPtp+gUMI1fIDJBs5e8dq7L
	0wvTcKsNMVLhll+JmR9qUK/S6XA+pDGx1//ZSR4W0qjBqB3ZyQeeIQR4q1YVw62UIQkDkFulcSiLv
	Ft8Y7w5KYUo3c48IgtLFHcTaSDNsuXJpSPppMc6lY10JPR/aCdo0X0tSmXt16gBVIAU614k2W1ZdS
	gv/6qdPYNtF81QEFnqUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXmeo-0000000E91h-2B2A;
	Mon, 22 Dec 2025 20:37:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXmen-0000000E91S-46l5
	for linux-phy@lists.infradead.org;
	Mon, 22 Dec 2025 20:37:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EFD576014C;
	Mon, 22 Dec 2025 20:37:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D0D2C4CEF1;
	Mon, 22 Dec 2025 20:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766435848;
	bh=BalUs0JaXGi9OEmgkh/o3sCoR/ci4kiU4w+LxMxmaAg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tDK1d+RmL8Ni+b6WPepahaEUjZSB/6ml5cMNbGjTiBbyH8ObLOC5d045kwGj/7fUC
	 70kB8IGIJ1+9R5e6v4U/A9JUdHi7Ohf77QfqjFrUmHCwtGpo1drxX6yKt8YzczHhUV
	 kG6bxFPosM9kY/d/3XwWKK8XnDFqep7wIMxiroHAz90hJJpYJGO4ykb0H1XTvnEZOj
	 jyC81TBJhOyhnSVbNjir/8dhy0ABmzU8gm5mGcqW+6bxwO6b7VS0MqiDBWJZBL56N7
	 dRrgKXOdod1uMxBGZ5iji/wk7JrpIZ3r/IbpFnfTgYK3vgtYVqlBi7/rwSNhvQ9QZs
	 Zv84rZAqDQtow==
From: "Rafael J. Wysocki" <rafael@kernel.org>
To: Linux PM <linux-pm@vger.kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Brian Norris <briannorris@chromium.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-phy@lists.infradead.org
Subject: [PATCH v1 15/23] phy: core: Discard pm_runtime_put() return values
Date: Mon, 22 Dec 2025 21:22:48 +0100
Message-ID: <2556645.jE0xQCEvom@rafael.j.wysocki>
Organization: Linux Kernel Development
In-Reply-To: <6245770.lOV4Wx5bFT@rafael.j.wysocki>
References: <6245770.lOV4Wx5bFT@rafael.j.wysocki>
MIME-Version: 1.0
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

From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

The PHY core defines phy_pm_runtime_put() to return an int, but that
return value is never used.  It also passes the return value of
pm_runtime_put() to the caller which is not very useful.

Returning an error code from pm_runtime_put() merely means that it has
not queued up a work item to check whether or not the device can be
suspended and there are many perfectly valid situations in which that
can happen, like after writing "on" to the devices' runtime PM "control"
attribute in sysfs for one example.

Modify phy_pm_runtime_put() to discard the pm_runtime_put() return
value and change its return type to void.  Also drop the redundant
pm_runtime_enabled() call from there.

No intentional functional impact.

This will facilitate a planned change of the pm_runtime_put() return
type to void in the future.

Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---

This patch is part of a series, but it doesn't depend on anything else
in that series.  The last patch in the series depends on it.

It can be applied by itself and if you decide to do so, please let me
know.

Otherwise, an ACK or equivalent will be appreciated, but also the lack
of specific criticism will be eventually regarded as consent.

---
 drivers/phy/phy-core.c  |    9 +++------
 include/linux/phy/phy.h |    7 ++-----
 2 files changed, 5 insertions(+), 11 deletions(-)

--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -190,15 +190,12 @@ int phy_pm_runtime_get_sync(struct phy *
 }
 EXPORT_SYMBOL_GPL(phy_pm_runtime_get_sync);
 
-int phy_pm_runtime_put(struct phy *phy)
+void phy_pm_runtime_put(struct phy *phy)
 {
 	if (!phy)
-		return 0;
+		return;
 
-	if (!pm_runtime_enabled(&phy->dev))
-		return -ENOTSUPP;
-
-	return pm_runtime_put(&phy->dev);
+	pm_runtime_put(&phy->dev);
 }
 EXPORT_SYMBOL_GPL(phy_pm_runtime_put);
 
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -232,7 +232,7 @@ static inline void *phy_get_drvdata(stru
 #if IS_ENABLED(CONFIG_GENERIC_PHY)
 int phy_pm_runtime_get(struct phy *phy);
 int phy_pm_runtime_get_sync(struct phy *phy);
-int phy_pm_runtime_put(struct phy *phy);
+void phy_pm_runtime_put(struct phy *phy);
 int phy_pm_runtime_put_sync(struct phy *phy);
 int phy_init(struct phy *phy);
 int phy_exit(struct phy *phy);
@@ -312,11 +312,8 @@ static inline int phy_pm_runtime_get_syn
 	return -ENOSYS;
 }
 
-static inline int phy_pm_runtime_put(struct phy *phy)
+static inline void phy_pm_runtime_put(struct phy *phy)
 {
-	if (!phy)
-		return 0;
-	return -ENOSYS;
 }
 
 static inline int phy_pm_runtime_put_sync(struct phy *phy)




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
