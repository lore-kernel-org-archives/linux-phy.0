Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2543EF483F8
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 21:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ1V5VChxojNsou4lpZ+Ew9OFi3i36+Hd8HA4KTICVc=; b=rdy4MReX3x8h7/
	hdreD//mu3yc+88u2IlATPGHXF5mCPW5qIxeHwPr+soCGZH3QVCabOEDH8FLsV0kkS/W51kAYR3Lh
	Z+tCvtc+SZAdaPdHsj0J1Zo2h/lyOkwO21KXgBZmWFISUguRUVMoplpYIQs6C0BzcTzy1ATbyDNVb
	3NiYJykVRKnyG0g36xQWJEVP2TWp/32ioOaaf6pBEctwds8BG4wodstIrTXDqvRaPqvgpGeoxvUbA
	wxAoNkGH0po8mXy5j9ZiL9ZnAf9hl9iqHUsaAL61ZoHf0ml+2z9Jp3HQvY7sEVacBZIzBS8OLnrN6
	Xjy738ZGZhLhLSTm7WJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4n9v-000000002Vy-3iR2;
	Mon, 23 Mar 2026 21:50:03 +0000
Received: from mail-dy1-x1336.google.com ([2607:f8b0:4864:20::1336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4n9t-000000002VJ-3uWo
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 21:50:03 +0000
Received: by mail-dy1-x1336.google.com with SMTP id 5a478bee46e88-2c107ef474fso1408720eec.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 14:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774302601; x=1774907401; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+m0/AdxnnWyHs/Fd93ISLCpoYSuqRajs8ccdfR5letY=;
        b=jLHSN/6lWtfK7FyB9WXNOry5XTtxN8acClTH+qwrhHljZPoXcv01bW3qNx8acdnPt0
         OeY66L9BgOOQH80vF9waK23rQVTlY0ryu16IA9kTP5P4A8RtDrKOaSH2O5uCm5rzN6qg
         dbsL2vEH8EvHbayI8IEwvbY/fCjXbtC+GNBQaF84GFlQFzeyhvf7WIy8XAAFqFbI0Hxw
         jML9RC4mcvf8FXL2oEVPMPxUMjDyXMKcZlCBL+howM/wQnET4d5w4HnMf8AYwXwqFgWw
         6Jp8xN9ocC7hbZs02YnasVJedbqejmm8Cl0RYPLJwtnKkVSPa/8ZMH8m2Tr33p8KUp/c
         okFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774302601; x=1774907401;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+m0/AdxnnWyHs/Fd93ISLCpoYSuqRajs8ccdfR5letY=;
        b=pLHStHKUNMFFxClzddZr7bxEOo0KzOWVnxlYetjFnnYn7l2kJdY4Ql+RI+cXVwLWE3
         BYG5zyccP5iQ0JSox2Kx/J/wAOX3wIpsxAciCjnAnPFTvTrpiVZaoduqu8UqL0ke33+H
         MdHiiT+/MU0LXeEv5Dx6uvbpWk6gn0I5niE6T9xLmw2UpO0zBmRFavdw2uiuCXfaaV6p
         L3HWs8B+emWW/syu8PVgGgLprGHHK/Xmy+XZseN262BCMpjzTPTBJTiaKgiBZ7s67lBJ
         vRCPwY7cwMlDqk7BUzIN5JGfEaAWOWCsy9zgc9AvWdJFE7FvwcftGs2FTsXM72oNLWWn
         ZrHw==
X-Forwarded-Encrypted: i=1; AJvYcCXANMg8wEe+sZryfYCMifXaZ9GevKlsc+NbXzSuUvS2wHTca/fokq++jZUbubVdOsh64QByXLAJgVg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3q8702un6tEk5MVzOi0dpMaT2FHYJ4NATycQcFXr0YQCmLAXx
	LM4brMKAk77JDbIhd6TGEzyK0HjW9CccMau5ynxAmzurhq+ZrSI28cTu
X-Gm-Gg: ATEYQzyCwOXf320Aw0MFCVjEWpiEE+SVkuRZ8mC/Ykj7eZYwFPVXYslWKQwV4gyxiVR
	gZUQ96r0bN1svhlXiFv4QP9sVKXulSgAvObfh9OHIRrsuqfi3oT469vXcYvwm6hmrSrCTijfPTG
	8G2JYo0FvW8sVjqGdWuJFHbDbEsHNKefJKBOWmm6utLUY1wt8Wk7fRe3w5bq33wV8tvpmKBgBXg
	A74wYFlBxOTtEsa0R18NBPRjZ7yILlSaU1CWGbxyzKY1ueLljV2+F9UcsxkRoo7Q30+eic8Xr5b
	YVj661INFrxG6vmWwl40OU0ANbzTYdx9G+pwYXC5fadvGuWvWDF7NPRn3md2C7ZI1/gq+dfztzZ
	+Zuali6GBvKcwPqE8j3C1Imk+kHQb0eYzdByKkYmdPNt46umQ8iQ4q4KYFKowlpsblXQi/z2FyB
	apY55cJtmemNjfTDfI+Zm2sdc1+QWHxVhp5Cl3iMBZ/1bENV9GMx+4zbmcv0I5Ls6K
X-Received: by 2002:a05:7300:72c7:b0:2b7:1e86:3604 with SMTP id 5a478bee46e88-2c1095e6a9fmr7621666eec.6.1774302601091;
        Mon, 23 Mar 2026 14:50:01 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a296:1211:5ab0:bc95])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b31ebd5sm13412438eec.27.2026.03.23.14.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 14:50:00 -0700 (PDT)
Date: Mon, 23 Mar 2026 14:49:56 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
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
Message-ID: <acG1JNGVBJ2Mf7jC@google.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-7-b72eb22a1215@gmail.com>
 <32679fc0-c388-4cd7-a030-5f5ed5abab78@lunn.ch>
 <acDLzK8vpptTUMf1@google.com>
 <acEBCBgMV3RrGKiU@shell.armlinux.org.uk>
 <acGGWTmSMuc5h3Od@google.com>
 <acGI4PI3MHML9Pce@shell.armlinux.org.uk>
 <f37684ff-57af-425a-bb18-bd5e8de3bba3@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f37684ff-57af-425a-bb18-bd5e8de3bba3@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_145001_975005_4DF5F36F 
X-CRM114-Status: GOOD (  14.65  )
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

On Mon, Mar 23, 2026 at 09:15:11PM +0100, Andrew Lunn wrote:
> > This is not "foreign territory" - ACPI in general doesn't want to
> > describe e.g. the individual components of a network card, unlike
> > DT.
> 
> It has also been suggested that the MDIO bus should be added to the
> ACPI specification as a first class bus, similar to I2C, SPI,
> etc. This would make it different to the DT. So we don't want to
> encourage developers to use the networking DT concepts in ACPI, it
> will just cause problems if the ACPI spec every actually covers the
> use cases of networking.

BTW, why would not we want to push for the unified binding? They are the
same pieces of hardware...

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
