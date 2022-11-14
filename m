Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63DBBC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 16:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hmuTjyM1IT2a9K9GxW/cJPJbG0GeQ4qWLAxmGmoJpQ=; b=iLHTcxL+hkmn+q
	U0Q9fUiW8+P3pl1t/rRouLCJkC2q+bn5xiQnJXNODZSjRyH+NC5oHX9yHioLiU83R5Un1SD06l5Wu
	HriLdjqefwu+j8HU3wqsZ9vT3BXSsxcpjyt9PIoRMY8j34vPD/R3SlOjKJa1wSaBWwGfd8b+6wwjy
	ccNkfNO9qIcDDua9D7Mt8N0AlKqaNKJ7A8BhJOtbqGDwo3gjkbM6hYPFDHk6SPldjFeQWz2wU1pxu
	NnbfoV/mleTYjTktRoo9utgYqNkKBfNNDRGO+Y6pnLfv+L1BmklvcpaRcIZiF13AfWm24aq/YezHF
	ONBj9+6Cod1OiVOn7wcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouc6n-002cRh-Py; Mon, 14 Nov 2022 16:14:53 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouc6l-002cQ5-J0
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 16:14:53 +0000
Received: by mail-lj1-x22b.google.com with SMTP id c25so13844366ljr.8
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 08:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b6wTsoEqnWNCo+xLotcVL4lHOc4APMKma952G03jZA0=;
        b=xbKjKIjyIM+dukGJQt2smut7cqu9mbiXPsmLQizdri/lnUIqTbDIrFLV7iFsNHqy3D
         01pctG0PwRPw+sAIHWGIcJlTATI9mmhkfvUECE7k9yn550PtmqartHzQOaw+sk2vgV5B
         cGZfINyThuePrkhwwX8UnxGvKcRP5WXhc6fLgs/ZuG8K/gQNVEu97s6zMXInDV9cKUus
         pkALnXz1zPTE6EXbZk4DBX09AVjU8cIKbUYU/s7ijeHmS3+kuM8Gr6Ozj4qwdX9oiT22
         9dmqv5n+zPP3+Oa6dRakTjtfFfPEtzcbHyx35VGUUCHpi69SVAHu77M21HdO+m4LS4JL
         3UIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b6wTsoEqnWNCo+xLotcVL4lHOc4APMKma952G03jZA0=;
        b=lsyQstiHAAZwkace4KTVtSu/2UIjEEJh+AQ6AUfrMvEYkn7wsuFl4rDTpRAEhffl/r
         W9Ehq1zwT5V4ER5xCME/WAPQyavlQEeRpx/f6EYICviuw0/+hHPoSkXtQ8+hGNENxHzl
         sWFJIrvAXJm2180A2wfAiVuP4413ZJccRIzse6VKeXcSRuWp2e/E3H8TxbqQw32bLlKO
         LxqL7J29jnCetOuJt4uzihFCVHH7BxGBmca69XQkLhOCW9H8wP2ST0xDJc2LloopRDEe
         WyOpvP1ihj/9QuI85AhIgndK3nqD0DRLnYx1B2aFpN6k3WfnZ1y7BKXAgnCl6VqZT0JZ
         JoaA==
X-Gm-Message-State: ANoB5pmoOCDFqzN1nNxh0Pw8bDtq7P9uu9vH12dUWZ8bYP3HSULhYG0J
	U3eZZFiqDXgDbhOmQBnrMO/0og==
X-Google-Smtp-Source: AA0mqf4RlZ5Ep2WoSFwSpBUgtUqa42n8p2HqsbNIqQqAWZpJtUoN6gfm3iQnIWeex21qOCaZ7GKQTA==
X-Received: by 2002:a2e:99d5:0:b0:277:7714:3fca with SMTP id l21-20020a2e99d5000000b0027777143fcamr4306897ljj.529.1668442489070;
        Mon, 14 Nov 2022 08:14:49 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a1-20020a19ca01000000b004a03d5c2140sm1867981lfg.136.2022.11.14.08.14.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 08:14:48 -0800 (PST)
Message-ID: <bcc327b6-c38b-86a9-34cb-440ad33df210@linaro.org>
Date: Mon, 14 Nov 2022 19:14:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
 <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
 <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
 <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
 <Y3JOO0kNnaNhnW3K@hovoldconsulting.com>
 <78cda6f8-849c-219a-8dbb-966c283c1a92@linaro.org>
 <Y3Jg/qmMW3rC5Okc@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y3Jg/qmMW3rC5Okc@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_081451_660254_E5BDF006 
X-CRM114-Status: GOOD (  24.59  )
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

On 14/11/2022 18:38, Johan Hovold wrote:
> On Mon, Nov 14, 2022 at 06:19:25PM +0300, Dmitry Baryshkov wrote:
>> On 14/11/2022 17:18, Johan Hovold wrote:
>>> On Mon, Nov 14, 2022 at 03:07:41PM +0100, Krzysztof Kozlowski wrote:
>>>> On 14/11/2022 14:27, Johan Hovold wrote:
>>>>> On Fri, Nov 11, 2022 at 04:17:29PM +0100, Krzysztof Kozlowski wrote:
>>>>>> On 11/11/2022 10:24, Johan Hovold wrote:
> 
>>>>> I noticed that several bindings leave the clock indexes unspecified, or
>>>>> have header files defining some or all of them. I first added a QMP
>>>>> header but that seemed like overkill, especially if we'd end up with
>>>>> one header per SoC (cf. the GCC headers) due to (known and potential)
>>>>> platform differences.
> 
>>>>> Shall I add back a shared header for all PHYs handled by this driver
>>>>> (another implementation detail) even if this could eventually lead to
>>>>> describing clocks not supported by a particular SoC (so such constraints
>>>>> would still need to be described by the binding somehow):
>>>>>
>>>>> 	/* QMP clocks */
>>>>> 	#define QMP_USB3_PIPE_CLK	0
>>>>> 	#define QMP_DP_LINK_CLK		1
>>>>> 	#define QMP_DP_VCO_DIV_CLK	2
>>
>> Maybe QMP_COMBO_USB3_PIPE_CLK, QMP_COMBO_DP_LINK_CLK,
>> QMP_COMBO_DP_VCO_DIV_CLK?
> 
> "COMBO" is just the name of the Linux driver and does not belong in the
> binding.

We do not have any standard (iow, coming from the docs) name, so we can 
invent it on our own.

>   
>> I'll then extend this header with QMP_UFS_RX_SYMBOL_0_CLK
>> QMP_UFS_RX_SYMBOL_1_CLK and QMP_UFS_TX_SYMBOL_0_CLK.
> 
> Yeah, I had those in mind when creating the header and using a generic
> QMP prefix (even if I didn't end up using the header in v1).
> 
> This could just be mapping of (arbitrary) QMP indexes to clocks and we
> use it for USB3, DP, UFS and later also USB4.
> 
> This will however mean that the indexes are not necessarily zero-based
> and consecutive for a specific SoC and PHY. But that's perhaps a
> non-issue (cf. the PHY_TYPE defines).

Ugh. Please, no. We have symbol clocks for UFS PHY, USB+DP clocks for 
USB+DP PHY, but let's not go for the unified clocks index definition.

> 
> We'd still need to describe which clocks are available on a particular
> SoC and PHY, and that's partly why I used 'clock-output-names' to fix
> the mapping in the binding. Guess we can just list the valid defines in
> the property description as I did for #phy-cells.
> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
