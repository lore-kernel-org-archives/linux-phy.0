Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DC90C43217
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 15:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aauCzozswuAJg7ePE2Ixtwtx/82y5l6OcdOsZR9TJRE=; b=VMQDgvSbW1PyTI
	0OZl0CQdooBUckgflJsUuvMwo28NikiFSrvKpS4mswp4TgtCp6oXo2oSvS9VKlciPnbvK2wk59fMJ
	xy8z6ky8cPvN1HCS1XOxCQ9a1PDHPRly7cPJn/yCUXy/ozays3VKNKCrRayy6UDdVMqp1K1bubDX1
	clmbDHDiwICWtSjAD0GSFT7/SPejOW5MhBhfPXNAtEOW+IonTPuVPdGXr8f3zQ+55Wc2+Z50uqw/Q
	18EPpP8t5aVsZhnmSgHUBgQ6rKolPUccRkCIRXGHoyFBiT3fwgKmqjPwT168f0uVkcrQrOLRDlR9D
	d2xIcZkpzoQ6iKiFRwrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oubQU-002FeW-Qi; Mon, 14 Nov 2022 15:31:10 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oubQR-002Fad-F4
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 15:31:09 +0000
Received: by mail-lf1-x132.google.com with SMTP id s8so2734174lfc.8
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 07:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z+APgoteAuoO9mTtV8vV2XOtx8Kwbf4hasGLOR8qZ8g=;
        b=SmEB42jxy4krB5JX6BEkkRMQiM9SlqtbFGemcikWQQZLBssxu7SPbe5Y1GbzVFYo+7
         1jA9Ltt814b8gr3ULe0d1nr7tpNRWXP9plxF7wymjAzwC/XwG7aMtzkXW0gFcFcz/LZF
         aRGKAjimGtp5l4H7QbGp1fOLyXrybsnkDXNBH8eRoTYu0IEGEhqzNSnM4H4aSg/wR+vO
         0vh/2p6oPVoQkGhPmxKvCcVgFNpqF3rb3ClnttXkS1xl7R/MeEK/UyyUQDiCaqT3DHfa
         jmig5MLNLskqJYTNV2Ey9BA0lLRdKjhyuw7lrGbK6gJ3COQrYiGZBUgbzCwNF73mH74L
         argA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z+APgoteAuoO9mTtV8vV2XOtx8Kwbf4hasGLOR8qZ8g=;
        b=TVgqvEq/RcxcxRQShezqbHZAjn5Q3KZT96WMHtUCO/L9Vr7Yd7pwL3qNIQHeOh0ICB
         y46NIvcvChOxnKKnD5NeESFLczhVaIZHqVazgTnFAYIcTmX7FGyTd6JgzimrBh0VCKgZ
         ERkkX6dbEK7HTxAShArOkSil6FOM0VK5oTL7Sjxt0xlIZyteWy9zmb6yJ38AppIa151u
         qd0U0GWbSDkygyzszCJKxnjcairq8O8FXIjWW0U3icDXAS6ChJSsAYIi06Uuesh+S9J2
         +sNfJCfrF1Q5hbIl6Ptcax7Z/PilKjy1Gz9wYxj10ahnf8fi9WwwwUH/6cvs98bTea0P
         4CYw==
X-Gm-Message-State: ANoB5pmB1qhRq05qUVXhql/zxYsj+bDkoWEuOXEtn09T4rT9faIkEXwL
	aZEnxzmZYKdfi43iHtUFznaPwg==
X-Google-Smtp-Source: AA0mqf5sZWN0bwnuk52AgLtN24jImYplJsDYfbprTaBDktg4nm08CK729SR/ymyuDx00Wh2odDmBlA==
X-Received: by 2002:ac2:4f13:0:b0:4a2:25b1:10ff with SMTP id k19-20020ac24f13000000b004a225b110ffmr4912341lfr.274.1668439863459;
        Mon, 14 Nov 2022 07:31:03 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a3-20020a2e8303000000b002770e531535sm2062990ljh.55.2022.11.14.07.31.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 07:31:03 -0800 (PST)
