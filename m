Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72739C48BC3
	for <linux-phy@archiver.kernel.org>; Sat, 17 Feb 2024 10:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RzCtzRgWZUBCKoiVdLH2dL4Qw0KhLzwjzXC1hPwVKOo=; b=SnR85Mj8FSFbOl
	9e8fVk3T1iPvEZlSa1SkKngsjPecC3uSRkVeCC6UW0PynqB1oFcZNPnWCQ021yGe9Tn5VwfN7n+oj
	ulKbBuk/cVOEAnfQwZJCCXZxwJu/dVLdNDsta+h07f2g9Qqfh5xg7kmzjb4zcWhtXEaL8BAxm8+/j
	Q9GAUtphfc4GyvrFHURzdlGYTwHX3SWhrahPtyfemroxIWFMoRgtiYORjeqTmK+zn62d18detEWan
	o6EAD/u9/A+6ZpXgs3oOz3C4m/Y2mexQiL0LQ5dACCXlpe0TaVtI1WAas4nWHnzhgAiU9GioDMP9Y
	NbylnZnO4Nty3iQNlP/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbHk5-00000005Kfp-0d5U;
	Sat, 17 Feb 2024 10:16:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbHk4-00000005KfL-1NoM
	for linux-phy@bombadil.infradead.org;
	Sat, 17 Feb 2024 10:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=QSht4um5QdxkKEwk9U46YwTYDsntPvBYfxqz99LVvew=; b=EcM1hqxz0NLbewpmAq3MxWIYDQ
	vVfqY6L+AnPHZ9JVktnbQ8L6aIr37myX6btGxNwBBN65NRWvS4LYW4A/RIwvlVSaKS6GSLkReW2xG
	siNt2f9OxEkxT2c2fZlzcVPqcBNhb1a+13HjDtfwDsGCsMBCAHXb4mRrjRfAR7SCIShJUaTR4y4zL
	XIFnuaY3A9y/APOaoea3V4rviVNxggMohp36P724xhvREiNhGYMkBFp5pbPfH0Hw40iS9dHPqasPd
	luGoBeuK53gc5dIevSTgE6UTn2l2VJetudHqDv44pbKvvKvtwbBJOpoEuugEVQ4EheOpBrNTaE8Kj
	Xa9ZUFNQ==;
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbHjy-00000000JMb-0zm7
	for linux-phy@lists.infradead.org;
	Sat, 17 Feb 2024 10:16:17 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-51299d29e43so1324968e87.2
        for <linux-phy@lists.infradead.org>; Sat, 17 Feb 2024 02:16:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708164970; x=1708769770; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QSht4um5QdxkKEwk9U46YwTYDsntPvBYfxqz99LVvew=;
        b=D3n+x1acec7AYuU8Fs3A2c1smLqsrsl8oeo3jLszEgkKUXtfdECAZnA1sF0bPdwpTM
         KStzOFmR9a6frjPhqY5byk4vFYwmcZSm2Um+NgpeMseoRWmFPeKZHiz7zzx45QulmYGl
         /Ssr51hzps5t7HN2LHAjqIkR2cWC0oqomHpTsXLaEf9SQxgwCsxu9JzK53UoBc9IgyPo
         3SX3yc9nneqqItTe3sULGpGIwNcGjpj2egMfOvwRxwIryMMS/qknOBVFXv5aZwf8jkZg
         2JnL2UgtMsX/mn6mM4gFuoModb4QFY36QxA+m32hPld0YCtV7FWAc8rKX+vLn0M7Xl9D
         66Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708164970; x=1708769770;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QSht4um5QdxkKEwk9U46YwTYDsntPvBYfxqz99LVvew=;
        b=NjSfzFYv86+8EN/uSvnekoZqUbwbeNT3x9gb7GDlPTEHmNZjAIcVs602duZguZ9KW6
         QxfKGgxp1lU4+CLgOGKpqCzmWP3PXh1JD/39lCi4Ky/JbT27jTF5ynyFK+/bUcmcZMik
         R06Nt6os/bf27BmcHZ39jjqF//l+tFoI0daqdaxg48DTgaeVtsTdOxYcdXl6U2gprxL2
         oge0AqzFXYWl0VcSkbwGC/vL2J3QK1XMnCxjQZTbobDwjyeP94gMFN3TRQO/oknExGS5
         rMs61Tw4GEJON/G9KWEggWeBBMUyg6pa1PMdR21JKLxJMJgA4SyPKukLV51fvimy2YLr
         y0yg==
X-Gm-Message-State: AOJu0YyodFDotjk6yFfTWUFN+QLO4zP9HmlK5n8GH4++Lbx6FF0hDLj3
	zl9zT+nkG87mcBZKU0U5Zoi9N20gaCWboDtIbWrVDequVIXeg+L9hOvQD2IJ4Cc=
X-Google-Smtp-Source: AGHT+IFLrQJGZ4VI12ihSlw3Jd/DMgL9mrvE+VrzDKyHCNPqpi8fuvM2A6Rd/Ngj4t4uLF2zc0BAJA==
X-Received: by 2002:ac2:5f84:0:b0:512:a982:6dc3 with SMTP id r4-20020ac25f84000000b00512a9826dc3mr232769lfe.6.1708164970334;
        Sat, 17 Feb 2024 02:16:10 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id tl23-20020a170907c31700b00a3da5bf34absm846758ejc.207.2024.02.17.02.16.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Feb 2024 02:16:09 -0800 (PST)
Message-ID: <55f8815e-fbfc-4587-9edb-bbff6ef84deb@linaro.org>
Date: Sat, 17 Feb 2024 11:16:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 4/4] dt-binding: phy: hisi-inno-usb2: add compatible
 of hisilicon,hi3798mv200-usb2-phy
Content-Language: en-US
To: forbidden405@outlook.com, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Jiancheng Xue <xuejiancheng@hisilicon.com>,
 Pengcheng Li <lpc.li@hisilicon.com>, Shawn Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 David Yang <mmyangfl@gmail.com>
References: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
 <20240216-inno-phy-v1-4-1ab912f0533f@outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240216-inno-phy-v1-4-1ab912f0533f@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_101615_359290_FDE797D0 
X-CRM114-Status: GOOD (  12.07  )
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

On 16/02/2024 16:21, Yang Xiwen via B4 Relay wrote:
> From: Yang Xiwen <forbidden405@outlook.com>
> 
> It is accessed by direct MMIO, making "ranges" property mandatory for
> it.
> 

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

> Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
> ---
>  .../devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml       | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
> index 73256eee10f9..d702878b8e6e 100644
> --- a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
> @@ -16,6 +16,7 @@ properties:
>        - enum:
>            - hisilicon,hi3798cv200-usb2-phy
>            - hisilicon,hi3798mv100-usb2-phy
> +          - hisilicon,hi3798mv200-usb2-phy
>        - const: hisilicon,inno-usb2-phy
>  
>    reg:
> @@ -64,6 +65,15 @@ required:
>    - '#size-cells'
>    - resets
>  
> +if:

allOf: above.

> +  properties:
> +    compatible:
> +      contains:
> +        const: hisilicon,hi3798mv200-inno-usb2-phy
> +then:
> +  required:
> +    - ranges
So please test your DTS first.

> 

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
