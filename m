Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A8AFCD342E
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 13:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aKbKVL/2RIK6ITjs8MsNW0/L0xLw/lv/68vFq/hO14=; b=AiR6xc7fhINj7V
	pRoBrqGRQGd0cjBo3C+EzeJ2Kuf5tMLz0Fc0tQErZtO8h7ZLxJPlWxshRgIB30JRdrgO0OuenZsHk
	FutdK4Qx4qWyJfGfbDlSlic7fsNOD6HUo34yhw0urvc+2Jr85olzd4pPcXoqlgYRsA+tdqFus1Oig
	baD/jJ+lcqXnIMCsdKM67S6Xm+F8H13H3ns1MQIFzwDbS+8ScqwpKpNbn18O1+ANeMKxrKEvUkdYt
	mCu+KOui0E/1TtL0S3hTuRXI8gVt21aMx+fcnNFBqz9ycxZ6ZzZG5HlV0ES8iv+EzAql7PuALKvwC
	0Km5lXZfo3D++BfRmeog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slTA7-00000000HVn-0cz6;
	Tue, 03 Sep 2024 13:01:35 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slT5x-00000000GY7-39e0
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 12:57:19 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a86910caf9cso1088410566b.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 05:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725368236; x=1725973036; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8p5yg7eSpfkF7KfEUeaswPPeaoWpvFoniZltR7IGrLo=;
        b=EE1GX8foCYFCc4XvlLOl5M3rz1G2Nz3Pyfxkr/C+TbOrky71uN3RYrcufO3z8YDXLx
         6N1x7ssCJxUznPXs3N/mcfX945Sf/UWHTnZnEVDv8VE4qvIBJM8t3KKYRG168xXNYIz7
         CmsctkvMYspbajiruc5EcGtvRBhSZEDDliVybyLMtCy1oIyy23Wq5NtdRA+j284jcwjo
         vzVZ+hgkwECWUR/SQ8B0DkcZanslJtS0LsTbiXodnzmWoODRAM4fuV1E51Je45S+YaFz
         mHXQNA3/aiY65c9kkcYELuAFd7S8lXDqVuOxN/ZB9uW7Xic0H5AyGeaFUwctx3FPpUWn
         3pyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725368236; x=1725973036;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8p5yg7eSpfkF7KfEUeaswPPeaoWpvFoniZltR7IGrLo=;
        b=HjNj0bAB0cHuJF5ssWA8Jv6qPf6uOHDRrbJhJG7PTW+H0gTi5a5lWblvMsc8gmimEP
         7jqq1GT9/LUiK7o7SpRk7kGcTjunHPkONoKOaZC+Bu39ZkmZZ58aWtUiEpZvytWgZWqz
         vrcBT1/iDj3EfXx0afzJJhPQipZBZmmBXkwVxfonHsratsR13WLS2ZQiM9WJIGxToyCy
         0AdxQG9vQSU30ej8VI/bzfvZ41FMVfBld4VXcgwbLHEtm3tqgY0P2oKl+paGTDMdYcxx
         t6N4lJu0YVdNXr/p16KoHBhXqPOrc8d2OhShPQjn6pbaIV4XgU5ZSmeSeVFVOy7wtexd
         /LTw==
X-Forwarded-Encrypted: i=1; AJvYcCVh/7uu3A8IROo4xLpcBaYmBuRUZbqsADdDzijlRMeF7pqSGrjCkcEGzpl4UD5PRJPI+TdgdrmKevU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6jOTXhommsfiuTjOqVoxD9yq0r+Rzdgk/bNiOXUUwqR5Ih7gX
	nslzyNhscuP6AwXkgN7K0w8hyalbiPAAz83J5ryGzSyDac3Yvkom3jYOARq6s/c1T+UzuXFsngw
	U
X-Google-Smtp-Source: AGHT+IHZXUf4gCvoTnaido/Qhn8cqkw+YBP7i7FYjIQcDtkx87EhKcdM6qoGHvRSR0AuY4uEo+anoQ==
X-Received: by 2002:a17:907:7248:b0:a77:ca3b:996c with SMTP id a640c23a62f3a-a89a267a567mr1608923766b.16.1725368235772;
        Tue, 03 Sep 2024 05:57:15 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988feb31fsm690077166b.17.2024.09.03.05.57.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 05:57:15 -0700 (PDT)
Message-ID: <5bcdc677-e61e-4312-a19b-57b4600685d3@tuxon.dev>
Date: Tue, 3 Sep 2024 15:57:13 +0300
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
 <TY3PR01MB113464D53083F4C8A5DBBA36586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <590a4fb2-24b2-432b-92db-534c5a52ed0b@tuxon.dev>
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
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB1134689573A785E91A9041E1886932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_055717_848439_A6D6B44C 
X-CRM114-Status: GOOD (  18.25  )
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



