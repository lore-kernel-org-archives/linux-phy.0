Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E2E0ECAAD3
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 15:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rEpwffVEVKHuTD2klasbS7u/zqhWnDqcZxzyhzK6dew=; b=PWFF8T9PZDZeR7
	9V0khwsFB1sWKYDXhJfk0Dm0Co0hzZGCJsMKrF38ulidUJm2RbFdEmaLpwMc1hOsO1lSbs52bGLMZ
	sEtDAh6PQiXa7tCDBHzac7keeaOsiIuKlA8xyLHA2cS5u1N6zuzDx4xb1dw6tfxFM+9ZygWMeAEcp
	HX5VbIDMLGYtP0hDjFaU/J8CHnGBmeSUpznB6q6ffhrBuikDwqXZcbrHecMkrk/XJB48moNwbfT7W
	WTszSZ38eUOBLzrBUZ2qOLc6chhpTgoy5pUcEr69OaKv2r6fEUh0HafbB1urYFMRSDx6V0FFSEmh3
	+GLkyD9zIclfLrMWsmGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWfXO-00GzXz-Fd; Fri, 09 Sep 2022 15:03:22 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWfXL-00GzQ2-5B
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 15:03:20 +0000
Received: by mail-lf1-x136.google.com with SMTP id k10so3180405lfm.4
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 08:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Vmqll87fgXtVSsw5dDmsHLc4RXFQEKzpyOW1jQCzE+c=;
        b=iY411gwIt+9peHpUPGegqHIUg+1PiWLZb0HyXiE3QEUMW9/803x2Mbhk9yy8ZFhu10
         mKjIUfR+HlAozp5T5YDJiYOLP6sQJR+ttRnyMfnkDZ1vTKicPpvn8mUWEGlOGwel1GmR
         tl6fVjCrieqdr+ZkbBD42sS/QfU8xY5eZr5IuS7AAJa5mQ+h832L3bOMnKp0Asoz8NI7
         AFVQObumPfNuTOm8IygKx+w+v/9rCOQEqTnEY0HJaipW28ByI82IlHa8K+IY0ck8ezqS
         YqMHGuIJ4loLZpji7Oz2mj9+V/c1ypk+CxEojY3HTAhiJLDGgweOpqwq76YcmLXyHlKO
         IMvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Vmqll87fgXtVSsw5dDmsHLc4RXFQEKzpyOW1jQCzE+c=;
        b=JbmMh+5grt5NpAsaDvZTg7fJPYYx91zDVWdU9+s348IKf5LRJ5SmjCp21m5GYyfr4V
         tKZ2+Qw8bAfhZVvNoqbgjHdRpCTGta6LDiIOJ47s4tDUjrjJsuXE4LLWZaWtRoxBCDg2
         Xm7+n0FEtqzWAoL9VDxXf7+XocPjkollBdmjpFp4s/o8sji9fqsCKK7UrnyOAYMuB9p1
         GWVds2tRE6xKC4/E2MQfmQLnySgB/DrGixoyMnwzpFnXDpjx0RspHk+CHHoJVmyAK4Bk
         RUQYTVx3A4mILiufxD+VHTdENPUFqCqpF4JJmZnyhTM3wUMdLjt7JAnn9OfUUZvnIcfC
         XvyA==
X-Gm-Message-State: ACgBeo1CWuV/D+ghGoFXvDjf2/VbuVRr8gbq7Y3Oy5R6M5xcIgxnh+Qf
	eX4uh+SJsLRUiJYIrD7FDeLzow==
X-Google-Smtp-Source: AA6agR4bGw6VYraARGB5bgxJrO2WZfHyY5MJ9ZBdMbJR+yrevj/QUf63tb6GKqtB1BYu2TF2jkgEPw==
X-Received: by 2002:a05:6512:1686:b0:491:3199:d407 with SMTP id bu6-20020a056512168600b004913199d407mr4648076lfb.476.1662735795141;
        Fri, 09 Sep 2022 08:03:15 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 22-20020ac25f56000000b0048a891e4d88sm109926lfz.193.2022.09.09.08.03.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 08:03:14 -0700 (PDT)
Message-ID: <59242592-4e3d-b7c2-e0bb-b39df780c26b@linaro.org>
Date: Fri, 9 Sep 2022 18:03:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,hdmi-phy-other: use pxo clock
Content-Language: en-GB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
 <20220909132010.3814817-2-dmitry.baryshkov@linaro.org>
 <d72fc00c-85ba-8b48-1fcf-42fe9e8daeee@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <d72fc00c-85ba-8b48-1fcf-42fe9e8daeee@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_080319_233164_2FF836FE 
X-CRM114-Status: GOOD (  13.45  )
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

On 09/09/2022 16:30, Krzysztof Kozlowski wrote:
> On 09/09/2022 15:20, Dmitry Baryshkov wrote:
>> Add pxo clock to the 8960 bindings (used by the HDMI PLL)
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   .../bindings/phy/qcom,hdmi-phy-other.yaml     | 23 ++++++++++++++++---
>>   1 file changed, 20 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml
>> index fdb277edebeb..2c21e120ff8d 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml
>> @@ -53,7 +53,6 @@ allOf:
>>             contains:
>>               enum:
>>                 - qcom,hdmi-phy-8660
>> -              - qcom,hdmi-phy-8960
>>       then:
>>         properties:
>>           clocks:
>> @@ -63,6 +62,24 @@ allOf:
>>               - const: slave_iface
>>           vddio-supply: false
>>   
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - qcom,hdmi-phy-8960
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 1
>> +          maxItems: 2
>> +        clock-names:
>> +          minItems: 1
>> +          items:
>> +            - const: slave_iface
>> +            - const: pxo
> 
> Why pxo is optional? Commit msg does not say much here.

It's optional as it is not present in current DT files. The driver will 
fallback to 'pxo_board' if the clock is not present.

> It seems you also miss the DTS change adding the clock.

Oh, I'll add it to v2.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
