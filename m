Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82312CD13CF
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 11:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpqnyUwF0rqLvJASfX6IYImPAieAzB0AHNolYsMUDTQ=; b=awrsznP6Qum30c
	7egXK/E/+QCAJodiY/5L2NkHVOR/kLqeJDKJ6RousSgubHmRMzYFSx18aiMqbPSuHTxArelzpmKZx
	LPDTYv0BqX+ypG4vpTt5DAww91mn+dfuOddJpGmnXAxxkKZIvdErnnV5w0ZgYL5QGIc/g5bQSE6kS
	Xfb1Av2UQ+KNaKlTJz2JgHKRVH4yyp9q/r56hB7YUlb1HkmyuRrma0UD+eNqLwvBZ7Gt7T8F3rAOg
	4Z40uM6pCPw1leccnerzfpDvdI6rrl4XcJTwglPpgqL/GwibFLhd8f+Qx/QX9oGr2vSpS3rlp3RzN
	b/CeXGOXBOJuZgS2feIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRKS-0000000HSmO-0tBW;
	Tue, 03 Sep 2024 11:04:08 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slREq-0000000HRes-0FU2
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 10:58:21 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-42bbc70caa4so33437215e9.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 03:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725361098; x=1725965898; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IiyTYtjACDnUS+yMHRQJxA78DUiZLSpdAQkLFojBlZU=;
        b=ZRkHU1+WSmAtQQ1W9MmKELjC8km7GPanHQkdBZ+B8r+htF8rm+07Qx7yVvZCWy//JW
         JMpeNSo3BS6r+waSLwuDOClwj+aaca/wjxbrIuWyB3Dgdr9LVbNUvLiE3dizbwzKCC3m
         VB6Gq7/lKlcju35nr0btTyimYirD+yzePzixDZwmX1QamwilqjRT9pwIYPjLX8/fq1av
         BNagfqWQD+DEuThHEwCpox7kZzksV0kUjhXM/0i7fKiqfVChyVSAqTDAJbX1xNSVFtQ7
         z1pCd+kwUsOsa6SDeuxDNgxfZPoNQ4aYH7KfF+YkIOksf74tFwfLRJSZ1poF2qwVll0I
         CxTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725361098; x=1725965898;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IiyTYtjACDnUS+yMHRQJxA78DUiZLSpdAQkLFojBlZU=;
        b=i+3VGm4u0qCV46cbtvgfkJZKHIG9OdbztU/4F7w17uR6sP6YkUqQyvnUu/p/j2hzBr
         6SLBcIbjLoHrAURbHTXffULHGLqB9GjE5K8LJfsVfhO3CcMYFN+7ajfwZbd2bFngx5O+
         zstYWJzYbbFUJYUP7Zlq6ZLRdCJDfWfMOoiA46SyV5FEp77vd4txf0xhIU2wS5zcERdZ
         0FveKcfU7fpRMDjN8X1dqnr6pHxedSoVZLLjCFl4JiteZyTTi6gP9zSclgEKK8A6TTBm
         fngtk9IgYB07mECr79hRkKuGeyrsIoM0OMbmUkDZHX9hlwa/oj3E27rdZ3grLI7tLbyJ
         LBBA==
X-Forwarded-Encrypted: i=1; AJvYcCUuEiFVoWpfzplK24uLMaplIPZ7qBYJJnyozs/ofcFuJ8cI4ZkvuP1Ju4Nb3EfCgSYl6G1LcnRGHHI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzchBQ+FVO0pNERR6GFaphxNQAc7aRYuwguAeKAT62OrORhgzr2
	aNFWGFHL60bHHgyEvvHnaCCzQbeuXUMmrT8mVt8gN+QIqsAX06BKxPrNvv3AHRI=
X-Google-Smtp-Source: AGHT+IGznagqoviE6ySUvt6lxPt835b+hPmScaIpmlICIM82eo24CPYzqVSzQJR1lwMuNCXz+hrYhg==
X-Received: by 2002:a5d:5387:0:b0:374:c69c:2273 with SMTP id ffacd0b85a97d-376dd80faadmr265958f8f.37.1725361097737;
        Tue, 03 Sep 2024 03:58:17 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42bb73e20b7sm168108285e9.14.2024.09.03.03.58.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 03:58:17 -0700 (PDT)
