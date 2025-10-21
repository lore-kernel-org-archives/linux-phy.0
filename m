Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C931CCD184
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 08:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IclE3cInQ4OSRZDtWfw3+z52EqI1qf+wVkC5g3gP+Ac=; b=cvAdfWUgR/NBTN
	n39Fy8iuA85kiWqh1P7R0dX9AyA7aRGpLP0F5YtK6g5/NDv1LK3IXDGgkNTk3mCUlvydoR+Ffnz3T
	6aL0WyXTaGPLlsl7bx3B06NwJ1iuty4YA8Lx84N1wGPd/+HJ2QKj/p6cqPk5TkVM0y6cnnok/7A/W
	PBCaYSxq7gj0ra/hTB3CzmxRuSceqdhj0TrwkCfAXSDhpiCsrjFUtcL5vpxi4Mk2YI19ClmrgJ7ON
	sjiLe6NmBtfvp2reOHIfu9ba/oFC/vJiXVSMXXEinC/L3mL9yDPvvZj7NC6CyX/LZPNFlIyjeaUae
	J6Xu7jkLxLwyGDeszh1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB82e-0000000GLGZ-1fM6;
	Tue, 21 Oct 2025 08:48:28 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB82b-0000000GLG1-1dMX
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 08:48:26 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-b50645ecfbbso1048143866b.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Oct 2025 01:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761036503; x=1761641303; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GMptF+S5n4kiasdmKEC8kIdkkuMH6YPuyPq0nTtQcdY=;
        b=Lt+a5pCdOlhKaggPveM3MASxvigiZ288lYnFbYOLeR7Mygeq1fmwPpMoiNa9vIcBh4
         19QIBOxQ9IMRrOp8Tuf0+VP4v25cKr5+RONn3m+BNPuMQQ6Y8z/cI63+zmzEz9Brt/xi
         5w9CJG00TnxS/7wG0r9PDxMA45XQXoNaFKkdyd1QM5AUAXXR66S45B1a1xziBQpnA8WT
         oeZ8zixLZVzKUPfVfYDJECnn62xyu+GkwotjC5oey+0479rtl2vg3mlI4uk/2rnPfm6X
         igViqgircqNrVRP9bdJfdGqTWqOpbjROkoztKXtmIZx8i1gCgtdfZrOQyiQ6DItZc8it
         N0uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761036503; x=1761641303;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GMptF+S5n4kiasdmKEC8kIdkkuMH6YPuyPq0nTtQcdY=;
        b=czRfiSXMOYrbYDtSSkTtrtCtentDE2RC+RCiYCVpa2D6aMPwrO41Gsu22RJ7hflnc7
         S7o6ddLYkmXySj30FEURobhJpWgCB75yHFKxK8CD+4NUfnw6mYPJIc9jSx9DaZxaXzBI
         SEmBXtWaW7yc3nbvWp2gpkcAIQAEl4a+Ahz6klbEvPeFVOkMjI1qynnaJ9Gh68t+ZhnL
         KGqAOyHi06fGa7kiGoOAglnCRjpI0PF5ldd8KTaBhNz371acyqT9s4g92szi3uXS6ZbJ
         bFnUsfwP9jqBL0UnzXlvLuCrSXj+qxwORKUzGlb1kSI10UP1AwJrrMInQ02HqF6SrGOL
         +eWA==
X-Gm-Message-State: AOJu0Yw6jNcLhc2yWBAt8bNDESbc0LpuFZjigq+6oYEuJiKtZ9sSZdr3
	LAAogIz15SoaLpn1ZIXlgOmbvHv54WSaZw4LoHfl3tHuKRgJMwlwgLi6WSofwKxgY4s=
X-Gm-Gg: ASbGncuVbiba4Yh4co3jAoAW382c75xT+rQjwhTsq2F45EeuJ/XuxKX2ctF2S9RF0NC
	SK2igeBuuS/o25Lq0w38kkkS0ftGgnTIFGMC2TeJF4WNU1ykWP67NI1pwtWIj3YpBQOzpVuJIZ6
	Q9UBA5XspQMMFKp1sSooAgkR2dULCNqocXpKITRHAVJPbMR5RBoij6xzk2kymw4+oANSgH+nrJd
	yhBI/k0Ib8YJ5t4ca94Gf5ofUi1rCAz5G2nS/XsDTzFaO4eC4OSiLPmxrZtFRU416fcL5mi1/tR
	0NKj2y6YtHclHmdhJDDRzgbAwdvTkay3Ur2pI5rINSVBVSpC6+YDhPCmTcLEFdqZ6YUNaZ4XeIf
	5hQFNx32/47e/egcOw6XVOlk78Ml5gGfNeF86jFOcvmBx0sjA+frdyL+68GdAjjf++qxp8yQQrr
	xdzQLXdYkL
