Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7680C982FF
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 12:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rkSjnLp5ANLdvECNXnRgUbpdPcoyC1Xg+U+zlj4w97g=; b=4tUAqYqCClLsMnpllgSYagmnQz
	xXJ28gsL6V93fLo77kt/mm1b2nTG/btGUlBzB2zS4ge37QywcEYlyLm3QvHWXSSfkXFpdZ/jIw2po
	SRSQ5qbnvLJPh4Sfq5x0+SbOsYDA/ktAJ1X5KCFhXo3B79oR8FGiv55XHqfD26hQhRdNWvdkmH055
	dFop5Ut4gFR3yWqXqTNtYvzydtEeDi7W/hzDBBXNSqdMNdLYs6zYw49HDRdMLGJebbnkpAR/uZnUe
	FLpoywQwB2OgCeNXGpqKRQKh5REZR/82twxn4bbtYr+Wbrz6qGGPRokogJBfmTiL0iOzY+QTwIu/8
	1X88MMAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8zPU-00000005HZ5-2P5v;
	Tue, 22 Sep 2026 12:15:44 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8zPR-00000005HXw-3hYH
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 12:15:43 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49d1ca5b0d6so30207725e9.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 05:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1790079340; x=1790684140; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=y6o4kVB7SdHxVgXCadG4g08z3sTOxxFvqJY26n9s0pM=;
        b=ou5tm/KDUfrb4Ougdx/vpnP51iXE2r/E/5G0W0ycr8H2z00KsE2eJJbBkT3tfaz2nW
         /zH4Sk9TD1VLCrBnEdE319toUToSTzQxvKFaqrh+XSLR4ehfRkWIz0l3LJJNWD8/nq39
         HkR9pfw5kCmjFyTQnCXNKqpcwARCLWH/eFi2toCOUnikttKO9UAGkiIsOj2rDa7NQ539
         wvMQwX24PlEnZrFWXXhpgrHbGK/oSQoALtIrK7Z6LoTOHTypLQig2hM3+b9Vwa19L2JR
         PHOGBttmV6R9pHBMjy1PmnsZt70AKWTnp1J3ymdLiukdhbI44oEGczDySPTysElWC/8x
         Ruhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790079340; x=1790684140;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=y6o4kVB7SdHxVgXCadG4g08z3sTOxxFvqJY26n9s0pM=;
        b=0nmS56Y7QzMxdukNKkpJbegykZ1vxQYujszh5UFgw0ujZ8X1WRLQnE2hqlv8RHDqEH
         VZ2tWA9oKStX3QtYGbppDlOhiOpLnMtsUQQcFQxrtBX0O/aqqdqaKVby7PoeF+13yewd
         cwDu5b2V74fOfpqAJtIKVDKZeFG5mKVfiDoqEXp2QlhRgAEnBxgmgjfnQ6SbfSFn/mYK
         DAT1Nz2bm6mTvbtXGeG4HceVtgM0JBM9/8PQkb3FDErl+GlaoYzdqvh07Bv3NnB5w/MQ
         Q99ae6mn02GvN8le3CuuZDhwPNkBx9Q9hZ+NOwCI7UtsngLqwGsJ05AqXTwEDxiqs4cP
         LWnA==
X-Forwarded-Encrypted: i=1; AKwUvBxeOnWkt5L25mRqzfibOM0b+BhyLBGpj/qCdfCrFs+GW+BpyXWDiBPiKoXMJD3EnJXpO82YPdGKBMs=@lists.infradead.org
X-Gm-Message-State: AFuF++lbqS3TTdV1uM6tBfDTz35cwWXz6b40FQ2QPzbjAy/8qUdD6lhH
	FP21zgum/+F5GhKfEg+/n8MN322D6RXRGw6yNilB7EukPRIX04KpjoCnskxBgIWu7vgS22ep5V8
	sLB5MhAk=
