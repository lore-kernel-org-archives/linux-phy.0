Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B896EF483E9
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 19:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwK9dXhKQOoHOVt3EQXg7MZffdKe9pz4fP/QeJnNm10=; b=qCSnk2csIAo36e
	3IkwPCnGY+i9JrpFIVrfFnC3OLSou9WGa1brfzboYFCz+pIeItpAC/jxI9v1O7dRRn80BtJ2ryhjf
	+XmQCMLYE17F29r78S2AoAhQyvZetigAH4fWozCcoSlsrEEi7vnYsmP0FkMuci7+qZV4x3xSJ2D1q
	Y7jHVhlIGi0Pu+mcMz8uY/h0dz5Dq5CYjSTzfQppZ6DphgzyBQja4xn1fEKUJuYnKGz1C/cW9IIH6
	P98ac5kI8bC0UOg2R13Qy77p7/2vDRePtL1cfOW9yhkWowKG2hjJZYx3J0RJzTSG1IMxuwFxQzLZa
	40q/PgtDKD19Tl5FgZog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4lA7-0000000HTZh-24be;
	Mon, 23 Mar 2026 19:42:07 +0000
Received: from mail-dl1-x1233.google.com ([2607:f8b0:4864:20::1233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4lA4-0000000HTYQ-2hku
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 19:42:06 +0000
Received: by mail-dl1-x1233.google.com with SMTP id a92af1059eb24-12a80c36350so1830579c88.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 12:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774294924; x=1774899724; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YdMs/q66h1+QBJjH+XkkqQHaHRaGP3OKtdQi49odTsU=;
        b=sdTXahwtgoMYZUUX8lsxiLE3yWt0mqP06QrWzMR58S1U4lKs7g9y8BXi49cPDGTjRV
         NOUWZ/U7GraPCaYdfHbtfV1cAIC3tvPLS3OdD8S6eXAPepa6ayihrVNchDBPBK5NPj0g
         uYCQ1a1GN8n9xK6sSVcrUqzyTMrAL5W0Fs+oM5R1oZjc8ipdxyMYWyigiqWB4sbEklPu
         dqF4duVDmmLTDDrWoCgEkx6zDc6EjlneVkuFjZ8DU5dISxYnZJGp2bgBKebHsA3Kazli
         cZ56Z5qT7QKhxpBi6wHrnBNUCZppK3e/NOEbIeUp8MZOUaYJnYriCkC7UZonE5PVE0P+
         /pBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774294924; x=1774899724;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YdMs/q66h1+QBJjH+XkkqQHaHRaGP3OKtdQi49odTsU=;
        b=Xlr2hKWfjtQbsenX0DVLhrWmLkbwZ5dnKU0KdsqgVT1eAK1nqJIz9gWf1aeMLlztkZ
         YsXptAtCyiKAAJOb2euLZ79gAsNyCdb3pRX1QQZUsy7dtcK/UAJWNNjmvdfTdNvXXCOP
         ewQ2yavGsT3ZQYxN95gjpgxdnDUdb3ADfNYgzgHtRxwKVB/ymARZcNWgOmNVMiaU6SuF
         sVuWazQBrSgK0Uk3AvpZXHkqyfyWoV395mUgQnjeRB5eDLK/rrBvqhB1rPlCosLgoOQ/
         vvwP9gdD9NuZfDWYd5kcAOhWBbo6/sO9rZgqzPFJvZm7BRALVP8STPAt5Ooodmxdm1e9
         skWg==
X-Forwarded-Encrypted: i=1; AJvYcCVU64Ldb342z/fn2VyH4BcLdaMLvmgpGclZTQIZfHAE0/TpJ0xISwpzS0lZizOaE/0wgxFoApG7K0M=@lists.infradead.org
X-Gm-Message-State: AOJu0YyLiP29gbAZffVgoTO4rnwi1DNKUASpkfMfbNuIf5RwuqFLEo5b
	fR4Gf/LGZrBMU929wmrl0HOaVTv+tgvbHMAEku/VmKLmGaD3BBd226Ea
X-Gm-Gg: ATEYQzz9AX/JMB5P2nuQaGJeDItRDdkvcZGAoQ4W/qNkYtvDzUYQiophw7EH/EyfP3z
	PFMsoF+9MOJZKsPUTKnUyt1n+KjdlDL6/WOd1jQa82th/zTB8aPTa7o2T0Xb+SWW9b0zRue0UlE
	rzuzYKxNpGzNxn/69xCELqxe3kBeMI7uiLIpKBcfLtsoh3IF21RyqnwAZ3VK8FtCzgJr+nC1F19
	J0DOsZlIyY9l+I6K0hXCJhp2zzDrOdl+em6Mze9FDrFvFLheWMgq58aU7+PB/RGk5DjyKJLlU9m
	zqHq0fvBb7CaZnNCgnHC1sPJiHZk7ihvUyfaXQdqPyGIsS+D8W1FjPAnDs8293DW3b5L8DLb4g0
	NwIm2a8wc4yNv4unWJfPEzZ1pvJpQFlaJ6p5j7CIC7usI7KS0ojspwQSuooPKDyLVa4de0fdWBp
	4heRrwI+haA2kLuhxqZow1J1/HSJqCTLeadBL1luybqPRHdioMQQoR+atinZbPB7OG
X-Received: by 2002:a05:7022:6713:b0:128:d1c9:3633 with SMTP id a92af1059eb24-12a7265f60dmr5533874c88.13.1774294923678;
        Mon, 23 Mar 2026 12:42:03 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a296:1211:5ab0:bc95])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b17b8f2sm18088976eec.9.2026.03.23.12.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 12:42:03 -0700 (PDT)
Date: Mon, 23 Mar 2026 12:41:59 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, Lee Jones <lee@kernel.org>, 
	Pavel Machek <pavel@kernel.org>, Peter Rosin <peda@axentia.se>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Moritz Fischer <mdf@kernel.org>, Xu Yilun <yilun.xu@intel.com>, Tom Rix <trix@redhat.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-spi@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-fpga@vger.kernel.org, driver-core@lists.linux.dev
Subject: Re: [PATCH 04/10] regulator: of: switch to using
 class_find_device_by_fwnode()
Message-ID: <acGWJf1AGXT1xduM@google.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
 <360a8b4a-6507-417a-9fc1-c53b14868657@sirena.org.uk>
 <acGFksyx3SA0kJ5b@google.com>
 <7d46803e-b285-4e9c-8856-10100fa0ea85@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d46803e-b285-4e9c-8856-10100fa0ea85@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_124204_683403_8E8DAADD 
X-CRM114-Status: GOOD (  22.87  )
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
> 
> Software nodes are already a bit of a concern here TBH.

Firmware vendors can introduce incompatible DT bindings and have them in
their devices too and we have to deal with that... 

I think if this pushes closer ACPI and OF schemas for at least some
subsystems closer to each other it would not be a bad thing.

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
