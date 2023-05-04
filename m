Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44F0FC77B7C
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 08:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UEubBQxTN/A3cGaLgWstgQ9kQ6YT52C2mTv84ZxvSg=; b=sRtjGshvz31aHf
	NHD8Y2mt55ZkeF6wRDKQEGOUkyvUcZBswGfbsOnvg8n7GM6n4Ji4bcoDNfSbugA83glLJ8a+3UcTm
	uzuQ5oXpz5dBx+5Yv5LGss520wbT30lKfcxnZaC5V3Ie7klIcM8PrOLRcjRrlOsimFNrni7BkQJ4a
	rcmJ9l3uxcVgMxz6TnP5quM7NC2Gunh4g5qUrFcJsbAKnunk1aPGY5jF9ZpzP/aqy2H3sZXRp0Kx9
	fbIitOgGHGCCW8b5yI25Mpo0k6zxkbxbt+S7dCwSLFbP85Yx/iKybEc5f+YvmYaRfIvwKo8pwdew0
	QO+Nhvf4BfhSWZCgFMLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puU5x-0073jX-30;
	Thu, 04 May 2023 08:13:45 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puU5u-0073h9-12
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 08:13:44 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-50be17a1eceso243538a12.2
        for <linux-phy@lists.infradead.org>; Thu, 04 May 2023 01:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683188018; x=1685780018;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rgT8v649IirpSjf4jMADgqadHZLtrQOg8IyuCZ1GjX4=;
        b=f3uaQODTfanE4H3yXcKCQ+MUm8L88eD/sjScnm5KoCMGX7CF5baC0QhsDlr8u83fpU
         DdesAZz/EDD63p33LpvOFnDfNkH4KkkhwP809MQ80LxdSjSASzYwju5EtXkyc7a/K1S/
         F6BxnS2zrYhwREZWzET9wB9jHh2OBHP9tZHzRcDn4gllAfBWFSDnoGvvVPUaOm4uBfr1
         8mGOGXyxJSj7orOcTC1oRNqSbxiD4P1O68ogZbvlphA9bKnyrFeGwdEpthsPjMJWFzTJ
         W2U01iB6G1L3K6Pl789nzWUNa25jhwdD0Uial0BTRjXjVnysH4usGod1emaj7K4UFA4X
         e29A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683188018; x=1685780018;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rgT8v649IirpSjf4jMADgqadHZLtrQOg8IyuCZ1GjX4=;
        b=fouwDn8BpilE1cJOfAf/ds9PASh+uE+9kdiyvPrAS4BuqSmaKSEgYQjmWo7gAA8OUR
         +AoWK2TXdLvriFgQ7Mu0ZAlkFiNkzG/HqJX0CEvuQDsdXTcZNtqm7rhwEVmmI3cqWu/I
         W11JdZEsUVPOhEs2F/iChDnaeSadMkEdxqjVc/kbv9FIcT0WYdGkSa3mWKc1/pwP7lQC
         jJmuHzUNK0XTLg1BraFRrtubqVjQN5FivDoAnZjnvLuywOwAo9XhwQWp+Q20LrGQG06T
         WPSTTTRviJK4GkH01E66b7UzNmvS6ErwHD7IH7cNHMz8KztJtRbjUNNMBDn63WorVNwR
         5qZg==
X-Gm-Message-State: AC+VfDxzQdJtMlAQmh2tuTG5V8nWfBakib8svFhJsCf04wCjfLNLUlhP
	8SlKrvzIbmlERIFijctqBzN+EA==
X-Google-Smtp-Source: ACHHUZ5whnux0wz7ahrLBselL6V9g3SPyXGGucFRUolXKD+khNpR1RLVZPEP27QlEcuUvhTxHdFOFQ==
X-Received: by 2002:aa7:d754:0:b0:506:c2b2:72fc with SMTP id a20-20020aa7d754000000b00506c2b272fcmr754216eds.7.1683188018451;
        Thu, 04 May 2023 01:13:38 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id d18-20020a50fe92000000b0050470aa444fsm1579929edt.51.2023.05.04.01.13.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 01:13:37 -0700 (PDT)
Message-ID: <51f877c8-e536-2c79-9494-23030911d851@linaro.org>
Date: Thu, 4 May 2023 10:13:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 1/2] dt-bindings: phy: imx8mq-usb: add phy tuning
 properties
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, Rob Herring <robh@kernel.org>
Cc: kishon@kernel.org, devicetree@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, festevam@gmail.com,
 s.hauer@pengutronix.de, vkoul@kernel.org, haibo.chen@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-phy@lists.infradead.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com,
 patchwork-jzi@pengutronix.de
References: <20230405112118.1256151-1-j.zink@pengutronix.de>
 <20230405112118.1256151-2-j.zink@pengutronix.de>
 <5398cbe0-c681-5dd7-0b3e-3a586cc4915f@linaro.org>
 <3f7257ee36dc44f162a87281c8279fd5bad91dea.camel@pengutronix.de>
 <95b4afd4-c93e-628b-fd22-6fcbc1d1234e@linaro.org>
 <b394b456540943b1022a7b093bf369924fca0566.camel@pengutronix.de>
 <20230412133921.GA2017891-robh@kernel.org>
 <6953b608-973f-c603-f852-edf7ba183e64@pengutronix.de>
 <67d283f3-d0db-5fc0-79e9-e7531d591aab@pengutronix.de>
 <0a5d631a-037e-5158-82dd-e53d478befea@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0a5d631a-037e-5158-82dd-e53d478befea@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_011342_414794_67B9348E 
X-CRM114-Status: GOOD (  12.78  )
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

On 04/05/2023 09:32, Johannes Zink wrote:
> Hi Rob, hi Krzysztof,
> 
> [snip]
>  > gentle ping - any opinions on this? Shall I just send a V2 along the 
> lines of the phy-stm32-usbphy.c?
> 
> This would be something like (example for the trim-hs-current, taken 
> from pyh-stm32-usbphyc):
> 
>        st,trim-hs-current:
>          description: |
>            Controls HS driver current trimming for choke compensation
>            - <0> = 18.87 mA target current / nominal + 0%
>            - <1> = 19.165 mA target current / nominal + 1.56%
>            - <2> = 19.46 mA target current / nominal + 3.12%
>            - <3> = 19.755 mA target current / nominal + 4.68%
>            - <4> = 20.05 mA target current / nominal + 6.24%
>            - <5> = 20.345 mA target current / nominal + 7.8%
>            - <6> = 20.64 mA target current / nominal + 9.36%
>            - <7> = 20.935 mA target current / nominal + 10.92%
>            - <8> = 21.23 mA target current / nominal + 12.48%
>            - <9> = 21.525 mA target current / nominal + 14.04%
>            - <10> = 21.82 mA target current / nominal + 15.6%
>            - <11> = 22.115 mA target current / nominal + 17.16%
>            - <12> = 22.458 mA target current / nominal + 19.01%
>            - <13> = 22.755 mA target current / nominal + 20.58%
>            - <14> = 23.052 mA target current / nominal + 22.16%
>            - <15> = 23.348 mA target current / nominal + 23.73%
>          $ref: /schemas/types.yaml#/definitions/uint32
>          minimum: 0
>          maximum: 15
>          default: 0
> 
> If you think something along these lines is acceptable, I would like to 
> prepare and send a V2.
> 

Go with Rob's approach, so something as you wrote above.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
