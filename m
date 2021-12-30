Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4E49C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 30 Dec 2021 19:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEeqoGQHbGC22HYlqlw7qDwNQpGEqoaSLfaT4W8LO08=; b=rNd/JB55K4YUx6
	K1eMSyVAlLFnu2FvX6hE4IMRGYWIrmfbd/iHJSbw8bDOnWy4r/cFmSUp8pbG4SbeElTMYG4uyEkZC
	fTCYxDd56ICUQI8ThgwK7fU9Km2nlZp81OBhnTzfl+FUGIbuLV2gls3DGkaW/EUP28TavyeHP3pOg
	KEbmctqPa/GCn5qzR/vvVS/n+qjSfMinqk2/xV7uPTB3kG4liPWNa/3XnCaZMi6ETJ4FBupfFa7lF
	4JDrW/lYkxgXyoMFXP+1c2+PVQODJaWwD68tOOVdhyadk1EUJrjuZMhdX1kxP7E2KlCrUuDMZcJU8
	uDGdHadyAwSjBihz17mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n31NW-00591k-K6; Thu, 30 Dec 2021 19:46:22 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n31M3-0058NH-Qo
 for linux-phy@lists.infradead.org; Thu, 30 Dec 2021 19:44:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 75470B81D11;
 Thu, 30 Dec 2021 19:44:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A36FBC36AE9;
 Thu, 30 Dec 2021 19:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640893489;
 bh=iIA7kURQvZC0z/YhC7HmlHj7I0oK5BuGs9W9kttM8rw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CUfBE4e0GfvsbjDXMoBd99d6HU9/kDkQ6LAtGuYmAI1rLljFB6GB4ZknJ3QHe5hGn
 ZlufKqhLwRfg1GRbgoySCAmPa4tFvuqGZCGZHqUF8Uhi6KRNNr/51uWNGmVpBAz8pg
 FGMh7CJqJANqdzXstAkiHnRV/uizkf1yJ5qkSsMMIM+SH11aX6etY11y+xlNWoBQ6o
 wqGpyFkTwgnHprgpY8o/Xcmbvlpv2Y4LJ9FdY6EYRXfiDXnp80sZV84Rd+KJ45RTPC
 h41uKz0jNLQuEhZwSZYsl+XUH48GRlBin08BdszcEkvfrsBDp7RDXWi9TJg8p/jZS9
 FYHgAkbRcVxeg==
Date: Thu, 30 Dec 2021 20:44:44 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>, Gregory CLEMENT
 <gregory.clement@bootlin.com>
Subject: Re: [PATCH phy v2 2/6] phy: marvell: phy-mvebu-a3700-comphy: Add
 native kernel implementation
Message-ID: <20211230204444.36d4b5fa@thinkpad>
In-Reply-To: <YcRuVCdXztTTrJs7@matsya>
References: <20211208024038.8797-1-kabel@kernel.org>
 <20211208024038.8797-3-kabel@kernel.org> <YcRuVCdXztTTrJs7@matsya>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211230_114452_055326_188EF9A4 
X-CRM114-Status: UNSURE (   8.77  )
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

On Thu, 23 Dec 2021 18:10:52 +0530
Vinod Koul <vkoul@kernel.org> wrote:

> > +	raw_spin_unlock_irqrestore(&lane->priv->lock, flags);  
> 
> any reason to use raw_ variant? why not spin_lock_irqsave()

You're right, there is no valid reason. I used raw spinlock simply
because I saw it somewhere else. I will change it to non-raw.

Marek

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