Message-ID: <42ae9612-43da-5f3a-534d-d30b9f399f90@linaro.org>
Date: Mon, 14 Nov 2022 18:31:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
 <ace91d8b-9a14-5569-7c59-344e9751fa96@linaro.org>
 <Y3JEh7wO394kepXq@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y3JEh7wO394kepXq@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_073107_542195_5AEC8E7D 
X-CRM114-Status: GOOD (  25.39  )
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

On 14/11/2022 16:37, Johan Hovold wrote:
> On Sat, Nov 12, 2022 at 02:43:03PM +0300, Dmitry Baryshkov wrote:
>> On 11/11/2022 12:24, Johan Hovold wrote:
>>> The current QMP USB3-DP PHY bindings are based on the original MSM8996
>>> binding which provided multiple PHYs per IP block and these in turn were
>>> described by child nodes.
>>>
>>> The QMP USB3-DP PHY block provides a single multi-protocol PHY and even
>>> if some resources are only used by either the USB or DP part of the
>>> device there is no real benefit in describing these resources in child
>>> nodes.
>>>
>>> The original MSM8996 binding also ended up describing the individual
>>> register blocks as belonging to either the wrapper node or the PHY child
>>> nodes.
>>>
>>> This is an unnecessary level of detail which has lead to problems when
>>> later IP blocks using different register layouts have been forced to fit
>>> the original mould rather than updating the binding. The bindings are
>>> arguable also incomplete as they only the describe register blocks used
>>> by the current Linux drivers (e.g. does not include the PCS LANE
>>> registers).
>>>
>>> This is specifically true for later USB4-USB3-DP QMP PHYs where the TX
>>> registers are used by both the USB3 and DP parts of the PHY (and where
>>> the USB4 part of the PHY was not covered by the binding at all). Notably
>>> there are also no DP "RX" (sic) registers as described by the current
>>> bindings and the DP "PCS" region is really a set of DP_PHY registers.
>>>
>>> Add a new binding for the USB4-USB3-DP QMP PHYs found on SC8280XP which
>>> further bindings can be based on.
>>>
>>> Note that the binding uses a PHY type index to access either the USB3 or
>>> DP part of the PHY and that this can later be used also for the USB4
>>> part if needed.
>>>
>>> Similarly, the clock inputs and outputs can later be extended to support
>>> USB4.
>>>
>>> Also note that the current binding is simply removed instead of being
>>> deprecated as it was only recently merged and would not allow for
>>> supporting DP mode.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
> 
>>> +  "#clock-cells":
>>> +    const: 1
>>> +
>>> +  clock-output-names:
>>> +    items:
>>> +      - const: usb3_pipe
>>> +      - const: dp_link
>>> +      - const: dp_vco_div
>>> +
>>> +  "#phy-cells":
>>> +    const: 1
>>> +    description: |
>>> +      PHY index
>>> +        - PHY_TYPE_USB3
>>> +        - PHY_TYPE_DP
>>
>> I'm stepping on Rob's and Krzysztof's ground here, but it might be more
>> logical and future proof to use indices instead of phy types.
> 
> Why would that be more future-proof?
> 
> I initially added defines for these indexes to a QMP header, but noticed
> that we already have PHY drivers that use the PHY types for this. So
> there's already a precedent for this and I didn't see any real benefit
> to adding multiple per-SoC defines for the same thing.

As you guessed from my question, I was thinking about USB4 (for which we 
do not have a separate PHY_TYPE, but that probably shouldn't matter). 
Would it be a separate PHY here, or would it be a combo UBS3+USB4 plus 
separate DP phy?

Yes, we have other PHYs, which use types as an index, however it's 
slightly more common to have indices instead.

Anyway, this is a minor issue. It might be just that I'm more common to 
using indices everywhere (in other words, I have preference here, but 
it's not a strong requirement from my side).


>> Just for my understanding, would USB4 support add another qserdes+tx/rx
>> construct or would it be the same USB3 register space?
> 
> The TX/RX registers are shared by the all three parts of the PHY (USB4,
> USB3, DP), while USB4 has two dedicated sets of PLL (serdes) and PCS
> registers.

Ack, thanks.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
