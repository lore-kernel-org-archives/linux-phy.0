Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C75C109022A
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 14:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4jYC7GGaj9KVROFlGrR04kZw9WifE4SOmwbhBF4uNaY=; b=WwzdynpbJoeNRi8m55p15j26CE
	97RzluDcba1ukRH7bX8pn3FBtMJYj0pmz5Nocbq+cWdKJ9uUJMiFRx2S+J2D38fisgwh3kFsnMkRQ
	/T8Fqu9dUT5mX48y3b0Y5wUFNIaoLXmkIVeoEVng4G1AD0hk3Paw1Azjrpo/EIF+V3oM5ROtH8IDm
	+Pzy0M/4W8yR8ZR7GrtZx9vuS42cHoYnNs7Q5S99czK/c7xm+7II3LiCSaij2NeEyF0yBDA9Jt9ww
	BMwPnGNMkR+NdAX0pPAHczG1xu3GK9zUYO20NuJ+K2co+skOE/ZITOswnquhXrxBdWqeR8L1/hbVO
	HptbWMdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Dzv-0000000AjcJ-0d6R;
	Thu, 19 Mar 2026 14:05:15 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Dzs-0000000Ajbi-3m5g
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 14:05:14 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-43b45bb7548so655549f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 07:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773929110; x=1774533910; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9e2+lA0DIZE3y9aERv7AEJRfbRg9zhF3NxdBRQrILoQ=;
        b=dcr7trKl/1q0HiKUvNTsmRRZfiPpQ2EMquWaXmYVTBqneZA2zsdy7/7GPt2nzLnisS
         dtpTlPvu0LhUG+BNHxezCDJyQH2QQceBp7ayU+4IlwFpbReujrCZqmPNDvvYo+cp9/Sc
         S9VIGdhL3BWoP6my0mVnv8iWR/cUj+WW8BKh2fMO3iEpD46XIvNTngObe5eIuifsvGYl
         0Au9IhjvwaCtygpFq3V5vfoVUULXpEyJvqG6c8iecKrvSuCNtVY6PODeFWvu7uqWZEG4
         L7gPlxtLJqt82PzFdeBnqzncoVC/rgASbkGrLld8H6J/AEIgavJNO0XGEKx6NYdeVLi1
         8RBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773929110; x=1774533910;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9e2+lA0DIZE3y9aERv7AEJRfbRg9zhF3NxdBRQrILoQ=;
        b=jYS1NmO8zkOi6kwxEl9rmGl42qeMIwkG5RxV1hmdct/YF9icTLt52t0vjYLOCFoLUg
         i3VoYjzmN8Wf74hFh2j6MX5pmXXP4rcpSf0/bZ/xSrqAFv8K0Ez9ljZwpgw1xNq5D6zV
         3Qb92KXxdeoaSRWn8q2YQQYbd3ZRuHvvwDswsjXISyBVUDTuGNc7CDdoZJf9FytZ2y2T
         5X6tMLtXxzOOeYSTpBWWzyoJznxa0J4VPHK3Lfz3AQnzDPMcMx9Fae/iZRbJFC1ojqU4
         AwysOJk3x/YFyOxPJQO8WbGCCgQWPdS7tPvyTDRWGXSV80cEgIN1QVs+i9ZyVCQZ35A+
         3uwQ==
X-Forwarded-Encrypted: i=1; AJvYcCVm+PGuYCpGfEbwe3agtKoMAdM2pnZCklQyfCxpZdYkBsEjNUwXqA9kcl9yctyXAKFsfiI115cdzA4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxXlyFidom1Xl//ReB2K9dCjrLP9RYn8WE8lY6+X9ibLf/wfdAr
	cq6ox+/wO32n0R55gxSt1uH3zxig20yWrkVsbjbmJhcV3h2OShR93rlLlFUe3nxEZ9c=
X-Gm-Gg: ATEYQzz9EwJUzhLsf+HYesXV3zTJQI2YGXcTABpyILVbtMbqp1EyrzLWQfBOgktWyBK
	xEJP6/Y7/7IKUJkko6tAhPayePATnMYxGlQkmsrJthNEtfHMQHYiQNxK+afjuyq5dEq8XxYlw6i
	o9Xh0dTE7kCl1DJNInI2MpjHicOP1MsB/ToO23L0/5DzjdeKC2Euu+MHHrslpmKE3d0fPI59XHT
	ABQVrLNDqzQorOlHNmA2h+eX5KO/MYh0HDlLh38SOao2tiPqkr2+xIuUSybrWhgAosZrOhTwujv
	MHhnaGj5AD/91rYeuW3l7IV1oBgrsHvWsCle1skICTtIX57kWjcuztlwMm1WWuXCpFUxt/YXBNw
	V0kb9LSUwC4hR4ATpl5mG+D+85lFDjscisH+b9ekE/gOyeKomSNSAqWHt3aDCI6LAeDQ3s+NzNa
	SfqxrnZ5Y2pAm51zDwIqkGIouRKui1/a50U0BHhXgHPngcLCyPesGdE/1bVEX8lSGEcLPenQ9Ho
	rm4qwE=
X-Received: by 2002:a05:6000:1865:b0:439:beba:300 with SMTP id ffacd0b85a97d-43b5279df60mr13775850f8f.1.1773929110168;
        Thu, 19 Mar 2026 07:05:10 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:8e54:fbaf:8cb6:e9f7? ([2a01:e0a:106d:1080:8e54:fbaf:8cb6:e9f7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b5184957bsm17767759f8f.5.2026.03.19.07.05.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 07:05:09 -0700 (PDT)
Message-ID: <4d376a1b-37d7-4d37-8579-a0053f7b91f2@linaro.org>
Date: Thu, 19 Mar 2026 15:05:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
 <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
 <26XTdUyQTB41Oc4D5HnMtSm_QpZRjlkljQRJVw-u1Zp3Ltn9s4LVU-LQkP6drdl3Z3GGssLCCbsVYPFEqssHcQ==@protonmail.internalid>
 <65e06b2e-eeb9-45af-97ac-4ae60f652361@linaro.org>
 <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
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
In-Reply-To: <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_070512_975230_CC575284 
X-CRM114-Status: GOOD (  13.05  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 3/19/26 14:17, Bryan O'Donoghue wrote:
> On 19/03/2026 13:08, Vladimir Zapolskiy wrote:
>>> Why do you want a media driver? Isn't PHY driver enough?
>>>
>> As for today CAMSS CSIPHY are already media devices, and a user applies media
>> specific properties to them, for instance media bus format, resolution etc.
>> Technically this might be removed from CAMSS, but if so, then it should be
>> done before this new PHY driver model is applied.
>>
>> -- 
>> Best wishes,
> 
> There's no reason to remove that from CAMSS - it would be an ABI break in user-space anyway.
> 
> The media entity in CAMSS msm_csiphyX handles format negotiation and pipeline routing. The PHY driver handles electrical configuration. They don't conflict and there multiple cited examples of this upstream already.

If csiphy component was only handling  electrical configuration, the only code handling csiphy would be phy API calls, not be part of the pipeline configuration. Today, it's a media element

The whole CAMSS architecture is wrong, it should be modular, each hardware module should be an independent driver and all be connected via port/endpoint and configured with the media controller API.

If you _really_ want to move the "electrical configuration" part of the CSPIPHY out of camss frankendriver, fine, then first just create an internal PHY device as an aux device, then continue migrating _all_ CAMSS components into independent driver modules, then in the end re-architecture the whole DT description by adding a node per component with a proper port/endpoint representation to be configured via the media controller API.

Neil

> 
> -- 
> bod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
