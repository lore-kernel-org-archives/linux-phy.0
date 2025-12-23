Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E122E6FE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lcSg5ADvuFGDqLj2uvK2f5eR4y3W9hKyXDxf5ztsOvA=; b=KuCQAgDzDOEtmT
	haIDyyoDC882C1uD5W7k7xKmyV0ewqGa5mtDu84QBD3tvhvP5J4AYR9SNa5zbarJVg0aRNL0zyMFG
	Ak1DAzficsK6gYjx3tkWnXR7hMruBIkcqdo2+pKCkArxSFP6Dnzvn5Ny7q/BZfZUsQKc4cJC2G/nf
	6+yfAJ+T2jGxbuH68YAxzHov/wnJx8Yri+SzdsZUhzt5eGHqllOGVD0Bv8BRZOtNsftNLlhh18xHW
	R5dU21J4T9TY0tMBApwrYp5efmEBd77woVF+aN7Ep6SGmDe5lB6oUQi4cxV9anj0OT7BSDw4IiRuH
	0UAfwUgk1M8T7VU6mILw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6H5-0000000Fpod-4B3h;
	Tue, 23 Dec 2025 17:34:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gx-0000000Fpkl-1uCR;
	Tue, 23 Dec 2025 17:34:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1B23D41B37;
	Tue, 23 Dec 2025 17:34:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9490C116B1;
	Tue, 23 Dec 2025 17:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511251;
	bh=udJxoZNtzJJ8YDA2L6z3Y5+PFcDl85FnCZanR1WdgZA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=N+Xn6033wpW+5QNkYVNRqHjEKGenxB/bSabbWnNLVOuh4frnVWP3HnsPbLcR31Tf6
	 PQBWaVajtxZ4oy1zoFk2xccN+shMwkSfy7YHedgWvj0xPS+5Hj2V9KuZmkxEqrnVNT
	 r/uHZpYgm8EC0FeA68GMduCPfwyFvIHo8JQ7/FOJ5ehBP0bbJ/kVJ6bRcfOpVHDch2
	 COlyQNzIUfSBbBx6unHPEZruHbGDJXGylIipV3+bnwR1DjvsgfYPnzfM3TjU9bH8JF
	 Rpjid6A1aPcSzmn5BpHsOK7TQ2hOrolkuibqvLccKZJdt87E8nQrRm79hPwnQTpqFm
	 QCg2BG0zTNyeg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, William Wu <wulf@rock-chips.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, 
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>, 
 Alan Stern <stern@rowland.harvard.edu>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
In-Reply-To: <20251127-rk3308-fix-usb-gadget-phy-disconnect-v2-0-dac8a02cd2ca@bootlin.com>
References: <20251127-rk3308-fix-usb-gadget-phy-disconnect-v2-0-dac8a02cd2ca@bootlin.com>
Subject: Re: [PATCH v2 0/2] phy: rockchip: inno-usb2: fix gadget mode
 disconnection after 6 seconds
Message-Id: <176651124639.749296.13619922936818344494.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:04:06 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_093413_820827_E2AE9E75 
X-CRM114-Status: UNSURE (   8.94  )
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


On Thu, 27 Nov 2025 11:26:15 +0100, Luca Ceresoli wrote:
> The USB OTG port of the RK3308 exibits a bug when:
> 
>  - configured as peripheral, and
>  - used in gadget mode, and
>  - the USB cable is connected since before booting
> 
> The symptom is: about 6 seconds after configuring gadget mode the device is
> disconnected and then re-enumerated. This happens only once per boot.
> 
> [...]

Applied, thanks!

[1/2] phy: rockchip: inno-usb2: fix disconnection in gadget mode
      commit: 028e8ca7b20fb7324f3e5db34ba8bd366d9d3acc
[2/2] phy: rockchip: inno-usb2: fix communication disruption in gadget mode
      commit: 7d8f725b79e35fa47e42c88716aad8711e1168d8

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
