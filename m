Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2348CA0ED3
	for <linux-phy@archiver.kernel.org>; Mon,  2 Sep 2024 09:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fycHmbuTKZs1IPqRAG+dCqaSvduQdcmF1ncfpHJ7WSU=; b=Bz8xn2thS5yPBV
	lh0K66lX0XuebLPKldQRmPhxM92qCHrP5wAwa4tpBP+YgPzBolvF3/t3goEZu8zN8Bd1TVTwaoe+F
	5MI1CrKi0PXzZwNcYstpgR9caHXo+7yKTgvOiVr05L+mYvUv6oMUCgFQSsCqq3KvN+yWSiEOyeq4u
	E3EbACJ4FeshfmgL9Tn0C3Ppeq9pglXRsmgdlgjpo/aSO+n6+Q8gduLKfwfLvnO7g3jvz/OBYGD4N
	AAmpZBGCXiT9H9OjiP/vVKyb/aMclMen92rZBu0vF+BIHF9qVT/UZDon/c9xVi+Rxv7GuXr+/8lqY
	ug5E5gumrjtz1ye+z9tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl39d-0000000Dex0-2JFK;
	Mon, 02 Sep 2024 09:15:21 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl38j-0000000Dejl-1U1d
	for linux-phy@lists.infradead.org;
	Mon, 02 Sep 2024 09:14:27 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-42bbd16fcf2so24694845e9.2
        for <linux-phy@lists.infradead.org>; Mon, 02 Sep 2024 02:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725268463; x=1725873263; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nxdkU1+pKbf+a+BRtbY5Z+XETmzZGfYnOH/WQtAWWcE=;
        b=DHuNtqkjpGabN4Zk+bJIMZLX9EOz7BPDPMzm/H8x29vdEHcvtEKEeLz+/mGZAjZdwt
         p3BIlPvPw4cnh1vluNysNL+i2DoAUvzdLzJMuOGMHNBrhTSZrhq7etuu/m4yoThNc0xi
         KJTMc9ca6BvDX7Ou5sn9Jb4gXYrlmUN1oN+TEbdBSKWEL55TM9F/iHE1saTosymv9/m7
         CVXfqCHtUtFF0/5wtu2yjBmXOqkHB2s9eXLafntl9Crfvfvz210ROQZOaqmjZRHCw0yl
         OyafZTWlWgrw3XGOBKng+jUQwS+k3Dv8T631G/7ldR1cNU/Ih3DFsTpth8IkMR1pEg4X
         abbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725268463; x=1725873263;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nxdkU1+pKbf+a+BRtbY5Z+XETmzZGfYnOH/WQtAWWcE=;
        b=VX9gKRhIxSzyyQINTYk9e/IRavcfkklbkkerGijAqPZhQJGUDOiRw8mro+8IDxWX3h
         7T4hEhZMISEg0FKTiA//q5DUYU2c/3QkU/JAVd8cv0QGBvpnhIaKzyx0pi/0WD/OKe9X
         6TGSPlvbvspxlzyoqnnV/wGRH9OVGyjCc2Zz7TEzuZ8uhuaW/hYlMda2MEA/Up8dXK2W
         +HdfeWOfckcKLo1pr7RiSZ0m+GMH/Y77281avJ/dNFbiFjDOu202yNUr6nMl5LKoAl4b
         DvLdLZBn5+CZH736Mb4lFNA061wokWdZZcOq+z1wLNH+nZeJA5tYspL70wS08uiWfHxu
         p9ng==
X-Forwarded-Encrypted: i=1; AJvYcCVjPNvE0CSRwvl/bGUTIArQrVbKPE1Bbx/6SDv9N1SePv9PSa0QxApvxJX8HE0b6HPCeea/DMYibwk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwO9HQKz+Nx0v4wVcKxMXfrSNrOYjkrCfVUCFalmI4881JfSwiy
	Vfsgsjlb42reNdeZlHLJNg6f3NjIz0gmBQzAT9YE2btApEhaT2Q2bgthBqKJnAs=
X-Google-Smtp-Source: AGHT+IE4d+OITY2JYSs2Z+/iUXJp9r4lxRIltWsPs5zH8YLw57OCbZp1adMKBrEY/Z1/VuppZIl79Q==
X-Received: by 2002:a05:600c:46c5:b0:429:c771:f32f with SMTP id 5b1f17b1804b1-42bb01fd939mr82161175e9.36.1725268462974;
        Mon, 02 Sep 2024 02:14:22 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba639643esm167916045e9.1.2024.09.02.02.14.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Sep 2024 02:14:22 -0700 (PDT)
Message-ID: <590a4fb2-24b2-432b-92db-534c5a52ed0b@tuxon.dev>
Date: Mon, 2 Sep 2024 12:14:20 +0300
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
 <5556d176-cca7-492c-ba21-48256d5d6338@tuxon.dev>
 <TY3PR01MB113464D53083F4C8A5DBBA36586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB113464D53083F4C8A5DBBA36586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_021425_403622_E44F8FCF 
X-CRM114-Status: GOOD (  25.74  )
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



