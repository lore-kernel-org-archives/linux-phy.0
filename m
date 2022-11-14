Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77B72C43217
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 15:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0zQ+UivbYRKBaOc8+K7PSfzxiAbSQ+bSCdRGKNy5NXM=; b=ROpg3i+JE3zGhn
	9yZw+KskJTUMiCRN62jLhmEpk3g0qD4dcZ3R1YpvT5xV97a9cTtBA5OwwdwGNadSntoqd5fmC9Jlj
	3ymKhzpwvyGDa7gafR3yChoVe/ruOt5Y9d8+GCuLVpbKEghevD/Wzuq8fIFH4OxMcXp3byInfecLt
	Flo93morNLUQq2Q0GxVnCbIw/zBhkQtqx9XAGvYOdemyGcny0ffbMw4RXaBrqrAvGLQuJh9qUJdEn
	eitYmreuMMDoHJu7Cpae8TUZeBr/UjiA120WVIq3nVRp0jBTE7ZbvIUZaDEP0D33YGS+vx8IV2d65
	xRxfk4qK6msbp5uE3CJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oubFE-002B6O-TE; Mon, 14 Nov 2022 15:19:32 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oubFC-002B4C-DL
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 15:19:31 +0000
Received: by mail-lf1-x12f.google.com with SMTP id j16so19755234lfe.12
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 07:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s4qZK+7Yu5In+UGyLhgCuDgQLMaWOt08UJeOqh2oGhw=;
        b=emhOMbjzzww1AVtCE0BIcdbg90+NXwBG+sDpW2IiOedAX1gNoTeO/3Gkg+NP3Ipc65
         AZOPsqLXQOvmn1vF6ZmBVwiFG00UXe5sc1RyAYEe+s2odFUJ2+9l5DxYPx7nL7u+XE9e
         5KZlqWQC07nothoXFiTKx/c7IyUt1fcBCE09xJ6hzPw4/F7dVrExcOVJCk+CkqnsMMZv
         HXuHjOiA6cst3u0dz/tFnhJ2e5O1Oei0tmVrxeZVimU0M0hwwd0Q1Il2/+xuCBX5OlPo
         qIe1wtMjAOYcLMq+XtcuZNAVWnZGJw5ZQF47P3lxUG1yG73TQ61ZNUk8Zj6bXSOldsXr
         0v6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s4qZK+7Yu5In+UGyLhgCuDgQLMaWOt08UJeOqh2oGhw=;
        b=DGztSQAqCuF3XrbVUQi81JyZZENoOa7rWtbgHIUhu5bH6/jnyLTvnl6rVPtPtMINoR
         LXAFqaIfQhtXgzZznzupJDCgBdU9NwVGgSIk5i2aFsChqV0ia9WuEunBLeuNfjapvvy0
         +4fpycJld/n3sYlIuweBl58VNJxY6vVqqYrcNIMuTUHMdB1Uelnsiu/MdUPTw7OUmUT3
         3pSZGg+0vwpgSKwtZiapwj0Bz85umvtNR9sXVmXi+bNuJTUDuodzU4K4vzwMD8npc3H0
         vce+2sPtAtyBA+jAMhWVw4AM+LCi/mYep4aKhXI2ts+V6qycgXIQKAJHa5MEk7QRMunH
         tPxQ==
X-Gm-Message-State: ANoB5pnBf8TMjuqV4TIuM63e4JhubwXRhekHzwwnWjgqo/NXOYaM+Ioa
	gymk28Px0uS/v1Kr4weZwg7h+w==
X-Google-Smtp-Source: AA0mqf7veRF5xNa75Gb2ttLpByTFoLlWD7Us1WXZrNtszCy+XYC07Ejh2ODD7bykiw3P1st5l3kUjg==
X-Received: by 2002:a05:6512:2345:b0:4ae:d4db:9f89 with SMTP id p5-20020a056512234500b004aed4db9f89mr4098057lfu.174.1668439166935;
        Mon, 14 Nov 2022 07:19:26 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id p4-20020ac24ec4000000b00498f570aef2sm1854905lfr.209.2022.11.14.07.19.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 07:19:26 -0800 (PST)
