Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA61AE7716A
	for <linux-phy@archiver.kernel.org>; Sun, 15 Dec 2024 09:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XBlXtIp0eQMzDH56hyjBkxp2alISqHt6lQW/le+Ckm4=; b=yoXakbiEHQvU0w
	HDaaQRRb+thx/bheNPEQKl1NS9RwWoF7P7myzyuZlMi64YHYbX77/4p/f+30wzoDaYLGjYBws5hqg
	+GYIr6Q/Ds5SqA+jVplmTY68ANxnqss/pQJOJgSGm+O28RaSgZHAVk4CJ6FqiVtH8mRoNjTWAbFeM
	AqlAWmV0fdaWymXjF66bYgEZZa6X1WQ75x8k5hzd/qrsNpfjuvgOpDRHBP7L+6SMwkeCox++NglBo
	5wX80CaZBut0XsKNxqvf7Z0HR2/slOSigiWwTBt4yUvBjpawYjFOmKivUGUHh69IXa7KunFJvv8tp
	2jDUbnTihof+KO3XS4xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMksA-00000007gZJ-1ibH;
	Sun, 15 Dec 2024 09:25:10 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMks6-00000007gYT-3Uyd;
	Sun, 15 Dec 2024 09:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=45LQY
	2ea5U3KK7KhJhTWTw1zr3MzGiWN++5h6tRZ1mU=; b=bT+tKCqeZRo5HDW1HyKw2
	Gl+cWLScRIJzvoh4tgA9Fp8xW1gRarYDW1gBnFVKuliQj5mRlBhYG+8G4/yiZnKK
	h/sstLTlx32k4Jyb+1engQZ9zfC/iPiK6e9s24X+FkkOoEi7ExPyCHVWydVHj9ep
	qM4p9KoyxY7YDCiGKMMBvM=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wCXjkZaoF5nGQvMAg--.20181S2;
	Sun, 15 Dec 2024 17:24:45 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: kishon@kernel.org,
	linux-phy@lists.infradead.org,
	vkoul@kernel.org
Cc: heiko@sntech.de,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kever.yang@rock-chips.com,
	sebastian.reichel@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] phy: rockchip: phy-rockchip-typec: Fix Copyright description
Date: Sun, 15 Dec 2024 17:24:40 +0800
Message-ID: <20241215092441.3447155-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wCXjkZaoF5nGQvMAg--.20181S2
X-Coremail-Antispam: 1Uf129KBjvdXoWruF1UCrW8uw4rZF1rCw1kGrg_yoWfCrXEkw
	1Sqw1UXw4vqFn5Jw1DJa47W34qyw1jga1kuFsakF98J3WDtwnYqryrZr17XF15Gr4SkrZ7
	Cas0vFy7AFyaqjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUbhZ2DUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQu2XmdemAWFmgAAsx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_012507_260407_8D069F96 
X-CRM114-Status: UNSURE (   7.77  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The company name has update to Rockchip Electronics Co., Ltd.
since 2021.
And change Co.Ltd to Co., Ltd. to fix mail server warning:
DBL_SPAM(6.50)[co.ltd:url];

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-typec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index 122ae0fdc785..7b1dba252ce9 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
+ * Copyright (c) Rockchip Electronics Co., Ltd.
  * Author: Chris Zhong <zyw@rock-chips.com>
  *         Kever Yang <kever.yang@rock-chips.com>
  *
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
