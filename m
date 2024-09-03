Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BFF6CD343D
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 14:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHFE2bHfWGyzu37RyRxgI4jaeC9W37wQnFfpWa9z4Hg=; b=A2Ksa9fxz9Kx1C
	EhWRiI/Rd8X19sJCEThOLU4rN7BY5KRCXNNG3MAAuKKHIdR7vznHGTfBxLvNXl2XzDAnU6vVv4pZa
	4t9bOet/7OMvGezmczvKu5OAXZaeYFTla2q0WqhYGoEx2VNGVO+XLsGK4AW3OrRUL1lAqdgPnw3Yo
	ggp1zXXttbhqdo5uR7Ixa4lrgOAEZjataAFzTl9IWEoqFKqSixhRQOuuarfUfvT7NQTaqFnVgDpXp
	yPbRvXJvHDN1RN3JftcaHJ8glA0KaoK4C2ixtjyxaZ83v2mVlYFfD0uhflPdm+m9WFEPQ6+qmPGKg
	acud2KIYNymdDSZNGS2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slUq5-00000000fPy-3e39;
	Tue, 03 Sep 2024 14:49:01 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slUpT-00000000fDn-0iBt
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 14:48:24 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5c210e23573so5561428a12.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 07:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725374901; x=1725979701; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tYCfjFhT6V80KL60H9R9UPi35bzaxYeuXsMEcnoS+3o=;
        b=lMIZNkJxhve0LgfcrXk8d3zhLFTYb5Sz6UNT8H7Exk128cGGJ54dTIK5IZtBHi2Gi1
         tbb/8xiDow4b+ANylMRUt3dMsh2btj+xLyy5O6OU0yuZtAfSVDR0bTdRFxJUJTzqDRw/
         EcfaMN5xmfIvfPx/N5FzAnElJOPGvwCLI4Qg1r84Bm0AFCb0vyjhPsGjSwG9ukCgFPWj
         vhx9Fjh/bfSc+BSrxghFOH8dshbct95vHtYnjM7RDSwkImst2PDmOm0phEZAw5SZJFGN
         1vjDeqIifEo30YOUAhDhoEf/PhW2Hi3tSgHMUydbDwputb1yASpD5k9LFwEdKfbFk/wa
         JlDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725374901; x=1725979701;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tYCfjFhT6V80KL60H9R9UPi35bzaxYeuXsMEcnoS+3o=;
        b=uV171iuLssCoTEWN/ZTT/UjGAneRYpKRCgzVhzdcCny5YCSYUFLttl2hqJYpbk8nMA
         5Ujsq6oEnlYEfEmHaYG33r9WgP9EMcmz0EFJkMjqeeFUT+HmVz+zi1ZDkSj31Zsko0Vr
         DISiDYumDyzNLH26NBcMT64JsOvY8KihYn7+ekxF9LVb6grO/43lAVJy44fiAfF1x+eP
         Y96yxSN0Vu03ZuyN1bGSsOgXyXQ2QPn5Z3WsequqcWMHAv0MLGisV1Cmo0WeXLTjBAQG
         GrxYkqqzo93wdoAfa55U01p/fUdfiVL4YhBOXwc3g2HBKHqA/rGeSG+DibaSbnXMVcIK
         jKdA==
X-Forwarded-Encrypted: i=1; AJvYcCUSllhpEX503nh/lHrWC0N+WbrYrXBt5jDSXh6lqTWYqqdSIk1dpmVDJ5pcFalHvCIWgeCviP/W1X4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzhrok4YjpIXdJC+RHAkL6ZP2VZ9xyNvYulfJn0ruMFKtKqRjnO
	TbiYNsYHe0PLTUMUEMgfju6Hja5HO5c8BVIWTJaURDE+ksRYp+GjkxVrpgGNHsg=
X-Google-Smtp-Source: AGHT+IHbatOQ4VEqyYMrobH7Q1bov/exBOit5pFJyMdS0ZVwH1qUlYUaswymHBX8ZBxtVmsniM7/IA==
X-Received: by 2002:a17:907:980f:b0:a86:7af3:8299 with SMTP id a640c23a62f3a-a8a1d2c8675mr318571466b.25.1725374901005;
        Tue, 03 Sep 2024 07:48:21 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988feb31fsm702013566b.17.2024.09.03.07.48.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 07:48:20 -0700 (PDT)
