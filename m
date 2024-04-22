Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59D4FC4345F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 16:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2muLDfiN/Ocwjh8b7VGI2QOc/OTPrg3yZlu+TrW93Ko=; b=B3QBayprD4WSu9Je54dfjdkd6R
	XVL3Fz/lyQenQ81PZe7u0EJCKdYYOdwQkARZFtkvJ3jSGfdIMIvMpolrRccPSMDv1NUPdFDSaXxCf
	alGAI48kAiKlJtJ0N9JLtmj57k9ZUkhUEKFiod6/Jilqs7iaokf3ivE8GNTvCYJt9a6f7J2z0gk1w
	uxVJlQZAIFsVbtfR9C4uF698E1QT4z+9wf8UGbD0XjuwERsNO3DJkdyzYGVgzfANU822uCc2Pc7nQ
	PFlI570ovd1NNhP0f1kQj23iJg2JMSJlu3jh2aMYAvNutQv30GSEHRSWytsTS/LxrVpn0njjbIIIg
	sITmM+2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywCi-0000000EEay-0I43;
	Mon, 22 Apr 2024 16:07:40 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rywCe-0000000EEZf-1lgz
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 16:07:38 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2d8a2cbe1baso59053441fa.0
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 09:07:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713802053; x=1714406853; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rV5YhSHRl9//iqDa2BiuSCB2EW4ixdSWZiS3tQXSouc=;
        b=tLCL7wBw+zuIqWVifbsh4WO7m19MVsfWetNKbg8nd95rEvWZKWAPzrY6QpLC42dYpk
         VThOA50dff2HWGMYStghSk7hSmXLW7lRstfAi6HP0z8wZNg5mUABmv+GJUSTcZMH0yRW
         t6BL3JbVQVZOU/2sVoJ6sxn512VQtf0r1U4oR/9NfOkFYxIXA4OOPsAPy6NUh0XPOpF/
         XV2bhN0xxRZwxyP2jbZ0s/PjPE8BVwUCwnbEvPsdlvnLvu197YBgfmwQ3GNQ2iXkXU0S
         oxzRlND8ymgWX79GGoCWGYJ/orfsgrpvx+PTd1u2SsbYvrV2e0q0ckTENezaoT08lV6N
         HgCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713802053; x=1714406853;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rV5YhSHRl9//iqDa2BiuSCB2EW4ixdSWZiS3tQXSouc=;
        b=PY0d5Byz8+KcOJWjDDVHRF90GRKwA+LugMa99bTgU8xRZ+rm8ElUX9QXc1hPWqDeQb
         rXjH1zMvdw3WE9Er2a/gLaEeAd3jjkcoQLBFY5bRHFUg+BLrUfppqznW0Sb402HrekXG
         gIYIHwnb6/Vx0+nbikIUInSmPTEZoV0IEwQwlUnbNOT+SARggq1d2/ch8LyuqObazbej
         FYh14XYWE+Cbqpqh0vPAUk8exW2m90vmvDUtvuDIjnJBT7SWBroIpOuUlcFVtt6aV6Uf
         5oBBbQEqRs9idmIjCVRtXOec0PYk1+ymfYf0RFK7HnCLWzixqw0WmUGR2twc5gR95uaL
         9UgA==
X-Forwarded-Encrypted: i=1; AJvYcCXTHnxTY8p5TngOeUpM4jTV3yzrQD1w9oQWUMOSR4CbLcxJHfwKtjOIwXD6IK7stzlKTFGtfRppIzn1MTaA4SUldHVPWze9UIYa1/htpQ==
X-Gm-Message-State: AOJu0YzePmJR6TiuvTFxK9iQ25CSxfS5MqRQArwPV4GgeJgJv9O3FjW6
	+88aFMC9nI2oJSyXaBuroMNCoEWyNMAYqaX1VPVShhsXsDe8LU9DMrbbLuX0VZHgR7X9fyoj1p3
	tEj0biQ==
