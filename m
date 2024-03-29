Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8D87C6FD1F
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 11:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xT6khA25fGTNMcv8nFiblYtSaSvGlOFLW3vcUINPz24=; b=IEa2HclNdpzumf
	19ewsxoBUjwId4yxPzsV/tV29UHVk/pyN4KVA1x9YafUiVAsswam3K2WwMqrHXbUmy3zPa8II1Hsi
	+ntkcJAyeru/GD2QLTZvpRbxgtlf5A3lDg9SFweSOgmAHF8zXFB3+m153lXDAxBEyX9YOvNgeMWgR
	6Q+FmJcSdJ6ttDT5nAbwVUlCOmwjKC7WaylMlPaf8xFCXHfVTM2kZjDWpDk83NPb9JPeoW7WeyEe9
	pY1FUbwQ8EEA9OKHBYDEyz110cc5/nKIJoxH4UIHtM2P0sR0q1x6aVHKg8n3ieMp05XlvVpG+SjiD
	ZsgrPY7iUANDip+WbcsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqAKH-00000000Ap2-0yjI;
	Fri, 29 Mar 2024 11:23:13 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqAKD-00000000AnI-0bwV
	for linux-phy@lists.infradead.org;
	Fri, 29 Mar 2024 11:23:10 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a472f8c6a55so241301466b.0
        for <linux-phy@lists.infradead.org>; Fri, 29 Mar 2024 04:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711711386; x=1712316186; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=lVmBSNWpQpi1Fd8w64VPbDT2lIt0Pb3m4TwwB/26vRg=;
        b=Kw/wuN4oAvRHLGEZrbx550c+lLrdWBeATD0rGXkWEi1NrlN3aHJLF20G1yxRAd7GLk
         BB+FlSaoDZTDuZql1Z3leReoTHB7I9JtPXUmKhGwmYzyj8xONnwrRVNR29c2mdxA1e4k
         d9HJpnrMeK4tjWrcd+24MOxq+rCY9uDL9npoLOF4SOCZSs1iuWKmBSYuSepcGMHvA3tD
         k8tYbXzlVKDJJV2BgFhKOqdqoi++7yQb9SXwesBo49vr4J/vxi8zFXrMohqsqi3kqSv/
         D62FaySNDgNscssAcpzan14Sr6sGr1WvPqol14nyvpXqG2kshhu+XcPJubqSCHqLyldw
         ksrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711711386; x=1712316186;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lVmBSNWpQpi1Fd8w64VPbDT2lIt0Pb3m4TwwB/26vRg=;
        b=g/qdAszSEM4XPAG39Qj40+hYesvxDCfmB3oY9rD7NamjNN6bjPsJa+dML7MWRlzANb
         zKJxgeURWN+Ympqott+vFGjDb0s+5AmMCiDFlXhFkqnc4muR5EK15T2IDkyussWL+HjS
         n3aQScDywW0JqdoIC2Wtm/aBL8YiWrpaXll4ADXH18661Yo3wCGH3w3Vf2nM4ShT9Grs
         PD3Hd/++aQAeio1coDjgpI8W8hch9cIabjcBI0D/iekRbobAxOu0xA/4m2oibjutIaa4
         633/SzmS6X0HmuBitV/DkHE5G6qtZ2MklIHWvYPCfC+u7mhX5qUhohQJ981VqUt4SvKO
         i6Eg==
X-Forwarded-Encrypted: i=1; AJvYcCX5xTe5ipkc4SAnV3wUe0CGEqwhIf91n9M0rXCSsIIAetyThlcPtipELoKfsD7wcGwiu8GMxcpZTQhR/jCecMjjUsIfVGQ2izgtrWsHlg==
X-Gm-Message-State: AOJu0YxBrkghMpl0bm+Mt5u726OC5+Pg2I7wfDlpvoXGU7dC1XKu4mqT
	8RVYkJjaT9BQH6osTBMKWIkkjCizT9jEf3GusRwLoBAUrYDJfMAnQ2IgRMaOlXU=
X-Google-Smtp-Source: AGHT+IGNoup+3tVG4uto0ZZklAbiSvizNtkTqmmQZzXRlBNKHEjA3YKPEuQWJ1T8j+Y5jdH37ltApw==
X-Received: by 2002:a17:906:c78d:b0:a47:4be8:3c05 with SMTP id cw13-20020a170906c78d00b00a474be83c05mr1164748ejb.20.1711711386624;
        Fri, 29 Mar 2024 04:23:06 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id q17-20020a17090609b100b00a4e0a98befdsm1807270eje.213.2024.03.29.04.23.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Mar 2024 04:23:06 -0700 (PDT)
Message-ID: <b1233669-275d-4108-b598-db0ca7154056@linaro.org>
Date: Fri, 29 Mar 2024 12:23:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-qmp-ufs: Add SM8475 support
To: Vinod Koul <vkoul@kernel.org>
Cc: Danila Tikhonov <danila@jiaxyga.com>, andersson@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240327180642.20146-1-danila@jiaxyga.com>
 <20240327180642.20146-3-danila@jiaxyga.com>
 <afcbb668-ab9e-4f97-9014-ecbd5170ab92@linaro.org> <ZgUf_I2KBMhenNEv@matsya>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <ZgUf_I2KBMhenNEv@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_042309_229505_711CD713 
X-CRM114-Status: UNSURE (   8.31  )
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

On 28.03.2024 8:45 AM, Vinod Koul wrote:
> On 27-03-24, 22:38, Konrad Dybcio wrote:
>> On 27.03.2024 7:06 PM, Danila Tikhonov wrote:
>>> Add the tables and constants for init sequences for UFS QMP phy found in
>>> SM8475 SoC.
>>>
>>> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
>>> ---
>>
>> Worth mentioning that SM8475 is a respin of SM8450 on a different
>> process node, which probably forced some electrical changes.
> 
> should the tables be resued from 8450 instead of 8550 as in this patch?

No, and the reason why is my message above

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
