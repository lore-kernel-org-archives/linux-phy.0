Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C54EDC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 09:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9uB9v3p/4skV9YluGYK/I4/T17ph3/qkpYoe4YdCYY=; b=zgNrsorOQPB7f5
	9+8DL5K/OhxtMrI+gwZpkFfFw0RDwz6JJ4JC29h6gSlSe25YQfUOd6FUtjTzu4iEWL9KbWQ3sUNKh
	ago1B2pqkV2k5lNUHk76HntzXYDOUH57mbWfQkh+k/YEDYtNmqmFmpoSmK8BhyfLdRZRUJU5v5fMw
	z3gs+G4fKBTGH0Nyp+x/ZGXqcE7y/SDMAcqZ5QGCCbJo0aaQyTQeCIp2nBIOp41dTG5IgfDeswYkY
	lpnmAEe6dz5DkLYSfZ+K7E5zo62egHKRATI7Vj/eI6NVF/kM3cJ9pInZB3XMqDY4tp/qPDsK5SKcy
	AAeUyGeJwRNYFfwUvAeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwhGU-002VMs-6f; Thu, 02 Jun 2022 09:37:14 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwhGS-002VLc-24
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 09:37:13 +0000
Received: by mail-ed1-x530.google.com with SMTP id w27so5495263edl.7
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 02:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=UbAi11qp5DTn/kiY7uPuGBDObYw/10Y1J5If4iuylkU=;
        b=hspK3aDSUha2ZlbLkIA4SyM1rE7MGAnEU8h5hlnsgElBeQ9W6KayPlQaKlWLwrAuA5
         Saag/wD5eOfxStucPV5KaWWW5ZQMLcshP/opeVN04jFhTn1KfPJQGtKSrs+kaSgNzAZP
         9yQo2w7phSDgvaJ+FkPrjSaIQJsWqenwWsXDoMlBoD/4j4DqUWl+Myiwbd8Lcd1yWhEo
         UwnOeIY2P+Np+bA4GrLJdX1+5o6ky/ok9dO9LfUTqjSPVY9iSNdV1JTvkiG396yi4eLD
         lPVsksCDuKkdStRSKx4qN35YmRzQdcLeB0Xc09fig9Y9r+23V6vUBu1wK3Z+loUA+c+k
         /vjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=UbAi11qp5DTn/kiY7uPuGBDObYw/10Y1J5If4iuylkU=;
        b=mmX5vuVR73vJKXjhFCK6e+IHNnRCoUCTU0fg2W3HTw/ePS18o1xyJn39kWWbHHMGsv
         2AB5+AdYIE9DsE8s2vI9kBpbOn1eUtJIPnJX8eHG2J52bMQ+2s0jPJ1jKibU+MZTigM6
         A9WaU41a1vNbuf7VCnqpmkuPzZBc+oxyv8ao011TVGhOHrVxBHnmuE4+O4VfNgDYIqut
         9EG/RZ86iYM9bsHgYGEP95IasM8XuS1xk58RbGBZUPSAugPXkUdo2E13XUvCL8UQzPAo
         M9egHCs3rAIRrFmBwV5t8hJqsLCSfgotl2NUm/6ugF+ihjZiOz+Ic497lXVrMTyFFNFu
         uqIw==
X-Gm-Message-State: AOAM5333II/t8W7lZuCyC0t4VNMf+IfnabXOSCawVoyGfR0zvjdonVuO
	je2YzteN8UlWTXW6wA48lp4xtQ==
X-Google-Smtp-Source: ABdhPJymJuZyD9JpI2fUlnCh+hsniUb5OSHN+1erAyXcoN5TVNkuBzXsGhuVH2mYjVFW/7lyBo6o+A==
X-Received: by 2002:a05:6402:430d:b0:42e:199a:4eb8 with SMTP id m13-20020a056402430d00b0042e199a4eb8mr1106417edc.411.1654162630874;
        Thu, 02 Jun 2022 02:37:10 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id fx10-20020a170906b74a00b00708743e31b2sm1240308ejb.27.2022.06.02.02.37.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 02:37:10 -0700 (PDT)
Message-ID: <b16915f7-a4b7-4512-77fb-b2cdd8e7cdb4@linaro.org>
Date: Thu, 2 Jun 2022 11:37:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: samsung,ufs-phy: make pmu-syscon
 as phandle-array
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220602053250.62593-1-chanho61.park@samsung.com>
 <CGME20220602053329epcas2p4c2baca2d161814f5d51dc48722f904b1@epcas2p4.samsung.com>
 <20220602053250.62593-2-chanho61.park@samsung.com>
 <44fceb66-fd33-4b2d-fe8e-9a1a5837a51a@linaro.org>
In-Reply-To: <44fceb66-fd33-4b2d-fe8e-9a1a5837a51a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_023712_169453_3F14569C 
X-CRM114-Status: GOOD (  12.57  )
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

On 02/06/2022 11:34, Krzysztof Kozlowski wrote:
> On 02/06/2022 07:32, Chanho Park wrote:
>> To support secondary ufs phy devices, we need to get an offset value
>> from pmu-syscon.
>>
>> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
>> ---
>>  .../devicetree/bindings/phy/samsung,ufs-phy.yaml    | 13 ++++++++++---
>>  1 file changed, 10 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
>> index f6ed1a005e7a..d0ba92aa578d 100644
>> --- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
>> @@ -40,9 +40,16 @@ properties:
>>        - const: tx0_symbol_clk
>>  
>>    samsung,pmu-syscon:
>> -    $ref: '/schemas/types.yaml#/definitions/phandle'
>> -    description: phandle for PMU system controller interface, used to
>> -                 control pmu registers bits for ufs m-phy
>> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
>> +    items:
>> +      minItems: 1
>> +      items:
>> +        - description: phandle for PMU system controller interface, used to
>> +                       control pmu registers bits for ufs m-phy
>> +        - description: offset of the pmu control register
> 
> This does not work... Please test your bindings with different cases.

Just to be clear - when I mentioned that minItems should be on second
items level, I meant it should affect the second items list, not the
first. Now you can have 1, 2 or 10 phandles.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
