Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FCC5C531DC
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 09:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZvCa55eUkRGa68/oth9uHJnsyjuwG7ZuoSrJ/lnu+8=; b=a7oluskAfw93d6
	Wgc84/Eq9ISn5pzI9by2nUVbJSjE58do9lxHIcSAjYAeRx5e+DWbk7HN4MYFV4ihMulcMudpdjCzb
	s66+38tDI8QdTzIbiM4zPYE4g1aq+6yxxd969DnnO0UTuSNtcTMPLxv2LzgBwSRk4TUgJO6eXhX43
	o8MG8+M5MP2aYlajKXSnxleXo/VrpHygKlz84lMpqA4OnQ+oUMLy0aFOI8TbHOhjKpEYhm4waDatk
	La1yzzE1SAV6jJheTKLL7PUCtgoaibhjx3OGEOPoyVbNCsn1g7IAWcnULt1Px90tmZqyoAXEs5GW5
	DlhTcdIAwQ5X6GbgWXcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shQAM-0000000G09y-1KuZ;
	Fri, 23 Aug 2024 09:01:06 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shP7c-0000000Fiw9-069v
	for linux-phy@lists.infradead.org;
	Fri, 23 Aug 2024 07:54:13 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5becdf7d36aso2268632a12.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Aug 2024 00:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724399650; x=1725004450; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K9F6H3c2NVmBHPEentW34dAviw4YhqEZNXwnJa/lgq4=;
        b=NR8/N+374fnc/QayDE0KHYEQCoyWtD7TSUK/2GdD6OSs0JPjhECgFNkNvOVWbBzlFh
         2TWCpzOshJbrUIxUumUjclGvPNkZydVVTdZlTGJHthRDtlrB5fy0hm58kXddWvN6FgvF
         0ISVILjg5cFcioW2k4CkFNg6Ncr+hfdyKQdpTyHONFeBe88hvrvSNX8niQ1Aop0FDY+2
         NY2FFmz9fSyJgLpUdALhIeirfap0MLFHpAYGyPTQwURUbXuuKUYrFHLB5mX/Eiz0x8Fk
         UzCFlHRYJpSMIb4ieZXTFv1ifIZAa8hAWvNhElsDD6wlfWufjrkpNU0PJGbeqJtUhT5R
         76FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724399650; x=1725004450;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K9F6H3c2NVmBHPEentW34dAviw4YhqEZNXwnJa/lgq4=;
        b=kWfFFzuNUBxwHN8NBTnj7E46DR89+ehVanPb0U7zi4T0W0cTE8fAFlKzOHkh91LyAn
         K46Kbs8tSd+bWQsCD1CHui61ixa5Z2ZUuDbiAN6iS4zZGlLl0PdxIlTBmgumt95jfm0d
         yWvR/koxj63obYy8qnylOyl0buOCmqRnn6pgPwDjZ+EKssVRGHjznGfn2GGY8BiRuBJ/
         hyPVo/KpZ0Y1EXN0ll8YnmbspaMHgBkbP8+CV0SSO0AZKSNjRcdPqNp4NrOrX1OMkx/F
         BYg548S0J7VAYRyZmeKkHTxe2/uPaeNH24W9PgwBzoAcK1sUuZVrBuQ30IJc/wOzFSbF
         vH4A==
X-Forwarded-Encrypted: i=1; AJvYcCUD8UO+5mIKh3w0WpN1Tlh8Jd0Pw9m7UkJyj+eCRyqGizXFWumKP6Ab+/MvRzleEfizVeSd0xUsm/c=@lists.infradead.org
X-Gm-Message-State: AOJu0YxDu0v+nFQZMpN+SEU6fvAYYu0YuCvSXwREVQnJX+NS5RLaV6Py
	/oWfmMUIqNk0kDVvjxM2JvYWD4n2bAEiqOPSiiB6hPUn8VgZsKECNbbaZzecEB0=
X-Google-Smtp-Source: AGHT+IEoQJnrG7rJ9f2StMomCkVPrYJqe5+JdS66nZak9PuSepkUhwJhO+/TtFtd6qLUxl+/AblgVw==
X-Received: by 2002:a05:6402:4303:b0:5be:e999:18ab with SMTP id 4fb4d7f45d1cf-5c0891a1ccemr803908a12.23.1724399649843;
        Fri, 23 Aug 2024 00:54:09 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c04a3eabe1sm1754112a12.52.2024.08.23.00.54.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 00:54:09 -0700 (PDT)
Message-ID: <0d8b1322-cf15-4ed9-b958-06516bbb64c7@tuxon.dev>
Date: Fri, 23 Aug 2024 10:54:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add
 #reset-cells for RZ/G3S
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com,
 sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-3-claudiu.beznea.uj@bp.renesas.com>
 <20240822-vanilla-enigmatic-f0b05ecca4b6@spud>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240822-vanilla-enigmatic-f0b05ecca4b6@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_005412_302563_39BF5FCF 
X-CRM114-Status: GOOD (  13.58  )
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

Hi, Conor,

On 22.08.2024 19:42, Conor Dooley wrote:
> On Thu, Aug 22, 2024 at 06:27:47PM +0300, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> The RZ/G3S System controller has registers to control signals that need
>> to be de-asserted/asserted before/after different SoC areas are power
>> on/off. This signals are implemented as reset signals. For this document
>> the #reset-cells property.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>  .../bindings/soc/renesas/renesas,rzg2l-sysc.yaml | 16 ++++++++++++++++
>>  1 file changed, 16 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>> index 4386b2c3fa4d..6b0bb34485d9 100644
>> --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>> @@ -42,12 +42,28 @@ properties:
>>        - const: cm33stbyr_int
>>        - const: ca55_deny
>>  
>> +  "#reset-cells":
>> +    const: 1
>> +
>>  required:
>>    - compatible
>>    - reg
>>  
>>  additionalProperties: false
>>  
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: renesas,r9a08g045-sysc
>> +    then:
>> +      required:
>> +        - "#reset-cells"
> 
> Given this is new required property on an existing platform, I'd expect
> some mention of why it used to be okay to not have this but is now
> required. Did firmware or a bootloader stage take things out of reset?

On previous SoCs the SYS controller has no support for controlling the
signals going to different peripherals (USB, PCIE in case of RZ/G3S).
I'll add a note about this on next version.

Thank you,
Claudiu Beznea


> 
>> +    else:
>> +      properties:
>> +        "#reset-cells": false
>> +
>>  examples:
>>    - |
>>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>> -- 
>> 2.39.2
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
