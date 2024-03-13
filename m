Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D17F6C54E58
	for <linux-phy@archiver.kernel.org>; Wed, 13 Mar 2024 00:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HqjS3Y2pGTWOYqfl1inRKOY6HU54bnrwaQzXB+EizIE=; b=AJeEmSsJ15gT34
	iS9+JJYFzWCkyObDIi6Cw+Qn16lcepuMCOoL9fS/KIJ4sZeVL/biVieX0yiRB8qGMErYFqL/Cf/0n
	jEGe1sQWR3WlEr+eBM0+OWS9r3t2KGMDsY5jp+0i2azfuwKvOxKjg1qVJAiY2ccYMkT485wmWRt4T
	ahzCqAHjG9GFTPbAPfRWBEcbg8IPhJ59DMkncwA7wsW/CecKdEwoWTtuqx/jm5/PSZqSWKX41E70n
	IdNIkSNny9PgH9bFrhXT0UL9Zswq4Ch6ux+18HhkSbkyJOtKQq1F05VOqXv70pjuBAEx2rA7Dx/Qb
	YcP50wzYL0+7MzYWSd5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkCnG-00000008At8-2gnY;
	Wed, 13 Mar 2024 00:48:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkCnC-00000008AsR-194r;
	Wed, 13 Mar 2024 00:48:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 93FD46130F;
	Wed, 13 Mar 2024 00:48:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC15EC433F1;
	Wed, 13 Mar 2024 00:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710290904;
	bh=JwNSt8qBIgZ0lI4rYKFXA6azdwMl4susKf4soxWbxDI=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=mUI0zndkLnjHGsO/bcsHGfjR15MwnAzcZ4lRsK8pD+DwIWP5bylEnveCQ9TUjN6xB
	 HCRBctDnT83vur/oW8CGtfSNseFhg4Q2XeXO2H8LgOFfXjwlvmmT5/teGjX+fTOFSi
	 yqpPs+4Woy8Gei9WqBH2ZEN1cVGn3MiowlOOVEBN2tXOEqGxhFp86eqnbC1pH2W8wp
	 4SssIHz/IneOePtM2NVTojjC3n8Hw0PAAgKWNfrz2DvfB+aUN8nXNAhhdInvhPPi0R
	 OG46v1JDklHArZUrVOgB4lKFMvP0Fd/uc84gfHRbtIet6aoJ+E1MlRIaTMHJQrv4Wj
	 MNuBCJnnFxbkw==
Date: Wed, 13 Mar 2024 01:48:21 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Wolfram Sang <wsa@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Thomas Richard <thomas.richard@bootlin.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
	Peter Rosin <peda@axentia.se>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	gregory.clement@bootlin.com, theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, 
	u-kumar1@ti.com
Subject: Re: [PATCH v4 03/18] i2c: omap: wakeup the controller during
 suspend() callback
Message-ID: <63oaudxrjdqredpbh4rojcpgjh5tot2tx2gs2kpfplwgjmrluw@f3x2x5us5hw5>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
 <20240102-j7200-pcie-s2r-v4-3-6f1f53390c85@bootlin.com>
 <20240308084240.GK52537@atomide.com>
 <ZfAMT8CDW1VKW0qR@shikoro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZfAMT8CDW1VKW0qR@shikoro>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_174826_389284_85061601 
X-CRM114-Status: GOOD (  15.96  )
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

Hi Wolfram,

On Tue, Mar 12, 2024 at 09:03:27AM +0100, Wolfram Sang wrote:
> On Fri, Mar 08, 2024 at 10:42:40AM +0200, Tony Lindgren wrote:
> > * Thomas Richard <thomas.richard@bootlin.com> [240304 15:36]:
> > > A device may need the controller up during suspend_noirq() or
> > > resume_noirq().
> > > But if the controller is autosuspended, there is no way to wakeup it during
> > > suspend_noirq() or resume_noirq() because runtime pm is disabled at this
> > > time.
> > > 
> > > The suspend() callback wakes up the controller, so it is available until
> > > its suspend_noirq() callback (pm_runtime_force_suspend()).
> > > During the resume, it's restored by resume_noirq() callback
> > > (pm_runtime_force_resume()). Then resume() callback enables autosuspend.
> > 
> > Reviewed-by: Tony Lindgren <tony@atomide.com>
> 
> I fully trust Tony and I assume that this series should go in via some
> other tree than I2C. So:
> 
> Acked-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> 
> Andi, do you agree?

Agree... but who is going to take this? Eventually I can just
this one.

Andi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