X-Google-Smtp-Source: AGHT+IH3muwvgQ58m7ty39MBJBhT3+RPeMROjQFDi1D9gzlnGyA7jawb6s+g2ZtLjD3cP/PD/Xl8sQ==
X-Received: by 2002:a17:907:7f88:b0:b07:e3a8:5194 with SMTP id a640c23a62f3a-b6473144281mr1821120566b.22.1761036503084;
        Tue, 21 Oct 2025 01:48:23 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb52603fsm1033527266b.57.2025.10.21.01.48.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 01:48:22 -0700 (PDT)
Message-ID: <dc27ae49-d60b-447e-971c-6b5b51ab9f29@tuxon.dev>
Date: Tue, 21 Oct 2025 11:48:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/7] reset: rzg2l-usbphy-ctrl: Add support for USB
 PWRRDY
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: Philipp Zabel <p.zabel@pengutronix.de>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
 <20250925100302.3508038-5-claudiu.beznea.uj@bp.renesas.com>
 <c7fc31f1247332196516394a22f6feef9733a0b4.camel@pengutronix.de>
 <66d85e70-efb8-4a45-9164-55b123691b70@tuxon.dev>
 <bcf6113b0025777db1cb2ace1618fed8fac2dfc6.camel@pengutronix.de>
 <cca1061e-df67-4b5b-99bd-9721c72a0f88@tuxon.dev>
 <6d4bc69c-1571-4d98-b0d4-214c68be118e@tuxon.dev>
 <c1099a8e422abbc5d12bf3f325cb9f2140c8c006.camel@pengutronix.de>
 <77678dd6-071b-4911-a5c5-f1519c92e91a@tuxon.dev>
 <6ba1fd1f07753c9b98a57c87bffbbee16971da7a.camel@pengutronix.de>
 <19746f65-bf10-4687-9e2b-b259220a9ea8@tuxon.dev>
Content-Language: en-US
In-Reply-To: <19746f65-bf10-4687-9e2b-b259220a9ea8@tuxon.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_014825_560847_24FE8798 
X-CRM114-Status: GOOD (  15.61  )
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

Hi, Philipp,

On 10/15/25 11:19, Claudiu Beznea wrote:
>>>>>>> I see v2 and v3 tried to control the bit from the PHY drivers, and in
>>>>>>> v4 we were are already back to the reset driver.
>>>>>> v2 passed the system controller (SYSC) phandle to the USB PHYs only (though
>>>>>> renesas,sysc-signals DT property) where the PWRRDY bit was set. The PWRRDY
>>>>>> bit was referenced counted in the SYSC driver though regmap APIs.
>>>>>>
>>>>>> v3 used the approach from v2 but passed the renesas,sysc-signals to all the
>>>>>> USB related drivers.
>>>>>>
>>>>>> Then, in v4, the PWRRDY refcounting was dropped and passed
>>>>>> renesas,sysc-signals only to the USB PHY CTRL DT node in the idea that this
>>>>>> is the node that will always be probed first as all the other USB blocks
>>>>>> need it and request resets from it.
>>>>>>
>>>>>> v5 and v6 kept the approach from v4 and only addressed misc comments or
>>>>>> things that I noticed.
>>>>> Could you please let me know if you are OK with the approach proposed in
>>>>> v7, so that I can start preparing a new version addressing your comments?
>>>> If the PWRRDY signal is an input to the USB2PHY control block, and not
>>>> only to the PHY blocks, I have no issue with this being handled in the
>>>> usb2phy reset driver -
>>> Yes, this is how the Renesas HW team confirmed they are related.
>> Ok, understood. I concur that usb2phy-ctrl is the right place for the
>> sysc property then.
>>
>>>> iff it is not sensible to just control the
>>>> signal from the power domain driver.
>>> As mentioned above, that can be done as well but, passing a SYSC phandle to
>>> the CPG DT node will not be valid from the HW description point of view.
>>>
>>>> If we have to handle it in the reset driver, I'd prefer to see this
>>>> controlled with a dev_pm_genpd_add_notifier(). If that is not possible,
>>>> I'd like to understand why.
>>> From the code inspection I did, that can be done. From what I can tell at
>>> the moment, I'll have to register a gepnd notifier from
>>> reset-rzg2l-usbphy-ctrl, before runtime resuming the device and control the
>>> SYSC PWRRDY from it.
>> I'd like that.
> Now, that we found the genpd notifier is not a solution, could you please
> let me know how would you like me to proceed?

After discussing all the possible (known) solutions, could you please let
me know if you are OK with the approach in this series?

Thank you,
Claudiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
