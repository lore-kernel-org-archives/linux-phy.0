Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26F7EE81A3A
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 15:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mocbByjmMByc+Y/PS6+pECEr1aT+wouznfayVkjORA=; b=QSBwk6X/Te79ho
	TZW7+c7V3U9f0VwkRBhc5eGIetK8+EdYzFn125ZKA1y93WCoWNaJBJshdxNSKa34yUf/aGpy2Ruw+
	h3ZwSrDNj8GqII59Jsg3cdTbQLHh7hkWNjYu9147EixCEw3c1Yl8yar9sI49xyA8RtfLGi44L+pxv
	zhOW1autuvp4D6cYHxf0c0nlyxUGJX2087K0u3zC/NUDWM4GBgqnzHKsITCYrTke/vGbekhDFAHa1
	TT6H1H5pfdJ/Ljr643GK6PDEzddVd8f3CWOY8a78SWh0y3udOewd8d1lGpkEnQ7Gmt4QzG5x9CUtI
	roWH5uyK9TFPTq69qAWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs0Tc-00000006tD9-3lYv;
	Mon, 16 Feb 2026 15:25:32 +0000
Received: from mail.andi.de1.cc ([2a02:c205:3004:2154::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs0Ta-00000006tCi-1iOh
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 15:25:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=+NuGee1f3YReNLAkZ92SuV7HlsXpngRlfWnVEVSkgmQ=; b=3I3ct1mSQotzkI0CFg0yUeDyPU
	uszNV5kuZ5BoqCMC6ea1ywRQ9F8zCXOL/daxPnD8zkNgUHA+mmizXUBINHJxHNlw7hMr4s0IHioh9
	5rlaft8K+ZH5XDqp0Yd3XdFnTcTPA0XAPgtXdL/jwazhLlNkinKzlgXymtdDixCgO7CocgnDF5suu
	iCBCt9pqxSEP8lbjwY7jbss/nmXL51hQ0fv4jm+WRPHHO549392zOcsxYzRk4jTZQeTcsDoqFc90M
	+tiUVHW2jQH47ycjEgqCjs3dAESLSss5wECck4GJNgxvFwo7SB0sPhR8g79fm5Jur8p5mkQOASMuj
	68a4dnlQ==;
Date: Mon, 16 Feb 2026 16:24:06 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Josua Mayer <josua@solid-run.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Marc Kleine-Budde <mkl@pengutronix.de>, Vincent
 Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Peter Rosin <peda@axentia.se>, Aaro Koskinen
 <aaro.koskinen@iki.fi>, Kevin Hilman <khilman@baylibre.com>, Roger Quadros
 <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Janusz Krzysztofik
 <jmkrzyszt@gmail.com>, Vignesh R <vigneshr@ti.com>, Andi Shyti
 <andi.shyti@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus
 Damm <magnus.damm@gmail.com>, Wolfram Sang
 <wsa+renesas@sang-engineering.com>, Yazan Shhady
 <yazan.shhady@solid-run.com>, Jon Nettleton <jon@solid-run.com>, Mikhail
 Anikin <mikhail.anikin@solid-run.com>, "linux-can@vger.kernel.org"
 <linux-can@vger.kernel.org>, "linux-phy@lists.infradead.org"
 <linux-phy@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-omap@vger.kernel.org"
 <linux-omap@vger.kernel.org>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>, "linux-mmc@vger.kernel.org"
 <linux-mmc@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
 <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v9 1/7] phy: can-transceiver: rename temporary helper
 function to avoid conflict
Message-ID: <20260216162406.0121dd91@kemnade.info>
In-Reply-To: <20260216092914.kmvl7aep7dantcsd@skbuf>
References: <20260208-rz-sdio-mux-v9-0-9a3be13c1280@solid-run.com>
	<20260208-rz-sdio-mux-v9-1-9a3be13c1280@solid-run.com>
	<20260212164823.mbeycqwzsy2dfq6e@skbuf>
	<CAMuHMdVOqovkugmCnR4FOfk8VkQyN_dmyKFzbsOSN0mPKQedeQ@mail.gmail.com>
	<f9ede0d3-6a37-449c-b62b-a5c761ece097@solid-run.com>
	<20260216092914.kmvl7aep7dantcsd@skbuf>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_072530_481479_B74F32C6 
X-CRM114-Status: GOOD (  25.99  )
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

On Mon, 16 Feb 2026 11:29:14 +0200
Vladimir Oltean <olteanv@gmail.com> wrote:

> Hi Josua,
> 
> On Mon, Feb 16, 2026 at 08:19:27AM +0000, Josua Mayer wrote:
> > >> In the future, when you have a series with cross-tree dependencies,
> > >> please try to think of it as individual mini-series for each tree's
> > >> 'next' branch, and specify clearly that you need stable tags (to be
> > >> pulled into other trees).  
> > 
> > I don't really understand how I could split my series up to avoid this 
> > issue.
> > 
> > Due to the fact that one (and now two) drivers implemented local
> > mux helpers, to undo that an atomic change must be made tree-wide.
> > 
> > Meanwhile it must be avoided that while the mux core helpers are being
> > tested / reviewed, that any tree adds another driver-local mux helper
> > like appears to have happened here.
> > 
> > Note that my patch-set did go to linux-phy@lists.infradead.org list, too.
> > 
> > The second challenge for this series was that mux framework is being
> > enabled only by drivers Kconfig "select" - and not possible by menuconfig.
> > This is e.g. responsible for being unable to test =m build with arm64
> > defconfig - and lead to it only being detected through kernel robot
> > x86_64 allmodconfig.  
> 
> To avoid this, a combination of developer due diligence + maintainer due
> diligence is probably required.
> 
> From linux-phy perspective, there will be some automated build testing
> (which did not exist at the time of your submission). This would have
> caught the 'hidden' devm_mux_state_get_optional() call present only in
> linux-phy/next, when testing patch 2/7.
> 
> But, to work, the build automation needs to be able to apply the entire
> patch set on linux-phy/next. So expect some pushback if it doesn't
> (hence the recommendation to send a mini-series to linux-phy first, and
> request a stable tag).
> 
I do not think that is at all the duty of the patch submitter. I think as
long as every dependencies and side effects are documented, it is IMHO up to the
maintainers to decide how it can be merged best. They know best whether there
is any danger of conflicts in their working tree because that is an area 
where people are working on. Especially this patchset is around for months.

 In MFD where it is
more common practice to have cross-subsystem patchsets, once acks from
everyone are there, MFD Maintainer creates an immutable branch with a tag.
The maintainers of the affected subsystems pull it in. 

Regards,
Andreas

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
