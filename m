Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E42CCA0EE0
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 19:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjSmHDyPQv9Ck0um6NgyaPQUz/vM0zH/cAEQJ/kyAek=; b=0TLs0EHpQXp/tX
	6ZLpnU+U0ZRKLf1t6NrxKeTuBUW7jnGpwJRfJnqMKjZVaYTiqfCOAav/YOBZ/PYiiwEwjaxWt8ufS
	Jy7vSdX2QC14FfXHze3Yg1+n/chMhHak6BnqbWLqYzqpM13VD5/ZppBhJAMRacw6+PdvvwPcUcZA2
	3cPwhIOfyffmVaOv45EXwJXs7/9BQoukcpYJCQfdD7Ff7ji18jR6Ng59/VQczHIz31D42kmEcIU6h
	kv4uNR32JeMSGIda6wyIITYzgcd/uZhfOahn2vjjBVs4hZSn7P0knrulJZ/qPBHsnpdlKT9Tg0Xul
	pwTdRaR0Vi+B0SSaxfmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluc5-0000000Bp6g-3YZj;
	Tue, 12 Aug 2025 19:24:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls4A-0000000BSAJ-2OGk
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 16:41:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 08DF1601EC;
	Tue, 12 Aug 2025 16:41:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C259EC4CEF0;
	Tue, 12 Aug 2025 16:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755016897;
	bh=ptedwgzuDsEGl1cN2Loga4AsZu/U6huv+JI5qvZuTzU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bTrh7gzGt+Fd5cXKsZBHSmWy9H1GO+/m1PHOz39g5+TR2f+zx6L03J6M0t2iY8qd9
	 zuMbyjQlE71g2ZHkDn5qDdgMJUxf6ZliEy6UINEmGfd6v0V8eGqAmJR69KKivA8nuC
	 zgsTHpDYduKaZAhaf+ut3RmW/q9vMjANjCNl7hAZgjIK5aJ6U/NhwqK+od1RgOzElP
	 MuU3lZapBcpaBlSJvIcGKVSwlIywFI6odq8mVoTod9zuvNBO5UvH91KF6KuMyiMQVg
	 mUi1pMf2fJbNPuW+vBR9L86nUthYxvksOZk6elxxK4t6Px/qbB0sdxVcrAp4Xq8o9V
	 nFgv6evA468Nw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jai Luthra <jai.luthra@ideasonboard.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
In-Reply-To: <20250224-cdns_phy_pm-v1-1-0fe2c544cc87@ideasonboard.com>
References: <20250224-cdns_phy_pm-v1-1-0fe2c544cc87@ideasonboard.com>
Subject: Re: [PATCH] phy: cadence: cdns-dphy-rx: Add runtime PM support
Message-Id: <175501689535.633310.5617884055739697680.b4-ty@kernel.org>
Date: Tue, 12 Aug 2025 22:11:35 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Mon, 24 Feb 2025 18:10:05 +0530, Jai Luthra wrote:
> Enable runtime power management for the device. The PHY framework
> handles calling pm_runtime_(get|put)_sync when powering on/off this
> device.
> 
> 

Applied, thanks!

[1/1] phy: cadence: cdns-dphy-rx: Add runtime PM support
      commit: a230d52c90cfb48f1f32d3957dc962165373895b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
