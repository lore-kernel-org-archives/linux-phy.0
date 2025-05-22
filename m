Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF3F1C54E90
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 10:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+JhM7k5HkAZjTUVtbSGiIXR0UMNnU36PeOHR//AIHk=; b=Xe0MzuIU4jD0xO
	CB5815z/p/vKeNapFrLpNBCMXVJSxsmRMC5rYlCE2kpGNeOtRxd8O7d0HhnaQft60gEDEcsAlr4yJ
	5/obp26dAWJWoc4l9drlVevxNE3HmRz7FbMumYJaIgN/ggtXV7DQmpnntR6A2vbYBDgRu0Q90TbLe
	OZPi0mxekko9ANEIJQsyDOkJPFsuYxub0L9SL6JDTOcC3aXrFSqmjx7CaOTzyX+7m5TEDKQHiOIdF
	WlpeyUsIQrZvbptQAyHiKTwXEA70j9FOj1/C3J17x2VuCbyPM67qUjo4if2tBoFr232kBKmNFrwEC
	GXL/voKWfOfBwu46SSdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI38z-00000000hIZ-26L7;
	Thu, 22 May 2025 10:27:21 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI37z-00000000h08-0gtb
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 10:26:20 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-601ad859ec0so9902034a12.0
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 03:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747909577; x=1748514377; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4caaPIV8qSqyjNDB+/IzXFji0RZ7hdRuW08/jzohm/U=;
        b=dJHYC6SvV7PhWEYb718w4YDgSVCj0v+in8+11OKDa2OKiR7O/GPp4Z0icXyQ4P1YwK
         1RP7k3zC6MMxvxw3bzjco7hgDLwVUovK1hgSReECpeGZlqWSZdrDTmciM+qSEZcKpje4
         QVDzFzOmi2WTwV0yVXF9WROUS1PGCtWio0NKC/xuDbjzEthdHKuo8Wk5bDOv4u9FPJ2+
         E4HyYUmVepOxgcug+5Nys+0fpe9RQWjSRvQl71Xw3ro0n7zIpXOkNs9p+7QjMrKSOV+W
         NYG7fPLVpx7c2hLUFLyLuwvE5Acl5HXXIW3UwEthmTPHlkYPmbwVlND4g+3NMVbQ3k99
         AVtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747909577; x=1748514377;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4caaPIV8qSqyjNDB+/IzXFji0RZ7hdRuW08/jzohm/U=;
        b=QFI6+E07cLod1ae1sEV31kV0GPzSenleefEQBZ54Tr4y46BbYZeVbg14RfVLH7mWBz
         vLyYwQfC26ZTRQnDx9DxFlAu/TKeKXk9Ap6hAjBgGgmiOYroan4TdAQOqVv2U+WgNe+8
         SdmHdy4Be4034davZlbC+7wJy5hvkBBAV/T6AHh47HBuvibMOlb/2esng/3RzTvevBqq
         BOngtzDPD2uk+73rtEOwBSK93YTDtiYwzW3WlAgYtMN5yqz2KoWSh9cDAexHwQ0aTRFT
         bnFNXCkpmTGcLHKlIva0bxNx65CYuvvVQ0NQEyBEcOo6q8GBA407ar57ZoeD0nA35vv4
         EBTg==
X-Forwarded-Encrypted: i=1; AJvYcCUzykdFD8x6uukfP5Mpnxi0zYsKAAL1VnBGvDPOVBnCvI5qxq40KAi8G8n+q8hWSbTK0yXqy7t0ZlM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyaIGolCRPv9lDfX8sIgYJ54qr/xCYRj8/+Poio3011oBSZqwkN
	KAajvskv51udGFqHFSvJcGgLjonbIoGxojHczNINoWLEsATxMSYL9l6CUeHL0AwggAc=
