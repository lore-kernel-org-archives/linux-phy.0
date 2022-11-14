Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1201C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 16:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMNlSTTcunXZGEE3I2OvBlxVJ6BOrwN8ZTH566RZP3E=; b=VajbxWbNLONcqE
	M19KqYOPXFgSkEdMGlAMOHlrxDHbWtdGmEupF7jc/0N6lBY8r1VHhcmouwthE8MT2yrYAx1j/QBwP
	B+erMnPfhMjMiZqP8hR3+87RdCbKHS6byDrpUyvK4GoQLzGqeZ/bWztooRzwn6ZuKfRSsuDtg+mPU
	LAtwqPlb9lYK1Rfy5tOcVhwZ+fijj/sk4CmXyMUB2p6v95YG+OcUj3hzjV5UT58+/O1ZnFi4Z18ve
	91/6UpF4r04OeI5x+RiL800Q6L/xGVGBxXfklbc9JNB7yj2H1HFYVQx55gy6zpn/Y+YNhBKyiW+Te
	FwCZ+OUqYQVJzoVqk21g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oucUi-002n1c-S7; Mon, 14 Nov 2022 16:39:36 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oucUf-002mxd-Jw
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 16:39:35 +0000
Received: by mail-lf1-x12a.google.com with SMTP id p8so20176549lfu.11
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 08:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YRqXGzvo9cPPr4fRxtRgnnbMGXtJMbDZqF+/lYOlf00=;
        b=wTbvrqe/IIQ/sYxFmhbQI7Fb4ae3p+rADJIUv90Vtlt1Ag/ZQ7ydl+nuCl/nszh9kq
         PFxTUsLP7qEpjr99yRhzNsee9/ota9wfoI96/sV1jivpfEsfcWKZN7OtiMNT4/qvMnBx
         G27QMfg58zZ+zVTw3eoRcqaBssHFC6hGFjaVPQ7fZBvRS4HPi7h6KKBfYw3uxorKrIAG
         CHR1tC+GD/hYqVQQhyxZmpKTVC0H3POTEPJbhDx1RPqjjrJEAK250B9pvAyeoJk8TsVr
         qw+lSK86guEAhyq+kwxtBKRotHTHpiGbJJfulIvtZylGWNRKKaIDa2/9nzZSTfBeI0Q5
         mvbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YRqXGzvo9cPPr4fRxtRgnnbMGXtJMbDZqF+/lYOlf00=;
        b=SgNqJu9NYlSGEc/rb1xQxTlBebcp/eZ04+CtXPtVedd/gtj99kAA2lCBGMGryo+aEk
         GCWFtUlfPM99RZtoF2Li0Iyf6vZlEjBsBjthQbTgG0O7jizyGorQmIbdRwlPZiG0IYic
         nGmSqVCaYA2iIQr65jb6XzW9zz396kh7+cztEd9ZsuDJezymI2Em3fKBDc8095WrZXPr
         wt8dYuRThbypeX5ldggW5k7XMpAfMUVSil4LmLEsKuW6xfVupn9qp96EAKjSaDXXPFNs
         R/7dIYJZPNQQ28jzqhmKp/JwW5rqcw9tPM7kPpuzT1G5ncWkB+ADWjhMTQHNiGuaWBYz
         jDXw==
X-Gm-Message-State: ANoB5pkpoV07JUxpHHE3hSYEajX+I8tBeB2SwEqmJD1QvZDpLHDdAIbA
	2onB3IjM8nb4/DFevgHgkF5cQg==
X-Google-Smtp-Source: AA0mqf5kGgC42u40i6jz80xhoj6ThHf5hs2Qeju0m3VkGndVwWFU0E7/2zz0/AIMU4DOYXmhbVIKfQ==
X-Received: by 2002:a05:6512:2152:b0:4b4:917a:c36c with SMTP id s18-20020a056512215200b004b4917ac36cmr3753226lfr.218.1668443968118;
        Mon, 14 Nov 2022 08:39:28 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id cf30-20020a056512281e00b00492ca820e15sm1869762lfb.270.2022.11.14.08.39.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 08:39:27 -0800 (PST)
Message-ID: <efd412d0-7411-8b0b-4700-9e183a592048@linaro.org>
Date: Mon, 14 Nov 2022 17:39:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
 <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
 <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
 <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
 <Y3JOO0kNnaNhnW3K@hovoldconsulting.com>
 <02725b78-04ad-8f4a-25c2-9cdaa1e37ab7@linaro.org>
 <Y3JthM1jC2vH1Kn+@hovoldconsulting.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y3JthM1jC2vH1Kn+@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_083933_725722_D4648FF6 
X-CRM114-Status: GOOD (  20.97  )
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

On 14/11/2022 17:32, Johan Hovold wrote:
> On Mon, Nov 14, 2022 at 04:49:37PM +0100, Krzysztof Kozlowski wrote:
>> On 14/11/2022 15:18, Johan Hovold wrote:
>>> On Mon, Nov 14, 2022 at 03:07:41PM +0100, Krzysztof Kozlowski wrote:
>>>> On 14/11/2022 14:27, Johan Hovold wrote:
>>>>> On Fri, Nov 11, 2022 at 04:17:29PM +0100, Krzysztof Kozlowski wrote:
>>>>>> On 11/11/2022 10:24, Johan Hovold wrote:
>>>>>>> The current QMP USB3-DP PHY bindings are based on the original MSM8996
>>>>>>> binding which provided multiple PHYs per IP block and these in turn were
>>>>>>> described by child nodes.
>>>
>>>>>>> +  "#clock-cells":
>>>>>>> +    const: 1
>>>>>>> +
>>>>>>> +  clock-output-names:
>>>>>>> +    items:
>>>>>>> +      - const: usb3_pipe
>>>>>>> +      - const: dp_link
>>>>>>> +      - const: dp_vco_div
>>>>>>
>>>>>> Why defining here fixed names? The purpose of this field is to actually
>>>>>> allow customizing these - at least in most cases. If these have to be
>>>>>> fixed, then driver should just instantiate these clocks with such names,
>>>>>> right?
>>>>>
>>>>> I'm only using these names as documentation of the indexes. The driver
>>>>
>>>> What do you mean by documentation of indexes? You require these specific
>>>> entries and do not allow anything else.
>>>
>>> I'm using this property as documentation of the valid indexes that can
>>> be used when referring to clocks provided by this device.
>>>
>>> There are currently three and the mapping is described by the
>>> 'clock-output-names' property.
>>
>> That's not the purpose of this property. Drop it then. The names do not
>> define the ABI and do not document it, actually. You require now that
>> every DTB, if providing clock-output-names, will have exactly such names
>> instead of having fixed IDs. DTBs are not for defining the ABI.
> 
> Fair enough, I'll drop it. But there doesn't seem to be a good way to
> describe the indexes currently and most bindings simply ignore to do so.
> 
> So what is the preference then? Just leave things undocumented, listing
> indexes in a free-text 'description', or adding a free-text reference to
> a binding header file and using those define names in a free-text
> 'description'?

Either 2 or 3. Several bindings for small number of constants choose
option 2.

> 
> And if going with the last option, does this mean that every SoC and PHY
> type needs its own header for those three clocks or so to avoid having
> a common dumping ground header file where indexes will not necessarily
> be 0-based and consecutive.

phy-qcom-qmp-combo.c has one qcom_qmp_dp_clks_hw_get(), so why would you
have many of header files?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
