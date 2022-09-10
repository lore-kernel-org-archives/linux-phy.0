Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0CC7ECAAD5
	for <linux-phy@archiver.kernel.org>; Sat, 10 Sep 2022 07:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wf8iGlp7OkBh6AguX9DDIWWBzUO/GRJRMR8FJW1JmyY=; b=yRVIbrOWgd89fh
	GX8ZIiVJwUKhpp5boM5gHEaxKT7uM7NBkTz0zYprx/KF3x5GNYLqLmzh+hmMjzSINsY9nY2NN4ez5
	wQ4fXZDaHH4NaUqLY8wESOmNIKVVAYhxigbV6SZ1mGHeG6MeBb9Kf97ObHWZjyojn/XcJIgA0ypGN
	7HqV9c7fh+x52yXubDtH+Clz9jhajUKxliJKFQbLJ9/xh9bA9EgFtnhKU+IylE098lOpHumCUktSr
	dY71ltbnAmOOqXNYJ6v1fm7XS8hDgnvoN0akRHAmf5wBMPGCnSCTQmZKRZtkSqy3KMJprJRLc892w
	1TIpgrq/Mmh8lEj+kI+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWvIe-008GvS-2Q; Sat, 10 Sep 2022 07:53:12 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWvIa-008Gul-SF
	for linux-phy@lists.infradead.org; Sat, 10 Sep 2022 07:53:10 +0000
Received: by mail-lf1-x130.google.com with SMTP id f9so5777853lfr.3
        for <linux-phy@lists.infradead.org>; Sat, 10 Sep 2022 00:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=yVGqcrQFlEfjiFrysCCuP1o3U/tDjW1TRB9WhX0ej9Q=;
        b=JPf/YnnEqNe3FWESlm9wT9UUkd3umwAOkaJvFRXlQo/NwqhtPwkpuVeL0oA8O4ZKhC
         cHmzIYl7KXQTxdrjLTJGjlbqy+TxY+hpZcbktnN3URurR+gOWNfrIJD/RjwTKvUijJKf
         +dtWKjBgYg641Er13Te752MPSxox5XlvHXGjyU+isOyCVrKOQ7K2dNI+PeQHWMF3AXVa
         Yn8ieU1uvVp2MyoQl4CT+T1S8OH0n68ocjlMcU4r2iuqNMhE7EJNfNSkVwHTpewA461i
         3TTrGUmCW9JwGy0InxricQRCWoYRIRun+otEofpumxkW+o3AyPq9Y9rAmn+mfW6iDlem
         AeIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=yVGqcrQFlEfjiFrysCCuP1o3U/tDjW1TRB9WhX0ej9Q=;
        b=FL8X+w2wT1vi9y2kZOBb7YOGq1pMRujo0cmoShKh5HSihpqU1Hjse34oYkstCRSDGw
         dNVbMhhMbzDT3ksJ+EjloWucCMApGmodSw6RuC28OvUM4ESAFUjG/dGeh8BmObkEcFqR
         CmlzFRkK9H3GtyvlrT0CJpCIwj0wzExB2KkcKpO1PiQPykhBWi++NGGLax2asEL8tjy8
         c9vUNbAZgRTotIWqBnq+z9554JVUAOTecF19U79ipNlvA+pbioeuSmQeH/TA59eMN+Uz
         cbdY2xhleNzAN8OXyvZE+YI0mzTEsT2JFEmM/9jtHZYfCQ9UoFEO/EVe5JMU0Sn+iTHC
         QmyQ==
X-Gm-Message-State: ACgBeo1qr0ZqxwUOx6kTSJL2pBy/hwullJ1BpdpyoHfzTuC2/6h39ZO5
	LmW8/UsdvlBjvk9f+eE52CrzYA==
X-Google-Smtp-Source: AA6agR5z6dihRJApOItR5UtJniejPzRs3cFc63NZvF0V+Ks5bCh8ylcbXyse+Ha2Mfbj443WIRaClQ==
X-Received: by 2002:a05:6512:2248:b0:48a:f36a:2e63 with SMTP id i8-20020a056512224800b0048af36a2e63mr5750327lfu.485.1662796387080;
        Sat, 10 Sep 2022 00:53:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e6-20020a05651236c600b00499aefcf68esm114188lfs.292.2022.09.10.00.53.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Sep 2022 00:53:06 -0700 (PDT)
Message-ID: <c3dd211c-658d-7c4d-8be4-71d8ae117493@linaro.org>
Date: Sat, 10 Sep 2022 09:53:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,hdmi-phy-other: use pxo clock
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
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
 <59242592-4e3d-b7c2-e0bb-b39df780c26b@linaro.org>
 <c3b4638e-05f7-cc73-b893-422f92909f6e@linaro.org>
 <3ED996B7-F1BE-4AF0-AD95-500DA0B202FB@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3ED996B7-F1BE-4AF0-AD95-500DA0B202FB@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220910_005308_947659_3CE61B3D 
X-CRM114-Status: GOOD (  16.36  )
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

On 09/09/2022 22:29, Dmitry Baryshkov wrote:
> 
> 
> On 9 September 2022 19:44:11 GMT+03:00, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
>> On 09/09/2022 17:03, Dmitry Baryshkov wrote:
>>>>> +    then:
>>>>> +      properties:
>>>>> +        clocks:
>>>>> +          minItems: 1
>>>>> +          maxItems: 2
>>>>> +        clock-names:
>>>>> +          minItems: 1
>>>>> +          items:
>>>>> +            - const: slave_iface
>>>>> +            - const: pxo
>>>>
>>>> Why pxo is optional? Commit msg does not say much here.
>>>
>>> It's optional as it is not present in current DT files. The driver will 
>>> fallback to 'pxo_board' if the clock is not present.
>>>
>>>> It seems you also miss the DTS change adding the clock.
>>>
>>> Oh, I'll add it to v2.
>>
>> How about adding it to DTS and making it required in the bindings? I did
>> not check the driver, but isn't the driver fail if clock is missing thus
>> the clock is really required?
> 
> I had the impression that we cannot make a clock mandatory of it wasn't present before. Please correct me if I'm wrong.

We cannot break the ABI which means implementation must accept old DTS.
As you wrote below, the implementation will handle this case. Whether we
can require new DTS properties (if implementation respects ABI) is a
different problem and I believe that we can. Bindings can grow, even
with necessary changes, because no ABI is actually broken here.

> 
> No, the driver will not fail. It will fallback to the lookup of the `pxo_board' clock from the system clock list.

Ah, good!


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
