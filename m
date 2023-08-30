Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF589C83F15
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 07:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxVISSTarVy+va4Vy6Tmzedx0drU0vIPw1DVJKDu1Ag=; b=yGIY3ezTJi/W40
	odSdP5A33NJxV9MllYMK1xuFZrrHxrggnpchc4qIwnrMOX06H4hGlBd1sTFxsAgpMukgStLsTEWky
	XFuXOaxuS8/VnrqpMucZNpplJ+lWNzsYainL9gKuP18N4gsuRusYtVsGkn5Jx8MtSbTCho6tswm9g
	VYmyM3vw4gfGHkjs39pyt54dBHAERRaQMgORuRw7DrcIUM6J0stthR3/ASnAer9wgVT0RrBB10eid
	0PIbIs3+x7Izid1EXEh+NTdXB3/IYKD00JO6IKVuuNK56eBgHljbIWgsDoNaJwxX+UU4EsTK8q5x/
	QZJ6P6UDVb4ukRjzk85g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbFlc-00D1AX-2B;
	Wed, 30 Aug 2023 07:37:32 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbFla-00D19P-0f
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 07:37:31 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9936b3d0286so711379766b.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Aug 2023 00:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693381043; x=1693985843; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dI4A/LJ5CPUPqgrmlxjkYM3azOWl8VDK3Ynlh4qOx60=;
        b=U2nhUeqz/+TVp90h5BUfgG1V4er/S764ZCDDeDf7fyDaDk989kLBzH73e1Jqlottf+
         BTWn7wCky8Eb6Kj07cFDrlfZCidNPuwWeOX1+IZWx8eKG8MyQg7vsL4NlmS3n6g0ZiOO
         hhkfZNgWkSp9YwuAMC65KuhXgZxwQjCO95wbqa814H0nkHo2YzrqUYHrp+ePX4YPLFWl
         rVenoHq4STm9EFYBwsFBy9lb30BtRtv7FMCTPtCxVxBUTcmVIld+Q4SquxdBYbddOgTS
         FS6UFEp8ma9Pu9fUys38fC6Nq6LX2ixF2uptmMi/fqbN+86zToDECtm7filbBi+UiS5g
         7Bxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693381043; x=1693985843;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dI4A/LJ5CPUPqgrmlxjkYM3azOWl8VDK3Ynlh4qOx60=;
        b=IGSJyu68G24kUEpR+9DjU1f23ln90UmV9EaZGFLfXAIq3mFJooYlJH+81vGjIDibOO
         zYW4/1TILmeauFQwqm1h9lFfOLXOqEyfIlNN1ucly3aMxOD4ZzV+hXsUeOvoB8jcyXg9
         3y2OGdiswYfIrq7adqDHEnH+NtxeAefjwaQHeLNGdrGyRvo1p76n5j0y7yFOeVFLMnaP
         6gnWJLdPP45j6seSke1/TGTHTcB47RHPbQY8bBzSeR+xX0WTnaJYoIW4JYOpNAwBvXu5
         +wtEg3v5cGdH7/NiBk5jXLq7m5OTY5/3/dtnP2jOJ18GX+7JZnrQmKyg5rys9+Ye3SVP
         7h6g==
X-Gm-Message-State: AOJu0YxKGer2Ua9OSYumlnPGL3z3V/NQbUGWXu/V9lF5NXm7UWA67B+u
	rVj95+XECE+tdpZAR8DZTUcHYQ==
X-Google-Smtp-Source: AGHT+IHHseqSIYDyYCCBn/VAKv4UCnFrrchbQ1N+qxFAnLcwPR12xvv0D7ujmXk9q665pvyjenLi0Q==
X-Received: by 2002:a17:907:2bf2:b0:9a2:eb6e:2cf3 with SMTP id gv50-20020a1709072bf200b009a2eb6e2cf3mr1093908ejc.0.1693381043227;
        Wed, 30 Aug 2023 00:37:23 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id b8-20020a170906194800b009920e9a3a73sm6878604eje.115.2023.08.30.00.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 00:37:22 -0700 (PDT)
