Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6643C43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 01:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUIAkjBgDmYAlzUkQab+t+OiPPbh7pAEZIX84ErKdtc=; b=3BLAftYR1s4LaJ
	iw+kQPNYypt20Ev/rXwyIwis0iOAXvED28y/vQqqECP4XanIrJeGxWwgY3ShTNKOO1HVy2MMQmEbB
	99UgWYU5jadpLVA/VulmfGuUFbPVs6OunPkDpGZAlzXXczTz0eR65DKcVPX1shbTq7YLaUjdvb7/D
	VKrsnunodVQz0yvbJI74CQVjiJNO+A2NHm//0mTqxN5PcxbmNnv2Pn0p8XuSI/g+aPIFINS707DN3
	7vCifQrUuUs14MnmNDGLFb7/I8FPK5yYbDa7bEDzRj2v/yBVIrKLMUWpQVSC4p2ejYhlAxH0GPL1n
	fbJ8tF/8tJYKROeDWHNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjRv6-0000000Afdw-1JLi;
	Tue, 14 Jul 2026 01:26:48 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjRv4-0000000Afd7-2dFh
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 01:26:47 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-38deea72eebso1665276a91.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Jul 2026 18:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783992405; x=1784597205; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Q7Ilth6iiexMyu52cr63C3cGXl/20AI/2yHPhIPwQK0=;
        b=Sq/eTEjOILjXLm2HM0KKnbADNwUaHIsjP+Kxf8Pasuk5JVQep/L3ScBuPTjO8ztSum
         hvsPswwp16EZRSd0gWVwugcH3DrcHhlSdA8sF6GPlLaVl65kCa+r98Y0jZQn5p53WJFv
         DD96c1qx0cUh1YRjgMG0L3mGQnwB/4NHwEdT5MiA6TsreDxi72XQGeGwub1jj06oUy0v
         osFjOW+JXIW6A8+azSbZ5jcxe0F2o2csCcRnRql5hRT41wZlHpr8HAT2Yqfav5LCiDkv
         UG3zZZzrFMyivhKdXd6VLOlpxWr2z/R9+orf6GLj3vnUubimv4WMXGKV7wJLa4CLnSps
         GckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783992405; x=1784597205;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Q7Ilth6iiexMyu52cr63C3cGXl/20AI/2yHPhIPwQK0=;
        b=boftU/EeOtStu6FvJozbSYQrL4NOHjpH7FY0QPbSXJd7DLs7D/FHOrXLJG0ymLyqRM
         guetmcP+BznEA9JoF2dfYLw2l8MVb/QVefEYqn6oWK3wJcvWLpUplSghzLiqm6YazOHI
         RiO/uu9QMXQIGJ9GXkKHg+wGT8fvEp+IZEwSmOcM6rbIf+AU3j4KR25jiiTOvrTmcADO
         FOoVCLOye0TMD1onFgZwsxZGZK6MCvaGBRjl9famLBNtdOGYe67seJknuzI3bocP5x8f
         pCnGCYGqhYlzT03M3iYb9AjCGZaK5EpwW/56OArWDmll6Q7DIUhW352cpJp9CG++dObU
         YPIg==
X-Forwarded-Encrypted: i=1; AHgh+RoQBXiuedcjadVPpqHq+YQRJ/DqJEkpsbjQtvDHWxpL5b2RRJLF5ijiDnLmBXOdGUiAUCl9dOozM3o=@lists.infradead.org
X-Gm-Message-State: AOJu0YyyQAQdiqLHqClGngfCs4IcbNmTyTPyHopgIOUL/CdVG02UuZE4
	BTfsjYDnuhJ3qfpw3oZrLM+dM4rHdIxX0FGchN38kuk89HPGWGanK33O
X-Gm-Gg: AfdE7cm4qEhazHYrap6XLx6OzDnxvtQvZc7Ga528Cfkvk0NdHQqMAyZ7QpRH1PkD0IF
	XKYYUYe/Si/odyzZOM7qECf352aJFcjTUiu7ROJrMhAuBvl2AXwRYlTUFSmu9hHArRNnGOKin4e
	esnJ0Zl4wwbhNKbKLTAN3ZECbLOreSRRyyneKFVKulH3LKBEzGwE80qCD6lEqKMIlaYAh5tjIKL
	+7eNHeJ8Wsksh2LGBa2sl4IqKwhjcg7gKzvdRudzdOapxsM1eOL6TGoMn7and/CHsALnQWY5N1l
	df9Mm91HS+gAo2hmJvzPi86QcCzGysaQMAe1i6UHSflP5+XtbiROLmjK9yeNo8hyn1KLTG9FMg+
	pPXOErFVjBWIJuDmJCwdQRmW3U18HT2CL4F9mpGScI+fW6nxbxG0C1nNXEAPlm033p6zaMj1u6T
	lpuopAdkUaz3Wv4JqMX/9GxbvhBCdNTfWBxrJgqNd6C0/d3JseaLz7dnJ6lXswIkfGxQ==
X-Received: by 2002:a17:90b:224c:b0:37f:9ce1:cdb0 with SMTP id 98e67ed59e1d1-38dc778a27bmr10194596a91.30.1783992405139;
        Mon, 13 Jul 2026 18:26:45 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38e1745a3fesm604483a91.13.2026.07.13.18.26.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2026 18:26:44 -0700 (PDT)
Message-ID: <fd2a645f-1144-4e08-9e3b-df06aba0db55@gmail.com>
Date: Tue, 14 Jul 2026 09:26:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend
 for dual-port and OTG
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Jacky Huang
 <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>,
 Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260708103606.1462960-1-a0987203069@gmail.com>
 <20260708103606.1462960-2-a0987203069@gmail.com>
 <20260710-strange-prompt-python-c2e1d4@quoll>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <20260710-strange-prompt-python-c2e1d4@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_182646_663268_1800DD67 
X-CRM114-Status: GOOD (  14.21  )
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


On 7/10/2026 4:54 PM, Krzysztof Kozlowski wrote:
> On Wed, Jul 08, 2026 at 06:36:04PM +0800, Joey Lu wrote:
>> +  nuvoton,oc-active-high:
>> +    type: boolean
>> +    description:
>> +      When present, the over-current detect input from the VBUS power switch
>> +      is treated as active-high. The default (property absent) is active-low.
>> +      This setting is shared by both USB host ports.
>>   
>>   required:
>>     - compatible
>> @@ -39,7 +78,7 @@ examples:
>>   
>>       usb_phy: usb-phy {
>>           compatible = "nuvoton,ma35d1-usb2-phy";
>> -        clocks = <&clk USBD_GATE>;
>> +        clocks = <&clk HUSBH0_GATE>;
> This change is really redundant. Instead, add optional properties like
> nuvoton,rcalcode and nuvoton,oc-active-high.
>
> The rest looks good, so with above change:
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>
> Best regards,
> Krzysztof
Thank you for the review.
Agreed on both points: the clock swap in the example is redundant and I 
will revert it. I will add nuvoton,rcalcode to the example to highlight 
the optional properties. For nuvoton,oc-active-high, since active-low is 
the default, I will leave it out of the example to keep it 
representative of a typical board. I will address this in the next patch 
series.

BR,
Joey

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
