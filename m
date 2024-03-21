Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76033C6FD1F
	for <linux-phy@archiver.kernel.org>; Thu, 21 Mar 2024 16:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlvGJXnf00GWk5RW++eX/0YoyJp8K/x9MTkhxIKx5xM=; b=GQA8bohLl+zXHp
	7kFM99lt3MSanSNEE7IlcV44+ealVsY/0KQqxPrM/cirYKeHGIOV1IpyBxtCscZCzFwlj0p0+IY5y
	Lrb86ssxOvmdaIOiQ9vCbO9uFxa+q+wzWCB+B80SAWPl0kxwgV/X2VDHuzD5kVf+yb1tdCku241SL
	U5YAbocxq6bPdTsAzdBR4pum+9fYNm34xha/HwfsfimvG/gJ5lk1Jq+gxI+BmHpkph6wFE9CXbtA8
	Si2xpElRKqP3CcTcjqG+YyXf8O7DJQFLRG97pBGBaoN+AnDYrMUbt5Tb+qqDdwTv6NSDkA4kGvyEi
	BEFoAfjRS4yqdebKn3zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnLaH-00000003tTa-0huS;
	Thu, 21 Mar 2024 16:48:05 +0000
Received: from mail.ispras.ru ([83.149.199.84])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnLaD-00000003tIT-44Rj
	for linux-phy@lists.infradead.org;
	Thu, 21 Mar 2024 16:48:04 +0000
Received: from tundra.lovozera (unknown [83.149.199.65])
	by mail.ispras.ru (Postfix) with ESMTPSA id CB3A74076740;
	Thu, 21 Mar 2024 16:47:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru CB3A74076740
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
	s=default; t=1711039655;
	bh=r2m1IFOo39rYh7Yqg1o38OZbzAZc486wtJtHt6GKQN8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=e/IoVVTmJcjYmoIvO2d8hMVtfnMzisXAIkALho404ABalv/p1MYVojBoqBYofIZCU
	 6OsYZtHgKk26MxAe/VkoFI4rcAY0B0UlTSUPWs+cXZH6nAR7QgVRbtwhpxKZrB1rmh
	 IVgkNjmcazOJjWGj9olJPuX826H8+xk551pjtIgE=
From: Mikhail Kobuk <m.kobuk@ispras.ru>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Mikhail Kobuk <m.kobuk@ispras.ru>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	=?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	lvc-project@linuxtesting.org,
	Alexey Khoroshilov <khoroshilov@ispras.ru>
Subject: [PATCH 2/2] phy: marvell: a3700-comphy: Fix hardcoded array size
Date: Thu, 21 Mar 2024 19:47:31 +0300
Message-ID: <20240321164734.49273-2-m.kobuk@ispras.ru>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240321164734.49273-1-m.kobuk@ispras.ru>
References: <20240321164734.49273-1-m.kobuk@ispras.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_094802_619488_86AF2243 
X-CRM114-Status: UNSURE (   9.60  )
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

Replace hardcoded 'gbe_phy_init' array size by explicit one.

Fixes: 934337080c6c ("phy: marvell: phy-mvebu-a3700-comphy: Add native kernel implementation")
Signed-off-by: Mikhail Kobuk <m.kobuk@ispras.ru>
---
 drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
index 41162d7228c9..15bf10710de0 100644
--- a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
@@ -603,7 +603,7 @@ static void comphy_gbe_phy_init(struct mvebu_a3700_comphy_lane *lane,
 	u16 val;
 
 	fix_idx = 0;
-	for (addr = 0; addr < 512; addr++) {
+	for (addr = 0; addr < ARRAY_SIZE(gbe_phy_init); addr++) {
 		/*
 		 * All PHY register values are defined in full for 3.125Gbps
 		 * SERDES speed. The values required for 1.25 Gbps are almost
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
