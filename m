Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11725C47DDF
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 08:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=er8ucAP3NCbIG3BOZpybybLnlnU2CE2kisESqgBQVPk=; b=GogsNJOgn3ad9Agc5+3ucxyCql
	AZosVXCMoTKp7OaBPUJazGXXbj23tnnuTwRcKP3uy0dU8yiiAX244ZHvm+8P/I+66VieeRTlJq++m
	IZ0lo42OVDT97OTUBhJdAMyZskDwWHAnNNg3uKqxaB/YqvKXEWCwCidkLdHN/BK9P5RNjg1zWAVQG
	FDQ1jrR3ue1lYJxNeqpttvaQLXAAcPSqNewPf7XyiRCSX6dr2Xc5U9zK4lQjRnoiEtiJGJm21Qrfj
	JZkur6muG/QKRMbYLOwwT4WAke26gb1RNX4BQaKOGr2yBiWvF54AX/PibG8BdCRPz9aLlt5yfP9jE
	H0ABlzHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSZ5K-002598-1j;
	Wed, 24 Jan 2024 08:58:14 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSZ5G-00256Y-3C
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 08:58:13 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3367a304091so5544035f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Jan 2024 00:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706086689; x=1706691489; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ztaP5iJjQnXrgl0zMMgX8A+csccy+mQSF5M8vkU9Z2U=;
        b=AvyKkqdl1LZY2SO5wka8WVOanPUP2kQWNydOlcxR8M7HudKZzYaWlHzmwFljcPZr1u
         XNFOnuzM5rlRlEnWD8A772nWLwPS1Xn7lmw/oDn7arNkA8HwanztdMZmus/NoEHOCDgF
         KsE7vdtZVWcxijBCJGjP6iODHHBavYpWsiPUYiZOfkzJPFJ5ACe+nv87fVpbn40IDZ+p
         inz4YKyZqzFRVR7oaEqSu7atrj4F90E1QIaTUSQvEPoD7VhQHKP5v18RoLBbfXklTUB1
         +g5VUPzb73SspXnik4TODl8V1sGWcIkUuBoSBwQkJhU8yOqWeRpFnfh/nrnqhbZEVTWS
         Mp6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706086689; x=1706691489;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ztaP5iJjQnXrgl0zMMgX8A+csccy+mQSF5M8vkU9Z2U=;
        b=TDxX9PWcpwKRwcOuSwh2AVLsBgYOUjoPp79vokbMDMWXPcnnJ+B1FIchK4aRA9nMGH
         vk048qSgVZVL7LLXwKLZ2GEVDC/vq5fRmlm/wG3H5osof/x78oT2bf4GtxkQKQh8BmVB
         H+FvMN41JxTlQO7SLHv1RsR6YM8MvCjHfybuf9PsOS32N+b4KVJEbcq4ZVNoZb6ajrwP
         3yfKzMoKYeYGwmq3l8jo5Gx3r0FbSQVMw7w/pvxWwrULGWVuo7pvu4mR2oTNVFeDZy+n
         lVMRMkXHT2oGdjXVJ+FbA+XR/gTCEBaOvnjh49ffzjLxOtqIg/cRIgzU0ILpyPU7WXOh
         xbtw==
X-Gm-Message-State: AOJu0Yy9zSllkwT58liXbeVWDtn3cJohXBHmtdJCrkc90Pxf5Ax0x/f+
	K6NkGK9c7DGvtPItW7/4jdvoi92e5d+LtPHnwK2jM7OrVymJtlzHpDaXKwvqt8U=
X-Google-Smtp-Source: AGHT+IF+1DNPW9ZmN2qeaSvbY7hn2ZCDh2EuftJzvf6GGLnETy6hh/0C5Quq9lTYEfAGJZSYTWh9hg==
X-Received: by 2002:a05:6000:922:b0:337:be12:5846 with SMTP id cx2-20020a056000092200b00337be125846mr192591wrb.163.1706086688975;
        Wed, 24 Jan 2024 00:58:08 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:fd4f:fd82:e4fb:1654? ([2a01:e0a:982:cbb0:fd4f:fd82:e4fb:1654])
        by smtp.gmail.com with ESMTPSA id j28-20020adfb31c000000b003393457afc2sm7885382wrd.95.2024.01.24.00.58.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 00:58:08 -0800 (PST)
Message-ID: <e6b8befb-82e8-4803-929c-32e86d1e825a@linaro.org>
Date: Wed, 24 Jan 2024 09:58:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/2] phy: qcom: qmp-pcie: Update PCIe PHY settings for
 SM8550
Content-Language: en-US, fr
To: Qiang Yu <quic_qianyu@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, quic_cang@quicinc.com, quic_mrana@quicinc.com
References: <1703742157-69840-1-git-send-email-quic_qianyu@quicinc.com>
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
Organization: Linaro Developer Services
In-Reply-To: <1703742157-69840-1-git-send-email-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_005811_041980_837B39E4 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
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

On 28/12/2023 06:42, Qiang Yu wrote:
> Align PCIe0/PCIe1 PHY settings with SM8550 latest PCIe PHY Hardware
> Programming Guide.
> 
> Can Guo (1):
>    phy: qcom: qmp-pcie: Update PCIe1 PHY settings for SM8550
> 
> Qiang Yu (1):
>    phy: qcom: qmp-pcie: Update PCIe0 PHY settings for SM8550
> 
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c             | 20 ++++++++++++++------
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h      |  2 ++
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h   |  2 ++
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h        |  1 +
>   .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h   |  2 ++
>   5 files changed, 21 insertions(+), 6 deletions(-)
> 

- On SM8550-HDK:
# lspci
0000:00:00.0 PCI bridge: Qualcomm Device 0113
0000:01:00.0 Network controller: Qualcomm Device 1107 (rev 01)
0001:00:00.0 PCI bridge: Qualcomm Device 0113
0001:01:00.0 Non-Volatile memory controller: Phison Electronics Corporation E12 NVMe Controller (rev 01)


# lspci -nvv
0000:00:00.0 0604: 17cb:0113 (prog-if 00 [Normal decode])
		LnkCap:	Port #0, Speed 8GT/s, Width x2, ASPM L0s L1, Exit Latency L0s <4us, L1 <8us
		LnkSta:	Speed 5GT/s, Width x2
0001:00:00.0 0604: 17cb:0113 (prog-if 00 [Normal decode])
		LnkCap:	Port #0, Speed 16GT/s, Width x2, ASPM L0s L1, Exit Latency L0s <4us, L1 <8us
		LnkSta:	Speed 8GT/s, Width x2

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-HDK

- On SM8550-QRD:
# lspci
00:00.0 PCI bridge: Qualcomm Device 0113
01:00.0 Network controller: Qualcomm Device 1107 (rev 01)

# lspci -nvv
		LnkCap:	Port #0, Speed 8GT/s, Width x2, ASPM L0s L1, Exit Latency L0s <4us, L1 <8us
		LnkSta:	Speed 5GT/s, Width x2

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-QRD

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
