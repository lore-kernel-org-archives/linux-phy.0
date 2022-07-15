Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D9F4CCA47C
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 12:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wB95F9ImcewQNXwQR4SJecZHFJeEthe6kpAr1g1sweQ=; b=sbTxc6taUOeibv
	beKi/c6g8257cGuLAvHOajeTvAqgCczO0pTUaokvmOyMT+xVyBWgFhuBYzulG+A1LuK8u5CKFE005
	eKkF8hVnmnoNEiGJa6cvtgsx6E6YXRoy0GaCoM4BVJ9AM6geT7dECOyC6EWF8TTkCTjd9L31/jTHy
	QdfNhEyf14HoBOgYJrNWhBpZttMFgC/ewmvwHa3CucwW96b7YiBzWl+X6Hk9iAaF4xAY0giIJOkzj
	0ujgAwnkyqCm2kj0kkDryMRNO3Mh+zF3zRVJSfqv/PuKQnB8v9mGFUkBnOcDQ0V1xe50AHGIfNd0u
	v5bSjiz+7kc6o73DS1Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCKIy-006sRj-St; Fri, 15 Jul 2022 12:20:24 +0000
Received: from m15112.mail.126.com ([220.181.15.112])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCKIs-006sMw-OO
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 12:20:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=VzFTE
	UQ7i4FSvPiNeeptKBsM2czdtS3FFtIyX8f+FVo=; b=qSFJimoTBgkDOtcWRtA6M
	UQYBvEc5tO7EzsK8nJDa1OYR44AqNE7VdxdHGDJO8aGidRE8Bu2+rzTy0FrMXsYs
	majBkU3qYvMRa0LVYvBssKHZrD3waWux7tX+zL3hLyyhcT81g+5bKiCAnHLYDHkr
	uj09ZR2kfC/8NBhrdMPJ0A=
Received: from localhost.localdomain (unknown [124.16.139.61])
	by smtp2 (Coremail) with SMTP id DMmowADXQv9wW9FiWOW2Ew--.9567S2;
	Fri, 15 Jul 2022 20:20:01 +0800 (CST)
From: Liang He <windhl@126.com>
To: kishon@ti.com,
	vkoul@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	linux-phy@lists.infradead.org,
	windhl@126.com
Subject: [PATCH] phy: core: Fix refcount leak bug in of_phy_provider_lookup()
Date: Fri, 15 Jul 2022 20:20:00 +0800
Message-Id: <20220715122000.391417-1-windhl@126.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: DMmowADXQv9wW9FiWOW2Ew--.9567S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKF1xKFy3tr48Zr4DWr17Jrb_yoWfWrb_uw
	1xWFyaqwsYkF1xC39rtayfu34IyrykXa95ZFZ2q34S934UJFy3tr15ZF98K34Du3yUGFWD
	Gw1jvrW7C34FgjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRKFApDUUUUU==
X-Originating-IP: [124.16.139.61]
X-CM-SenderInfo: hzlqvxbo6rjloofrz/xtbBGgg-F1-HZgRdRAABsY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_052022_248496_F6960969 
X-CRM114-Status: UNSURE (   6.35  )
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

We should call of_node_put() when breaking out of for_each_child_of_node()
as it will automatically increase and decrease the refcount.

Fixes: 2a4c37016ca9 ("phy: core: Fix of_phy_provider_lookup to return PHY provider for sub node")
Signed-off-by: Liang He <windhl@126.com>
---
 drivers/phy/phy-core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index d93ddf1262c5..47f414c0857d 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -138,8 +138,10 @@ static struct phy_provider *of_phy_provider_lookup(struct device_node *node)
 			return phy_provider;
 
 		for_each_child_of_node(phy_provider->children, child)
-			if (child == node)
+			if (child == node) {
+				of_node_put(child);
 				return phy_provider;
+			}
 	}
 
 	return ERR_PTR(-EPROBE_DEFER);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
