Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFC74C27C44
	for <linux-phy@archiver.kernel.org>; Tue, 28 May 2024 10:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OU5Ky8hYamcWZx9HpdoXunLC6BhL4Q9tsg0KGOjEJRM=; b=oqHnFPq4djd8aG
	bJlKU06H21JUhYkkkiiJmohYjKlBSszjM4R8aHCOwR84YBOAreK0mvoV4jSQBbFGGYdbNG/vCEBSd
	6eB9vwaTzo5VyuGu3z0RuEqn2CiHgjv2x+D4T4c0+zoGwMxkezeVVTEVezlz+HHgH1XAKYZHuUzqm
	mYUwFjl8tEz9afrSrZt8ERLtETFXEFmaYut8NrMQTEMtZVxKXl3TR9YxW4Agbv+8/ykEgfhKi8abl
	nja6NC8gUD7koyagglpMheOQxvIxE8vmhMsVs7xoaVuVj84102xRGUJe3KnpwGr+QxwNMmpnf2lyH
	21qiKGh+YdZscyS4t7WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBtwf-00000000BqF-106S;
	Tue, 28 May 2024 10:20:41 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBtwb-00000000Bnz-3THp
	for linux-phy@lists.infradead.org;
	Tue, 28 May 2024 10:20:39 +0000
Received: by mail.gandi.net (Postfix) with ESMTPA id 9D4C624000F;
	Tue, 28 May 2024 10:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1716891633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zGUowIjjvnUnYJCOfP5hA4A3GSUyMwVNLn232niSHqg=;
	b=Tvxnf/1sOxG7YTTlw/W1NXEz9FHTMOZtCPTbp39/HNLu3Qmmh41gSNHJUYTqYktQguxUns
	950m2EEkYFKsnYsS8vxMnYUd4BJSgIixtf8ZxxM6lV06qmctdPAuv2EoAs/u1SICFvndKr
	HaGWBvV9pJaLlXAG8uLkOS6qVTnIPZsiM7CfpvXx2AXuSSIhVNT8XIzQzZFe5Hsy9f4Xqs
	KkhbWl8xr9yjuhEaQFRiBQS6fXmm74mV6pg5s/Om6s4OUAy3czrEfgOap7TLPxTn4Hdne+
	hrIV8gBBH4HUgMOMGn+zB3UUV+CzJA8Sy3rVmjDkdcwQAiBZthQJeGW0rl950w==
From: Bastien Curutchet <bastien.curutchet@bootlin.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bin Liu <b-liu@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	herve.codina@bootlin.com,
	christophercordahi@nanometrics.ca,
	Bastien Curutchet <bastien.curutchet@bootlin.com>
Subject: [PATCH 3/4] usb: musb: da8xx: Remove try_idle implementation from host-only mode
Date: Tue, 28 May 2024 12:20:25 +0200
Message-ID: <20240528102026.40136-4-bastien.curutchet@bootlin.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240528102026.40136-1-bastien.curutchet@bootlin.com>
References: <20240528102026.40136-1-bastien.curutchet@bootlin.com>
MIME-Version: 1.0
X-GND-Sasl: bastien.curutchet@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_032038_108950_988725DF 
X-CRM114-Status: GOOD (  10.81  )
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

The idle_state is not meant for host-only mode. When the device acts as a
host, it fails to exit the idle state once entered. This prevents new
USB gadgets from being detected once plugged in.

Commit 032ec49f5351 ("usb: musb: drop useless board_mode usage") removed
a is_otg_enabled() check in the try_idle() that prevented from entering
idle_state. This was removed because at that time it was not possible to
select host-only mode with CONFIG_USB_MUSB_HOST so dual role was always
set.

Add #ifndef CONFIG_USB_MUSB_HOST around try_idle() callback to prevent
from entering idle_state when host-only mode has been selected.

Signed-off-by: Bastien Curutchet <bastien.curutchet@bootlin.com>
---
 drivers/usb/musb/da8xx.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/musb/da8xx.c b/drivers/usb/musb/da8xx.c
index 1681f9fba3da..c5cf733673a2 100644
--- a/drivers/usb/musb/da8xx.c
+++ b/drivers/usb/musb/da8xx.c
@@ -191,7 +191,7 @@ static void otg_timer(struct timer_list *t)
 	spin_unlock_irqrestore(&musb->lock, flags);
 }
 
-static void da8xx_musb_try_idle(struct musb *musb, unsigned long timeout)
+static void __maybe_unused da8xx_musb_try_idle(struct musb *musb, unsigned long timeout)
 {
 	static unsigned long last_timer;
 
@@ -476,7 +476,10 @@ static const struct musb_platform_ops da8xx_ops = {
 	.disable	= da8xx_musb_disable,
 
 	.set_mode	= da8xx_musb_set_mode,
+
+#ifndef CONFIG_USB_MUSB_HOST
 	.try_idle	= da8xx_musb_try_idle,
+#endif
 
 	.set_vbus	= da8xx_musb_set_vbus,
 };
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
