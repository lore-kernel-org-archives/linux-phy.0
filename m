Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7049C46CD2
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jan 2024 17:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCfkecr4Cu6mdVoOJEXDcNL5kQwmqmoi0B+fSJEp1A0=; b=FUnByIF7VLcGxy
	8oTAnjjgqtkwYJS4mPJ3vZ1Lq2T9OtQiGQQwWKg/7LfynSXJpwSu74wwIOtwLXpJMXuHM5YmQMt1A
	dVIKHeQqtQqwsCiakYpGkvu3OmnzNbyeMLL8vHljLhSHFyJQKaMlL+nPDgaBMkpa1ooLJxF/2LOF/
	jcJoJGlf2a2BHC/ueuomY5I3WoQpQxMqssr6lti+cper5yVkdWEItaHy5yRKCKX/XXte9u4l40zXc
	0E6YZxfdBxExHPQ/b02KURji2A3puRuXwwO6X2MDJn0DVA6Z4VwD/GZAi3Q2TiMEP6uodLHBL/bA2
	GR2FA6tP+uW/QCcT1jMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUs5f-0000000Hb1D-1PjZ;
	Tue, 30 Jan 2024 17:40:07 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUs5c-0000000Hayf-1TGN
	for linux-phy@lists.infradead.org;
	Tue, 30 Jan 2024 17:40:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 91BD5CE166B;
	Tue, 30 Jan 2024 17:40:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B203C433C7;
	Tue, 30 Jan 2024 17:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706636401;
	bh=+zxT4p4VOOcF8TC4xmt5JUseLtJJYz4lfC0FgbVn8Y4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=qvZLa0rQlCf0u4pgdpBxXAgYquH/VD6KzC2TO16+ll0GnY2uNe5Y9BeU/QKkeaV6m
	 iH/jWf7BoQOpsebH7iXZNBvUT4epbsU0VSzQpFcTIN5Lhcdz6HmWakbM8FkhmXXrui
	 lWh8q91WmAs31DsjfjPqB0Ja/Glh9QUUmFX/xLKB+jkyaZMNmQtpVqka1ieffMdT4r
	 tn87mxOC6XQzDC2EVzy9rd138NEW7tA2Ee36FMC1AOke1jPBLl/vHal51zcGbutgrj
	 uGdjPD97SJgTBFzl9JExlQ1Fd7lo/dGdZnsFUwCFPfv5v9uDIOEdKuevFbPYj2t3/p
	 xuhxUXyoqisIw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Felipe Balbi <balbi@kernel.org>, Tony Lindgren <tony@atomide.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org
In-Reply-To: <20240128120556.8848-1-tony@atomide.com>
References: <20240128120556.8848-1-tony@atomide.com>
Subject: Re: [PATCH] phy: ti: phy-omap-usb2: Fix NULL pointer dereference
 for SRP
Message-Id: <170663639974.685999.7254332824440377565.b4-ty@kernel.org>
Date: Tue, 30 Jan 2024 23:09:59 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_094004_693093_03D44EB9 
X-CRM114-Status: UNSURE (   7.94  )
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


On Sun, 28 Jan 2024 14:05:54 +0200, Tony Lindgren wrote:
> If the external phy working together with phy-omap-usb2 does not implement
> send_srp(), we may still attempt to call it. This can happen on an idle
> Ethernet gadget triggering a wakeup for example:
> 
> configfs-gadget.g1 gadget.0: ECM Suspend
> configfs-gadget.g1 gadget.0: Port suspended. Triggering wakeup
> ...
> Unable to handle kernel NULL pointer dereference at virtual address
> 00000000 when execute
> ...
> PC is at 0x0
> LR is at musb_gadget_wakeup+0x1d4/0x254 [musb_hdrc]
> ...
> musb_gadget_wakeup [musb_hdrc] from usb_gadget_wakeup+0x1c/0x3c [udc_core]
> usb_gadget_wakeup [udc_core] from eth_start_xmit+0x3b0/0x3d4 [u_ether]
> eth_start_xmit [u_ether] from dev_hard_start_xmit+0x94/0x24c
> dev_hard_start_xmit from sch_direct_xmit+0x104/0x2e4
> sch_direct_xmit from __dev_queue_xmit+0x334/0xd88
> __dev_queue_xmit from arp_solicit+0xf0/0x268
> arp_solicit from neigh_probe+0x54/0x7c
> neigh_probe from __neigh_event_send+0x22c/0x47c
> __neigh_event_send from neigh_resolve_output+0x14c/0x1c0
> neigh_resolve_output from ip_finish_output2+0x1c8/0x628
> ip_finish_output2 from ip_send_skb+0x40/0xd8
> ip_send_skb from udp_send_skb+0x124/0x340
> udp_send_skb from udp_sendmsg+0x780/0x984
> udp_sendmsg from __sys_sendto+0xd8/0x158
> __sys_sendto from ret_fast_syscall+0x0/0x58
> 
> [...]

Applied, thanks!

[1/1] phy: ti: phy-omap-usb2: Fix NULL pointer dereference for SRP
      commit: 7104ba0f1958adb250319e68a15eff89ec4fd36d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
