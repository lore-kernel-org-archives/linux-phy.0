Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA0F0C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 18:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B+WqjvV7mY+CU6iQDcSbgGDBqYux0T1Q8aY1Ji6zOd8=; b=RLDVKDhwm+PXdv
	ZmFWDi6CVOqGSYXiRwZxPcE+8bvpyyLPPJHC0blQLxg6YTSuxcZrvX4RmT7FAxHy659Jwfm8v3XQ8
	qqR9ilqv6vcYeYtQpMeufRUNR9UGtDvv5a+JWntsZokfRx/fi+OxtI6rw5eMCw7hmDcpHdy0fVo13
	ij61GNpGY+fbxwDO6DTHxRrlRf7EtYeP/tQQe/7XQPFVM6Xu2MkhKun5q/J/8MS6+K3XQo/uYyv6q
	JBKMRhaFDX3O3uPYAPnz1QkLx0tY/9E9TFD7QFWaMTTjx2lLV2RNugE1SHfxdPvc2SVF3QX76LuDM
	jud8zrUgEa20snRmdIag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8n3l-00241y-7h; Tue, 05 Jul 2022 18:14:05 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8n3h-0023yq-UP
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 18:14:03 +0000
Received: by mail-lf1-x132.google.com with SMTP id t24so21966220lfr.4
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 11:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=FPRBABzcy3/6j/H39EHsr5gxtbkpnqGjLMhqvBz/Czo=;
        b=djx0pAkFwqxgWa5my5EzUkiQpqLhNheKKV64f2/fsqX5W5FB9RS3ZDox4NcIcDRGdG
         Ya17IYQfDClXXzbe0qmpqiwE7hXOqKYLNcmVh0TpCknQWeRXvE6/VooRJ+5cpYDLs64C
         3pOh7GzWZGtvvEQFtJWTKUCt+lP5053ywVdpnfyANA8N9JX6cPv63LmrBikzmvX/ctUs
         +MTl5ghz2d374ToKZosd3eCN47RfGFZGg6spPpUATZVlurK0HleOV+uKRvyIKU1xuItK
         LqAKhCG5SEkeqcFJk3KifIBaw+wWi51JTYmsNGlFORvviG6RJvJmqR/JKwpniA/ddYMn
         sbdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=FPRBABzcy3/6j/H39EHsr5gxtbkpnqGjLMhqvBz/Czo=;
        b=EK4sLPb0UvU7jcPp7lLDWdUDnYTVLFBlxiMb2aZQjAeTSBuuY6PzQe0GipjTgppMfu
         Sr5D09x+lq1bfEG1/iVbxy9DYH+2CEdTxj6tru5CZTnlu9meV/RnFvj0nJc7Dz3Qo0u4
         JaPWi+Pp4rOL8kSeeOYpnWKcUuklHXlU6jOm5GsQpnLnToG1BVO8s54MuCFwG7KWzy96
         h8f3Pq4aMiXjd/oLItf6lwt0Y0VIdbf43zfg6+N7gcxm+x8p0UW51KMe8xjTonv/gi5k
         4EOZMB1wPBxf3BWw+xSF6tjNKiPfFFOEDLX5FZZJiTDXyz7ebnOyyCuxD7RyMI1hBV+/
         mE9g==
X-Gm-Message-State: AJIora9DU6gw5Ni4FOEPFdW37lA38fqhkWGXNIe/IHcZYgPIt/Lgfi02
	pjwCMM7Vjs9kG6WDfC2P9dC/eA==
X-Google-Smtp-Source: AGRyM1uBmRSnQOgKHceCWdDFKVuwOgtjkU/PRVtuYm24BdlUqxq1ppyibaQTEX/6mCzvVwBuEDOkWQ==
X-Received: by 2002:a05:6512:acb:b0:481:cce:3c22 with SMTP id n11-20020a0565120acb00b004810cce3c22mr22671522lfu.45.1657044837333;
        Tue, 05 Jul 2022 11:13:57 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id s14-20020a19770e000000b0047f68d77008sm5812103lfc.178.2022.07.05.11.13.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 11:13:56 -0700 (PDT)
Message-ID: <5b6f5e15-f3fd-badb-3ada-eb2f58053857@linaro.org>
Date: Tue, 5 Jul 2022 20:13:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 16/43] dt-bindings: phy: qcom,qmp-pcie: drop unused
 vddp-ref-clk supply
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-17-johan+linaro@kernel.org>
 <d3a49c05-0fd0-920e-bd0a-f821e8e27b8b@linaro.org>
 <YsQkmUVla9+CDYly@hovoldconsulting.com>
 <8d739c84-ba61-a030-ea8a-63a3f45c642c@linaro.org>
 <YsQx1SMEsMnmoQ2d@hovoldconsulting.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YsQx1SMEsMnmoQ2d@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_111402_034595_8BC04A5C 
X-CRM114-Status: GOOD (  22.62  )
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

On 05/07/2022 14:43, Johan Hovold wrote:
> On Tue, Jul 05, 2022 at 01:59:26PM +0200, Krzysztof Kozlowski wrote:
>> On 05/07/2022 13:46, Johan Hovold wrote:
>>>> It's okay to copy existing bindings which are applicable and then in
>>>> separate patch deprecate things or remove pieces which are not correct.
>>>> But all this in assumption that the first copy already selected only
>>>> applicable parts.
>>>
>>> But how would you be able to tell what parts I left out from the
>>> original copy 
>>
>> They are obvious and immediately visible. I see old bindings and new
>> bindings - no troubles to compare. I review new bindings - everything in
>> place.
> 
> Heh, with all these conditionals in place that may be harder than it
> sounds.

True and your patchset split does not make it easier.

> 
>> I don't want to review old code, inapplicable code. The patch I am
>> reviewing (the one doing the split) must bring correct bindings, except
>> these few differences like deprecated stuff.
> 
> Sure, I get that. But this very patch is an example of why I tried to
> remove things explicitly instead folding this into the original patch
> and risking it not being noticed.
> 
> It's not always obvious what is applicable and what is not, especially
> when the old schema is in the state it is.

Unless bindings are very precise, usually it's not visible what is
applicable or not, so there is just no benefit in multi-step approach in
split from old bindings. The same as with conversion of bindings, the
assumption is that original file was not correct, so we review the final
file.

> 
>>> unless I first do the split and then explicitly remove
>>> things that were presumably *never* applicable and just happened to be
>>> added because all bindings where combined in one large mess of a schema?
> 
> So you suggest we keep this regulator for all PHY variants even though
> it was probably only needed for UFS on some older SoCs?

No. I commented only that reason is not a good one. The proper reason
could be: there is or there is no such pin in the device or the history
tells that adding it for all variants was a mistake.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
