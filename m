Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D507CD13CF
	for <linux-phy@archiver.kernel.org>; Mon,  2 Sep 2024 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdGHS4Zxm9aMFf5ImkElrxw+IiM6EiKd2wVqIzgUoFo=; b=eCkw7QIxVChti7
	J7hitTQKV82I1g8PhwgDv9fN03HiDyjAUEFMkbPQqZ0M/yCs1JgXiOpjtqgN1VGum9c4u0TL4pQjI
	UJtGQk5zWAwMV3LiuWoXPOBi2nB2WdGB/G0Ijgdu7oT0o5Jgmv70DNysWwePNQm5xx0QwnTMV/MHG
	iB6JBc6lYfpVSEKhgsj4fzhu6gOkNhT8xl/1dqiWS/k5fUQnVMUJmoOyeIW9mQiVicBupNehEOT6+
	wDy2g4+yIgNnYkqPGHoT73dUE1yZGtwKS20K/rSekeaOtRcgq4dqTf/2QidRzR87csS/kNql177KW
	WfM+26eftmISLaRb5B1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2ij-0000000DZxg-0vxq;
	Mon, 02 Sep 2024 08:47:33 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2if-0000000DZwk-1wYd
	for linux-phy@lists.infradead.org;
	Mon, 02 Sep 2024 08:47:30 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5334c018913so3659923e87.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Sep 2024 01:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725266847; x=1725871647; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oOaSphN4uqIVyGx4/lf/Z0TMBGuenM0C4nTClydRFg4=;
        b=dowgRRuU8LNQk++gdKls7RBPoz5aB1Rlj+g0oPgty/gqfdFGD9ZCfbxyCzxsdObmUw
         wCuSkGHcIE+NhQ0x51UXp1FEQSR+oAB827uWV3dx/cFQCEmMQDnbn3EENj/xu3Vn+Zj0
         tGp2lN3aM3oN0TZil3dly8wLlA9K3vhSaRE11JnGYAFduwA3b+uVZp0RIfX0JmoKFfns
         uS+j+9UefhmVnPMZmP7lr+17XgZB+x7UB0YIlIB9M5McL8Jlp5Ow1rv7dxSLjzwUg+Qk
         GEivAKKcjhU3ClLewwAQbEARitLET/KmWNM6TiFSWhWWaS8PkA0BkTyZpcn8nNrLKddv
         vKhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725266847; x=1725871647;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oOaSphN4uqIVyGx4/lf/Z0TMBGuenM0C4nTClydRFg4=;
        b=uIpEBOeKmTdOD+fMeI7GXYQT9DA1x3DDeTUtb8IpxjHFryX+XF4zfxLqdoZRCi286d
         2u+L9l9VSgqNdaw0lZ6IRHWUnZDaELMr4yK1C0/Ln7/OjcGkwPo//32pq/H8zSRKnrDU
         wWBw4Rg65vvAyNoywyR5dMD1XHXshE9sRwZMNBTRNiIsydzfdy6b8+1PgSFNCDEwjh9L
         iDY2cpoxxo6CUpaIUAEaxTA4sgPHk+3Bk8ldotksG0B6YSF2sggaeahaAUmUadpBkPik
         6hWTFbaomG3WDOeQiK2//M++HIVTHw6Gd7NEpBKWGiTP3Oh/0RUTEMYzw9mqdQwIy5BA
         kjxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkLoCtKv7ocn7hEkLGMKUfvmTrivRAV/CRlZHVaE7QS2Jml1rT0tl00lYHXjHlMhxxTDkdN28yrFs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2TWoFd3EkiEoBwYVYCXyxJZOJ2/moQv7irFPUNAIlk0g5CpmC
	VrV/ZGbG1Nav6USjY7nQWFc2PASwathtf+jH3EIdmEZ4iXfhrGGi27wD+NJdkU8=
X-Google-Smtp-Source: AGHT+IFKP+TMYUf8hSyMMTGOziIULq1HvfnDIOTbDSCryKJ5amdlOmDWug+wIx0ZuZ/E3sdbRQoVKA==
X-Received: by 2002:a05:6512:15a5:b0:52e:9e70:d068 with SMTP id 2adb3069b0e04-53546afad74mr5564997e87.4.1725266847009;
        Mon, 02 Sep 2024 01:47:27 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988fef4c3sm525445666b.32.2024.09.02.01.47.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Sep 2024 01:47:26 -0700 (PDT)
