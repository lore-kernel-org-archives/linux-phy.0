Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC3ACF483E7
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 19:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5sb/zf/fbe/eu4oypIwVBo/51InNuRH3YnElJj+epI=; b=10b5hluvMkd9pz
	peDBPVTvvSaL8mTfkd/q7cD7wVZUf/rvHaoaVl6PWFt22Cnzk5Ik4xOlQ8FQC+OKovt9gq+XdP67W
	bMnbFL6nVac3aj8Pep0jYWnS/tHRFmOdHqUkJ9K4cveqnqIRaZ6QRtSPilwh75yN8gv+K31RjE462
	S7C+ndyPlspbpFYvZOQ8d2fueicx0LPpT4Yh7sjEPU2X7ufu/nyGrbmGNEZlcYTmP+Z4a/0jdhJRp
	dOsBGSQizijgZ6Gj9VQuOyi1r77Cqg8Q8oiXZGMtzNMidMgX8UZL96qqQV2PGqrfEbuwoY4x/Cee3
	rVJZjYgXAtdSyOp3jUZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4l3q-0000000HSJZ-2y7m;
	Mon, 23 Mar 2026 19:35:38 +0000
Received: from mail-dl1-x1235.google.com ([2607:f8b0:4864:20::1235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4l3o-0000000HSIZ-26Fv
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 19:35:37 +0000
Received: by mail-dl1-x1235.google.com with SMTP id a92af1059eb24-126ea4b77adso4712318c88.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 12:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774294535; x=1774899335; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hsALcZ16tevmJ3ng05DYY6tY5JjgfE8hJRfdYF/sgZQ=;
        b=je8q5JqK2qegAJUTm155PM37EbtZQbD08QPvt46uw+XDipghKSDfGnWSAff43q9DSX
         d7bMBVLJXpFEG9iaqw0UCjJyM0F36/TP66GPirqnDP1f0um7UKmUNv7f22TbGhRwsuoa
         A1dOP3TlBnYxNJxlbAXA0ZsDyYUTdvSiPyK1jyAtQ+BZ7FAh7e0+UoIVqh8Ea4ghW/US
         4ph3khNr32Ik4yBva3SeTeOZvB1qja+IJVLHSOpG9rolL79YTEQiXDomf+vWVw8hBR0b
         aVxaioq51jVTYoS2hbY3gXSnA6eoORWRqkaBADIG+LaX05kHTCCEMUa+p3q34YH62Fr6
         xb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774294535; x=1774899335;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hsALcZ16tevmJ3ng05DYY6tY5JjgfE8hJRfdYF/sgZQ=;
        b=ZzoS9QHj7IOqc0Kwdj4DakVhEBzgkPv/+vjP22h7CuLlh3clEGqAlC8IGrVXbDO5mo
         8ZmxAMm8dPT5wlhN90qDSEhusCFRqoEVj8kftH4KyiZqwwDvWv5+j+cmfIWphab7Nj3A
         O8qblwPTJGECEJW/+jNBniur8Hhzq3y7lqGVV01PJnORZptncXsWmEQPO3gSeKjEciS6
         qDLMvCrLVDLqEHL5vHPv0NPNOcm1DODwi9uDM73c9Yc0DFJuiar0PpPPKUnz5lKhQJvy
         9t7j2AR80uiIAVyL8tmp03S+534+NyEDGeyyKGRh/RruzUxie2ZbUrr1+mbBOrwGRDbH
         2Ygg==
X-Forwarded-Encrypted: i=1; AJvYcCWCKY/7VQyA4xF42fCA/84/8CdXogEjj3R/ugaIlm1Sekz19yeU4lkzMHKdPK9JEz4ZV1sM86PkQqY=@lists.infradead.org
X-Gm-Message-State: AOJu0YysG+ec+z7CSCYTtHGYpF1A/gChxjznZIor94BQT6AmouuVYk9S
	JnWtMWfHNMgC1I/G5wEhWJnAuFjxFGbSxrCI85yJFYHgGqlcI4V0wImk
X-Gm-Gg: ATEYQzzWyCVer/HNy826lEb3jlJPBA+zhMVWGghpF5eIXqwJtHUWys3vah0DOYDEm/z
	x3sJ/QRUIWIw6XRy5rZFX9TLU2Zs5l57VVxkPPsTXtCOpxv9JLgiY+qhBTzUfYZf+jRI6xaUVBg
	Y/hhLldobqOFRO8u3dChhJdfPzdc1mAq7ywwa7nQt5oePehP9SE6dws1PDyhQOPCwIsRiocPNAM
	BFbVQL+jtqmHCJr0YfknF5GDUoN34n6IiahnqOcCmZBkgme9IWGXonaemKTQC7lQQ1GVlkO+POG
	fOreJPwIoGBxaIz0CmBp4Gka6BxpXN33kEnEJZeg94gm+F8FYgk5FpanHw4UyAbW2r+LrYq5+GQ
	MWOjcd3Ogq4qVchktsL7fgbRjXGECEehPjsct2EvVpvTZKGbVesfxaj7S71CNij4mh6vA3VmX78
	uYmCNzKcqJIlySxHdP0dTLUggaCgKezXY8U4h4UDEKGGU+E53bc0rpE1dWuPEd+B64
X-Received: by 2002:a05:7022:6981:b0:12a:6ab7:3f9e with SMTP id a92af1059eb24-12a72671127mr5823640c88.10.1774294535335;
        Mon, 23 Mar 2026 12:35:35 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a296:1211:5ab0:bc95])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b17d1ddsm12967046eec.11.2026.03.23.12.35.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 12:35:34 -0700 (PDT)
