Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91CDBECAAD8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 06:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d95eWrK1vuGrfR9VJ5o7ZQOfizcPzQfbhJFMmWdeI60=; b=LTeIT7yxH8b6SS
	wfCFcubQlBCehAjrXu1JG8mAW1O6fXs33LFWOyMNWFT+9qBgyKjiOnrJLbUVY4r9wRxBnSJB7RNWX
	FETiqwIURfB9TKgPufNSjayA0NosEjk50+zI3eZYBQNYpwBX44kR1yBSKX/hAWrjCN2AGfFNZD0Dd
	ce8KcAmJS1k4aNia6pF0U5sil5ELkRzMOJlXUdJ3UCLABJxg4Z2E8DFR1i8FkBDEEzgMsh0ogv20z
	q0pkcLXR0tbYykXBqqIUvcuTCWU91JxxBwjf2kZHjLSY/M2KePebkJce7weixnq+xFNT5XsZW5pwQ
	PF+C5wQ7DRHSaqoP6reQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oatOf-009Kpg-UO; Wed, 21 Sep 2022 06:39:49 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oatOV-009KmX-CE
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 06:39:40 +0000
Received: by mail-lf1-x136.google.com with SMTP id a2so7589084lfb.6
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 23:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=otR0nNYDhUnhsN3OyUB7km5BpUtGxbbyPiKzEuh5rHI=;
        b=uWqCYraJmg5iZcIkkkQ1ppjz9FlMoAWe8koubDIbSUfiUm7l6y13QkhT8JTdY9XHsE
         GDG/QBKBKOdxc/txbI3G09XcWf1RMZ8ZLFXe7+lsZohI0VYm5mXgBYosyZrpjQLw8OY8
         n6SmAetLMdG9ab4Tex4A2xtMGVb1xCsRRX8yDO3pCeORDmHmnKZn6uQfseBTOmE83SDH
         I9ai6Eww7Rj1nsyeyZIAl+8ITNQLHLclJ5kRS41ylbnysmRRzatgulSuwRaPUGNmfl7i
         fp748ddLWr0c2u+4H3DdoWPhUgB+YofWUOhsmVcopJmiUDuA2gfdYwuj4+8DH4sjQL7a
         kINA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=otR0nNYDhUnhsN3OyUB7km5BpUtGxbbyPiKzEuh5rHI=;
        b=u1U2ajjB+pnKRUc45c+omWMUMZ/ZwbA2N9zxIEL9anFJKz0By5mzH3j0sbwVksyaXW
         qbnhTUIulG5Trw/1oFlM0+b0gr5voquHwm3Y0H4ShO8gyQN7pNooG7IdTp3+TUU394mq
         gqnpBTXOHzCJeSlJ3uq/64whlH6m9u9k23L9EBnRHxsD5NjhEQP9WeYFKn08dmTf1wfC
         cfcttgkrB43jZ/hO51C6A2EQn0fjC4XwQWg0NbKJ0vqyOABbbJppMhX5aDShEO3u0Nct
         EjA2UP+qJQteo28rDKHw/qXbS0jAHdRmg1bbbAQBb5v+9GNT4YJ8mc1MfNdbousakIfk
         juiQ==
X-Gm-Message-State: ACrzQf27y3aoXTcls091MqPjtt4pNkjPMj1b98om0yU9LzOG0oalcUuT
	bZtCas4gA1v8VoQ2DOE4IX9fsA==
X-Google-Smtp-Source: AMsMyM6xeNvDHsWcEi+fZKXEaCmx5B60tduf07EnI0POnx4LZUYmhJpUhA/mzARjbAI6D73G9SISFA==
X-Received: by 2002:a05:6512:22c6:b0:498:fff7:b57f with SMTP id g6-20020a05651222c600b00498fff7b57fmr9150098lfu.582.1663742376985;
        Tue, 20 Sep 2022 23:39:36 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g11-20020ac24d8b000000b00497a61453a9sm295228lfe.243.2022.09.20.23.39.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 23:39:36 -0700 (PDT)
Message-ID: <011ce9d2-ea39-9235-323a-eac453effb66@linaro.org>
Date: Wed, 21 Sep 2022 08:39:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/6] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for
 J721e
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>,
 krzysztof.kozlowski+dt@linaro.org
Cc: robh+dt@kernel.org, lee.jones@linaro.org, kishon@ti.com,
 vkoul@kernel.org, dan.carpenter@oracle.com, rogerq@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 sjakhade@cadence.com
References: <20220914093911.187764-1-s-vadapalli@ti.com>
 <20220914093911.187764-2-s-vadapalli@ti.com>
 <2dfb57cd-d9d4-9a26-dd4c-f116894c9baf@linaro.org>
 <fdeb4f4f-2712-fe35-a5c2-935d3a4baf38@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fdeb4f4f-2712-fe35-a5c2-935d3a4baf38@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_233939_426877_E59E4A60 
X-CRM114-Status: GOOD (  12.30  )
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

On 20/09/2022 06:27, Siddharth Vadapalli wrote:
> Hello Krzysztof,
>
>>> +    then:
>>> +      properties:
>>> +        ti,qsgmii-main-ports:
>>> +          minItems: 2
>>> +          maxItems: 2
>>> +          items:
>>> +            minimum: 1
>>> +            maximum: 8
>>> +
>>>    - if:
>>>        not:
>>>          properties:
>>> @@ -94,6 +133,7 @@ allOf:
>>>              contains:
>>>                enum:
>>>                  - ti,j7200-cpsw5g-phy-gmii-sel
>>> +                - ti,j721e-cpsw9g-phy-gmii-sel
>>>      then:
>>>        properties:
>>>          ti,qsgmii-main-ports: false
>>
>> This is interesting here... Did you test the bindings with your DTS?
> 
> Yes, I tried it out with different compatibles in the DTS file for the
> node, making sure that the property "ti,qsgmii-main-ports" is allowed
> only for the "ti,j7200-cpsw5g-phy-gmii-sel" and the
> "ti,j721e-cpsw9g-phy-gmii-sel" compatibles. Additionally, I also tested
> that the "minItems", "maxItems", "minimum" and "maximum" checks apply.
> All of the rules within the "allOf", are enforced one after the other in
> sequence, based on my testing. Please let me know in case of any
> suggestions to implement it in a better way.

Great! I think I see now what I missed previously. The last hunk with
"ti,qsgmii-main-ports: false" is in a if: with negation ("not:")?

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