Message-ID: <d64243fe-48ea-4cb5-b6d6-e9f820e1b8a3@tuxon.dev>
Date: Tue, 3 Sep 2024 17:48:18 +0300
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
 <TY3PR01MB11346505565B81AD2894E035586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <35dc7414-f5bd-4ed4-bfa1-f723f4f0078c@tuxon.dev>
 <TY3PR01MB11346A4814F83FE296A1DED8886922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <TY3PR01MB1134648BF51F1B52BFE34DD6D86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <fbfa9179-2f52-429f-8b69-f7f4064e796b@tuxon.dev>
 <TYCPR01MB11332EF1A8D064C491D8F261286932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
 <f7c57e76-b890-491f-880d-62d060b7b31e@tuxon.dev>
 <TYCPR01MB11332BE2EDB318950B9C7B54C86932@TYCPR01MB11332.jpnprd01.prod.outlook.com>
 <TY3PR01MB113469FC8A9F49D9B1FA432FD86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <0b73544b-0253-43b9-b631-6578b48eaca8@tuxon.dev>
 <TY3PR01MB1134689573A785E91A9041E1886932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <5bcdc677-e61e-4312-a19b-57b4600685d3@tuxon.dev>
 <TY3PR01MB1134690F9D37E3BB4814D864386932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB1134690F9D37E3BB4814D864386932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_074823_254876_3DCCCACF 
X-CRM114-Status: GOOD (  24.21  )
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



