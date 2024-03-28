Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 322E9CD11DD
	for <linux-phy@archiver.kernel.org>; Thu, 28 Mar 2024 18:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WquVGtFIvL3GY5YzsYbIGbu68ZIcXz+7SbVCLfnasvI=; b=Gv438ghHj3JOln
	IGzDhPKU8NU7LNX9pdtzu6VZHf/07U43z8Q0AHNRGZGT+HeOdF9VWZm9izQpG4y6Z8d7sS6vDIqsg
	C5fkxW4OM+SrDVDgCQGUTGpvvLTgofuSLHyfzI9E6Guzd/fS+lUrfjd5xTNupysCgbyOk5trpR78k
	mirOgnjOcCbRYoXwLsCEPB1nlsWjDEmvrnxEoHkYzaXLxXixOzxUJkrLWwVdMOJ8oYaWXWl4XBVKJ
	zmburFR9/gdvDEIopbf6o0h9ht4pHv+hbdGlXyt8uniaMRy9Ucof20P/QxJjtYh41TFPcFEfNqqlq
	12f9xHpOZWM5+GD7RyQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpu8B-0000000F5HN-3et6;
	Thu, 28 Mar 2024 18:05:39 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpu88-0000000F5Fs-2bAl
	for linux-phy@lists.infradead.org;
	Thu, 28 Mar 2024 18:05:38 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-33ed7ef0ae8so852841f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 28 Mar 2024 11:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711649134; x=1712253934; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=7i78qsEKk8suQqaQrq70K7F/HR/B+wBGy1GBI/Kse4k=;
        b=r/LsLZMbYmzRx3WvInZgu1vv1OtO7T3bhpsh783ACs/KCpHdgLkK9ZDpGUyWtON+xr
         Nx73GMqwnT138xnONS+DihG/ZDu77q07c9gBFbiUQWZ2rha/gOvjz+oCLJ3/2X/+1c6N
         aGr6G5TvgnR9iSHQkL14XP7Mj4QbwudOh0sCJSgRGvDQ4p7XrSKKOhZBpPxfzbVdM+0K
         Ru4JCTKWPKoa5VxWgDqyVDULvo5EtDN+AiSgzsWPIJX+MTZj9xLMmcBrrKwLK4wkn6K9
         7h2oJuDO+mpC6ngbnMnEf7ZbI3rpw546uTxI7/Jgv+cbY9hrp1NmGlnYGkxe6IEF5wHo
         Fa8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711649134; x=1712253934;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7i78qsEKk8suQqaQrq70K7F/HR/B+wBGy1GBI/Kse4k=;
        b=GHTQWiSgH8ue9IE99f1iVBjGja8x6SNIj8gve1mnjC+wlp2eWHWG+H7ckGXokDpYba
         4nVrnICBd48EPV2ePYGlGqnwtrl/jlmyvsqvphZ8wqD+GcHq4f+ZfIei3vvt8BQL/CdT
         EN/RrF8iqcGZLolwWJ5opbIIPqyGNOnmrh4ZQpgQskPf/wJQlXgrdZRwsWz/hiJ+3Olk
         WnEMyCAlbYJ9VDngWwZxM1cFqHqNfTJnECHHxWfCSLfc7jKBM1tLEBdlqSECaDzMBDkI
         0jTfLN81TBXFaoh4Q7QMYTfKZuHzt7he4VpSSl9fwZqghZjvoEdh0Cc0jL4/NKqBKs4r
         pPWg==
X-Forwarded-Encrypted: i=1; AJvYcCVXJpUFtr9WGf5nNuy/jSTdw2yzEyfs1zgX6d5uzAJm1V7sFqlu3shsZCTkdDeLY8vAfdBakIN9+aKkSvB9ujPKTc+iMgcTS7OJvNH5ug==
X-Gm-Message-State: AOJu0YwK/JPL+ttQMcnR/9kkS9LeDpqCzRvcjbXrGPQtmZwm4rMAzXOQ
	t1r5YxFS1GuMDatxaGAszZ3ed2kZmXnCIfvtHnv4O5fFaNYlGlhnWa21Fk4D5jA=
X-Google-Smtp-Source: AGHT+IEdXx3Cehjpn14ddXZgvUVFhvlEiMMUGmQefg2rIDCI7iGvCADTWekq/9h9GL8Gz7ppAdtmXw==
X-Received: by 2002:a5d:514e:0:b0:341:d7b5:27 with SMTP id u14-20020a5d514e000000b00341d7b50027mr2876740wrt.6.1711649133789;
        Thu, 28 Mar 2024 11:05:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.50])
        by smtp.gmail.com with ESMTPSA id d8-20020adfef88000000b0033ed7181fd1sm2307467wro.62.2024.03.28.11.05.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Mar 2024 11:05:33 -0700 (PDT)
Message-ID: <a13b2870-c1d5-4744-8da1-2fbf384b9c5a@linaro.org>
Date: Thu, 28 Mar 2024 19:05:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for
 SM8475
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: krzysztof.kozlowski+dt@linaro.org, andersson@kernel.org,
 konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240327180642.20146-1-danila@jiaxyga.com>
 <20240327180642.20146-2-danila@jiaxyga.com>
 <b73034c3-a512-46b6-a9e8-4d43fd3b39e6@linaro.org>
 <d09c9486-d2ac-48d7-b5d3-49b9e1a8cc0a@jiaxyga.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <d09c9486-d2ac-48d7-b5d3-49b9e1a8cc0a@jiaxyga.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_110536_699680_454319BF 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
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

On 28/03/2024 19:02, Danila Tikhonov wrote:
>>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> (not reviewed, please provide link to DTS)
>>
>> Best regards,
>> Krzysztof
>>
> Yes, sure.
> SM8475 and Nothing Phone 2 (nothing-pong) on which I tested:
> https://github.com/mainlining/linux/blob/danila/sm8475-test/arch/arm64/boot/dts/qcom/sm8475.dtsi
> https://github.com/mainlining/linux/blob/danila/sm8475-test/arch/arm64/boot/dts/qcom/sm8475-nothing-pong.dts
> 

Thanks, looks good and in match with the binding, so let's make it:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