Message-ID: <5556d176-cca7-492c-ba21-48256d5d6338@tuxon.dev>
Date: Mon, 2 Sep 2024 11:47:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: "vkoul@kernel.org" <vkoul@kernel.org>,
 "kishon@kernel.org" <kishon@kernel.org>, "robh@kernel.org"
 <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev>
 <TY3PR01MB1134652F9587CFA0ADE851CA486902@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB113467275C519B729FCAB1ACB86922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB113467275C519B729FCAB1ACB86922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_014729_570992_A42268CF 
X-CRM114-Status: GOOD (  24.04  )
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

Hi, Biju,

On 02.09.2024 10:54, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: Biju Das
>> Sent: Saturday, August 31, 2024 6:14 AM
>> Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
>>
>> Hi Claudiu,
>>
>>> -----Original Message-----
>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>>> Sent: Friday, August 30, 2024 9:23 AM
>>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
>>> RZ/G3S SoC
>>>
>>> Hi, Ulf,
>>>
>>> On 29.08.2024 18:26, Ulf Hansson wrote:
>>>> On Thu, 22 Aug 2024 at 17:28, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>>>
>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>
>>>>> Hi,
>>>>>
>>>>> Series adds initial USB support for the Renesas RZ/G3S SoC.
>>>>>
>>>>> Series is split as follows:
>>>>>
>>>>> - patch 01/16           - add clock reset and power domain support for USB
>>>>> - patch 02-04/16        - add reset control support for a USB signal
>>>>>                           that need to be controlled before/after
>>>>>                           the power to USB area is turned on/off.
>>>>>
>>>>>                           Philipp, Ulf, Geert, all,
>>>>>
>>>>>                           I detailed my approach for this in patch
>>>>>                           04/16, please have a look and let me know
>>>>>                           your input.
>>>>
>>>> I have looked briefly. Your suggested approach may work, but I have
>>>> a few thoughts, see below.
>>>>
>>>> If I understand correctly, it is the consumer driver for the device
>>>> that is attached to the USB power domain that becomes responsible
>>>> for asserting/de-asserting this new signal. Right?
>>>
>>> Right!
>>>
>>>>
>>>> In this regard, please note that the consumer driver doesn't really
>>>> know when the power domain really gets powered-on/off. Calling
>>>> pm_runtime_get|put*() is dealing with the reference counting. For
>>>> example, a call to pm_runtime_get*() just makes sure that the PM
>>>> domain gets-or-remains powered-on. Could this be a problem from the
>>>> reset-signal point of view?
>>>
>>> It should be safe. From the HW manual I understand the hardware block is something like the
>> following:
>>>
>>>
>>>                   USB area
>>>          +-------------------------+
>>>          |                         |
>>>          | PHY --->USB controller  |
>>> SYSC --> |  ^                      |
>>>          |  |                      |
>>>          | PHY reset               |
>>>          +-------------------------+
>>
>> How USB PWRRDY signal is connected to USB?
>>
>> USB block consists of PHY control, PHY, USB HOST and USB OTG Controller IPs.
>>
>> Is it connected to top level block or connected to each IP's for turning off the USB region power?
>>
>> ? Or Just PHY (HW manual mentions for AWO, the USB PWRRDY signal->USB PHY PWRRDY signal control)?
> 
> As per the update from HW team,
> 
> "SYS_USB_PWRRDY and SYS_PCIE_RST_RSM_B are used when transition from ALL_ON to AWO (or from AWO to ALL_ON).
> 
> Refer to step 8,9 in Table 41.10 Example Transition Flow Outline from ALL_ON Mode to AWO Mode.
> Refer to step 9,10 in Table 41.11 Example Transition Flow Outline from AWO Mode to ALL_ON Mode.

All this is not new information.

From experiments, we need to control these signals also when booting as
intermediary booting application may control and leave it in improper
state. W/o having SYSC signals configured properly there is no chance for
USB to work (it should be the same for PCIe but I haven't explored it yet).

> 
> When turning off USB PHY and PCIe PHY, if they are not controlled, PHY may break."

From experiments, I know this, as this is the reason the SYSC USB PWRRDY
has been implemented in Linux and proposed in this series.

> 
> Do you have any plan to control this power transitions(ALL_ON to AWO and vice versa) in linux? 

As you know, the RZ/G3S USB PM code is already prepared. This is also
configuring these signals when going to suspend/exiting from resume. W/o
configuring properly these signals the USB is not working after a
suspend/resume cycle.

Thank you,
Claudiu Beznea


> Cheers,
> Biju
>  

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