Date: Mon, 23 Mar 2026 12:35:30 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
	Peter Rosin <peda@axentia.se>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>, Tom Rix <trix@redhat.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-spi@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH net-next 07/10] net: phy: switch to using
 class_find_device_by_fwnode()
Message-ID: <acGTaZcF6GwkmC03@google.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-7-b72eb22a1215@gmail.com>
 <32679fc0-c388-4cd7-a030-5f5ed5abab78@lunn.ch>
 <acDLzK8vpptTUMf1@google.com>
 <acEBCBgMV3RrGKiU@shell.armlinux.org.uk>
 <acGGWTmSMuc5h3Od@google.com>
 <acGI4PI3MHML9Pce@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acGI4PI3MHML9Pce@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_123536_557821_0E1B8306 
X-CRM114-Status: GOOD (  30.84  )
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

On Mon, Mar 23, 2026 at 06:39:28PM +0000, Russell King (Oracle) wrote:
> On Mon, Mar 23, 2026 at 11:33:36AM -0700, Dmitry Torokhov wrote:
> > On Mon, Mar 23, 2026 at 08:59:52AM +0000, Russell King (Oracle) wrote:
> > > On Sun, Mar 22, 2026 at 10:17:15PM -0700, Dmitry Torokhov wrote:
> > > > On Mon, Mar 23, 2026 at 03:54:09AM +0100, Andrew Lunn wrote:
> > > > > > -	d = class_find_device_by_of_node(&mdio_bus_class, mdio_bus_np);
> > > > > > +	d = class_find_device_by_fwnode(&mdio_bus_class,
> > > > > > +					of_fwnode_handle(mdio_bus_np));
> > > > > 
> > > > > When you look at this, why is it better?
> > > > 
> > > > I think we should move as much as possible towards firmware-agnostic
> > > > APIs and use fwnode_handle instead of device_node or software_node or
> > > > ACPI companion. To discourage this I think we better remove
> > > > firmware-specific APIs where we have firmware-agnostic ones and
> > > > eventually clean up drivers that use OF- or ACPI-specific APIs.
> > > 
> > > Basically, no. This is wrong.
> > > 
> > > It may sound like a good goal, but there's an underlying issue. This
> > > goal assumes that the firmware description in OF and ACPI are
> > > indentical.
> > 
> > If they are different then drivers will make allowance for this, like
> > I2C core or SPI core does. But most of the modern drivers use
> > firmware-agnostic APIs (device_property_*()).
> 
> What is appropriate is up to the standards bodies responsible for
> the firmware. ACPI has a separate body, and we can't just dump
> the structure we use for networking into ACPI. So no, you can't
> just switch to firmware-agnostic APIs for networking.

So I believe there is a difference between deciding:

1. What schema is being used on a particular system - it may be
OF-compatible, or ACPI compatible one, and ACPI may support
OF-compatible schemes for certain subsystems or individual devices, and

2. What is the API to access the properties.

There is no harm to use device_property_read_*() universally as well as 
not having OF-specific APIs at the driver core level. What matters is
schema matches the system type.

> 
> For infrastructure where we lookup stuff by some kind of firmware
> node, I have no problem with converting that to fwnode APIs,
> because that doesn't transfer the DT description into other
> firmwares without prior agreement of the appropriate firmware
> standards bodies.
> 
> This is not "foreign territory" - ACPI in general doesn't want to
> describe e.g. the individual components of a network card, unlike
> DT.

I think we actually broadly agree? What you are arguing against is
saying that OF schema is guaranteed to work on ACPI systems and vice
versa, but I am not saying that (although for some things it may). But
still most OF schema can be handled by generic APIs (either
device_property_read_*() or fwnode ones).

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