Message-ID: <78cda6f8-849c-219a-8dbb-966c283c1a92@linaro.org>
Date: Mon, 14 Nov 2022 18:19:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
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
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y3JOO0kNnaNhnW3K@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_071930_513383_E2F7DE47 
X-CRM114-Status: GOOD (  29.10  )
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

On 14/11/2022 17:18, Johan Hovold wrote:
> On Mon, Nov 14, 2022 at 03:07:41PM +0100, Krzysztof Kozlowski wrote:
>> On 14/11/2022 14:27, Johan Hovold wrote:
>>> On Fri, Nov 11, 2022 at 04:17:29PM +0100, Krzysztof Kozlowski wrote:
>>>> On 11/11/2022 10:24, Johan Hovold wrote:
>>>>> The current QMP USB3-DP PHY bindings are based on the original MSM8996
>>>>> binding which provided multiple PHYs per IP block and these in turn were
>>>>> described by child nodes.
> 
>>>>> +  "#clock-cells":
>>>>> +    const: 1
>>>>> +
>>>>> +  clock-output-names:
>>>>> +    items:
>>>>> +      - const: usb3_pipe
>>>>> +      - const: dp_link
>>>>> +      - const: dp_vco_div
>>>>
>>>> Why defining here fixed names? The purpose of this field is to actually
>>>> allow customizing these - at least in most cases. If these have to be
>>>> fixed, then driver should just instantiate these clocks with such names,
>>>> right?
>>>
>>> I'm only using these names as documentation of the indexes. The driver
>>
>> What do you mean by documentation of indexes? You require these specific
>> entries and do not allow anything else.
> 
> I'm using this property as documentation of the valid indexes that can
> be used when referring to clocks provided by this device.
> 
> There are currently three and the mapping is described by the
> 'clock-output-names' property.
>   
>>> doesn't use these names, but that's a Linux-specific implementation
>>> detail.
>>>
>>> I noticed that several bindings leave the clock indexes unspecified, or
>>> have header files defining some or all of them. I first added a QMP
>>> header but that seemed like overkill, especially if we'd end up with
>>> one header per SoC (cf. the GCC headers) due to (known and potential)
>>> platform differences.
>>
>> Headers for the names? I do not recall such but that does not seem right.
> 
> Headers for the indexes.
> 
>>>
>>> On the other hand reproducing this list in each node is admittedly a bit
>>> redundant.
>>>
>>> Shall I add back a shared header for all PHYs handled by this driver
>>> (another implementation detail) even if this could eventually lead to
>>> describing clocks not supported by a particular SoC (so such constraints
>>> would still need to be described by the binding somehow):
>>>
>>> 	/* QMP clocks */
>>> 	#define QMP_USB3_PIPE_CLK	0
>>> 	#define QMP_DP_LINK_CLK		1
>>> 	#define QMP_DP_VCO_DIV_CLK	2

Maybe QMP_COMBO_USB3_PIPE_CLK, QMP_COMBO_DP_LINK_CLK, 
QMP_COMBO_DP_VCO_DIV_CLK?

I'll then extend this header with QMP_UFS_RX_SYMBOL_0_CLK 
QMP_UFS_RX_SYMBOL_1_CLK and QMP_UFS_TX_SYMBOL_0_CLK.

>>
>> What are these about? To remind - we talk about names of clocks this
>> device creates. The output names. Whatever IDs you have are not related
>> to the names.
> 
> As I mentioned above, this is not about the names that Linux gives to
> its representation of these clocks. Its just about defining the valid
> indexes in the binding.
> 
> If you think that that using 'clock-output-names' for this is a bit too
> unconventional, I can add back the header with defines like the above
> instead.
> 
> Note that the clock schema has:
> 
>    clock-output-names:
>      description: |
>        Recommended to be a list of strings of clock output signal
>        names indexed by the first cell in the clock specifier.
>        However, the meaning of clock-output-names is domain
>        specific to the clock provider, ...
> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
