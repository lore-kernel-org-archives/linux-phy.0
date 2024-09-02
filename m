Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33D57CD13CF
	for <linux-phy@archiver.kernel.org>; Mon,  2 Sep 2024 08:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWt1wYaO6pyKxCJDR3hg/HdWbtPz1f9I+5W7INyxnE0=; b=MF9YBQ0xoz7iUB
	PEiJ2AqiBnAz+Nee4MwjyECUrrNLdTbIILz02X06K5Iwk17ahjyVhUuOdG+CyLtrXgnNwIR+Au+RX
	DNEif0yP+P0IY49Ff0SvMYnCdjO9/QIJiaPQXWboeJOPTYmMQk/iqXOMSULa/rh2MP/uUnOrSdWVh
	en4BTBTV/Ye0Hyb5DSzrI0FOToYZIj1MEWUg6Tf0wH2wnByMFdfpfRULJPt7cBtf/m2YRpEWdLHtx
	uKdfmFaa2eM7xj4CxwwwTKw1yaYYDyzc7Ptmv9m+t5/4t6/2aWU0jqCg7kyXoRH1b6ynsCwemuzpc
	Gdt2lWBwGdNfXBalfFGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2Qz-0000000DVgE-3lBc;
	Mon, 02 Sep 2024 08:29:13 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl2QI-0000000DVQ7-1GMz
	for linux-phy@lists.infradead.org;
	Mon, 02 Sep 2024 08:28:31 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5becc379f3fso3273916a12.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Sep 2024 01:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725265709; x=1725870509; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xuSIAX3TkFJwp4EKqR8txlbKQ8ME5wdxgrNK5MzVZqo=;
        b=ORRu8teo3tsEOI87XHhSBf6hZEOtvyckYnJnmpxbxlMkfHoNEGy6O2Nj31822IEJs0
         mrFOY6QCGwE6QQ8tmJEtkVdBOj6vwBnx1tJWeHzw9zc8UM2YMxbn9xaV463/SkISH9gs
         TUW73E8CMrw5Bes4pqQtaxsBdbjOPoQRWhf2ZUk0hyiepWr3FErv8ay5WF8NA+mnATDD
         GJd1NdtNE7qK4k5U/aShE7lSDPOFnoC4OX1bsO34MDHY15ics3Pdr0qPyVulepTszpcC
         5d7fROdLSZ+VKIFQimiV1eF3u3KaeID2oe/Eene2m6F9E+BauSuXLxOvu5hUN4ebjYEp
         ojTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725265709; x=1725870509;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xuSIAX3TkFJwp4EKqR8txlbKQ8ME5wdxgrNK5MzVZqo=;
        b=K9MEVv5cAC6vPAseB2wqhtrohkvSTTMR7YRdkuNNvsnN9a60L4hld5aKGIn214JtA5
         YhgxPlwQl5HZf6sD72M6ij9wNAFunGc9ebOTKtOncWvaJEsCzxixhEJGqZVrzCEmMhDu
         JyaH5nn3h3/TnTbUe7UiSOi0Xgpgv8/gOlTO/JpPF1ylTVvb5HeoAdPUsb7gqkwGiBYI
         zc/QunTvwBcvPRdwG0/mi/lLIXsQuqwyeeO2ETfsHX+5pp/PYHCnEbES0f0b5bFRkuhR
         cscNCUqF25yDSm8frsDG8+zEOz2aGsVkVX5lpjcc46SGEDib/GVBUAmzjU+URfoojmqy
         0WpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgKvCcBHgSHbSXsfsMq0IJqaWwzmjmo7EjvkbqRxrYCTEps6RVQh3Xrvk0ObTgOlY57jUjfF4f6CI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzU+0deoN83d1DevGyd5keiESo6v9HjkEE5G2ypj4pHxJMBqTBr
	cIkoBbv5OZwGrvP0BpO3mm1su2Iu5jUq+sBklDKklqZcCwzAeqffYZOGkKs/2no=
X-Google-Smtp-Source: AGHT+IFnSS3AyZyXwK3tX+2059zJpEoBIuXq5dRlOW8dSAq2eAxT17MymZumSDwZSnEQaWTkK5CbQg==
X-Received: by 2002:a17:907:944c:b0:a7a:97ca:3058 with SMTP id a640c23a62f3a-a897f7910e8mr1024209166b.5.1725265708448;
        Mon, 02 Sep 2024 01:28:28 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89891d6f87sm522330766b.158.2024.09.02.01.28.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Sep 2024 01:28:28 -0700 (PDT)
Message-ID: <90df82c1-bb09-4c91-ba7f-af328066bd43@tuxon.dev>
Date: Mon, 2 Sep 2024 11:28:25 +0300
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
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB1134652F9587CFA0ADE851CA486902@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_012830_384564_E8B0CDBB 
X-CRM114-Status: GOOD (  29.37  )
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