X-Gm-Gg: ASbGnctW/cZJL5/L3bjSwpeAq4500xEA4dP0/lVfxAGW6CQ4VD3e9vAJWvuFLBOmVE+
	XFrne8bbifsv15zLECscuX+8DXj8gCqIBxwr4qY65yAruzttjH+M2+KbuvtTtCwR/EdTpvtGzFM
	dgJ+WWdjY/7t9TMep/INnl+cBpS+vFdBbkrHDZmKr522g+PmyZBZkI933VYeB2S3Cpw8sUq9W0P
	p7bO+IQUDgSnX3GIurRBnbZducJXDuJrBM83mzdVJjoIGonSA9lcTdxDQ37sEidpkMuEzkLF3mC
	YWDXzZLWEbgyTWcuIrJo5aI9jtHS6SpWX21siaUdFgE8XoK7a7lk11pmfic=
X-Google-Smtp-Source: AGHT+IFNGKRAQxDRw8YM6Df3ufbn3AseFb7JOrrDRAzOp7oR4YS6S6ab1Ixfj0XButiJTgZDbSswiw==
X-Received: by 2002:a17:907:6eaa:b0:ad2:238e:4a1b with SMTP id a640c23a62f3a-ad52d498e5dmr2363750366b.15.1747909577064;
        Thu, 22 May 2025 03:26:17 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4cadc5sm1046004466b.167.2025.05.22.03.26.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 03:26:16 -0700 (PDT)
Message-ID: <b22e7a46-7e35-4840-aae3-a855c97fbde4@tuxon.dev>
Date: Thu, 22 May 2025 13:26:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/12] dt-bindings: phy: renesas,usb2-phy: Add
 renesas,sysc-signals
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com, kees@kernel.org,
 gustavoars@kernel.org, biju.das.jz@bp.renesas.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-hardening@vger.kernel.org, john.madieu.xa@bp.renesas.com,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
 <20250521140943.3830195-6-claudiu.beznea.uj@bp.renesas.com>
 <20250522-evasive-unyielding-quoll-dbc9b2@kuoka>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250522-evasive-unyielding-quoll-dbc9b2@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_032619_213973_701DED76 
X-CRM114-Status: GOOD (  19.38  )
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

Hi, Krzysztof,

On 22.05.2025 10:03, Krzysztof Kozlowski wrote:
> On Wed, May 21, 2025 at 05:09:36PM GMT, Claudiu wrote:
>>  .../bindings/phy/renesas,usb2-phy.yaml        | 22 +++++++++++++++++++
>>  1 file changed, 22 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
>> index 12f8d5d8af55..e1e773cba847 100644
>> --- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
>> @@ -86,6 +86,16 @@ properties:
>>  
>>    dr_mode: true
>>  
>> +  renesas,sysc-signals:
>> +    description: System controller phandle, specifying the register
>> +      offset and bitmask associated with a specific system controller signal
> 
> This is 100% redundant information. system controller specifying system
> controller signal.
> 
> Drop.
> 
> 
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    items:
>> +      - items:
>> +          - description: system controller phandle
> 
> What for? Explain the usage. How is ut used by this hardware.

OK, I though I've explained in the renesas,sysc-signals description
section. I'll adjust it and move it here.

> 
>> +          - description: register offset associated with a signal
> 
> What signal? That's a phy.

Would you like me to specify here exactly the signal name? I tried to made
it generic as the system controller provides other signals to other IPs,
the intention was to use the same property for other IPs, if any. And kept
it generic in the idea it could be used in future, if any, for other
signals provided by the system controller to the USB PHY.

As explained in the commit description, on the Renesas RZ/G3S SoC, the USB
PHY receives a signal from the system controller that need to be
de-asserted/asserted when power is turned on/off. This signal, called
PWRRDY, is controlled through a specific register in the system controller
memory space.

With this property the intention is to specify to the USB PHY driver the
phandle to the SYSC, register offset within SYSC address space in charge of
controlling the USB PWRRDY signal and the bitmask within this register.

The PHY driver parse this information and set the signal at proper moments.


> 
>> +          - description: register bitmask associated with a signal
>> +
>>  if:
>>    properties:
>>      compatible:
>> @@ -117,6 +127,18 @@ allOf:
>>        required:
>>          - resets
>>  
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: renesas,usb2-phy-r9a08g045
>> +    then:
>> +      required:
>> +        - renesas,sysc-signals
> 
> That's ABI break.

There is no in kernel device tree users of "renesas,usb2-phy-r9a08g045"
compatible. It is introduced in patch 11/12 from this series. With this do
you still consider it ABI break?

Thank you for your review,
Claudiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
