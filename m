Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED2FFCD6E57
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 23:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3m95ocnQz0rCRMbdRY0eVUIijwwMoxxrHGao1xk8yo=; b=V7Clw2tC+gMZ2r
	CWQsidzpdzqUWOFctgwHDjccsoHTTFNTCqVOuwyxcpO43uGkVGqLKDm2BgumvQtrW3Xfn9RVpXh4S
	bwJ7N7345eH0IgUouruwEF8CH6FoFvUoSgOkoO6N0chtcT5AJL7HC8V7H+q9O3PSAu/L3F2JgYoCo
	hRYVaxdtR3Bc8+ev0BI9IBqVD4ExuKFW8OSnt/8d41rw27h35SikSatiKJmp+16jQgZwmZ/w9Oz5z
	pQlAq88qyW0IB64q1Fziil2LHE2jf3sxXb/G6U9LXU6ZPai9QcF8hrUNfUhFIDNxptBXlWhClYeo5
	/0hfZ7GNEbngWure2nOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUvUA-0000000Fx7F-1JOZ;
	Wed, 03 Jun 2026 23:58:58 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUvU7-0000000Fx6s-2G2I
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 23:58:56 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-5aa65757ef4so9532e87.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Jun 2026 16:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780531133; x=1781135933; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+1SCC74DIXhE8DyDejW1+bo9tsnjHROThMMbJp6vt8s=;
        b=ctRNZqizGUoDhF6//7Bx6lGPOb6inxB8UgjrB4fD8Z2whbuMiuHE/qDEPzPKmM3Vli
         Wo+5G0fxIHwvlYqHOSwrEQ+nux9YwI02c8ObQ9Ps4+qimhECf38x2FlzDGiWxfI0w8Ko
         ctdGXb9MVUmDlo7bqGlyWLWbJu0SLVLhrMwUPPqbFX5GmYUhEbpN3Ac+kBETVfs5e1ke
         a4HO1UmkBozPUVddJ9XNBn/GKy7fsjgYxCF2k+H5uri5IjlxLMGUA5Bo6MWB5y2/9M3e
         8zATc8yEtC4S0k8P0M7t5BJgsxxMytvS+R16NRd7hCi6GA6IRz01Q4aM2gbYGxOhzGy4
         IaLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780531133; x=1781135933;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+1SCC74DIXhE8DyDejW1+bo9tsnjHROThMMbJp6vt8s=;
        b=GeemCU16+nTMxFWk0EQjsAv/fKzHp8+uHH8kSsu2CwOq/FDu+hEUBH5UTQ+m4IU69U
         tDHFHBPuCjo766opvvfHyLpJw5Cf5jTIwD8tVGM/C4MAeGcnFMihmIzDta70Joi06JCw
         JQIkCtpq8iPWHvVn+b3iz78cdm8IpZw5PbrY5f6/zYXKHgoCXbu1+gqUEgw6hIN6L5e2
         3o0AaupwIKUoX3kQQonVPOW79u33O+9nbwjl8VB1gagmqde46xvh9FxdV3JmBixTXvet
         LvhkuJ/jthqKr/THPiJy5szHvbRn65iUmJ1D/WtsvnvGagp8W3eetC4IhjcLxjsZEQfe
         ec5Q==
X-Forwarded-Encrypted: i=1; AFNElJ8JfXJMGtYF/0czzBrRdJd/WnGy7rgG+WWzJbCh0WsWe7IoOMnKwgoYxPuYuvRUZecfFfOcFSlmtPA=@lists.infradead.org
X-Gm-Message-State: AOJu0YySebK0FadBP4MDKQ9Os9Bu0O5fTCbdF4q1DOTbYlsCq5sIurvI
	6eT1ol2o7KR3f0Sda/veynq6jhB5svnV3ZILPifhv/JwMZk8jk8oEuggcB9d+tGwQLM=
