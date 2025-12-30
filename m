Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53DB9EE0203
	for <linux-phy@archiver.kernel.org>; Tue, 30 Dec 2025 15:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JJ8UoGRcA1hvhCAFk3wYqZ/kjYFZbgLXlE9M+OPtPtU=; b=giC6APkx7QFB2G
	Ob4YX19F3mwTWEIAvxG2x/oPp8jJlG6ycrwlXhFjPU3z5pLZldSKCjahu9JL3Jvsn8RTW90RSdelo
	pwswGzyN+WFYrjq7Gr/NSiMAltb82Rgzo43SBzwJpY+H46DA3URc3sFp70HgYTb1gHK+gd39i8hGK
	z8a2kyi2dYPD+E2WETDoG7aJZvfe6Dvi3CY9Tks43cmaRl5zfFo5OWfa/9H4yWj2aXrMjkQpO3bgj
	jyl7wdjrUaKdlyRYtXOFjjfQwFKzBxGztHQbyhnkqJysMPZ1Ye7EgmLS8CvGQcXjd7/I1hvQUNcjh
	ADv7GxrfTJTIH8dXbDgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vabGm-00000004yOh-2NVD;
	Tue, 30 Dec 2025 15:04:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vabGg-00000004yNx-47To
	for linux-phy@lists.infradead.org;
	Tue, 30 Dec 2025 15:04:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C44D544491;
	Tue, 30 Dec 2025 15:04:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37FD7C2BC86;
	Tue, 30 Dec 2025 15:04:11 +0000 (UTC)
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>
Cc: linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] phy: core: Reinstate pm_runtime_enabled() check in phy_pm_runtime_put()
Date: Tue, 30 Dec 2025 16:04:05 +0100
Message-ID: <3ca9f8166d21685bfbf97535da30172f74822130.1767107014.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_070415_042189_5F397F3E 
X-CRM114-Status: UNSURE (   7.54  )
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

On Koelsch (R-Car M2-W), during boot and s2ram:

    phy phy-e6590100.usb-phy-controller.0: Runtime PM usage count underflow!

While phy_pm_runtime_get{,_sync}() and phy_pm_runtime_put_sync() still
contain pm_runtime_enabled() checks, the same check in
phy_pm_runtime_put() was deemed redundant and removed, causing count
underflows with PHY drivers like drivers/phy/renesas/phy-rcar-gen2.c
that do not use Runtime PM yet,

Fix this by reinstating the check.

Fixes: caad07ae07e3fb17 ("phy: core: Discard pm_runtime_put() return values")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/phy/phy-core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 160ecb757d1d62a0..e2a2a99d069789c7 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -195,6 +195,9 @@ void phy_pm_runtime_put(struct phy *phy)
 	if (!phy)
 		return;
 
+	if (!pm_runtime_enabled(&phy->dev))
+		return;
+
 	pm_runtime_put(&phy->dev);
 }
 EXPORT_SYMBOL_GPL(phy_pm_runtime_put);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
