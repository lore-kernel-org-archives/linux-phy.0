Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B8F5C47258
	for <linux-phy@archiver.kernel.org>; Sun, 28 Jan 2024 12:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fi32rMtMAGJ/ZunKCwkSrefOkOEQRtGUR665zRGFEd4=; b=SvyBGN43X7r6Gy
	s0NvR2UvFiQFu5fprudS2pxsM8xS2gWHbv8d120gU5bH38YXZHWkhNMAz4eBUc65XtNEaCDeeY5hw
	TPAjyWzBEi0KhHqQ0H+HOwHaa42m61Jmt3xfatd6ufD/3eRA1K7O0LNBKhJ2kCsgt7ldN+KGd1rGx
	uDcdQBDVCDtR1ERvAtmWcdGaiYM7y7DyRrSvWPm5DH6o5JLXNqyXp3GA67pdl2B3CaWwb8ip8JPjz
	SgMgejE1W51FxGwaqSWcFVLN7ja5o871BEUiwRon0GFousv8JIBlA4aHojDtIbMYGnB5+aU0uSoQF
	oTwX/EbFxjOAwHgfyUyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rU3vf-00000009OcT-40lT;
	Sun, 28 Jan 2024 12:06:27 +0000
Received: from mail5.25mail.st ([74.50.62.9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rU3vd-00000009Obe-0IGy
	for linux-phy@lists.infradead.org;
	Sun, 28 Jan 2024 12:06:26 +0000
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id C573760AE5;
	Sun, 28 Jan 2024 12:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1706443581;
	bh=M7Ev9192KYDUZR06Rbu+YlDp6Wi8bnytRXzrwVDHUw4=;
	h=From:To:Cc:Subject:Date:From;
	b=LOHWCzWj46a4fvodr67zSqCZmjdhl7Oy4ab60B659EgQOM0u18DhHloT6eafgW0IE
	 qxGvX9+kCV2ZHVjMLAwahpo1++34k7Rqk7QW3PngdK2ilFTo0om4O1+N9Je2iPi1B1
	 ToXCUi/FLhOSBQgdoEFoH9JaQhdUFimevl8/B4b5dRiZmqVF+p0iF5jXyb4goynjbq
	 2Qo9DAngEFnqSPVPOIt7Z6ai/3+oVfqmRCBwBnSATEoPna9wGW8TAqh614ViPkV6xK
	 VnBdClzxY6Z0eKHFtluixadqlbVQ6IU3Ahus1nqnHGTxaPtZDtLBM7MiXOfm2/zeqK
	 yYlHTilF3yKBQ==
From: Tony Lindgren <tony@atomide.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felipe Balbi <balbi@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	linux-phy@lists.infradead.org
Subject: [PATCH] phy: ti: phy-omap-usb2: Fix NULL pointer dereference for SRP
Date: Sun, 28 Jan 2024 14:05:54 +0200
Message-ID: <20240128120556.8848-1-tony@atomide.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240128_040625_436937_FFDBCE21 
X-CRM114-Status: GOOD (  10.99  )
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

If the external phy working together with phy-omap-usb2 does not implement
send_srp(), we may still attempt to call it. This can happen on an idle
Ethernet gadget triggering a wakeup for example:

configfs-gadget.g1 gadget.0: ECM Suspend
configfs-gadget.g1 gadget.0: Port suspended. Triggering wakeup
...
Unable to handle kernel NULL pointer dereference at virtual address
00000000 when execute
...
PC is at 0x0
LR is at musb_gadget_wakeup+0x1d4/0x254 [musb_hdrc]
...
musb_gadget_wakeup [musb_hdrc] from usb_gadget_wakeup+0x1c/0x3c [udc_core]
usb_gadget_wakeup [udc_core] from eth_start_xmit+0x3b0/0x3d4 [u_ether]
eth_start_xmit [u_ether] from dev_hard_start_xmit+0x94/0x24c
dev_hard_start_xmit from sch_direct_xmit+0x104/0x2e4
sch_direct_xmit from __dev_queue_xmit+0x334/0xd88
__dev_queue_xmit from arp_solicit+0xf0/0x268
arp_solicit from neigh_probe+0x54/0x7c
neigh_probe from __neigh_event_send+0x22c/0x47c
__neigh_event_send from neigh_resolve_output+0x14c/0x1c0
neigh_resolve_output from ip_finish_output2+0x1c8/0x628
ip_finish_output2 from ip_send_skb+0x40/0xd8
ip_send_skb from udp_send_skb+0x124/0x340
udp_send_skb from udp_sendmsg+0x780/0x984
udp_sendmsg from __sys_sendto+0xd8/0x158
__sys_sendto from ret_fast_syscall+0x0/0x58

Let's fix the issue by checking for send_srp() and set_vbus() before
calling them. For USB peripheral only cases these both could be NULL.

Fixes: 657b306a7bdf ("usb: phy: add a new driver for omap usb2 phy")
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/phy/ti/phy-omap-usb2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -117,7 +117,7 @@ static int omap_usb_set_vbus(struct usb_otg *otg, bool enabled)
 {
 	struct omap_usb *phy = phy_to_omapusb(otg->usb_phy);
 
-	if (!phy->comparator)
+	if (!phy->comparator || !phy->comparator->set_vbus)
 		return -ENODEV;
 
 	return phy->comparator->set_vbus(phy->comparator, enabled);
@@ -127,7 +127,7 @@ static int omap_usb_start_srp(struct usb_otg *otg)
 {
 	struct omap_usb *phy = phy_to_omapusb(otg->usb_phy);
 
-	if (!phy->comparator)
+	if (!phy->comparator || !phy->comparator->start_srp)
 		return -ENODEV;
 
 	return phy->comparator->start_srp(phy->comparator);
-- 
2.43.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
