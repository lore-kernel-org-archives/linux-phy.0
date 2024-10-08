Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6A22CED25D
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 03:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBVJnLLp2UwvUIJ1oH2kTRrVF2zPjh7AwmR3e2DidFw=; b=EwOX/UAsBIwscJ
	ZdNavo7/QjWKbqVh0BFyMcppmz9m3gfZRm9dIVYbKkafkprpbt+CVDWmM2yLB3Lo3Sv21IWYijk92
	xtWGeTAGoFE4rjMMIJ61r2rWTtwcGrpA4yArC1YrmAljty8EqJUJdAtBcqd3BH3FIWQyxX5LN7UPa
	iRmkoocUJm+HTII5N8YICwvqOa1SEwYSXw8HmmgL5IRSDIbiOxyvW0SpMfzM7wYYsbsmuEjwMrBUg
	EeMtmhwkpuodPexdaol/QUPfxnu+Q/YR6/njwHI/dxyy+GaHKQGlHQZsrat6MTvkGJNVNzdPc0EWP
	/2iVp9o7M46N2M4rVyNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy0Wy-00000004MQZ-2gtJ;
	Tue, 08 Oct 2024 03:05:00 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy0Wu-00000004MMs-1bqC;
	Tue, 08 Oct 2024 03:04:58 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-7c3d415f85eso573014a12.0;
        Mon, 07 Oct 2024 20:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728356695; x=1728961495; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0fEU5+LIRwpPcVtB5GFRw9EBx5GwZfZdi0DP3rpreiA=;
        b=QzUR+w9dNLH6WOFmaxOq+177e8Fw4T0Gdt6cj69WT6R23ItUOTmxeW6Hho++Eu7hDn
         j8jclGXQklyZQaqLTPuGNe2Q4j4WdYHYgX7qXRLbnUKCq80rsc/r69ctzKfCmBQyvSlb
         3e5xLTh0TVkF35A2xO9GhEoWfOl622sntt/0LpsWrlA13l7pg+72Yny9X+00OkLaq/t5
         p0k+QYrUjPEeAXLKWsrL/lxS2Re0+P5EDIed2RVSN/dYulaCkvztud53sbyXKcz/RbRb
         gp71QUESnAd/aaE6ZIUCedr/Z5E7RlXvEAcoiGTmYLN0AtUJvFnw/uJ4FXSBIQa9kOpD
         NhHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728356695; x=1728961495;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0fEU5+LIRwpPcVtB5GFRw9EBx5GwZfZdi0DP3rpreiA=;
        b=p1+RhxefKwk/v/3LimPQDkWMBxxOH7mFej3F10nDGjEDETurJwyFE8N7bSZ9ezdAES
         bRFgYJijdaweHqs4LJehRAjqdU+HLL7od4tCrB6O+QpVwwBVySeCbNb1bt5ehfel1uDd
         2vw1+mykK1T7HkfJ14FZ5KHqr86qWmCsUs3P+WnsJcDh7qkyjrdzj21/t2hQx/57BWhE
         dFNcQYUPH5oZMWT5miE/1HBRDJ5JW9VZ/N1ICC5C+vYmoVnPhheClUxep/0hOsDfmfLU
         M3+ddaCYL/3h9DKP/PvBGoJyQjKPfAdDB28jy8rvmfFFZsqD7+PR8RH4edwTmKDMG+Uh
         TSpA==
X-Forwarded-Encrypted: i=1; AJvYcCU7SFsJIaicjWRW5+V+W7EVQB+F62oUJ8rsyuJFcwYnpgKsm3wxrh2ZVcsUpH6gWZYlPZceHDksN44wQpJpznP0@lists.infradead.org, AJvYcCWGAyk11gHFZkDpiu+uViG63SD+7SMsd2BzpsAtGOkHwhbpwS/tFFoRg8o0OqfkdbQ2or6YEWRqe45rZ++405U=@lists.infradead.org, AJvYcCXkZrR3cV2PxOFu90ed2P3LUrhZAJ7n4a9E09B6rsgGbPrfh5WL2NtCpOT7bYStSVBbSIyh3KzRJRW3@lists.infradead.org
X-Gm-Message-State: AOJu0YwI66ydA0ShUyEoSkEOc40z971+YoZ4cau2D3UTn0NStQ5fWAuZ
	NhfQbfpMIi9wxhlzJ8hxqw39d2DxK6OLIcSKx55BvtOB5WofXURa
