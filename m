Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B89F6F483E1
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 18:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wM1St0hF8MQIQjY+zKcT53x9ExvPAJS8CYsDO1QnM0c=; b=0eyXJikdFH5CDX
	HFk0tAi4nrrVfm5RHFdHxEuuxoJxlZuvvz1+8d7t/TV/dXCn3Mrd3R8Vk00KjW2iIgMoo4rka8wNC
	eU6mTXxubpmupESrz0E4QM2vFA+5wTVK/Y0cwo/DwxKMx1VQxNcIgZhoJCrQU1AIgZaG6VrDEIDgQ
	WZQLfEyG7ZV1PQ+CLVHW7qiXSJInfbsgU7Ut2/UyGaA3Xw0YQJIL8DzTkWc2OiT7kYllf9/xroXcw
	VYt2eZqafg6MFLlj+rmyMFSrsR75jgcPwYzwv7syVofjKrYhgVBF7jQRzFwlAD9xDIGz9dGDRvw/G
	1Vv2FkwmEBX2s/+lEvEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4k5x-0000000HLms-1Ch3;
	Mon, 23 Mar 2026 18:33:45 +0000
Received: from mail-dl1-x1234.google.com ([2607:f8b0:4864:20::1234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4k5u-0000000HLmS-10SS
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 18:33:43 +0000
Received: by mail-dl1-x1234.google.com with SMTP id a92af1059eb24-1271257ae53so538751c88.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 11:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774290821; x=1774895621; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VnYjc2faOHjkbaG+X0+KOSaQNDxXMdAftkLY6+CZb5k=;
        b=I1GC9BzVkdtGklRE+dE34diKmClOqlfS/oh/Ng9l1NDoM2BTi5mJjrCVptnaEJQI6E
         wcjhcx4s/7k89zx3xHpfWGwZewPicZMYUfs1M9GS9YSqIY1iz2BjN+W3jsGXzTTNhy0k
         roq5F1ZY5dvwrtcVwVz7eCWut7k1DF5LfNRCKBttf2hvodffRBO5xp4MvFZADT2YzQ29
         zjZ1beUu/QZCto7qIedfPJCssZJCbIW1mWy9jw1aYM3QksdSQLJZIG72lSP6GglHW4U0
         hSkZeJDH4W9d59pHAUTyfMLpQgJnEg5NMWzghkUUzYNDzbvzx1vb4kH4ZImgMJAw9dxv
         PQpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774290821; x=1774895621;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VnYjc2faOHjkbaG+X0+KOSaQNDxXMdAftkLY6+CZb5k=;
        b=bqML1YbJ1aaM5ykEGqNLVOQYfxlEJ929nPV69vqTrlowLFfTOIRKA7NPqhl43+KyHg
         5sba+wENPeHnl0TXaEK3ng6ctFo05Wt8yaO5mdFn7rIHhOiCuJZMU5MmFg1P52mgpT9e
         810AUTIS+KOSSdC5D+MkP6w2O8TL1QjbaSxJZ33ljeEYNchHSRSpWbSysKG4ZY/GLrj1
         SblK3DgEdtLxD34xXBHUX1a7l8nsy/uzKXNHiTVXPM60qwpj+Mm9aboDFjzPvlFUljXE
         O58lLw9vQOe9O7CDeLKOh4LkJwpwg/si4SXmcqKrHRQsGqT41Ffvz1MheJ6QPxaR8kEB
         jcog==
X-Forwarded-Encrypted: i=1; AJvYcCW1WsK2f64t/f7DhKjc+8WiUkG5vpYKFfudr+O2f14HqGTgJBFho8JsMFqexbAzuQ37L+IxOebiD2M=@lists.infradead.org
X-Gm-Message-State: AOJu0YxeCA7/S6K67hwMigsZMnJhu1vMhoRbuyhLNkNuSD3GxCpxPwaB
	2Vb10F2AYHRKl4ZTsrDgVbNQKxSyFpGeBI7afKa2W+V1NZkzus4OJ71t
X-Gm-Gg: ATEYQzwSiq8Rx+fV4jiyaU2no8JBrnMOA1FeoPXNKlqJ4IJw7TlvrYoh/OQH7p6V4Ix
	Mtg6AoEDFKYf28pK9VnpZktxW9k8Bzm/OwJ4QN5uIkqMNrrkRCojWvxYPODbx7HqahONyRryHFd
	vpd5Yj2Fj09nmT6mjyAjqIj6+HKhKf7zjTFLMfI7LJdCv2RXlOjOvuBGb6WqtLxruL3BZnr0Gak
	YuEae1DLmPsoZwUi62XJ5xbWEz1U4VTiZnrMVu7wWb785E9LMlKQAyDt9TBWWDuHlZ9AUX3Qq2n
	DhooRgqwr5scN7KVy5UtbUZGKq+MzEUjkvRDBou7o/mEXhpowiee/vCRkXI28aojcsEHiFl3QdK
	+L3bnDhTsBTGwG8hAnyPe8s8CpF3wIzJiRGuc24AEwyGLNxyd7zQhmfJzjoCzu2RN/QCi2C67sO
	JS98cINIQGULNjy8BS5hyEQhUKslx/45oe/jPBX+hksYTFGnkvVfq3kxMRnDM8jhMS
X-Received: by 2002:a05:7022:4199:b0:12a:6c7e:bef2 with SMTP id a92af1059eb24-12a72671ad6mr6133919c88.7.1774290821078;
        Mon, 23 Mar 2026 11:33:41 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a296:1211:5ab0:bc95])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12a733d199asm9391030c88.4.2026.03.23.11.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 11:33:40 -0700 (PDT)
