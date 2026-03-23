Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 418C2F4613F
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 22:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvzT/HaUm9y5c1qTqErA2DuoSrCqA4q7f8iCiev4sY0=; b=RJ4PzUuuLznBvV
	xVAHKIm3VHT1+1hDl0ABcKdPvnfoLFL2SGsY6083RAOumHU1PuqMlcCUpD9CSX/kLnKJkgOOUdDaN
	h+M4lB8hir0xVJviwY2FbhrEGoIyW46tGPzGL5eZVC4hRFTrk8FI/ROfPYbhlormJAENQPNLx+SFO
	8N5Aan8VGo/OV3af0UP5dO5T0i6l4QKNfzh/xEEKlp/wsV3XYol6NkPvW1JHm2s9nJ+IBeW4m+IQl
	YoyZQqikHQXAKQDZoR4L3sQUQ4aEWu7FyOHrL1B9IUUrkF4OP/JlUkpCcKZqiKok+NrlIUr4IjqSt
	bcWqFy+5j7nbZbjPyeaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ndr-000000004Rn-49iv;
	Mon, 23 Mar 2026 22:20:59 +0000
Received: from mail-dy1-x1336.google.com ([2607:f8b0:4864:20::1336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ndq-000000004QP-0uU1
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 22:20:59 +0000
Received: by mail-dy1-x1336.google.com with SMTP id 5a478bee46e88-2c0c955a481so4047462eec.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 15:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774304457; x=1774909257; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7kzF6SFWkNpwiVT7Tzq/JseNp5uopL7N2rNpwm2glC8=;
        b=j5jXq8flPE1lKew4E6l71zxqbDNcMtttI9fzclFiS9oyS/0KjiO+PG3XWSaPLDGR+5
         pyyF1J7MLnZuTS96/wvTmgymlNc+fPXaHBzb8pz52lmXge645Fvt3bneVDTGXeVfrYTo
         GKqqZLJDJ8WG6Xc+MghpDknQ0SQoLL+gn9XTiVHG1r0LCRLbtX4do4r6yGBPmUPdKxml
         eHKkLIPtXBRoIcEsSlYpzd37+yLU7VKIItOfNOC5ZsFO+Eenp2Yxqje33mHUSGmYvccl
         MmZdEPCnelmoMlew7IWu/3qkuRAZADJS7ZhBoFlQNyuwbeu32vBd+EXviLRAq01Cc76N
         AQZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774304457; x=1774909257;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7kzF6SFWkNpwiVT7Tzq/JseNp5uopL7N2rNpwm2glC8=;
        b=byzRpYTo9hVcFlCpH2KWVpFfmJB6DRwyC7wQMgXzJXrNsnWVaQDnYRime2jW4XB03C
         k6pVLjW0rmL7YdjLRlbJzjsrKOniN1x7ttakB3oM7pdH16ykKCt16vQAIbQILwOZetsO
         Ckqgk8z+9AkERs4Ad7bUKF7HOMocZGCLWBHo1DZEsc2wfxvP0dNIqkGP1fBzyKWeIm79
         2Ppkyo+jRcKmsOFL/2GcE6y8R2Cv7J5IU2yNi+KFFt1pkCQ0w9WZlywXp5phYQb/zwlt
         7lV/QglEpTZY6Ih5OgBvxHk7NBBF7egxMo06zoAYCjWf9t3Wkx13OJ3Iw7Gj4R388FKN
         lmag==
X-Forwarded-Encrypted: i=1; AJvYcCVl/bOsimDt3SS6JCoRXKe+4STEWwUtX22pzvmkHppnLd756JB/gc+UkXczVkBh46lL0Bt8oxTjwZg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzEF/bAEE9xKxIyE5L6Q/vswt0zsDEA+pjpwbxJK2Fwjf2y8Kqj
	02LyDumppRgRNUpek33wSfwEqi1vTYzqaH0EmcI4K5PSXuacmeTAVfs3
X-Gm-Gg: ATEYQzyZWLleIX6vt7sRVWymGGFP6CzWEhhFmFDYEF0/3WKe0dxnq93dKKvSHp2/I0w
	YazwHj8fZmTUZt8qkTeN4KRaFxzRXE/QHF5Pb2Dvb0+94ZbuElFanD9MvoDj2DdsUm/rekcRz8m
	DjL5tLGvTwJVWaOpXHq36n5rHu14J+uSbYisYJNsabOezNroJHSSux/CnW7hySPGykTsLOpdWvI
	fhFF14BwKgH0LRK/W0HC7qwi/fkS52jyZvvxNNw4wxLscl0xtfv6OoakkTGLGk6sBcUdHFGzNvg
	PPOiFpiJiWNXXdZ2v6t9LAjKaUZ0jKO05FV6YBFpZJN716XoS3h9i9a1lBDX3v5XQ/5VrAD1HRH
	DaVPpn8tTABTHWL9mPIw6bzE7GGF2T1OR7m5mMZfSaSB/UKjXfTpnnG6zwh5IlV+LncQBH1ya10
	XojJnvx1S55v7vqfuEKFW0qxk4eWcyLv1iafXu5yaHHtvpPIvcE8D0x/MoJQXqJjU5
X-Received: by 2002:a05:693c:3b0b:b0:2be:ca4:e119 with SMTP id 5a478bee46e88-2c1097abc22mr6650334eec.30.1774304457110;
        Mon, 23 Mar 2026 15:20:57 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:a296:1211:5ab0:bc95])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2d673asm16033079eec.24.2026.03.23.15.20.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 15:20:56 -0700 (PDT)
Date: Mon, 23 Mar 2026 15:20:52 -0700
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
Message-ID: <acG4hY23zHHCRywx@google.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
 <20260322-remove-device-find-by-of-node-v1-7-b72eb22a1215@gmail.com>
 <32679fc0-c388-4cd7-a030-5f5ed5abab78@lunn.ch>
 <acDLzK8vpptTUMf1@google.com>
 <acEBCBgMV3RrGKiU@shell.armlinux.org.uk>
 <acGGWTmSMuc5h3Od@google.com>
 <acGI4PI3MHML9Pce@shell.armlinux.org.uk>
 <f37684ff-57af-425a-bb18-bd5e8de3bba3@lunn.ch>
 <acG1JNGVBJ2Mf7jC@google.com>
 <f3c51f5d-e001-4a6d-a219-f2e0698f35f9@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f3c51f5d-e001-4a6d-a219-f2e0698f35f9@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_152058_280249_08314ABA 
X-CRM114-Status: GOOD (  15.81  )
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

On Mon, Mar 23, 2026 at 11:00:05PM +0100, Andrew Lunn wrote:
> > BTW, why would not we want to push for the unified binding? They are the
> > same pieces of hardware...
> 
> I don't think the ACPI committee would be too happy if i ask them to
> throw away their standard and just use DT.

I meant if we are introducing a new to ACPI schema... Not throwing away
existing one.

> 
> ACPI and DT are different and we just have to accept it.
> 
> Nobody really cares about describing networking hardware in ACPI, so
> there is no need to support it. KISS and keep everything DT.

OK, but even for DT I think we should be using device_property_*() and
fwnode_handle.

If there is an ACPI support for mdio it is perfectly valid to use fwnode
handle on an ACPI system to locate an instance of mdio bus. And
hopefully the caller of this function does not really need to parse
properties itself but will use mdio APIs (mii_bus).

Thanks.

-- 
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
