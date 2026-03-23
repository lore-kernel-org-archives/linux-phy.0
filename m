Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0100BF483EE
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 20:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7VEFRYOT8cG0Acyg/1vUWIGVG/RICl9QKSSoJjrgJ3w=; b=h3JvdrP6LNhI+O
	nnPp95W0zKIeFMkMFEb7F9HeJPZRagFmQjAS/jEQ24IgA6SEoADDFjD+GaIstIyEcaR7wWEOsDNJ5
	UJN73ZZsh6FMdhNcPxi+zpecoWcATA0YwonZJ6fSMyNsrb6FUJ6zmOqUuuCltQaFCPOb3iDn+SO0f
	rbpyAE656bo302wffJu6v1FPmzucmROKsoaLXpavinvPsS29CeE4l4ttlT2yY5TD0w+Tp9kKZCc2H
	MQ9ajM2zjLpLEJot0rXI4Yx+jHIVN/lUcXFNaDE2BINYtg5yBo8Ty3AIs6LY12Vgdf3I+mB82GaOh
	KkjNsVP1/M8bBqLFmzHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4lTR-0000000HX46-2q4V;
	Mon, 23 Mar 2026 20:02:05 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4lTP-0000000HX3M-0int
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 20:02:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=xhhrrcIXVAdZgZvrCjN8mX5O+B3R+l308Q4Vj3KbAK0=; b=4xcWL833CUngH3xiCGV+iMeXDh
	g/1arPn4ajwo2wKPN2HvwR5tdu2/TdHpSNwYA8NN9wSgr8BklYNT02WIi2JCzlsd492f9AyXDxqra
	kP33A8lJeoanNLMB8UYkPnV3fxKNfaM8tlx37sriWCZ0W6aqC48vkhoAm/EHzJj64PTU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1w4lT9-00CzQo-JA; Mon, 23 Mar 2026 21:01:47 +0100
Date: Mon, 23 Mar 2026 21:01:47 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Mark Brown <broonie@kernel.org>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>, Peter Rosin <peda@axentia.se>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-spi@vger.kernel.org, linux-leds@vger.kernel.org,
	linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH 04/10] regulator: of: switch to using
 class_find_device_by_fwnode()
Message-ID: <cf92122d-6b15-458a-bf89-189a0a6874f7@lunn.ch>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
 <360a8b4a-6507-417a-9fc1-c53b14868657@sirena.org.uk>
 <acGFksyx3SA0kJ5b@google.com>
 <7d46803e-b285-4e9c-8856-10100fa0ea85@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d46803e-b285-4e9c-8856-10100fa0ea85@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_130203_212457_6218ED6B 
X-CRM114-Status: GOOD (  20.99  )
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

On Mon, Mar 23, 2026 at 07:05:13PM +0000, Mark Brown wrote:
> On Mon, Mar 23, 2026 at 11:28:27AM -0700, Dmitry Torokhov wrote:
> > On Mon, Mar 23, 2026 at 02:00:43PM +0000, Mark Brown wrote:
> 
> > > The regulator API is very deliberately specifically using the OF APIs,
> > > not the ACPI APIs, since ACPI really doesn't want to model regulators.
> 
> > For now? We also have software nodes and maybe we come up with something
> > else in the future...
> 
> > I think we should use firmware-agnostic APIs as much as possible, and
> > only use OF- or ACPI-specific ones when there is no generic equivalent.
> > This makes the code most flexible.
> 
> I think this is a worrying idea for core code like this, we have
> specific firmware bindings for specific firmware interfaces with the
> different interfaces having very different ideas of how things should be
> modelled.  The chances that firmware agnostic code is going to do the
> right thing seem low, and encouraging the use of generic APIs that might
> happen to run OK raises the risk that we'll get firmware vendors relying
> on them and leaving us with a conceptual mishmash to sort through.

How do you handle deprecated OF properties? This is a problem i've run
into before. A developer needs an ACPI binding, so they blindly
convert from of_ to device_ without engaging brain. As a result, they
bring all the deprecated OF properties we want to die into the brand
new ACPI bindings.

A agree with Mark here. OF != ACPI, and anything which makes it appear
they are the same is just going to lead developers down the wrong path
and increase Maintainers work pointing out all the problems.

    Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