X-Gm-Gg: AYBFou0p8T1zXwapepregJmO3BayD41JTxXLjvPsr6Z+p4GeT7WWlvvvifwWjA7/+xH
	WwMcQUr1O4npZhQa30l3V5S3maXj9+jP7ABCG0WSCIkJPjR2uF/gjLk/mObxWLoMq1lWFnubxUJ
	Hm33/W/JWVi6HndEHzRRN/99aVisARgO/5C6A5ax7sWa/sm5dPas1PQ+x1aL/x7FByfpHxRuD4U
	qtQ+l54oEP1wKDWhHiWEw0njDtaNIaaMWJmzkEvPus6G4FdOsJ2iKtygVvuEJR4+XJEgjNiIeiR
	LJK8T/U+xkCbE4WglxllnUYnLck92EKO6Lzmzc9xUpBvDeTDnOuAkUrw6zbgdGAyQcORUMhVkA1
	3BlxuNDHen3D4DNFKSXPgA77K6gtekx7euh8h2Cm++pFjm3c6/LAINDSgNymql9ioD6RjeI0Ega
	D+BOPJypu8G4FRkX9TiBTAdxOCBL+sDWEGhTwOigAVQyBg7JHktlo/3xBwkjTLiaG+/Tma7ow1/
	Dl/r/2c5hagGH+40wi8x+MscjUestSz3HaBh2cGc6FPxhIWU+t/CG4=
X-Received: by 2002:a05:600c:138c:b0:49d:1842:f001 with SMTP id 5b1f17b1804b1-49fc56ef0cbmr194687665e9.14.1790079340130;
        Tue, 22 Sep 2026 05:15:40 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:ddd0:8cc7:9887:fa82? ([2a01:e0a:106d:1080:ddd0:8cc7:9887:fa82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fdad29ee8sm46774625e9.4.2026.09.22.05.15.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2026 05:15:39 -0700 (PDT)
Message-ID: <749294f5-9640-46a8-990e-b59abe9cb9d3@linaro.org>
Date: Tue, 22 Sep 2026 14:15:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v18 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org>
 <20260917-x1e-csi2-phy-v18-2-6515b5255fa9@linaro.org>
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
In-Reply-To: <20260917-x1e-csi2-phy-v18-2-6515b5255fa9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_051541_972051_D62C4F00 
X-CRM114-Status: GOOD (  16.94  )
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

On 9/17/26 01:58, Bryan O'Donoghue wrote:
> Add a new MIPI CSI2 driver in DPHY mode initially. The entire set of
> existing CAMSS CSI PHY init sequences are imported in order to save time
> and effort in later patches.
> 
> The following devices are supported in this drop:
> "qcom,x1e80100-csi2-phy"
> 
> In-line with other PHY drivers the process node is included in the name.
> Data-lane and clock lane positioning and polarity selection via newly
> amended struct phy_configure_opts_mipi_dphy{} is supported.
> 
> The Qualcomm 3PH class of PHYs can do both DPHY and CPHY mode. For now only
> DPHY is supported.
> 
> In porting some of the logic over from camss-csiphy*.c to here its also
> possible to rationalise some of the code.
> 
> In particular use of regulator_bulk and clk_bulk as well as dropping the
> seemingly useless and unused interrupt handler.
> 
> The PHY sequences and a lot of the logic that goes with them are well
> proven in CAMSS and mature so the main thing to watch out for here is how
> to get the right sequencing of regulators, clocks and register-writes.
> 
> The register init sequence table is imported verbatim from the existing
> CAMSS csiphy driver. A follow-up series will rework the table to extract
> the repetitive per-lane pattern into a loop.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   MAINTAINERS                                        |  10 +
>   drivers/phy/qualcomm/Kconfig                       |  15 +
>   drivers/phy/qualcomm/Makefile                      |   5 +
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 385 +++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 463 +++++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  97 +++++
>   6 files changed, 975 insertions(+)
> 

LGTM

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