X-Gm-Gg: Acq92OHY9l+TyaNqlfUIRI/8yY12zY80CsPpAeHMez29JMMZS9rEF1NB1GStcWna/De
	QtwxJOs/6JnztBoIHj4mSB85MqCsQOWR0qb3MxbX7/TJjqRRnnr4E0ktmJdhEUXAHmBGJfXqiEu
	NLOhUrP4ANmugDh8+Gv9WvAc1U1LXlDloqMLNrd7ykvcAFaNYdUL63l72GL0cLSwAFlXq49COxF
	HWOaeb+ivK/riauXo7WltrprayZh3uluhraPCepthojNDf8ilWav3Rk7+MOJzDJiZwMD4PuQ96r
	pfPqhfsn9ZzlCM3gz/pKjQc466OmcphkxMaTvHNJ+yqfhx9Or3C9IRCz3VwbFupNHJEaXDh1ODS
	0U3twHgHyaqDmMw/rXaVPDIs4K34Q0LRAtGGoxKEiopJbIPjjmEO6LuTYP5FPHzkcxLg06ayCCH
	kJLSqlcn7dqXXc5dlJEXcA3d9pMS/quW8kbFT1ANvUFt0Us6h0gRNETkkPDOnRk8Ym+CzHhYNc6
	8lYx6g2tZteQxiO
X-Received: by 2002:a05:6512:6404:b0:5aa:635f:7c08 with SMTP id 2adb3069b0e04-5aa7bf5279dmr878301e87.7.1780531132531;
        Wed, 03 Jun 2026 16:58:52 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b8ed659sm899338e87.12.2026.06.03.16.58.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 16:58:51 -0700 (PDT)
Message-ID: <374f17c6-f08e-4f4b-a6c1-ef2cd1b87631@linaro.org>
Date: Thu, 4 Jun 2026 02:58:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bod@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
 <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
 <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
 <f6c91099-0002-4580-a5e8-5611b089024b@linaro.org>
 <v4vz7cistjb2iuzha4oykglar7duw4y2uuyhumzs33yvpwrxcu@i5tsg4uzpuwc>
 <8eb709ce-3469-4303-9c3d-8d1a221cb8de@linaro.org>
 <4QKRXnKlt962x7eipKO1dLr9tzEF6a3M65FZXI8PNsXwx_RhKzJtEfQKOOwI8synBSe0GtUZxWVFFeD1qVlGnA==@protonmail.internalid>
 <6e962010-8097-4b52-9369-0727c0d5a31a@linaro.org>
 <41ab1685-3d0a-4c8b-b7a9-6e9299c48400@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <41ab1685-3d0a-4c8b-b7a9-6e9299c48400@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_165855_614845_EC2F34D4 
X-CRM114-Status: GOOD (  12.66  )
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

On 6/4/26 00:12, Bryan O'Donoghue wrote:
> On 03/06/2026 21:42, Vladimir Zapolskiy wrote:
>>>> Split configurations explicitly use other lanes for clocks. E.g. check
>>>> the RB5 Navigation schematics, CAM0B connector.
>>> Can you please check:
>>>
>>> CSI_3PHASE_COMMON.CSI_COMMON_CTRL5
>>>
>>> 0 LN0_PWRDN_B Lane 0
>>> ...
>>> 7 LNCK_PWRDN_B Clock Lane
>> Please note that media devices have a numeration scheme of lanes starting
>> from 1 (it'd be easy to check/confirm it), for instance today CAMSS has
>> lane numeration starting from 0 is out of the accepted scheme, and here
>> it'd be better to correct it and not enter the same pit.
> 
> Yes fair point CAMSS has done this wrong since forever. data-lanes = <1
> 2 3 4> => LN0, LN1, LN2, LN3>
>> I don't have access to the IP spec, anyway I do not grasp it, where are
>> 8 lanes on the CSIPHY found? Each CSIPHY IP has 4+1 D-PHY lanes, not 8.
> 
> Max CSI2 data-lanes is 8
> 
> #define V4L2_MBUS_CSI2_MAX_DATA_LANES          8
> 

Judging by the name that's something V4L2 or in other words software
specific, while I do reference to the actual pads of Qualcomm SoCs,
and I do not see 8 differential pairs per a CSIPHY, but only 5 lanes.

If that's correct, the data/clock lane numbers should lay in 1 to 5 range.

> That doesn't really explain why this register has seven data-lanes and
> one-clock lane.
> 
> It just is what it is.
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
