Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DA8CD3427
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 10:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhaAkLVUziNl+xPkCgbAP/N94xfNXRj3+02SNHttKyo=; b=jfRbH/zeg2FcNA
	nROXR+9Eem/98/SM7kEvWym4e04DA4wZhmX/7+r0dLU1qgh14fbkltgRCvZDV2iXM2Smbf4DV7WWu
	gRp3VLIeMLpF4Ev6K5F/urmVmJcln/trGaypweC/x4rHS3eCj36iLFjr+TyicoRVJstvgXiOsFSpT
	7ItpsJ1dRsTmpBUrB/YmYMhIQ1Ag64gSv3UhMOyUZ7TtffgKkEtCt5OjN5kZmCs9a7hELrgcDuJr4
	lNmRKOVRh1c+D63/EmJVa//4NKiLfc1AZMNmouu/0h5ptySKfn67ao3Cs7mpZYXteBOamd0TX73qL
	9zVw+hvVmpvbsg/+DeLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQdw-0000000HJZI-2mmT;
	Tue, 03 Sep 2024 10:20:12 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slQdY-0000000HJQe-3MYS
	for linux-phy@lists.infradead.org;
	Tue, 03 Sep 2024 10:19:51 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-53345604960so5923618e87.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Sep 2024 03:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725358787; x=1725963587; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iJS4mKwDt71f+czvCGcc6KmwF1qHOE0EcsdjnmVJivo=;
        b=N/McP+7NMUyXs2v01Of7mJyGOuPH5I9UdfxnnYERHQkIVEUPS4P4jAJhO5Jder8i0L
         QBbpCRBvRG9YcVoFwzNpfSF4y/VHPm8R/EAUI30onTy151xv+y/ujNERJH9VjYDi4bet
         THooh5KEUqWb2IIq2i52tM6UgcBX6/Y3mXddw3TvgG5nFhLeSNsAinhyiPLTz4RTQtIj
         3NqTAc0UYsAjTVjbTHrX0O1mREKTrYjysztcAn/mrvFezwH2OunTvIvvz+AbPPkfq7hF
         fkJ8GEZRqdwMB9UdOUT5t8zZDXLWY9oBdrqHA9sSzedYPdnikTRCj02THZHaeudHbMV7
         vgaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725358787; x=1725963587;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iJS4mKwDt71f+czvCGcc6KmwF1qHOE0EcsdjnmVJivo=;
        b=l/iQGSgNaiiSUJx9nErOcBWo/Xp5z7yLveqwCnIlceY/HQHiCXgJiGHlpwHRxVApr6
         tMdWy6egk4NOZz2zD/wcnZ+p4Kp6YP/PpFLFny9WuIi93Qu1cOUGLlfNkoe0CsTHfCxw
         Felzo6fORIGTAfFSXIj8pgTIvpZLZA06Ii++ZZR67mbMklzpPw5PtYtSyziUCLGrrrYg
         nQCyZw2fBRfxD8OJrPyDnsG1/5h9mFhHii7F4Xddm3xu9Ta5tKVkVrRX+VPidEChXouj
         k9iQ0Rd3ZSJkkCIHmKc9T0A9MEdAlkUtmN3dyJqgQAw9QcWJAi5TyaHQ8rrGUL2ohdnB
         eimQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAXtN5csFI1/8+7TyyoyV3USMgNrUGqbrsgO1kNk9gOOg31vKuXSMSOLdnX4NxN/S+o2+ooTcNiGU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmigMo99ENma7D5z0jop+vEFw+XxSxMypXvgBngu8LoyhNPbbj
	JETF6VJHYRJqoDIZAexg2tKAZcp/r1aO7I9/M2PO76tCtg5ebxxX6H9pjZHdReQ=
X-Google-Smtp-Source: AGHT+IEls7cIQ+6hQSbZxyc8bV5YfWpE5Og0ZDGcEK0Z3VxswtkW6lt0WU0csWHFdZCyWxXy9FAPkw==
X-Received: by 2002:a05:6512:108c:b0:52e:7125:c70a with SMTP id 2adb3069b0e04-53546b93fd9mr8417306e87.47.1725358786595;
        Tue, 03 Sep 2024 03:19:46 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988feb0e5sm675067666b.12.2024.09.03.03.19.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 03:19:46 -0700 (PDT)