X-Google-Smtp-Source: AGHT+IH8eWW2BXlr/BFcs+LhyLxysUqw8CXmw+UlSNai+Eyp44b0clJUmsx90/mDvUjyTf6hUWW7kA==
X-Received: by 2002:a05:651c:19ac:b0:2dd:2e6c:21c6 with SMTP id bx44-20020a05651c19ac00b002dd2e6c21c6mr5668327ljb.2.1713802053058;
        Mon, 22 Apr 2024 09:07:33 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:e5e5:892f:e81f:7cad? ([2a01:e0a:982:cbb0:e5e5:892f:e81f:7cad])
        by smtp.gmail.com with ESMTPSA id q15-20020a05600c46cf00b00416e2c8b290sm21158551wmo.1.2024.04.22.09.07.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Apr 2024 09:07:32 -0700 (PDT)
Message-ID: <855a97c3-f96a-4606-a25e-a063a96782d1@linaro.org>
Date: Mon, 22 Apr 2024 18:07:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 0/3] arm64: qcom-sm8[456]50: properly describe the PCIe
 Gen4x2 PHY AUX clock
To: Rob Herring <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
References: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org>
 <171378646293.749182.6639047187760279527.robh@kernel.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <171378646293.749182.6639047187760279527.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_090736_933218_3C15EEE3 
X-CRM114-Status: GOOD (  21.79  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 22/04/2024 13:50, Rob Herring wrote:
> 
> On Mon, 22 Apr 2024 10:33:10 +0200, Neil Armstrong wrote:
>> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock named
>> "PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
>> is muxed & gated then returned to the PHY as an input.
>>
>> Document the clock IDs to select the PIPE clock or the AUX clock,
>> also enforce a second clock-output-names and a #clock-cells value of 1
>> for the PCIe Gen4x2 PHY found in the SM8[456]50 SoCs.
>>
>> The PHY driver needs a light refactoring to support a second clock,
>> and finally the DT is changed to connect the PHY second clock to the
>> corresponding GCC input then drop the dummy fixed rate clock.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>> Changes in v3:
>> - Rebased on linux-next, applies now cleanly
>> - Link to v2: https://lore.kernel.org/r/20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org
>>
>> Changes in v2:
>> - Collected review tags
>> - Switched back to of_clk_add_hw_provider/devm_add_action_or_reset to maintain compatibility
>> - Tried to use generic of_clk_hw_onecell_get() but it requires to much boilerplate code
>>    and would still need a local qmp_pcie_clk_hw_get() to support the current #clock-cells=0
>>    when exposing 2 clocks, so it's simpler to just return the clocks in qmp_pcie_clk_hw_get()
>> - Link to v1: https://lore.kernel.org/r/20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org
>>
>> ---
>> Neil Armstrong (3):
>>        arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
>>        arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
>>        arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
>>
>>   arch/arm64/boot/dts/qcom/sm8450.dtsi    |  8 ++++----
>>   arch/arm64/boot/dts/qcom/sm8550-hdk.dts |  4 ----
>>   arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  4 ----
>>   arch/arm64/boot/dts/qcom/sm8550-qrd.dts |  8 --------
>>   arch/arm64/boot/dts/qcom/sm8550.dtsi    | 13 ++++---------
>>   arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
>>   arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
>>   arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
>>   8 files changed, 12 insertions(+), 46 deletions(-)
>> ---
>> base-commit: f529a6d274b3b8c75899e949649d231298f30a32
>> change-id: 20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-4b35169707dd
>>
>> Best regards,
>> --
>> Neil Armstrong <neil.armstrong@linaro.org>
>>
>>
>>
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>    pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y qcom/sm8550-hdk.dtb qcom/sm8550-mtp.dtb qcom/sm8550-qrd.dtb qcom/sm8650-mtp.dtb qcom/sm8650-qrd.dtb' for 20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org:
> 
> arch/arm64/boot/dts/qcom/sm8550-qrd.dtb: clock-controller@100000: clocks: [[41], [42], [43], [44, 0], [45, 0], [45, 1], [45, 2], [46, 0]] is too short
> 	from schema $id: http://devicetree.org/schemas/clock/qcom,sm8550-gcc.yaml#
> arch/arm64/boot/dts/qcom/sm8550-qrd.dtb: clock-controller@100000: Unevaluated properties are not allowed ('clocks' was unexpected)
> 	from schema $id: http://devicetree.org/schemas/clock/qcom,sm8550-gcc.yaml#
> 

Ok thx, I found out why, sending a v4 fixing that

Neil



> 
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