Message-ID: <da4c57ff-de2b-418f-ba2c-e83c1d399b94@tuxon.dev>
Date: Tue, 3 Sep 2024 13:58:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Content-Language: en-US
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com,
 sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
 <CAPDyKFrVS2vpsJqTvjKCJ7ADqXc4D4k2eeCBsaK4T+=pXDnKUA@mail.gmail.com>
 <fa9b3449-ea3e-4482-b7eb-96999445cea5@tuxon.dev>
 <CAPDyKFrkkASq7rfRN=9sEet-p8T8t+f__PdnSNRN3bMNipnNNw@mail.gmail.com>
 <CAPDyKFpLnREr4C=wZ7o8Lb-CZbQa4Nr2VTuYdZHZ26Rcb1Masg@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAPDyKFpLnREr4C=wZ7o8Lb-CZbQa4Nr2VTuYdZHZ26Rcb1Masg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_035820_128350_B54029DA 
X-CRM114-Status: GOOD (  25.84  )
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



On 03.09.2024 13:35, Ulf Hansson wrote:
> On Sat, 31 Aug 2024 at 12:32, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>>
>> [...]
>>
>>>>
>>>> If not, there are two other options that can be considered I think.
>>>> *) Using the genpd on/off notifiers, to really allow the consumer
>>>> driver of the reset-control to know when the PM domain gets turned
>>>> on/off.
>>>> **) Move the entire reset handling into the PM domain provider, as it
>>>> obviously knows when the domain is getting turned on/off.
>>>
>>> This option is what I've explored, tested on my side.
>>>
>>> I explored it in 2 ways:
>>>
>>> 1/ SYSC modeled as an individual PM domain provider (this is more
>>>    appropriate to how HW manual described the hardware) with this the PHY
>>>    reset DT node would have to get 2 PM domains handlers (one for the
>>>    current PM domain provider and the other one for SYSC):
>>>
>>> +               phyrst: usbphy-ctrl@11e00000 {
>>> +                       compatible = "renesas,r9a08g045-usbphy-ctrl";
>>> +                       reg = <0 0x11e00000 0 0x10000>;
>>> +                       clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>;
>>> +                       resets = <&cpg R9A08G045_USB_PRESETN>;
>>> +                       power-domain-names = "cpg", "sysc";
>>> +                       power-domains = <&cpg R9A08G045_PD_USB_PHY>, <&sysc
>>> R9A08G045_SYSC_PD_USB>;
>>> +                       #reset-cells = <1>;
>>> +                       status = "disabled";
>>> +
>>> +                       usb0_vbus_otg: regulator-vbus {
>>> +                               regulator-name = "vbus";
>>> +                       };
>>> +               };
>>> +
>>
>> According to what you have described earlier/above, modelling the SYSC
>> as a PM domain provider seems like a better description of the HW to
>> me. Although, as I said earlier, if you prefer the reset approach, I
>> would not object to that.
> 
> Following the discussion I believe I should take this back. If I
> understand correctly, SYSC signal seems best to be modelled as a
> reset.
> 
>  Although, it looks like the USB PM domain provider should rather be
> the consumer of that reset, instead of having the reset being consumed
> by the consumers of the USB PM domain.

The PM domain provider for USB is the provider for the rest of IPs. To work
like this the SYSC these signals should be handled in the USB domains power
on/off function. It's not impossible to have it implemented like this but
it will complicate a bit the code, AFAICT. This will not describe the
hardware, also.

With the information that we had up to yesterday, the connection b/w HW
blocks was something as follows:

                 USB area
              +--------------------------+
      sig     | PHY -> USB controller X  |
SYSC -------->|  ^                       |
              |  |                       |
              | PHY reset                |
              +--------------------------+

In this implementation the SYSC signal was connected to PHY reset block as
it is the root of the devices used in the USB setup and no USB
functionality can exist w/o the PHY reset being setup.

There is a new information arrived just yesterday from hardware team saying
this about SYSC signals: "When turning off USB PHY and PCIe PHY, if they
are not controlled, PHY may break" which may means that it is just
connected to the PHYs not to the USB area/region or PCIe area/region as
initially expressed in HW manual.

With that the HW connection b/w the USB devices and SYSC might become
something like:

                 USB area
              +--------------------------+
     sig   +--->PHY -> USB controller X  |
SYSC ------+  |  ^                       |
              |  |                       |
              | PHY reset                |
              +--------------------------+

I haven't got the chance to test this topology, though.

With this new information would you be OK to still have it as a reset
signal and connected only to the PHY driver ?

Thank you,
Claudiu Beznea

> 
> Did that make sense?
> 
> [...]
> 
> Kind regards
> Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