Message-ID: <4cb2f788-1ba6-40f6-a48d-1fd2e5293aa8@tuxon.dev>
Date: Tue, 3 Sep 2024 13:19:44 +0300
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
 <590a4fb2-24b2-432b-92db-534c5a52ed0b@tuxon.dev>
 <TY3PR01MB11346505565B81AD2894E035586922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <35dc7414-f5bd-4ed4-bfa1-f723f4f0078c@tuxon.dev>
 <TY3PR01MB11346A4814F83FE296A1DED8886922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB11346A4814F83FE296A1DED8886922@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_031948_879891_2B3371F5 
X-CRM114-Status: GOOD (  25.93  )
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



On 02.09.2024 13:47, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>> Sent: Monday, September 2, 2024 11:41 AM
>> Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
>>
>>
>>
>> On 02.09.2024 12:18, Biju Das wrote:
>>>>>>> Do you have any plan to control this power transitions(ALL_ON to AWO and vice versa) in linux?
>>>>>> As you know, the RZ/G3S USB PM code is already prepared. This is
>>>>>> also configuring these signals when going to suspend/exiting from resume.
>>>>>> W/o configuring properly these signals the USB is not working after a suspend/resume cycle.
>>>>> One option is to handle SYSC USB PWRRDY signal in TF-A, if you plan
>>>>> to handle system transitions
>>>> there??
>>>>
>>>> As I mentioned, the settings in these registers may be changed by intermediary booting
>> applications.
>>>> Depending on that, Linux need to control it also on probe for USB to
>>>> work (it should be the same with PCIe, these signals seems similar from HW manual description).
>>> You mean system transition settings will be override by U-boot, so Linux needs to restore it back??
>>
>> It was talking about booting...
> 
> I am also referring to boot. Boot starts with TF-A and it has a system state.
> 
>>
>> You proposed to handle SYSC signals from TF-A in a discussion about system power transitions:
>>
>> "One option is to handle SYSC USB PWRRDY signal in TF-A,  if you plan to handle system transitions"
>>
>> (I was guessing the "system transition" statement there refers to power states transitions, ALL_ON <->
>> AWO/VBAT)
> 
> That is correct.
> 
>>
>> and I gave the booting process as a counter example: if we handle it in TF-A it may not be enough as
>> these signals might be changed by intermediary booting applications (e.g., U-Boot).
> 
> Why should U-boot override, system state signals such as USB PWRREADY? Can you please give an example.

I didn't say *should* but *might* and I was referring to a hypothetical
situation where any used application (bootloader) might trigger this signal
for whatever reason. My point was to let Linux to handle all the settings
that it can do for a particular functionality. The resisters in SYSC
address space controlling these signals are accessible to normal world
compared to others in the SYSC address spaces.

> 
>>
>> To conclude, there are 3 scenarios I see where these signals need to be
>> handled:
>> 1/ booting 
>> 2/ suspend to RAM
>> 3/ driver unbind/bind
> 
> --> It should be OK as linux is not handling USB PWRREADY signal.
> 
>>
>> In case of booting: if we have TF-A to set signals there might be intermediary booting applications
>> (e.g. U-Boot) that set these signals also. If it leaves it in improper state and Linux wants to use
>> USB then the USB will not work (if Linux doesn't handle it).
> 
> That is the problem of U-boot. U-boot should not override system state signals such as USB PWRREADY.

U-Boot can also use USB as well.

> 
>>
>> In case of suspend to RAM: as TF-A is the only application in the suspend to RAM chain, it should work
>> handling it in TF-A.
> 
> That is correct, TF-A should handle based on system state.
> 
>>
>> In case of unbind/bind: currently we don't know if these signals introduces any kind of power saving
>> so asserting/de-asserting them in Linux may be useful from this perspective, if any.
> 
> These are system signals, according to me should not be used in unbind/bind.

It can be done whatever way. I would just prefer to work for all scenarios.

Thank you,
Claudiu Beznea

> 
> I may be wrong.
> 
> Cheers,
> Biju

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
