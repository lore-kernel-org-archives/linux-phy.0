Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18198F4613E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 22:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWNmrC6JlGM83/bei6Q1chXtje7olelt1pwlpxBI5Kg=; b=F+nABxKOhVhGzV
	OtxrZjHJW/k5WZ80cRrN5rJGDHl8XpN9uGzQY2oP3W6SOTkfaNtKI6s0F9oBVBGahj+D5B0gtb/uy
	MaeMPKMnezbX5eaFax+Ky81T3Iwup8SdMgjaD7v2Xoai/1zeOI+pKu0dKLchUONih1qmNxd/AW3Sc
	ilnh/uAQhHkUCjMDytSY9FyZjfCAeVEWAP16cRgBZFNf9ObBXOgddCr9AMjpl72riHM55htkwQYHN
	YF9OT9q7NC8015Nov76EP9VU15SJBam6QVUpPPEloRJAk537nOdsXb7qppNXXMivNJy8GbZmaSBX2
	nQgKhD+SFRULEmLr2TQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4nVy-000000003ep-2pp5;
	Mon, 23 Mar 2026 22:12:50 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4nVJ-000000003Ys-2dk4
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 22:12:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=SI0+KwkPfwgoDdX+0jEvH5cFTJRTk67LUQ/ONMeOpow=; b=noCTwJeMau3v7UV4VnKCLpWr8W
	hRXYUl4+OExs9pxY2TJcr2o32iliV9RSn3RC+oFjgYV3efZnpsd8Du461lFenp5kt1BIelV4DQcSa
	W2WRCGcQidhFzFUWZuanxinEGa7W4CUzIfW5/C4vR82SiVdrk1Xqrb1bwK2BKSLS5DeA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1w4nV8-00D0AX-Ki; Mon, 23 Mar 2026 23:11:58 +0100
Date: Mon, 23 Mar 2026 23:11:58 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
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
Message-ID: <09072374-65e7-4792-af7e-97d7df93f9bd@lunn.ch>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
 <360a8b4a-6507-417a-9fc1-c53b14868657@sirena.org.uk>
 <acGFksyx3SA0kJ5b@google.com>
 <7d46803e-b285-4e9c-8856-10100fa0ea85@sirena.org.uk>
 <cf92122d-6b15-458a-bf89-189a0a6874f7@lunn.ch>
 <193e194a-498f-464f-b22c-c283c16db6c1@sirena.org.uk>
 <acGzJV3vKhuty3nd@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acGzJV3vKhuty3nd@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_151209_669995_E5AD4E6E 
X-CRM114-Status: GOOD (  16.63  )
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

On Mon, Mar 23, 2026 at 02:41:03PM -0700, Dmitry Torokhov wrote:
> On Mon, Mar 23, 2026 at 09:36:07PM +0000, Mark Brown wrote:
> > On Mon, Mar 23, 2026 at 09:01:47PM +0100, Andrew Lunn wrote:
> > 
> > > How do you handle deprecated OF properties? This is a problem i've run
> > > into before. A developer needs an ACPI binding, so they blindly
> > > convert from of_ to device_ without engaging brain. As a result, they
> > > bring all the deprecated OF properties we want to die into the brand
> > > new ACPI bindings.
> > 
> > Honestly that one hasn't really come up much for me - not too many
> > deprecated properties.
> 
> Given that we position properties as an ABI even if they are deprecated
> we supposed to handle them forever. Newer properties usually offer
> benefits over old ones and that is how users get moved over.

~/linux/Documentation/devicetree/bindings/net$ grep -r deprecated * | wc
     75     361    4195

So networking has ~ 75 of them.

Within the OF world, they are ABI and we need to keep them. But we
don't want them in ACPI or any other firmware. Any code looking for
properties needs to know what is underneath so it can decide if it
should look for the deprecated, OF only property, or not.

     Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