X-Google-Smtp-Source: AGHT+IF/mYdHKvquiAn/wFf8QmUeywFZG+J2GcInNX9jsPC4w+KCpYqQSUbZsOsVRTg8hvdAg5XvQg==
X-Received: by 2002:a17:902:eccf:b0:207:428d:ecc0 with SMTP id d9443c01a7336-20bfee35e78mr86055315ad.8.1728356694751;
        Mon, 07 Oct 2024 20:04:54 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c138af9f7sm46708955ad.13.2024.10.07.20.04.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 20:04:54 -0700 (PDT)
Message-ID: <b3046637-7a35-49ef-a2b4-2f44355980a7@gmail.com>
Date: Tue, 8 Oct 2024 11:04:49 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com, frank.wang@rock-chips.com
References: <20240929061025.3704-1-frawang.cn@gmail.com>
 <20240929061025.3704-2-frawang.cn@gmail.com>
 <4czjtesext2ulsmcym2cpjavni7zuve2sdgyiqxkjkaxrl2gpf@7nqylzgd5f55>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <4czjtesext2ulsmcym2cpjavni7zuve2sdgyiqxkjkaxrl2gpf@7nqylzgd5f55>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_200456_489516_A927F2CD 
X-CRM114-Status: GOOD (  19.48  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

On 2024/9/30 3:36, Krzysztof Kozlowski wrote:
> On Sun, Sep 29, 2024 at 02:10:24PM +0800, Frank Wang wrote:
>> From: Frank Wang <frank.wang@rock-chips.com>
>>
>> Add compatible for the USB2 phy in the Rockchip RK3576 SoC.
>>
>> This change also refactor the clocks list as there are new clocks
>> adding used for the USB MMU in RK3576 SoC.
>>
>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>> ---
>> Changelog:
>> v4:
>>   - refactor the clocks list used if:then:
>>
>> v3:
>>   - narrowed rk3576 clocks by compatible property.
>>
>> v2:
>>   - Categorize clock names by oneOf keyword.
>>
>> v1:
>>   - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-1-frank.wang@rock-chips.com/
>>
>>   .../bindings/phy/rockchip,inno-usb2phy.yaml   | 46 ++++++++++++++++++-
>>   1 file changed, 44 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>> index 5254413137c6..fc2c03d01a20 100644
>> --- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>> @@ -20,6 +20,7 @@ properties:
>>         - rockchip,rk3366-usb2phy
>>         - rockchip,rk3399-usb2phy
>>         - rockchip,rk3568-usb2phy
>> +      - rockchip,rk3576-usb2phy
>>         - rockchip,rk3588-usb2phy
>>         - rockchip,rv1108-usb2phy
>>   
>> @@ -34,10 +35,12 @@ properties:
>>       const: 0
>>   
>>     clocks:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 3
>>   
>>     clock-names:
>> -    const: phyclk
>> +    minItems: 1
>> +    maxItems: 3
>>   
>>     assigned-clocks:
>>       description:
>> @@ -172,6 +175,45 @@ allOf:
>>               - interrupts
>>               - interrupt-names
>>   
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - rockchip,px30-usb2phy
>> +              - rockchip,rk3128-usb2phy
>> +              - rockchip,rk3228-usb2phy
>> +              - rockchip,rk3308-usb2phy
>> +              - rockchip,rk3328-usb2phy
>> +              - rockchip,rk3366-usb2phy
>> +              - rockchip,rk3399-usb2phy
>> +              - rockchip,rk3568-usb2phy
>> +              - rockchip,rk3588-usb2phy
>> +              - rockchip,rv1108-usb2phy
>> +    then:
>> +      properties:
>> +        clocks:
>> +          maxItems: 1
>> +        clock-names:
>> +          const: phyclk
> maxItems: 1 instead

Sorry for late reply.

Do you mean use "maxItems: 1" instead of "const: phyclk" ?


>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - rockchip,rk3576-usb2phy
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 3
>> +          maxItems: 3
>> +        clock-names:
>> +          items:
>> +            - const: phyclk
>> +            - const: aclk
>> +            - const: aclk_slv
> This list goes to the top property with minItems: 1. Here you have only
> minItems: 3.
>
> This way you have only one definition of entire list with same order of
> items between variants.

For rockchip,rk3576-usb2phy, three clocks are all required, and the 
driver does not care about the order of the clocks.

So is the above definition correct?


Best regards,
Frank

> Best regards,
> Krzysztof
>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
