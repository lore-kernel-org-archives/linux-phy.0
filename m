Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C94FC44501
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 11:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IyqU0MJkAnEPSpGLuoI+MHlgqsbrBDaBcU7irxl/NLs=; b=VAKVLcbMiWOhoR
	D8vswOL7NnQc+ejKVyPFqgWcPeHmS11VA5u5/CWZuHtXxlLuvPCQy4BWe8zg12wHNRo4hH0mnLbjc
	m2xFI0s4wNgQZEGTf4iWVl+v3gHQv/1iYDSrPeF9x/ZDcvkfMqES7u/ZjlQDQvQvPkLWcaYirMHDB
	yNxpPAgevt6vaywt0CbZ8aSraI/4TdHP6YMS1r89iIA4+kXZXeR9yCm6w9TnvwlB1fD6oIgPwPg8+
	xJiQF1pz2f3C/lHaMqPKLavNo5Jnk4HGb2V99/MOOGXS7cHBBpl5hTqqEUWBqAa1vHM2t67spnQz6
	m+tteMOgnqpIaef6pm7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjxaR-0000000EY6g-3lBo;
	Wed, 15 Jul 2026 11:15:35 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjxaO-0000000EY5O-18DU
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 11:15:34 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 613D41A0FF2;
	Wed, 15 Jul 2026 11:15:27 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 28C9D6035C;
	Wed, 15 Jul 2026 11:15:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 382CA11BD1518;
	Wed, 15 Jul 2026 13:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1784114126; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=4909ZvzqE/qBkcTGctD2aEwJFWkjePdcil0/KSV46/U=;
	b=bzUt7K+jxAzqnf65ic/3Zie1qUXtfMBGduxbcKwUfBdB1KeAAZfgZ/B7xaRDidQOL2PpN4
	yqdRp3nwCPDU1UsC51v/JUPSWtl6syPTBbMZesdWBiW8crQ7Tn5NG2pzEAgQEoa736/qlg
	6pgk8z0Abu7J7saLFLyPNtIvH5eufO7hAgGl9F8cFkTDLW+9DiziKVZovPCqzYVibM9h+9
	uR7FlrzvlVezzkPZ9llu9KcYfSjuv0KpAJ8p23dA4G3z7pw6l++foLmhk6BV3U+eBhLSTk
	UBZAUdFnCQM1bSyWnheRIsBLKNr9VE2INnZ8TJ1TrZkcN2oSRwBPvOL7GziK2A==
Message-ID: <f81a233a-ad96-499f-8a79-c3418dc99ac3@bootlin.com>
Date: Wed, 15 Jul 2026 13:15:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 01/10] net: stmmac: move XPCS lifetime management to
 platform drivers
To: Christian Marangi <ansuelsmth@gmail.com>, Coia Prant <coiaprant@gmail.com>
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, andrew+netdev@lunn.ch, robh@kernel.org,
 krzk+dt@kernel.org, heiko@sntech.de, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-2-coiaprant@gmail.com>
 <dc21b2fc-ae11-4fde-a5b9-09e2c6bee5c9@bootlin.com>
 <CALj3r0gWyfHHp0S4=71M1-TjgHKcgGax4Lr0DzPi37Q69-iCwA@mail.gmail.com>
 <6a574873.3027643f.39eab0.b4c0@mx.google.com>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <6a574873.3027643f.39eab0.b4c0@mx.google.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_041532_443244_A8CCDBF5 
X-CRM114-Status: UNSURE (   8.50  )
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

Hi Christian,

> I think the idea of Maxime is to test that series on most Scenario as
> possible to verify for fragility or regression on it.

I've tested your RFC on a few boards that use the .select_pcs() callback,
and didn't find any regressions :)
> (but just for Maxime the feature is getting actively used on OpenWrt by 3
> different SoC and no complain for now)

I have no doubt that the fwnode PCS registration works, however there's no
user of the .fill_available_pcs() path in this series. You may not have access
to HW to test this though, but this is my main concern that we discover issues
when using "internal" PCS with the new API.

I _may_ have time to play around with is on mvpp2, hard to say when though, but
feel free to send another iteration for review :)

Maxime

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