On 03.09.2024 16:45, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>> Sent: Tuesday, September 3, 2024 1:57 PM
>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
>>
>>
>>
>> On 03.09.2024 15:37, Biju Das wrote:
>>>
>>>
>>>> -----Original Message-----
>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>>>> Sent: Tuesday, September 3, 2024 1:26 PM
>>>> To: Biju Das <biju.das.jz@bp.renesas.com>; Ulf Hansson
>>>> <ulf.hansson@linaro.org>
>>>> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
>>>> krzk+dt@kernel.org; conor+dt@kernel.org; p.zabel@pengutronix.de;
>>>> geert+renesas@glider.be; magnus.damm@gmail.com;
>>>> gregkh@linuxfoundation.org; mturquette@baylibre.com;
>>>> sboyd@kernel.org; Yoshihiro Shimoda
>>>> <yoshihiro.shimoda.uh@renesas.com>;
>>>> linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
>>>> linux-kernel@vger.kernel.org; linux- renesas-soc@vger.kernel.org;
>>>> linux-usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
>>>> linux- clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu Beznea
>>>> <claudiu.beznea.uj@bp.renesas.com>
>>>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
>>>> RZ/G3S SoC
>>>>
>>>>
>>>>
>>>> On 03.09.2024 15:00, Biju Das wrote:
>>>>>
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: Biju Das <biju.das.jz@bp.renesas.com>
>>>>>> Sent: Tuesday, September 3, 2024 12:07 PM
>>>>>> To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>; Ulf Hansson
>>>>>> <ulf.hansson@linaro.org>
>>>>>> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
>>>>>> krzk+dt@kernel.org; conor+dt@kernel.org; p.zabel@pengutronix.de;
>>>>>> geert+renesas@glider.be; magnus.damm@gmail.com;
>>>>>> gregkh@linuxfoundation.org; mturquette@baylibre.com;
>>>>>> sboyd@kernel.org; Yoshihiro Shimoda
>>>>>> <yoshihiro.shimoda.uh@renesas.com>;
>>>>>> linux-phy@lists.infradead.org; devicetree@vger.kernel.org;
>>>>>> linux-kernel@vger.kernel.org; linux- renesas-soc@vger.kernel.org;
>>>>>> linux-usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
>>>>>> linux- clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu
>>>>>> Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>> Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas
>>>>>> RZ/G3S SoC
>>>>>>
>>>>>> Hi Claudiu,
>>>>>>
>>>>>>> -----Original Message-----
>>>>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>>>>>>> Sent: Tuesday, September 3, 2024 12:00 PM
>>>>>>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
>>>>>>> RZ/G3S SoC
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> On 03.09.2024 13:31, Biju Das wrote:
>>>>>>>>>> During boot clr USB PWR READY signal in TF-A.
>>>>>>>>>> STR case, suspend set USB PWR READY signal in TF-A.
>>>>>>>>>> STR case, resume clr USB PWR READY signal in TF-A.
>>>>>>>>> As I said previously, it can be done in different ways. My point
>>>>>>>>> was to let Linux set what it needs for all it's devices to work.
>>>>>>>>> I think the way to go forward is a
>>>>>>> maintainer decision.
>>>>>>>>
>>>>>>>> I agree, there can be n number of solution for a problem.
>>>>>>>>
>>>>>>>> Since you modelled system state signal (USB PWRRDY) as reset
>>>>>>>> control signal, it is reset/DT maintainer's decision to say the
>>>>>>>> final word whether this signal fits in reset
>>>>>>> system framework or not?
>>>>>>>
>>>>>>> I was thinking:
>>>>>>> 1/ Geert would be the best to say if he considers it OK to handle this
>>>>>>>    in Linux
>>>>>>
>>>>>> I agree Geert is the right person for taking SYSTEM decisions,
>>>>>> since the signal is used only during state transitions (Table
>>>>>> 41.6.4 AWO to ALL_ON and 41.6.3 ALL_ON to AWO)
>>>>>
>>>>> One more info, as per [1], this USB PWRRDY signal setting to be before Linux kernel boots.
>>>>
>>>> The "controlled by" column mentions CA-55 on PWRRDY signal control
>>>> line and it is b/w steps "DDR exits from retention mode" and  "clock
>>>> start settings for system bus and peripheral modules". AFAICT, after DDR exists retention mode
>> Linux is ready to run.
>>>
>>> DDR retention exit happens in TF-A and it jumps into reset code where it executes BL2 in TF_A. Bl2
>> checks for warm or cold reset.
>>> If it is warm reset, it sets required minimal clocks/resets and pass
>>> the control to linux by calling the SMC callback handler. Which in turn calls resume(step 11-->14)
>> path.
>>
>> Is this from HW manual or some specific documentation? I'm referring at "resume" == "steps 11-->14"
>>
>>>
>>> Step 8, Cortex-A55 Exit from DDR retention mode (when using) Setting
>>> for exiting form DDR retention mode Step 9, Cortex-A55 USB PHY PWRRDY
>>> signal control (if use USB) SYS_USB_PWRRDY Step 10, Cortex-A55 PCIe
>>> RST_RSM_B signal control (if use PCIe) SYS_PCIE_RST_RSM_B
>>
>> Note *if use*: how does the TF-A know if USB/PCIe is used by Linux? The documentation mention to set
>> it *if use*. Same note is on ALL_ON to VBATT transition documentation (namely "if using USB", "if
>> using PCIe"). If TF-A will do this it should set this signals unconditionally. It will not be
>> something wrong though. We don't know at the moment what this involves in terms of power consumption,
>> if it means something...
> 
> IIUC,
> The only information we have is,
> 
> "SYS_USB_PWRRDY and SYS_PCIE_RST_RSM_B are used when transition from ALL_ON to AWO (or from AWO to ALL_ON).
> "When turning off USB PHY and PCIe PHY, if they are not controlled, PHY may break"
> 
> ALL_ON to AWO_MODE state transition: 
> USB/PCIe are part of PD_ISOVCC power domain and before turning PD_ISOVCC to off,
> we need to set USBPWRRDY signal.
> 
> AWO_MODE to ALL_ON state transition:
> 
> Turn on PD_ISOVCC first, then clr USBPWRRDY signal for USB usage in linux.
> 
> Maybe we need to ask hw team, exact usage of USBPWRRDY signal other than state transition.

As you may already know, this is open for quite some time and is ongoing.

> 
> Cheers,
> Biju
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
