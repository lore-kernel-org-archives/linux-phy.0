Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28A4ECFD376
	for <linux-phy@archiver.kernel.org>; Fri, 28 Nov 2025 09:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oh4uYZiG2xzaxEHYTBBy519zGv12RYJyqBsh9Qae3K4=; b=FDV0WL5X5IasZk
	n84O1zizpL5dJGWV+0eBm67A2+ATiYXwu47E2hnKgu5rQDa5CNrinP2JsoQEIN73Fa8+xF0AmJYbz
	utNWeHrUYS3pY8kmzURV4Ul6OibQbBiNXC8YYtziYuQ/4yMy/ZWZcQvirpsZJqaXIab4kKGj77xXQ
	4cQhuK3dFTFv2Mfazas62Ku6PBPd/Q4aaVmQKOYJ4QJQyVBQ4qr2wrdt4TzPoItiIZ+w8V4nv60WO
	HO9+1V41eyzXbjoV5kJ7Jce0m1SmziQVci4CcaMBBLE7xpg/IE9r3sL+JWoVD7t6yLOSy7QKfkiER
	tqOchDd8LCK8ckkEap9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvB5-00000000Fg6-3kFt;
	Fri, 28 Nov 2025 09:54:11 +0000
Received: from elvis.franken.de ([193.175.24.41])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOvB1-00000000Ffe-42lA
	for linux-phy@lists.infradead.org;
	Fri, 28 Nov 2025 09:54:10 +0000
Received: from uucp by elvis.franken.de with local-rmail (Exim 3.36 #1)
	id 1vOvAv-0004i5-00; Fri, 28 Nov 2025 10:54:01 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 777D6C0256; Fri, 28 Nov 2025 10:53:28 +0100 (CET)
Date: Fri, 28 Nov 2025 10:53:28 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: =?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org,
	=?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v4 6/7] MIPS: mobileye: eyeq5: add two Cadence GEM
 Ethernet controllers
Message-ID: <aSlxGFPP-oURLpPq@alpha.franken.de>
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
 <20251124-macb-phy-v4-6-955c625a81a7@bootlin.com>
 <87y0nq4hd2.fsf@BLaptop.bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y0nq4hd2.fsf@BLaptop.bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_015408_146690_5E99ACF4 
X-CRM114-Status: GOOD (  11.69  )
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

On Fri, Nov 28, 2025 at 10:49:13AM +0100, Gregory CLEMENT wrote:
> Hello Thomas,
> 
> > Add both MACB/GEM instances found in the Mobileye EyeQ5 SoC.
> >
> > Acked-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> 
> Can you confirm that you will include this patch and the following one
> in your mips-next branch?

I haven't planned doing this.

> As you gave your Acked-by on it, I believe this will be the case, but I
> want to be sure they aren't forgotten.

the  Acked-by is meant for including the patches into the tree, where the
rest of this series is going in.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
