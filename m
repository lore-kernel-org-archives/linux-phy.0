Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73F46CD11DB
	for <linux-phy@archiver.kernel.org>; Mon, 25 Mar 2024 20:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4q6MALAF9AK0rUEcUf/0y+A9acWAzJeXjq7//OFS10=; b=zaTfnYYLDyS7jH
	z4Lt837Oz4vbax+4fz+x5dl+e941dqk7ILhCaE+0QgLr8azsvcXEW5SVaQlYlByUypJtQK4Rvaoyg
	qFkwyC4wuIU94QiotqCOEpiS7/2owHw05ZRSqLcPDaXmy4fBc7yM+Po2qqplYnCh7X+y4Iek5OBAq
	FACnMdlSMDnF7b5+ew6lakpip2YXXk/PhY+FECtkniqTAmRzKq6rOt63j81bssig9hQAoJmHXb5iu
	vuWvNixPNXjOF1uu381at/hz6iPqN57o9RrWjDT0aF6E97SvczcfmuJWRIoZBcN45JOv1IfVexf9H
	SsXHlF0tsWJ4dBemTeqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roqrV-00000001mp3-0Ouh;
	Mon, 25 Mar 2024 20:24:05 +0000
Received: from mail.ispras.ru ([83.149.199.84])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roqrR-00000001mnD-0gcE
	for linux-phy@lists.infradead.org;
	Mon, 25 Mar 2024 20:24:03 +0000
Received: from tundra.lovozera (unknown [31.173.84.243])
	by mail.ispras.ru (Postfix) with ESMTPSA id BF5D640AE01D;
	Mon, 25 Mar 2024 20:12:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru BF5D640AE01D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
	s=default; t=1711397573;
	bh=S/22bUxOu8bhnHQdA0DpFckF5vvWg5SfT+9w20uPqdQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RBXNiGzM+Fhyg5XguFUyjrUeumCcdp9Z6yFbk+NZ0d4lOm1tXhF8kRnBO8G7ihRXR
	 9zYZEcOYfbNS0KF1MZjSh8kcSXuVJv6teAfLT/DCI0hi8ZL9QpSOwwVpM7hiC+oLME
	 N9qElgdlyyYViWa6TkKPwtXB2/2TfylzQh2QeMgo=
From: Mikhail Kobuk <m.kobuk@ispras.ru>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Mikhail Kobuk <m.kobuk@ispras.ru>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	lvc-project@linuxtesting.org,
	Alexey Khoroshilov <khoroshilov@ispras.ru>
Subject: [PATCH v2 1/2] phy: marvell: a3700-comphy: Fix out of bounds read
Date: Mon, 25 Mar 2024 23:12:49 +0300
Message-ID: <20240325201254.54445-2-m.kobuk@ispras.ru>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240325201254.54445-1-m.kobuk@ispras.ru>
References: <20240325201254.54445-1-m.kobuk@ispras.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_132401_374828_5A9EA5EA 
X-CRM114-Status: UNSURE (   9.86  )
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

There is an out of bounds read access of 'gbe_phy_init_fix[fix_idx].addr'
every iteration after 'fix_idx' reaches 'ARRAY_SIZE(gbe_phy_init_fix)'.

Make sure 'gbe_phy_init[addr]' is used when all elements of
'gbe_phy_init_fix' array are handled.

Found by Linux Verification Center (linuxtesting.org) with SVACE.

Fixes: 934337080c6c ("phy: marvell: phy-mvebu-a3700-comphy: Add native kernel implementation")
Signed-off-by: Mikhail Kobuk <m.kobuk@ispras.ru>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
index 41162d7228c9..68710ad1ad70 100644
--- a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
@@ -611,11 +611,12 @@ static void comphy_gbe_phy_init(struct mvebu_a3700_comphy_lane *lane,
 		 * comparison to 3.125 Gbps values. These register values are
 		 * stored in "gbe_phy_init_fix" array.
 		 */
-		if (!is_1gbps && gbe_phy_init_fix[fix_idx].addr == addr) {
+		if (!is_1gbps &&
+		    fix_idx < ARRAY_SIZE(gbe_phy_init_fix) &&
+		    gbe_phy_init_fix[fix_idx].addr == addr) {
 			/* Use new value */
 			val = gbe_phy_init_fix[fix_idx].value;
-			if (fix_idx < ARRAY_SIZE(gbe_phy_init_fix))
-				fix_idx++;
+			fix_idx++;
 		} else {
 			val = gbe_phy_init[addr];
 		}
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
