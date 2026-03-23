Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6EFFF483D7
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 18:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoW5rYLxtEAGAysVGkdKlvqxEzY1cDMyZdjH95puVwI=; b=H4kXcm0VTWqBW1
	4rUW/oxvG8mqv9/NFNvPAosgHQi2Uqb0yBdQQkCvXCvwsJ3VwbT2OOZ8KATrD9ksEX9xCHqJ9YPIl
	wwMe79nh8s5j/PzpBpf+ckk9lTnRpnaCMAdyuGFfcnQT7zMLaX0PKkVItsAZ3kSEMmnBfrGdXPRNM
	kmPujLvVbj+qH3VEmqaZ8tw94+UwLuJZ6gKG0c2++ftJH8d4iHJrOFBYOqMDwA7mZjJrWFfT/ZUEB
	fdL1fpK1z0mhvzAJFMN003Eaatt92i8JT1WhFvXDtjgKK1F8GMMtS/za0KDvFoyT01mWeHv0MWj2+
	dq05Qh/z4qVUHjuxANKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4k0x-0000000HLNI-1Yd0;
	Mon, 23 Mar 2026 18:28:35 +0000
Received: from mail-dy1-x1332.google.com ([2607:f8b0:4864:20::1332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4k0u-0000000HLMq-3nff
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 18:28:34 +0000
Received: by mail-dy1-x1332.google.com with SMTP id 5a478bee46e88-2c0c955a481so3556198eec.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 11:28:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774290512; x=1774895312; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zDXVXDlTyWriMoHabs2g4jaDjhygWMksayJaNvHtSE8=;
        b=HUsrbgmfuJHgVKTVY2F0M1K38ihxKyzp/fPGyxXfpRIwY+v8Z0/1IMY3xaALmZzgY9
         ZbhOTSPFIFi3uAjEtCzkKbYd2gQYq+yfVtzN/TA1WVlt5aGjkIDQvhz3x33BbTySFosC
         yNqAHVewmhNNAuH5qTDMW35t1D16VBkP/FgLBchg5bmHSxMri8QtOFcZIimzasq9pzXX
         Mf1ekerSqrgnXcuA5ZHVUQWAyyAhVZkb4yDlCcYpQdM5rTkP9Qfvmhnfw23s7Y42iXzG
         9/ax2gi74RZuLOC9X7BAFeAcsGjWjgran9v5+KkkX4QxliC9WM4Y6CVVzaGnQzbfMLb3
         1tLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774290512; x=1774895312;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zDXVXDlTyWriMoHabs2g4jaDjhygWMksayJaNvHtSE8=;
        b=eAkp+Kx2f3JS7zTyyx3o+lfu9vW9RO/fWSAJpCnMQiWviTilx3gj92ZK3u8rUOQe9r
         QLAcgvW0F4p8n+TlJ+BAwBkfDbCmtIOdt53FHO5xIRrHMyb8i5pBv88jbq1JrVWDl+PE
         AWSOAxn/pJ9P9LLm7dLuuALurl6a65t5mW+n9Ncwmst8SKq8AIzg4t1mW4l84mJgNapD
         P8aLV6Ly4OtrKLPWUylFsIaIAaTEGLQ1QlyZeKDZEOmNzZNgqscAS3oTQ4i6WsPkGcJg
         HlD7Xf/hAGd1dSd6wLvbz1Lzx44A4c8DYCvjkw/OpH7jTLXEfvbAEUS00I+izE00mOLQ
         ACWw==
X-Forwarded-Encrypted: i=1; AJvYcCVKf4nMAzXQ8qmvq8gR2lSkgRhRVnRc7vxkNUwZzigxD93KLk9LVsJR5G+IVJHyPBws2x2Rzh4nkVc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzo6RmSX73vMx4BRJLQLkNOSauqHqahYXGbkQ+UIHSWbLbX58TO
	fNuYw1D7OerH3iQ0qXqi3ZRlmR6U8Ub0uTIS1XjPH9Xq0iRQeh5C9S91
X-Gm-Gg: ATEYQzxyjVVpTX+FD0uu9CmQJub7MhNGqHnWHMWDY/eSSMAnZYIc18rEI2sw42rMG43
	kxt1xIUenV0qpZLd5mOa9VcxYDu/MZw0nY7BcRu6Hw0lVTOHWHIuyIXnC0AGYEFw/ETnBwATAJ3
	ZPHkn/AvYV3Jr8IfoCa+9csUVJLkZOL5Sv/Jnzc8v2dJpPpMfof8LLho70VxrBCMV1E8ZLVCaBt
	pisVEKJif+fFKPH9rQQgGd8GSzHGeeK2wKvT0i49mu4mimVj8twAu6/VqequJ8lYIiYwu7+OmUt
	CyrUaSUzaDhGSl4/ch78Jo52H6aKHPM0BFqmfZctv4LUryTXJytyq5xgGY9KFkgY/NtdE6OpY5d
	TCmLD+5ZDK8hyOjwtEM5zGtxAFZLx+nu0KfvDU9h9lxNhe/vKbKV1OHuW3RHIcpjY3XaOzSvEB1
	6FGKBRNXbUqgm91WqfKGM37oihxfSw9HcslQ1L1g/F+g6bndajMsB5Ov8XND9J5VrB
X-Received: by 2002:a05:693c:2b06:b0:2c0:ad52:e657 with SMTP id 5a478bee46e88-2c109712cedmr6434030eec.21.1774290511733;
        Mon, 23 Mar 2026 11:28:31 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a296:1211:5ab0:bc95])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b17b8f2sm17872306eec.9.2026.03.23.11.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 11:28:31 -0700 (PDT)
Date: Mon, 23 Mar 2026 11:28:27 -0700
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
Message-ID: <acGFksyx3SA0kJ5b@google.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-4-b72eb22a1215@gmail.com>
 <360a8b4a-6507-417a-9fc1-c53b14868657@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <360a8b4a-6507-417a-9fc1-c53b14868657@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_112832_972084_919DAD76 
X-CRM114-Status: GOOD (  14.18  )
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

On Mon, Mar 23, 2026 at 02:00:43PM +0000, Mark Brown wrote:
> On Sun, Mar 22, 2026 at 06:54:22PM -0700, Dmitry Torokhov wrote:
> > In preparation to class_find_device_by_of_node() going away switch to
> > using class_find_device_by_fwnode().
> 
> >  	struct device *dev;
> >  
> > -	dev = class_find_device_by_of_node(&regulator_class, np);
> > +	dev = class_find_device_by_fwnode(&regulator_class, of_fwnode_handle(np));
> 
> The regulator API is very deliberately specifically using the OF APIs,
> not the ACPI APIs, since ACPI really doesn't want to model regulators.

For now? We also have software nodes and maybe we come up with something
else in the future...

I think we should use firmware-agnostic APIs as much as possible, and
only use OF- or ACPI-specific ones when there is no generic equivalent.
This makes the code most flexible.

Anyway, I am not proposing to change all of the regulator code, just
clean up driver core APIs.

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
