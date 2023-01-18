Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 270B1C32793
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 10:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zd+qAMKJ1AlaqnE66zZQG8RWlaip4hdRpDnmegwZMEQ=; b=VstviIdSKBnxDJ
	cr7qDgyxMOso8lzn5OWsCr1AuIiHr/dWhCnX5/ePj3K+0xjuw4YnS7gXbeABevPfwZYNer9JXimA6
	Ga3VDH2jUKlCkdv0jzHmeVjWQLh25KxZyuE93kkybgwwOX9//mzTwPgNCTgyYk8HwfGtfR228MFJ+
	47Dx+7K7PIzskG0dLGQkWBcJ7BI7WT7PTBNbjcwXDcAgw0RG2KKypHD1GxRHM6ZPmMOGjQy4J7O1z
	9wrgAi3nqe3eeMLmIQAbZOqKy6bYvnQ7TGYWKso1y+K5WVR8zIrmRIn0m0HmKgA+TLDHDax0K05+9
	4fR3U18bhgZScHS6jkFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5IS-000G3H-Uf; Wed, 18 Jan 2023 10:03:56 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5H3-000FDg-90
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 10:02:31 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed50:4745:2e6d:e3a6:3327])
	by laurent.telenet-ops.be with bizsmtp
	id AA2F2900N2zf9gW01A2FTg; Wed, 18 Jan 2023 11:02:19 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5Gj-005aHF-Rw;
	Wed, 18 Jan 2023 11:02:15 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1pI5Gp-001JHm-5C;
	Wed, 18 Jan 2023 11:02:15 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Maxime Ripard <mripard@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] phy: Return NULL if the PHY is optional (part two)
Date: Wed, 18 Jan 2023 11:02:12 +0100
Message-Id: <663dfcec9f703c41759dcd4cd824d00caa2dd5fb.1674036031.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_020229_501843_C2CAD195 
X-CRM114-Status: GOOD (  12.14  )
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

If we're trying to get a handle to an optional PHY, then the PHY
framework being disabled shouldn't return a hard error.

Instead, return NULL just like phy_optional_get() does when there's no
PHY provided in the DT.

Based on commit 11a6e41c0ee503ff ("phy: Return NULL if the phy is
optional"), which did the same thing for devm_phy_optional_get().

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
It seems there were never any in-tree users of this function since its
introduction in 788a4d56ff378bff ("drivers: phy: Add support for
optional phys") in v3.14.
Perhaps it should be removed?
---
 include/linux/phy/phy.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index b1413757fcc3b89b..559c3da515073697 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -429,7 +429,7 @@ static inline struct phy *phy_get(struct device *dev, const char *string)
 static inline struct phy *phy_optional_get(struct device *dev,
 					   const char *string)
 {
-	return ERR_PTR(-ENOSYS);
+	return NULL;
 }
 
 static inline struct phy *devm_phy_get(struct device *dev, const char *string)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
