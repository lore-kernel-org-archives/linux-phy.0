Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82B30C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 16:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FxVThIFutGkCUwU7hvDk8SoUNEMnEpLO4AR7DbhHC5o=; b=YVABMFsQJBWefA
	kevWUbPuV2u/Ts7KuusAKd4KsX7topdVoo9Sf91RCqYIfv3LNfadiy1JLmKdds8dCe3H72ajlAh8H
	KybV/koTDi3RsmE65e0pAnJfuel3QSDgn97LSsHa9poaiuPdryeMDF5AHOPu13Novs+tL6BcDbXSA
	JvfguiSS2t7a2LHJELPIAN8F2jzuMOLZ2/gdO5/td0QoxERc1z8iMM9i+MOsl+UZTs5Xx1yLpsjvw
	hXxNAU2J2+Qi7ugyAy9F03gMjSVRXCTBxUlUy9YJk7k0EsCbPOmBHch9SxlTUZfAwIvMxHlWTO4WC
	AwY9ao/c5l42edU/uVng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oucgK-002ryj-VF; Mon, 14 Nov 2022 16:51:36 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oucgH-002rxm-Kg
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 16:51:35 +0000
Received: by mail-lf1-x12c.google.com with SMTP id l12so20245008lfp.6
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 08:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6dLf4Wewae+9+C646HGqgQuWVwvqyOlsvboz2D5cvWY=;
        b=qW1e16qnKkNRaGKPE94EmHEd++Gx12+z6dNP+m7n3grXvXpbSUFF33ZUECS/AF3p0O
         zKxrr6T5eDUUqqdC6tp7cJLGHZYmpoeExDo/9uhRXklrMDCYyq2DD0CvsAbBDUkgXaSa
         jy6/DzDpdospmLDHeiCg9NUdWvgToOw7mDUyb+m9tdv1OK7uM63PEyVhnZ7Yk97BMVy2
         8nm/At14I4cp0d4+4vWX0HwedhN9poV+s7T7QZ1xOjcA8E7wEpgqOzgjdFDye7OzSO6P
         o3/TH2mwcZi0gxj/uftrEyAEIDFTLGTgAV5kuCcu3X7ewpyG/QYGF0KhdMDnnti0UamN
         7A0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6dLf4Wewae+9+C646HGqgQuWVwvqyOlsvboz2D5cvWY=;
        b=hDAyUgOHpmDvur33UJTCjXwdxXv0G+XoopAYMGMejWcUPoaFWhpxfC0Thr/w6tRXLf
         0jUAXBoF9J+yrpoUaRaYwGqYW91TgJR2G+Me2q0IQFsAccnYhUctrg/oCo8YA3EYyp0B
         VlhANORa5hukb99Ns3vLjK0USA5tqx+kQtLvpJytMf9IVTZwVSgtwucB0GVvYCEbHEav
         QiJJuRc2Wnl1QYEjkQ5OcK7sYAQhkA5jzd/mmJ/xAYGuoc27alXMXhP9ssa34MXt0IyJ
         yd0+Fie//Xnl52xR9yqCXX4uXirLoNjptbGc7/Wu/WgV7btXZ9uIrMj3oiA5CeUD7+B6
         h3zA==
X-Gm-Message-State: ANoB5plcrdApMCBxQ9taaLth1+c+aRVzZIKkeDLf7n7UMBEZZL2Oefxn
	GR1dkKUBCeUyfuSF54/LGc4Krg==
X-Google-Smtp-Source: AA0mqf4iplJlnBuDmLstDKHRy1Bhyq+KwJHcQisutdSSLy9f0NnEJsl0w9ATYuvkmt/Vh6kUejVp4w==
X-Received: by 2002:ac2:4f13:0:b0:4a2:25b1:10ff with SMTP id k19-20020ac24f13000000b004a225b110ffmr5037510lfr.274.1668444691947;
        Mon, 14 Nov 2022 08:51:31 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a17-20020a056512201100b0049d83646ce7sm1875806lfb.110.2022.11.14.08.51.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 08:51:31 -0800 (PST)
