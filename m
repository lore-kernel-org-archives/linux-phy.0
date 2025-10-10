Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14FF0CCD185
	for <linux-phy@archiver.kernel.org>; Fri, 10 Oct 2025 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=juXkWGdJVnglwJSuUo7VKwHuXlDmsM9P9RyuUDcwurY=; b=K0Vnz6MbjPayCT
	URngPP7Df6z8ayITBCy6rt/5R6tenExuR+3eqNW1Js94HHnVXsTnmZ3QZ7ywcRgrSxrAV26QbPcmS
	7yah/+9CkZDENq5ReDZLJ7vs29f50ji+H5Y8qBKixK87TDrTx65TNa1HlM+w20BukbLD9Au7HJJNu
	oRsYq1GqO+kTRZ2hVcIK/i0wlAb9Ee5NggDACpHDQvmTmXOZFM5vz71ll5DNWjh5tuYhOgbGBG303
	/A+wMaq0zeSGWxe0c4PE0vanqoyKCleWPikRS1u1ShcPIwtZ8hDrfhccwUq4cMbUOfBIb+7fO3+Oy
	4nfJJTwcq7gNX4u3/RqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7BGa-00000008Ld4-3CcC;
	Fri, 10 Oct 2025 11:26:32 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7BGY-00000008Lc9-0Zh6
	for linux-phy@lists.infradead.org;
	Fri, 10 Oct 2025 11:26:31 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-46e6c8bc46eso11732545e9.3
        for <linux-phy@lists.infradead.org>; Fri, 10 Oct 2025 04:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1760095588; x=1760700388; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MJYv7wcTmHOu13aBWc1M6LrX7Yag7J9oLnKL5BHIPTg=;
        b=XkzdtBPYHhae+NQVwaspeKZoEbVgCwPDPKzURB6+Jr1iB6euKFfgLZ3C+JG9/JBOqQ
         wrxNJj/C3HZBRBUkBR+3I2/AZ/zqvyhHbIfUF5AejsyFphKB7zxsyAhD21Qzq5OLC343
         Ia0o3rNrMbC57vnZRKhjp+Q8R6wShZHCK/2Ix75b7Lq7cBC43bvYkWw07BSu4qithK+9
         AwgnzF6G4Kar1wfdUJ/Te3oBd0jX3eC0fLk3aFTYrXEHmLtkVmJxDOwvFq03YlntqWQF
         hHKbzvQYWoy5l1hjGWorXja2hGtDTAVkYyGZZVhBN89WJQvFgR5ie504YHEMu8ds6gRJ
         YQHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760095588; x=1760700388;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MJYv7wcTmHOu13aBWc1M6LrX7Yag7J9oLnKL5BHIPTg=;
        b=muPqlOu4ZrBkbZ4l1aZ4CED+sxuRdUoW+U0re78oFrHp1gKRrkgsKQ6RJLSduVXI7F
         ThvHACYaxRNwwudFkdFRUFB/su8CpXlt4Bmb+/57VQztN89Infut1k4xGzNDpZgSNKBx
         qr1oi28UaHOCcjTrztOCu4B1SctfF4vp759V3NRw2Rp/cld/xRirAjP4+ZSsTOpAWcW9
         f7EUnXZI9WbSXUYPEHxVLe0JwPzTn4/M4U0xqUIGu4LdXlTBGiF/eZv1hZM+Mp61lliW
         1zpSrQ2MgkU/NVpKdeLa92uKj+Udo4bI09Nldg6v6SbuZc3Mve2ku1mbwyuG4zeT4d+y
         16/g==
X-Gm-Message-State: AOJu0Yz/OMHkTDK8zXmHdkx410yoeRYPYX503FMosdkV/DYyavdfdvO/
	+8p29SQ6SNMX45j+f5BHESOJCWhyqOfLE2zLJc13aj35AqEsMD5Yp4WQFHUEp8s7g/k=