Message-ID: <3baa61b5-e915-88a5-8e8d-717072ce6f2d@linaro.org>
Date: Wed, 30 Aug 2023 09:37:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v1 1/3] dt-bindings: phy: Add i.MX8QM PCIe PHY binding
Content-Language: en-US
To: Hongxing Zhu <hongxing.zhu@nxp.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "kishon@kernel.org" <kishon@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 "a.fatoum@pengutronix.de" <a.fatoum@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>
References: <1693291534-32092-1-git-send-email-hongxing.zhu@nxp.com>
 <1693291534-32092-2-git-send-email-hongxing.zhu@nxp.com>
 <7c083976-81cc-96e3-af76-43944ce571ac@linaro.org>
 <AS8PR04MB8676B511250439EF71D0E3488CE6A@AS8PR04MB8676.eurprd04.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <AS8PR04MB8676B511250439EF71D0E3488CE6A@AS8PR04MB8676.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_003730_248108_9148ED69 
X-CRM114-Status: GOOD (  28.23  )
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

On 30/08/2023 09:31, Hongxing Zhu wrote:
>>
>>> +    description: |
>>> +      Specifies the different usecases supported by the HSIO(High
>>> + Speed IO)
>>
>> I don't know what are the usecases...
> Sorry, miss one space between "use" and "cases".

I did not mean language typo, but in general - what are you describing here?

> i.MX8QM HSIO module can be controlled by DSC/software in these three
>  different modes. So I add this property (fsl,hsio-cfg) here to specify the
>  work mode of HSIO.

So modes of work? Or different device attached to the PHY? Or what?
There is no use case in hardware and you should describe hardware.

>>
>>> +      module. PCIEAX2SATA means two lanes PCIea and a single lane SATA.
>>> +      PCIEAX1PCIEBX1SATA represents a single lane PCIea, a single lane
>>> +      PCIeb and a single lane SATA. PCIEAX2PCIEBX1 on behalf of a two
>>> +      lanes PCIea, a single lane PCIeb.
>>> +      Refer include/dt-bindings/phy/phy-imx8-pcie.h for the constants to
>>> +      be used (optional).
>>
>> None of all this helped me to understand what part of hardware this is responsible
>> for. It seems you just want to program a register, but instead you should use one
>> of existing properties like phy-modes etc.
> It's my bad. Didn't describe the HW clearly above.
> The fsl,hsio-cfg is used to specify the work mode of HSIO subsystem, not only
>  the PHY mode. Since the PHYs are contained in the HSIO subsystem, can't be
> used by PCIe or SATA controller freely. The usage of these PHYs are limited
>  by the HSIO work modes. BTW, up to now, I still don't have a good idea to
>  describe the HSIO by phy-modes property although I prefer this way in my mind.

What is HSIO and why does it appear in context of this phy?
Specifically, if this is separate subsystem, why do you put HSIO
property in the phy? No, that does not seem right.

>>
>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>> +    enum: [ 1, 2, 3 ]
>>> +
>>> +  ctrl-csr:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description:
>>> +      phandle to the ctrl-csr region containing the HSIO control and
>>> +      status registers for PCIe or SATA controller (optional).
>>
>> Please try some internal review before posting to patches. Community is not cheap
>> reviewers taking this duty from NXP. I am pretty sure NXP can afford someone
>> looking at the code.
>>
>> This misses vendor prefix, as explained many times for every syscon phandle. Also
>> optional is redundant.
> Sorry about the missing prefix. The prefix would be added later.
> And the optional would be removed. Thanks.
>>
>> But anyway status of PCIe or SATA controller is not a property of the phy, so it
>> looks to me you stuff here some properties belonging to some other missing
>> devices.
> I see. You're right the status of PCIe or SATA controller is not a property
>  of the PHY. Some bits contained in the ctrl-csr region, are used to kick
> off resets through the internal glue logic. So, this property is added
>  for phy driver.

Sorry, I am really fed up with the syscons. See here:
https://lore.kernel.org/all/20230830031846.127957-2-william.qiu@starfivetech.com/

I cannot trust you on this anymore. Describe hardware properly. If you
have resets, you have reset controller. If you have clocks, then clock
controller.

>>
>>> +
>>> +  misc-csr:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description:
>>> +      phandle to the misc-csr region containing the HSIO control and
>>> +      status registers for misc (optional).
>>
>> Same problems.
>>
> "fsl,hsio-" prefix would be added later.


If you have some HSIO block, why do you reference it via phandle and why
do you put its properties (mode) here? What is the relation between HSIO
and this? So many questions... from your commit description all this
looks entirely wrong. You messed description of HSIO and now try to
bandage it with such properties. No.

NAK.



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