Message-ID: <5920660e-34e4-8a6b-7d99-ba0511e2c86a@linaro.org>
Date: Mon, 14 Nov 2022 19:51:31 +0300
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
 <bcc327b6-c38b-86a9-34cb-440ad33df210@linaro.org>
 <Y3Jv4ePkPiKiG8wj@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y3Jv4ePkPiKiG8wj@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_085133_766121_90F01710 
X-CRM114-Status: GOOD (  26.74  )
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

On 14/11/2022 19:42, Johan Hovold wrote:
> On Mon, Nov 14, 2022 at 07:14:48PM +0300, Dmitry Baryshkov wrote:
>> On 14/11/2022 18:38, Johan Hovold wrote:
>>> On Mon, Nov 14, 2022 at 06:19:25PM +0300, Dmitry Baryshkov wrote:
>>>> On 14/11/2022 17:18, Johan Hovold wrote:
>>>>> On Mon, Nov 14, 2022 at 03:07:41PM +0100, Krzysztof Kozlowski wrote:
>>>>>> On 14/11/2022 14:27, Johan Hovold wrote:
>>>>>>> On Fri, Nov 11, 2022 at 04:17:29PM +0100, Krzysztof Kozlowski wrote:
>>>>>>>> On 11/11/2022 10:24, Johan Hovold wrote:
>>>
>>>>>>> I noticed that several bindings leave the clock indexes unspecified, or
>>>>>>> have header files defining some or all of them. I first added a QMP
>>>>>>> header but that seemed like overkill, especially if we'd end up with
>>>>>>> one header per SoC (cf. the GCC headers) due to (known and potential)
>>>>>>> platform differences.
>>>
>>>>>>> Shall I add back a shared header for all PHYs handled by this driver
>>>>>>> (another implementation detail) even if this could eventually lead to
>>>>>>> describing clocks not supported by a particular SoC (so such constraints
>>>>>>> would still need to be described by the binding somehow):
>>>>>>>
>>>>>>> 	/* QMP clocks */
>>>>>>> 	#define QMP_USB3_PIPE_CLK	0
>>>>>>> 	#define QMP_DP_LINK_CLK		1
>>>>>>> 	#define QMP_DP_VCO_DIV_CLK	2
>>>>
>>>> Maybe QMP_COMBO_USB3_PIPE_CLK, QMP_COMBO_DP_LINK_CLK,
>>>> QMP_COMBO_DP_VCO_DIV_CLK?
>>>
>>> "COMBO" is just the name of the Linux driver and does not belong in the
>>> binding.
>>
>> We do not have any standard (iow, coming from the docs) name, so we can
>> invent it on our own.
> 
> I still think the naming should reflect the hardware and not the Linux
> implementation if this is going into the binding.

Well, I always viewed docs as

> 
> And the USB4_USB3_DP defines are going to be a superset of USB3_DP (as
> far we know know).
> 
>>>> I'll then extend this header with QMP_UFS_RX_SYMBOL_0_CLK
>>>> QMP_UFS_RX_SYMBOL_1_CLK and QMP_UFS_TX_SYMBOL_0_CLK.
>>>
>>> Yeah, I had those in mind when creating the header and using a generic
>>> QMP prefix (even if I didn't end up using the header in v1).
>>>
>>> This could just be mapping of (arbitrary) QMP indexes to clocks and we
>>> use it for USB3, DP, UFS and later also USB4.
>>>
>>> This will however mean that the indexes are not necessarily zero-based
>>> and consecutive for a specific SoC and PHY. But that's perhaps a
>>> non-issue (cf. the PHY_TYPE defines).
>>
>> Ugh. Please, no. We have symbol clocks for UFS PHY, USB+DP clocks for
>> USB+DP PHY, but let's not go for the unified clocks index definition.
> 
> Yeah, this is the kind of issues I wanted to avoid by not using a per
> SoC header for three clocks which will almost always use the same
> indexes.
> 
> Because how can you be sure that your unified per-PHY type defines will
> never have to be amended? Or some index left out?
> 
> The only way then is to have per-SoC defines which is a pain to
> maintain (just consider that driver mapping table when some odd SoC
> shows up).

My vote is definitely against a per-SoC defines.

> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
