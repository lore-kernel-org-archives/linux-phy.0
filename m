Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40898C54E64
	for <linux-phy@archiver.kernel.org>; Mon, 25 Mar 2024 20:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xn9kncHnsFXrmOG0mBfN7am7AG7mQ7GdfT5VwddBjh0=; b=hD1pLhqs6VbqYk
	ZEMP/tgiWiiFlKoHokBZIZ+y+/6OAY6JARqyhcVHGnMvvxXP0i+JgkRqDafCjq1ipPtF/yJ67Z56q
	TnsCZDHpZM53FuJrSbiWAr9HFThen80pzSwa104v35gFKufuJID+ApaEPkK9OTl2/sdtOgv0bwyW7
	OMBc4ngBdjHQBRy0lDwzihFt2G/WvbUIGWmLqJUGiXLkaG0OaqDfHXHCb2uqireIvQ0Vs65XnliAb
	6F39niU13iKwq+wRdpcWZ+ficSz6TGsDIF0xHsiqeWSlFVGitooJnp3XarfoHwPQSZoezwWVoQ5sG
	8HiXBQs+xclPEFzz7LMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roqrU-00000001moq-2uUz;
	Mon, 25 Mar 2024 20:24:04 +0000
Received: from mail.ispras.ru ([83.149.199.84])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roqrR-00000001mnC-0ci2
	for linux-phy@lists.infradead.org;
	Mon, 25 Mar 2024 20:24:02 +0000
Received: from tundra.lovozera (unknown [31.173.84.243])
	by mail.ispras.ru (Postfix) with ESMTPSA id DCBBB40B2784;
	Mon, 25 Mar 2024 20:12:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.ispras.ru DCBBB40B2784
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ispras.ru;
	s=default; t=1711397574;
	bh=crTIb98cNl+zIlgW+5vvYUir0L3WIPrXhLOuIX0mPI4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MwMV+aMl4l33qBNIFmoL0MvQd9pKtZOP4n65eTqFxnWyS4Cppu5cvgqik0FjNumnv
	 S93QePlMOz8pRdRMtUEIpqtIMabtJ9bdHYX5YpbCAO5cU2LOtWYqtMmHUPFjH5t3bV
	 /souhdKdFlFsr9DNvI1AOKSIkn/fBki9RB6ZQy7g=
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
Subject: [PATCH v2 2/2] phy: marvell: a3700-comphy: Fix hardcoded array size
Date: Mon, 25 Mar 2024 23:12:50 +0300
Message-ID: <20240325201254.54445-3-m.kobuk@ispras.ru>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240325201254.54445-1-m.kobuk@ispras.ru>
References: <20240325201254.54445-1-m.kobuk@ispras.ru>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_132401_363908_D7BC4655 
X-CRM114-Status: GOOD (  10.61  )
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

Replace hardcoded 'gbe_phy_init' array size with defined value.

Fixes: 934337080c6c ("phy: marvell: phy-mvebu-a3700-comphy: Add native kernel implementation")
Signed-off-by: Mikhail Kobuk <m.kobuk@ispras.ru>
---
 drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
index 68710ad1ad70..5d6dccfca1fb 100644
--- a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
@@ -43,6 +43,7 @@
 #define COMPHY_LANE_REG_DIRECT(reg)	(((reg) & 0x7FF) << 1)
 
 /* COMPHY registers */
+#define COMPHY_GBE_PHY_MAX_REGS	512
 #define COMPHY_POWER_PLL_CTRL		0x01
 #define PU_IVREF_BIT			BIT(15)
 #define PU_PLL_BIT			BIT(14)
@@ -296,7 +297,7 @@ static struct gbe_phy_init_data_fix gbe_phy_init_fix[] = {
 };
 
 /* 40M1G25 mode init data */
-static u16 gbe_phy_init[512] = {
+static u16 gbe_phy_init[COMPHY_GBE_PHY_MAX_REGS] = {
 	/* 0       1       2       3       4       5       6       7 */
 	/*-----------------------------------------------------------*/
 	/* 8       9       A       B       C       D       E       F */
@@ -603,7 +604,7 @@ static void comphy_gbe_phy_init(struct mvebu_a3700_comphy_lane *lane,
 	u16 val;
 
 	fix_idx = 0;
-	for (addr = 0; addr < 512; addr++) {
+	for (addr = 0; addr < COMPHY_GBE_PHY_MAX_REGS; addr++) {
 		/*
 		 * All PHY register values are defined in full for 3.125Gbps
 		 * SERDES speed. The values required for 1.25 Gbps are almost
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