On 03.09.2024 15:37, Biju Das wrote:
> 
> 
>> -----Original Message-----
>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>> Sent: Tuesday, September 3, 2024 1:26 PM
>> To: Biju Das <biju.das.jz@bp.renesas.com>; Ulf Hansson <ulf.hansson@linaro.org>
>> Cc: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org;
>> p.zabel@pengutronix.de; geert+renesas@glider.be; magnus.damm@gmail.com; gregkh@linuxfoundation.org;
>> mturquette@baylibre.com; sboyd@kernel.org; Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>;
>> linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; linux-
>> renesas-soc@vger.kernel.org; linux-usb@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
>> clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
>>
>>
>>
>> On 03.09.2024 15:00, Biju Das wrote:
>>>
>>>
>>>> -----Original Message-----
>>>> From: Biju Das <biju.das.jz@bp.renesas.com>
>>>> Sent: Tuesday, September 3, 2024 12:07 PM
>>>> To: Claudiu.Beznea <claudiu.beznea@tuxon.dev>; Ulf Hansson
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
>>>> Subject: RE: [PATCH 00/16] Add initial USB support for the Renesas
>>>> RZ/G3S SoC
>>>>
>>>> Hi Claudiu,
>>>>
>>>>> -----Original Message-----
>>>>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>>>>> Sent: Tuesday, September 3, 2024 12:00 PM
>>>>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas
>>>>> RZ/G3S SoC
>>>>>
>>>>>
>>>>>
>>>>> On 03.09.2024 13:31, Biju Das wrote:
>>>>>>>> During boot clr USB PWR READY signal in TF-A.
>>>>>>>> STR case, suspend set USB PWR READY signal in TF-A.
>>>>>>>> STR case, resume clr USB PWR READY signal in TF-A.
>>>>>>> As I said previously, it can be done in different ways. My point
>>>>>>> was to let Linux set what it needs for all it's devices to work. I
>>>>>>> think the way to go forward is a
>>>>> maintainer decision.
>>>>>>
>>>>>> I agree, there can be n number of solution for a problem.
>>>>>>
>>>>>> Since you modelled system state signal (USB PWRRDY) as reset
>>>>>> control signal, it is reset/DT maintainer's decision to say the
>>>>>> final word whether this signal fits in reset
>>>>> system framework or not?
>>>>>
>>>>> I was thinking:
>>>>> 1/ Geert would be the best to say if he considers it OK to handle this
>>>>>    in Linux
>>>>
>>>> I agree Geert is the right person for taking SYSTEM decisions, since
>>>> the signal is used only during state transitions (Table 41.6.4 AWO to
>>>> ALL_ON and 41.6.3 ALL_ON to AWO)
>>>
>>> One more info, as per [1], this USB PWRRDY signal setting to be before Linux kernel boots.
>>
>> The "controlled by" column mentions CA-55 on PWRRDY signal control line and it is b/w steps "DDR exits
>> from retention mode" and  "clock start settings for system bus and peripheral modules". AFAICT, after
>> DDR exists retention mode Linux is ready to run.
> 
> DDR retention exit happens in TF-A and it jumps into reset code where it executes BL2 in TF_A. Bl2 checks for warm or cold reset.
> If it is warm reset, it sets required minimal clocks/resets and pass the control to linux by calling the
> SMC callback handler. Which in turn calls resume(step 11-->14) path.

Is this from HW manual or some specific documentation? I'm referring at
"resume" == "steps 11-->14"

> 
> Step 8, Cortex-A55 Exit from DDR retention mode (when using) Setting for exiting form DDR retention mode
> Step 9, Cortex-A55 USB PHY PWRRDY signal control (if use USB) SYS_USB_PWRRDY
> Step 10, Cortex-A55 PCIe RST_RSM_B signal control (if use PCIe) SYS_PCIE_RST_RSM_B

Note *if use*: how does the TF-A know if USB/PCIe is used by Linux? The
documentation mention to set it *if use*. Same note is on ALL_ON to VBATT
transition documentation (namely "if using USB", "if using PCIe"). If TF-A
will do this it should set this signals unconditionally. It will not be
something wrong though. We don't know at the moment what this involves in
terms of power consumption, if it means something...

> Step 11, Cortex-A55 Clock start setting for system bus and desired peripheral modules in PD_ISOVCC CPG_CLKON_***ep 
> (***: GIC600, MHU, SDHI, USB, ETH, DDR, PCI,AXI_COM_BUS, PERI_COM, AXI_TZCDDR,
> OTFDE_DDR)
> Step 12, Cortex-A55 Release reset setting for system bus and desired peripheral modules in PD_ISOVCC CPG_RST_***
> (***: GIC600, MHU, SDHI, USB, ETH, DDR, PCI, AXI_COM_BUS, PERI_COM, AXI_TZCDDR,OTFDE_DDR)
> Step 13, Cortex-A55 Release MSTOP bit for system bus and desired peripheral modules in PD_ISOVCC CPG_BUS_***_MSTOP
> (***: ACPU, PERI_COM, PERI_DDR, TZCDDR),
> CPG_MHU_MSTOP.
> Step14) Cortex-A55 Clock start setting and reset release setting for Cortex-M33_FPU (if use Cortex-M33_FPU)
> CPG_CLKON_CM33, CPG_RST_CM33
> 
> Cheers,
> Biju

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