Date: Mon, 23 Mar 2026 11:33:36 -0700
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
Message-ID: <acGGWTmSMuc5h3Od@google.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-7-b72eb22a1215@gmail.com>
 <32679fc0-c388-4cd7-a030-5f5ed5abab78@lunn.ch>
 <acDLzK8vpptTUMf1@google.com>
 <acEBCBgMV3RrGKiU@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <acEBCBgMV3RrGKiU@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_113342_286041_1546B0CE 
X-CRM114-Status: GOOD (  23.32  )
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

On Mon, Mar 23, 2026 at 08:59:52AM +0000, Russell King (Oracle) wrote:
> On Sun, Mar 22, 2026 at 10:17:15PM -0700, Dmitry Torokhov wrote:
> > On Mon, Mar 23, 2026 at 03:54:09AM +0100, Andrew Lunn wrote:
> > > > -	d = class_find_device_by_of_node(&mdio_bus_class, mdio_bus_np);
> > > > +	d = class_find_device_by_fwnode(&mdio_bus_class,
> > > > +					of_fwnode_handle(mdio_bus_np));
> > > 
> > > When you look at this, why is it better?
> > 
> > I think we should move as much as possible towards firmware-agnostic
> > APIs and use fwnode_handle instead of device_node or software_node or
> > ACPI companion. To discourage this I think we better remove
> > firmware-specific APIs where we have firmware-agnostic ones and
> > eventually clean up drivers that use OF- or ACPI-specific APIs.
> 
> Basically, no. This is wrong.
> 
> It may sound like a good goal, but there's an underlying issue. This
> goal assumes that the firmware description in OF and ACPI are
> indentical.

If they are different then drivers will make allowance for this, like
I2C core or SPI core does. But most of the modern drivers use
firmware-agnostic APIs (device_property_*()).

ACPI has allowance for device tree properties (via PRP0001 HID
entries), and drivers should work with them.

> 
> Sure, looking up devices by fwnode handle makes sense, but looking up
> anything that is described in firmware is not suitable for this kind
> of conversion, because in doing so, you effectively "port" the DT
> bindings to ACPI, and it may not be suitable for ACPI.
> 
> So, please don't make wholesale changes that transfer the DT bindings
> into ACPI.
> 

I am not "transferring" anything, but I want to make sure the code works
even if we augment OF with software nodes or if DT properties are used
in ACPI.

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