On 31.08.2024 08:13, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>> Sent: Friday, August 30, 2024 9:23 AM
>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
>>
>> Hi, Ulf,
>>
>> On 29.08.2024 18:26, Ulf Hansson wrote:
>>> On Thu, 22 Aug 2024 at 17:28, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>>
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> Hi,
>>>>
>>>> Series adds initial USB support for the Renesas RZ/G3S SoC.
>>>>
>>>> Series is split as follows:
>>>>
>>>> - patch 01/16           - add clock reset and power domain support for USB
>>>> - patch 02-04/16        - add reset control support for a USB signal
>>>>                           that need to be controlled before/after
>>>>                           the power to USB area is turned on/off.
>>>>
>>>>                           Philipp, Ulf, Geert, all,
>>>>
>>>>                           I detailed my approach for this in patch
>>>>                           04/16, please have a look and let me know
>>>>                           your input.
>>>
>>> I have looked briefly. Your suggested approach may work, but I have a
>>> few thoughts, see below.
>>>
>>> If I understand correctly, it is the consumer driver for the device
>>> that is attached to the USB power domain that becomes responsible for
>>> asserting/de-asserting this new signal. Right?
>>
>> Right!
>>
>>>
>>> In this regard, please note that the consumer driver doesn't really
>>> know when the power domain really gets powered-on/off. Calling
>>> pm_runtime_get|put*() is dealing with the reference counting. For
>>> example, a call to pm_runtime_get*() just makes sure that the PM
>>> domain gets-or-remains powered-on. Could this be a problem from the
>>> reset-signal point of view?
>>
>> It should be safe. From the HW manual I understand the hardware block is something like the following:
>>
>>
>>                   USB area
>>          +-------------------------+
>>          |                         |
>>          | PHY --->USB controller  |
>> SYSC --> |  ^                      |
>>          |  |                      |
>>          | PHY reset               |
>>          +-------------------------+
> 
> How USB PWRRDY signal is connected to USB? 

HW manual mentions this in the chapter describing the SYS_USB_PWRRDY register:

Controls PWRRDY terminal of USB

0: PWRRDY

1: PWRRDY down

When turning off the *USB region* power, set this bit to 1.

When turning on the *USB region* power, set this bit to 0

By USB region I get the that it is related to the SoC area where resides
all the USB IPs. I cannot tell more than what is in the hardware manual.


> 
> USB block consists of PHY control, PHY, USB HOST and USB OTG Controller IPs.
> 
> Is it connected to top level block or connected to each IP's for turning off the USB region power?

I cannot tell more than it is in the hardware manual.

> 
> ? Or Just PHY (HW manual mentions for AWO, the USB PWRRDY signal->USB PHY PWRRDY signal control)?
> 
> If the USBPWRRDY signal is connected across modules with this reset signal approach
> then you may need to update bindings [1] with that reset signal
> 
> [1] https://patchwork.kernel.org/project/linux-renesas-soc/patch/20240822152801.602318-12-claudiu.beznea.uj@bp.renesas.com/

If that is true, then this signal may need to be routed to the PHY for
better hardware description.

>  
> 
> Cheers,
> Biju
> 
>>
>> Where:
>> - SYSC is the system controller that controls the new signal for which
>>   I'm requesting opinions in this series
>> - PHY reset: is the block controlling the PHYs
>> - PHY: is the block controlling the USB PHYs
>> - USB controller: is the USB controller
>>
>> Currently, I passed the SYSC signal handling to the PHY reset driver; w/o PHY reset the rest of the
>> USB logic cannot work (neither PHY block nor USB controller).
>>
>> Currently, the PHY reset driver call pm_runtime_resume_and_get() in probe and pm_runtime_put() in
>> remove. The struct reset_control_ops::{assert, deassert} only set specific bits in registers (no
>> pm_runtime* calls).
>>
>> The PHY driver is taking its PHY reset in probe and release it in remove().
>> With this approach the newly introduced SYSC signal will be de-asserted/asserted only in the PHY reset
>> probe/remove (either if it is handled though PM domain or reset control signal).
>>
>> If the SYSC signal would be passed to all the blocks in the USB area (and it would be handled though
>> PM domains) it should be no problem either, AFAICT, because of reference counting the
>> pm_runtime_get|put*() is taking care of. As the PHY reset is the root node the in the devices node
>> tree for USB the reference counting should work, too (I may miss something though, please correct me
>> if I'm wrong).
>>
>> If the SYSC signal would be handled though a reset control driver (as proposed in this series) and we
>> want to pass this reference to all the blocks in the USB area then we can request the reset signal as
>> shared and, AFAIK, this is also reference counted. The devices node tree should help with the order,
>> too, if I'm not wrong.
>>
>> Thank you for looking at this,
>> Claudiu Beznea
>>
>>>
>>> [...]
>>>
>>> Kind regards
>>> Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
