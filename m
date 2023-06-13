Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 145A2C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 07:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8OBIhRuNBDVWgQ6hwJLzoAXD7zQ9lIXNpWh0BA4qWs=; b=rnUGpDqXlF1oq+
	ZuUdTPwc+ztoy0mk7PK6UeyJT+dPvZ4I3uHghCNKL48ptQfpAcxhiqnlJ5TcqzEaplZ8BBeK3Wjnc
	3dgaIUUQOPPbouTGPfVlm5TtwcLeffx8fZBTyMvk8Gcd9GfMRafPzmYVe+5pRRsNDeefEGXbnE42c
	Lt4gQpc/Jg4s4RkWDuzsbwIyJBRjst4cux3JGzCJXf42rG4Ng7QCPpO7ZRszdM0gNXdIw/H5Up0Sz
	kqGPmPZtrfge4e32beitcWK8sK7TNdtTm9MIE6sVE4+GAon89akNhNjnzqTnueHXLF9tL9DhdLftm
	XVuT7qKtddIrh5VJNm2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ydN-007F1h-2M;
	Tue, 13 Jun 2023 07:40:09 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8ydL-007Eze-1B
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 07:40:08 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b1badb8f9bso63936511fa.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Jun 2023 00:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686642000; x=1689234000;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tn//NXiFDGncurWh8+6Mz0deyzFEfBIN7YFnpquuSyY=;
        b=s0IHlb4kvOLaI6gZHF4TQA6tQVIXuGh1dQO8fQQTi5xh6tPapq5wiZz3pCSjDpeFgg
         FJQYW/SblPpOeiXCfbc4DKsT2OXuchDFY37p86Rj5ouX4bAeKcZSC8Exzh1YCAPdkY8O
         UYo1XIZTxasEXApNJHQU7vqFTkF+PpRWjFYVvRVeLiNHeMFzbMeAPUS5adpdt/UXgKso
         3RsK5XPfQIQj8TJYQ4pW4B5jT99y/PPKxJRJcPWb4Ntrz6nQmiL56eNMYmPaNmwQQ/A8
         7v+gg07GxlxqfOYpyVPG+R94+ytBhWeshrQkuzd4SU9cgPmdc6thmZ00EKKLWUj8vp3H
         13UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686642000; x=1689234000;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tn//NXiFDGncurWh8+6Mz0deyzFEfBIN7YFnpquuSyY=;
        b=K9r+9BG4m5B4ipCAhYPpst3yuRXLfG2dNzxldw7ZfNSlmF/brjKDkms8YGDmAXqUUL
         t9LFi+MZvmiDz9iFLICO/iLew+PmUsYJX9r482tQZA2UgIHQTUiIYUZWFo/v1bQXpRjq
         pzh9IqHSJy07PJQEX/KRo+68kF9RSOvmieEBUdfCxhnMNydbx+1bNQiwfqMgr+Q46fcb
         SSqwnf4dL/tQ/J6ur1V60edOj6NWtWE8eYC4n5JnsEUDnoaZ0zcZJtc1UPcv1PRhezb4
         k40tHH7mmcDshXk4v4KOEr49LD/x1GX554eCP/2KPPq5OHcH1tbCGOwJnWxytoru9OJx
         BPbQ==
X-Gm-Message-State: AC+VfDw4NoQun2V9+EQg9+UMRHdkx4De+mJUTWv4X5m43Ks39coSi7mf
	0J3n6m1fj9XCuLEO+FCrkUb9Ig==
X-Google-Smtp-Source: ACHHUZ7O7yTZAPl8npfJE1zd2Y68v0ayJwEv1IPqMzhEfONEEJwlEay8TNcKyBA6pirgOEYyIJavKw==
X-Received: by 2002:a2e:800b:0:b0:2b1:c0b9:61af with SMTP id j11-20020a2e800b000000b002b1c0b961afmr3847302ljg.52.1686642000074;
        Tue, 13 Jun 2023 00:40:00 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id t8-20020a056402020800b005149134ccfbsm5983886edv.52.2023.06.13.00.39.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 00:39:59 -0700 (PDT)
Message-ID: <b7bfc733-7d0d-d04b-5bba-ba1b5a056235@linaro.org>
Date: Tue, 13 Jun 2023 09:39:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [EXT] Re: [PATCH v2 1/2] dt-bindings: phy: mxs-usb-phy: convert
 to DT schema format
To: Xu Yang <xu.yang_2@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Jun Li <jun.li@nxp.com>
References: <20230608033642.4097956-1-xu.yang_2@nxp.com>
 <b8f35a9a-7553-92fa-6fdd-2522dc9bd36d@linaro.org>
 <DB7PR04MB450553FBD13E3101F8C065008C55A@DB7PR04MB4505.eurprd04.prod.outlook.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DB7PR04MB450553FBD13E3101F8C065008C55A@DB7PR04MB4505.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_004007_408235_9B383FE3 
X-CRM114-Status: GOOD (  15.68  )
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

On 13/06/2023 09:30, Xu Yang wrote:
> Hi Krzysztof,
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Saturday, June 10, 2023 12:44 AM
>> To: Xu Yang <xu.yang_2@nxp.com>; robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org
>> Cc: shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com; dl-linux-imx <linux-
>> imx@nxp.com>; linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
>> usb@vger.kernel.org; Jun Li <jun.li@nxp.com>
>> Subject: [EXT] Re: [PATCH v2 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT schema format
>>
>> Caution: This is an external email. Please take care when clicking links or opening attachments. When in doubt, report the
>> message using the 'Report this email' button
>>
>>
>> On 08/06/2023 05:36, Xu Yang wrote:
>>> Convert the binding to DT schema format. Besides, this also add other
>>> optional properties not contained in txt file.
>>
>> Why ones do you add?
> 
> I add clock, power-domains and phy-3p0-supply to this doc. Because
> the txt file should contain these properties but it not. I think the
> txt doesn't get update in time.

Can you mention them in commit msg?

> 

>>> +  reg:
>>> +    minItems: 1
>>> +    maxItems: 2
>>
>> You should list the items.
>>
>>> +
>>> +  interrupts:
>>> +    minItems: 1
>>> +    maxItems: 2
>>
>> You should list the items.
> 
> After my check, the maxItems value of reg and interrupts should be 1.
> Will change it.

OK


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
