Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35D0FC6FD1F
	for <linux-phy@archiver.kernel.org>; Sun, 19 Mar 2023 12:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgHucIep+LrSgz4F85LTX0dRPI63N2eg6X0WMdCAQuA=; b=oGtHcFPAjc6UzO
	3veueB10AMzLokiJMwon8xbUPKSdVfrbZOFwlQGK4mBytzQWL6IEvGAnO1ejpUJArg7FA2DKELZj7
	88Y1MOzRuNI7Rcze+5KZC5r9gks2k7kmJCu9r2ijJmE16uf5a8f+5EyxL8pH8mf7CcKYwXQkv485a
	kMkw86E0KmHX/kLGG/5VPP/eHmWxADODcT+f4pSwMsIGpFxNjATIecSYxwrOuJZmrZ4K/Osk4iJVY
	+tWzYOe8twDiIvj4Ia05Yi6Fe+WduGxfR3hu6G6q/i6aMBXrgQlYV4i8C0SNNsP/a4GSZnZolDkff
	7VRWbKt1/Tuu6HPpEDEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdsPc-006iZe-2l;
	Sun, 19 Mar 2023 12:45:24 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdsPa-006iYj-0v
	for linux-phy@lists.infradead.org;
	Sun, 19 Mar 2023 12:45:23 +0000
Received: by mail-ed1-x535.google.com with SMTP id h8so36948396ede.8
        for <linux-phy@lists.infradead.org>; Sun, 19 Mar 2023 05:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679229921;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2qlgbiw3Sb6++QsdHl2qUbuhVQ07WmikeLyvHR4RN2Y=;
        b=aGe7uAclUwzXTgHZ9/NAUe0MJQUqpOP0ZA3cHQwR+KlrS+x/4dFtfPwsBKlV03nGqw
         8SHHpm4E3GiAW9WTHPMGJ8dbvvKE8LIDGLHi8y4gMNV9ebaLg6bfamLBOM91pTEgWugc
         TJ2ibKtAQpKwkBdeG7tsiRRkHLK5uedpgKhLIvk7pksQ/5D0HXvB9IcrsUsmZp2WU13N
         7uDzmtAJIDJCkNKWi2C8d4udXSvZoF6Ytvqa+eSeREkB90sWe0S9qzJn+x8CaEamvN31
         Q7D+uX9y14RTbEJSW/UxUr1c4nlrpGt/JFj6RzSg2g6HLFPqpZRP0DyB2WFDyvrKXZ5W
         3O8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679229921;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2qlgbiw3Sb6++QsdHl2qUbuhVQ07WmikeLyvHR4RN2Y=;
        b=LHoIQYGmyWIbS39+r4RovYycWflvGDfs++3GK1CUlCrK4KyrqhkSEcHmhGpd6uOADA
         JG3eZPjg62aCysoi0omAj+u4sSCHGDEX9l9VTjwMybylV8aqBtyShpdo2RhTWiZs2DmL
         7ZwifVlQyK+bSkvYCvDpPoU/gQI4O9bfk+0TcFmSI8GZigfyxEFDKwMZi3FLjU1PMdc7
         q89OrLgJglExjJv3IVS+ETsIzjuhSL3IqDwTwVJ406pCQBja4bs5aa3L3hAb3jl9rV6A
         tsKIq+ObJrzgXtDHoYQBPi8ViiXUeFOAranIG2h9bxO2PHDDIIFgxPe0li+vk0/dJ1Ly
         N6Cw==
X-Gm-Message-State: AO0yUKXt44XjIID3v2MVK6cGwzp6jysYzNVNPQjFR8P4AdWH0eQSM8Aj
	SCtvdxe+FOWdtyVo/Lzc8Twf+w==
X-Google-Smtp-Source: AK7set80DrEMa/lVYTlIV0dXi5+5IMVgnmxxBGP5YTtGn4YA8es39AcADqXSwI4aMPr55TmOEstkyA==
X-Received: by 2002:a05:6402:48c:b0:4fb:5089:6e01 with SMTP id k12-20020a056402048c00b004fb50896e01mr9530273edv.6.1679229920763;
        Sun, 19 Mar 2023 05:45:20 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id i23-20020a0564020f1700b00500383a202csm3456600eda.6.2023.03.19.05.45.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 05:45:20 -0700 (PDT)
Message-ID: <921520a2-e3b5-7317-669f-a7c94895b34d@linaro.org>
Date: Sun, 19 Mar 2023 13:45:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: phy: ti: phy-gmii-sel: Add support for
 J784S4 CPSW9G
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 srk@ti.com
References: <20230315092408.1722114-1-s-vadapalli@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315092408.1722114-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_054522_327766_B0C602AA 
X-CRM114-Status: GOOD (  10.57  )
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

On 15/03/2023 10:24, Siddharth Vadapalli wrote:
> The CPSW9G instance of CPSW Ethernet Switch on TI's J784S4 SoC supports
> additional PHY modes like QSGMII. Add a compatible for it.
> 
> Enable the use of "ti,qsgmii-main-ports" property for J784S4 CPSW9G.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>  Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml | 4 ++++
>  1 file changed, 4 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
