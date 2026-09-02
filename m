Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABC68C61DD6
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 07:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aJN1MNOHsLDRhzh6RGNXKYCs25DddIpQ6SciAnIxpto=; b=XB38WeNdSSyZ13NzeQ0jwnbciJ
	3DG4wiVP+QoZlUJYB1Sv/NXGBBi8AFY4soVcAjR8x41oUAP2IHEymOElF3Gh/P+NGsfi2uVdNp8o8
	JqedUqtOpKCu6x+B7XLsDmyuNpntB6XRWw9dqvngz262p3IX++u7kBk5S74nidJWqEj6XzrB+Fmc/
	VOT+Ccb5BO31B9ZVH6LKHpCT5BUwE/zUu/FXGUG85yjoQPTbjOiU9KfkvcN6cDrfqG1DYofdZGeLN
	HsnhdsHWzJfCTKbdk+AVy3TOiLyx1pF9YrjnH01JwOFFAo15Norxv+WSROg/Ys/DhieWMgwDTTXm9
	5vKIcx5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1f4Q-0000000DuA8-0N8P;
	Wed, 02 Sep 2026 07:07:42 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1f4N-0000000Du9M-23oq
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 07:07:40 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-47f96c5b722so462516f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 02 Sep 2026 00:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788332857; x=1788937657; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8Vfu72tBiiNU8XcM6XXnBVHaiA2eAANag0f1nJhi2+U=;
        b=zXeJSWTZ34f/JomwODXJ77Zf8SmmNdHL9O1ZyF//UTuT/omQN0855OY140pdy04HH1
         //Om68UAU/u4nVjlXzQSA8ZOOADHBOxwGW5w2TZHfECU0vDi+g9EGxaYAOOT9RKGFGJp
         ljTho5I3W5t1sD80c2VntHBmo7+As6VUrZo+JohYfQGLfr8DMjC/OU4EKqCO7NLTeogd
         sUs1FwZPNwoZsYIvb/fyJPCcbNxEm9JFozHCghQnLLiv8K1N+cEypLxAtcLBjtQUXY3d
         F74cGELOBNtnkLpOj2mmTZXnO2GBYOmtH37rR7wCW1I7e6f4WMGU0eMU5LDoBiWb1hhI
         ETVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788332857; x=1788937657;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=8Vfu72tBiiNU8XcM6XXnBVHaiA2eAANag0f1nJhi2+U=;
        b=ZEWQJAx5JUj+J7VROiHjmMavxGY1ifgFjhh7mXayuG8lN+SeONuvqtNU0CBW35dYs6
         9F79DnC937QncFSnowSE1PuU0QeQIVZQZtuhsL6KWp4JP9OHGKEJOGulvJZHQfO42i+w
         X0Kf/bvvdjDS9tiN9FfjkJBB9tPKi/CmptoJUePEg+glBjYOtfqeXmPpkDCb/aRFH3mk
         4nilJs/G8vIVSYuI+sJ52uZMv6SR5UYO6Y1Ve/R6Hm+Qqi0RoQ97FCIkgMBQ49mfOAxH
         KnTHnaoOug+BdiN8VmLK2pA3A8hjXNbJssb6r25hA9YnhwAyEbQMmLjmH4CuT8lE9tig
         eFqA==
X-Forwarded-Encrypted: i=1; AKwUvByPYNgtwfJyf7mVKN/671finUKDVQxmHORJoVSHIWyJ761zSD0GZma4aIUjWHo3v9Ydu0fLXk2QKdk=@lists.infradead.org
X-Gm-Message-State: AFuF++kaU0iTx06yW3aMus2XfJ56SqgL6/hUHV1kq/V5u2tj6+QlGauP
	iAds4nMwBp7JlG9QrckUir4EznwmERM/vc6DlRhw+PnuMxtcMVupZfO9AfiCSIh2z7s=
X-Gm-Gg: AYBFou2UKujXMlR6np14f81pwiKXXui7MM9gz81Fe+aHlgICZM8yjpOviFxSBaef8tK
	V06iNpuLNOBTTwefLXw7nqDZjSLIPJ+7+n+27w0IVAiOTLb8k/My7G6xqYe6u3e/c+7dA0genZ4
	gcO4CwQRtfbdG6+Icfamx8ewuFvsa51+PoJqUL6zAvo09KzeJ9y6uLDUQQFTuJKbubjXQXnOc0h
	GD4oMLnXFtYgKHkBXzPibDUlYo0+S29lNv3j1nmd2IEJM8i9MrUExNHpEodrz6m9MrTPIJXeINR
	yNUFlyai7+VIzTb6EcunqKblcCTd3qCmC+Y94KburixHh4xBUr/2n1aNyZdhnba/LegeosbGuiF
	FOhX39qW2PkWNLuGAhum0klk2kAJ+yMt05ZPOo5otOoChseMnBYKzmsXyzBINCoO9bdrlUmrAnP
	PPJA3qnZzpKcmoGsf6tqPQqenX4K5fR7W+KVljjvoweavCrDjLi/ApuxRcNeyyvlIVWEOZuKQzL
	3qO3GCtR8BlVxhb2UV7DESavCkSDSuTfM1RtGjz8s8=
X-Received: by 2002:a05:6000:4a11:b0:484:3f43:4914 with SMTP id ffacd0b85a97d-484914b7e15mr4452356f8f.20.1788332857515;
        Wed, 02 Sep 2026 00:07:37 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:526b:98c6:2fb7:c242? ([2a01:e0a:106d:1080:526b:98c6:2fb7:c242])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48448e72df2sm4746752f8f.1.2026.09.02.00.07.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2026 00:07:37 -0700 (PDT)
Message-ID: <60c230e4-d138-4522-afa5-07d579c8db5b@linaro.org>
Date: Wed, 2 Sep 2026 09:07:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v16 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260901-x1e-csi2-phy-v16-0-dd863b929080@linaro.org>
 <20260901-x1e-csi2-phy-v16-2-dd863b929080@linaro.org>
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
In-Reply-To: <20260901-x1e-csi2-phy-v16-2-dd863b929080@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_000739_572626_68A8BBFB 
X-CRM114-Status: GOOD (  17.58  )
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

On 9/1/26 22:15, Bryan O'Donoghue wrote:
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
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 462 +++++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  97 +++++
>   6 files changed, 974 insertions(+)
> 
LGTM when bindings are reviewed

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