On 02.09.2024 11:53, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>> Sent: Monday, September 2, 2024 9:47 AM
>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
>>
>> Hi, Biju,
>>
>> On 02.09.2024 10:54, Biju Das wrote:
>>> Hi Claudiu,
>>>
>>>> -----Original Message-----
>>>> From: Biju Das
>>>> Sent: Saturday, August 31, 2024 6:14 AM
>>>> Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas
>>>> RZ/G3S SoC
>>>>
>>>> Hi Claudiu,
>>>>
>>>>> -----Original Message-----
>>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>>>>> Sent: Friday, August 30, 2024 9:23 AM
>>>>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
>>>>> RZ/G3S SoC
>>>>>
>>>>> Hi, Ulf,
>>>>>
>>>>> On 29.08.2024 18:26, Ulf Hansson wrote:
>>>>>> On Thu, 22 Aug 2024 at 17:28, Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>>>>>
>>>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>>>
>>>>>>> Hi,
>>>>>>>
>>>>>>> Series adds initial USB support for the Renesas RZ/G3S SoC.
>>>>>>>
>>>>>>> Series is split as follows:
>>>>>>>
>>>>>>> - patch 01/16           - add clock reset and power domain support for USB
>>>>>>> - patch 02-04/16        - add reset control support for a USB signal
>>>>>>>                           that need to be controlled before/after
>>>>>>>                           the power to USB area is turned on/off.
>>>>>>>
>>>>>>>                           Philipp, Ulf, Geert, all,
>>>>>>>
>>>>>>>                           I detailed my approach for this in patch
>>>>>>>                           04/16, please have a look and let me know
>>>>>>>                           your input.
>>>>>>
>>>>>> I have looked briefly. Your suggested approach may work, but I have
>>>>>> a few thoughts, see below.
>>>>>>
>>>>>> If I understand correctly, it is the consumer driver for the device
>>>>>> that is attached to the USB power domain that becomes responsible
>>>>>> for asserting/de-asserting this new signal. Right?
>>>>>
>>>>> Right!
>>>>>
>>>>>>
>>>>>> In this regard, please note that the consumer driver doesn't really
>>>>>> know when the power domain really gets powered-on/off. Calling
>>>>>> pm_runtime_get|put*() is dealing with the reference counting. For
>>>>>> example, a call to pm_runtime_get*() just makes sure that the PM
>>>>>> domain gets-or-remains powered-on. Could this be a problem from the
>>>>>> reset-signal point of view?
>>>>>
>>>>> It should be safe. From the HW manual I understand the hardware
>>>>> block is something like the
>>>> following:
>>>>>
>>>>>
>>>>>                   USB area
>>>>>          +-------------------------+
>>>>>          |                         |
>>>>>          | PHY --->USB controller  |
>>>>> SYSC --> |  ^                      |
>>>>>          |  |                      |
>>>>>          | PHY reset               |
>>>>>          +-------------------------+
>>>>
>>>> How USB PWRRDY signal is connected to USB?
>>>>
>>>> USB block consists of PHY control, PHY, USB HOST and USB OTG Controller IPs.
>>>>
>>>> Is it connected to top level block or connected to each IP's for turning off the USB region power?
>>>>
>>>> ? Or Just PHY (HW manual mentions for AWO, the USB PWRRDY signal->USB PHY PWRRDY signal control)?
>>>
>>> As per the update from HW team,
>>>
>>> "SYS_USB_PWRRDY and SYS_PCIE_RST_RSM_B are used when transition from ALL_ON to AWO (or from AWO to
>> ALL_ON).
>>>
>>> Refer to step 8,9 in Table 41.10 Example Transition Flow Outline from ALL_ON Mode to AWO Mode.
>>> Refer to step 9,10 in Table 41.11 Example Transition Flow Outline from AWO Mode to ALL_ON Mode.
>>
>> All this is not new information.
>>
>> From experiments, we need to control these signals also when booting as intermediary booting
>> application may control and leave it in improper state. W/o having SYSC signals configured properly
>> there is no chance for USB to work (it should be the same for PCIe but I haven't explored it yet).
>>
>>>
>>> When turning off USB PHY and PCIe PHY, if they are not controlled, PHY may break."
>>
>> From experiments, I know this, as this is the reason the SYSC USB PWRRDY has been implemented in Linux
>> and proposed in this series.
> 
> You mean you call reset assert for USB PWRRDY signal for system transition (AWO Mode to ALL_ON Mode)??

reset assert on suspend, reset de-assert on resume.

And pm_runtime_put()/pm_runtime_resume_and_get() on the version where USB
PHYRDY is provided by SYSC as a PM domain. As I mentioned in the thread
with Ulf, this is something I explored locally.

All these are internal, not published in this version. This version just
adds initial bring-up support.

> 
> 
>  
>>>
>>> Do you have any plan to control this power transitions(ALL_ON to AWO and vice versa) in linux?
>>
>> As you know, the RZ/G3S USB PM code is already prepared. This is also configuring these signals when
>> going to suspend/exiting from resume. W/o configuring properly these signals the USB is not working
>> after a suspend/resume cycle.
> 
> One option is to handle SYSC USB PWRRDY signal in TF-A, if you plan to handle system transitions there??

As I mentioned, the settings in these registers may be changed by
intermediary booting applications. Depending on that, Linux need to control
it also on probe for USB to work (it should be the same with PCIe, these
signals seems similar from HW manual description).

Thank you,
Claudiu Beznea

> 
> Cheers,
> Biju
> 
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