X-Gm-Gg: ASbGncs2weokXi99fYFPtu9TKmsHV5SJMn+do4KVWIeppyK2u/voo3fJQw90XZcKR1C
	Pn4dhypCV9ah/T/wsDns8ySAnWA1oSkSbjFfuRQshLSw2Ofx8igFHyVSZBNJgdxDdf8qLGpLYEE
	OtJ4b5QiEP4TX7s2q8/JsMppHvV7hC2GomN3idXPZGwU1sL0M4UYXv6OcoAWNfh4KaRjRexMhze
	0pozo5uJ3eKuN0uT+UI+DRtC1D25JJUEje2C6MVlNYxovpajUIKCxD6WErvOpUJoHQYHFMAqwd/
	oi5Ji2HOuzlQiQsxeUyMe6CMksD4dzVUWfYH52g8vZ0TuioEihUP0nOtaO+W0n0UkMwFMFzdhIl
	TzwjBoOwTCZSj+U1bOCEeJIOMRj4xcCGdo7a96HoEnITBBnHOu/lcPzgyE68=
X-Google-Smtp-Source: AGHT+IGqto8DzzsUkr3m2rhrXEeJ8gdggFLEt9ehxmvIAsPFVSe6T8rsRQ8HQwfhX/mMuR4S29coxQ==
X-Received: by 2002:a05:600c:19c6:b0:46e:3d17:b614 with SMTP id 5b1f17b1804b1-46fa9a9440emr89600325e9.6.1760095587252;
        Fri, 10 Oct 2025 04:26:27 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.59])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb489af92sm48160085e9.17.2025.10.10.04.26.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 04:26:26 -0700 (PDT)
Message-ID: <6d4bc69c-1571-4d98-b0d4-214c68be118e@tuxon.dev>
Date: Fri, 10 Oct 2025 14:26:25 +0300
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
Content-Language: en-US
In-Reply-To: <cca1061e-df67-4b5b-99bd-9721c72a0f88@tuxon.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251010_042630_196664_018D2ADB 
X-CRM114-Status: GOOD (  20.04  )
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

On 10/8/25 15:16, Claudiu Beznea wrote:
> Hi, Philipp,
> 
> On 10/8/25 13:23, Philipp Zabel wrote:
>> Hi Claudiu,
>>
>> On Mi, 2025-10-08 at 12:29 +0300, Claudiu Beznea wrote:
>>> Hi, Philipp,
>>>
>>> On 10/8/25 11:34, Philipp Zabel wrote:
>>>> Hi Claudiu,
>>>>
>>>> On Do, 2025-09-25 at 13:02 +0300, Claudiu wrote:
>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>
>>>>> On the Renesas RZ/G3S SoC, the USB PHY block has an input signal called
>>>>> PWRRDY. This signal is managed by the system controller and must be
>>>>> de-asserted after powering on the area where USB PHY resides and asserted
>>>>> before powering it off.
>>>>>
>>>>> On power-on the USB PWRRDY signal need to be de-asserted before enabling
>>>>> clock and switching the module to normal state (through MSTOP support). The
>>>>> power-on configuration sequence
>>>> The wording makes me wonder, have you considered implementing this as a
>>>> power sequencing driver?
>>> No, haven't tried as power sequencing. At the moment this was started I
>>> think the power sequencing support wasn't merged.
>>>
>>> The approaches considered were:
>>> a/ power domain
>> Letting a power domain control a corresponding power ready signal would
>> have been my first instinct as well.
>>
>>> b/ regulator
>>> c/ as a reference counted bit done through regmap read/writes APIs
>>>
>>> a and b failed as a result of discussions in the previous posted versions.
>> Could you point me to the discussion related to a?
> It's this one
> https://lore.kernel.org/all/
> CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com/
> 
> 
>> I see v2 and v3 tried to control the bit from the PHY drivers, and in
>> v4 we were are already back to the reset driver.
> v2 passed the system controller (SYSC) phandle to the USB PHYs only (though
> renesas,sysc-signals DT property) where the PWRRDY bit was set. The PWRRDY
> bit was referenced counted in the SYSC driver though regmap APIs.
> 
> v3 used the approach from v2 but passed the renesas,sysc-signals to all the
> USB related drivers.
> 
> Then, in v4, the PWRRDY refcounting was dropped and passed
> renesas,sysc-signals only to the USB PHY CTRL DT node in the idea that this
> is the node that will always be probed first as all the other USB blocks
> need it and request resets from it.
> 
> v5 and v6 kept the approach from v4 and only addressed misc comments or
> things that I noticed.

Could you please let me know if you are OK with the approach proposed in
v7, so that I can start preparing a new version addressing your comments?

Thank you,
Claudiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
