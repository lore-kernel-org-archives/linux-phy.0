Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F37FCD343E
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 14:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGv1gRdOkzP2GNZjUHvi0SuKojz3+PIgkzqMSftli5U=; b=G9KMHs+de3MqnJ
	KVFTu33vG2LKqzYjPNSMIH9F2LTyQn3IKm5l1MVoGmoOCtmMMMgFKeG0weBhibnapyZ9DHPeMWeg7
	D1MibSIzjVyA3cXhIHKJGY8b99vhZPdoQwjZmcSgPK8nXsBYZFoSAoGIzl3WWCKLUj77H4SI9tPEY
	PL6q6n6ebWtzFxizVEKPGAxA2Yoxh+e0cbEhyinWS+RlQ0blee9cWLFA83YanqHPUQi5i2E/Bk+Qy
	uzTzluY1p5SFVsBPX+P8K4xuNodtMRexR34+Z2e4YA3qkpeVTg+QHUAVTTokXZgG4QTa8tkKhoQke
	EU6vcb3NJws0WKbR8/7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slUp6-00000000f7y-0Wsa;
	Tue, 03 Sep 2024 14:48:00 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slUnJ-00000000eNc-1i4l
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 14:46:11 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2f3f0a31ab2so63233731fa.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 07:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725374767; x=1725979567; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=10RLo6vQI16ZQLY55PJnQinuqmPpyY7pcz6lIln/dYk=;
        b=e1IQzZiteJIPzTti1zWNqydroXjS7ECnklCGG6o5p2i3sVavFaVH80VXIh9NyWtNd5
         zpT9DHcD9U32VS4jqm6lgiWh15pPPw1VQ19A+y5b+LK8ymoDos+b0gYiSk+tY/MsIsm+
         bjs1rDuIyUr7hkPz0GWkIQUqbERQfVBOurw/TFtxsRTMQa3EiLDGdCozctupsS5wajJj
         SgwFiMBqmoBGLKRe3A7ZVNEZ7+W5bmfEsumDuPk4/J1uYwFnu5mG+XWOeJxviZBM+3aY
         NFi/TVaG9fJHE/p80gV8ya7uq7PMwEZeCDWpTRKQaFqaI0hr2qRTC848wDfsKr6lSqzC
         4jYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725374767; x=1725979567;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=10RLo6vQI16ZQLY55PJnQinuqmPpyY7pcz6lIln/dYk=;
        b=OpBXpv3HJkJ/60vkuMwl48kJPvbpvE0yCILPtLVyQVZgIQD2DsLWZ+nVBAXj20N6yp
         7F5HfKsl5oqoOA1PL+L6YvIhlYc4UgDgiCSdsGnRwbZ3/8VEAG25bmcIlULQ0awXgTbc
         4qJ1w1wUjSDBn2LzEKsp2qkY+bXHqo5O72VzYMvufWDG6CFxqhq8VxSUcPVv+evHhx59
         5+TkRQVEVL0QPpj3drMoovZVKfVOp1SPHuUPoyvt/HJVlRNxO+wDza7zGCyGx4SXeIwt
         o2P1DoR8j7ZCgpSgrIsgkpDNAnjS3SOMuUXbguzD2WNu/HRC83hLon+U9KGpmCYcsT0E
         hCtw==
X-Forwarded-Encrypted: i=1; AJvYcCVAKADyIxudcOJu4gREXX3kBvwZN7URJwGsUcRPgPIjQAJoTp0MSaSy5AeN9gR2zL+/u0OdDeaEaM0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzaLPZRy6sNyilSoLGZCK5oEltBYBIFfa67KoDayknrVK0HZ6cS
	j8iEoBFGJkXZgd8aOR7yzH0JNUNvLZX0OGNeMdFZgfosI08Gi5IgvwQ/nAXfks0=
X-Google-Smtp-Source: AGHT+IHBF7/z9fE2IIPqXvT2mCPSoKoEFEBXPrIEjkmEaUhTM3epbcIR3W3mZTjeBzvwo0J9N98xnA==
X-Received: by 2002:a2e:a99b:0:b0:2f1:59ed:879d with SMTP id 38308e7fff4ca-2f61038cbe8mr134852401fa.1.1725374766668;
        Tue, 03 Sep 2024 07:46:06 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c226c6a46esm6583009a12.3.2024.09.03.07.46.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 07:46:05 -0700 (PDT)
Message-ID: <7ffb6419-b8f0-4940-99d9-7779eec9bbb7@tuxon.dev>
Date: Tue, 3 Sep 2024 17:46:03 +0300
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
 <TY3PR01MB11346FAC6022C81ED8B9B2DC386932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB11346FAC6022C81ED8B9B2DC386932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_074609_494628_A4832423 
X-CRM114-Status: GOOD (  28.84  )
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



On 03.09.2024 16:09, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>> Sent: Tuesday, September 3, 2024 1:57 PM
> -
>> clk@vger.kernel.org; linux-pm@vger.kernel.org; Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
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

You branched the discussion, there was at least this question that I've
asked you above that interested me.

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
> You mean, you modelled this as reset signal just to reduce power consumption by calling runtime PM
> calls to turn on/off this signal??

In this series it is though a reset control driver.

The internal BSP propose the control of this signal though SMC calls in
each individual USB driver; I think the hardware team was checked for this;
I may be wrong, as I don't have this insight.

As you know, the initial control of these bits in the BSP was though SMC
calls and you propose to have a separate Linux driver to control this after
finding that these registers are accessible in normal world. As a result,
this series, with reset approach, which you were against, but I felt this
was the best way (I know) to describe the hardware and the relation b/w
hardware blocks. To conclude, you initially proposed me internally to have
it in Linux.

To answer your question, the answer is no, I didn't try to just model
something fancy just to be fancy. I did it based on what is proposed in BSP
as this may have been checked with hardware team and I did tests around
this. And considering this best describes the HW and the relation b/w
individual hardware blocks and in this way Linux can have at its hand all
the resources it needs w/o relying on third parties. And from the HW manual
description my understanding was that this is possible. I never said that
this solution is the best. I'm just adding information here as I requested
help from maintainers to guide on the proper direction.

You were adding information to sustain your TF-A idea, too.

> 
> Does will it have any system stability issue as hardware manual says to do it at very early stage
> before starting any clocks/resets?? Have you checked with hardware team?

All the implementation of this is based on what has been proposed on BSP,
the same approach was proposed there, meaning the control of these signals
was done on probe/remove, suspend/resume in Linux.


> 
> Cheers,
> Biju

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
