Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B07C7CCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 09:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X82ceOsuUqM1ZkEECbj0n8opua3jkvTGA5MMpK9wQ2I=; b=mXC0TCGCN4zr/pcKUpO0KLO4mU
	OwzPmMWh+cLejmiLDR4grv/0y0UinfxQF7/G1O01L7g7Kr2Lf8MncW7UnTIDwCMzslzqxrcdxw92u
	Xj1sNowv/T+4YgEqlHyr+Oz3hGvJ7xlHfedWDH5UEOhWlTyzd+CGJGxIPTWcgdtOBmjwMOwaMUvE0
	XMpveIFCVW6LJgkcDmmDEGgsxNgDoQurA+9bN15MM/LNAwnprS5ShotZBZ9P8PM8/QM07CNpHlwwc
	b1pbOl6JIA+mpirBXPFLcOd49KIkrQSvQNdL8d85PzyfECkFumj+bXSH6QSO4XJpEA7/9pcZP1OIp
	A6uhVWXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5hpX-0000000HGqX-22Cj;
	Mon, 06 Oct 2025 09:48:31 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5hpU-0000000HGpD-1dF2
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 09:48:29 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-46e6a6a5e42so23463995e9.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 02:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759744106; x=1760348906; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E9nCOIOWicslN4YZSsSssDCNnRYoc3KUcXalh/A1uR4=;
        b=YRjhDzjv9fRq+n13hb3s2nh8OvpiirVvscyewoCF7YRR3lnujL3jS4q+/K3IJn5x1U
         TKgl8HxfOHobrWySYBoPgs7kg0veL7kvGt3bjFt5ByI2FBkuR1FpTduh+V12zSIO8J61
         CiuDKUOWDo0Me/dgZ1+xxEyXAv6sKbeH1ZYc9gqEOSEdB8kO0Z4vcJMpSdEB66DoMsUD
         bSWxr9IhwHanoSOPcZetgPJcrJogKfwUpgzDe0nZjxu4FwtsJQ1+Hb1Lbm10bhAaS+q1
         Bh5Z/X1oLWEPXRUpB980rH6Gyo+bp0xvKJ8H7a0/k2nVcJyX3mvM9Dh2sCUDFpF8YvuH
         0EMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759744106; x=1760348906;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=E9nCOIOWicslN4YZSsSssDCNnRYoc3KUcXalh/A1uR4=;
        b=loCnb48f8xxUmhR79oZnxsVK4xAE+Usrle0K4QagBkINbv6UsJDyI6WoHgiUtwE4zx
         UFj5QMxtkA8JkYQP8DU3L5b0vZm0spLX9WNUfoSii3o2uMPiFYx3pHhiqoxI9qXRsC0W
         lW8v8B3jcJCXPBrrzXcYVS+2I1OG2uw/cZHvg5hwanZIsikCmTR2tNaVorgyMQQr2FO3
         ITf9kZoKJcx0xELH6elfTlVqrZcg6bjxnTRmAOWklsGMjpEM3ed2Drpc2L6ChCez9cQG
         5GkLK9TSrBoSq1yY8qil7tLTHDePnXSh/Ss5INLHy9j8QmPqvm57ETMScGoMx1HoWx3n
         N31A==
X-Forwarded-Encrypted: i=1; AJvYcCXOZyGU3hrW2i6yMGXQpEsNIlOtqhOWI9jGGNakLBL03K/fTHnWy/XMSJEDfYY5MgeUGkA1tB7CD2M=@lists.infradead.org
X-Gm-Message-State: AOJu0YzZoppYwMm0Dcz7ZYRfyGm4XPpuq5UxDlqniLDb9hPIIjWWbkm9
	GigJcYXqUDS3GxLnUfxVdnAHsdBva0JBKUYOr9hTsHFwMde27Gr5XaCgRuWPTAZ8sPg=
X-Gm-Gg: ASbGnct77XElgCMwZ7dn89NdUag7F7X2yuyQ4csd8uEixPKtwp1pKgzgKkNGPFTCXuX
	T2EEGgC+hM2my1aue+TZakIXShdMa21FCYBLuqwZIeNX7Cvg54m292vxzDNUY0Y0ObXOCB5wQYp
	dyAS1lWwvoK3vhdOEBdo6dLA2ZaiZJoiz+ICYSewaC+TDmm9jqV5ZUvQp9+Nn8qNSqaD3FBpRJk
	lQW9uZCgxqMpBmS3TmG05f1pvW19/Ab2BDtmaihRenMBzrEWKY1XgPva//gGYxwHOupzqkJpQTA
	VErBJxYvCU4hVlaDnTKerwUI4u5QhyCxOsYNh5ndZ4+Vpll3lRZgJ5toVO0BNmFZcqBxvgyg+jh
	9OQqP+FAI/378OmbckDJATSA6pE6G3kdnvhZUXrajk6kk59A3YiYetWyGLZr1SZEUdHb+1DHhX0
	5dgc/7ETXEhoQTObxqhn2an3EJioI=
X-Google-Smtp-Source: AGHT+IEtNxlbVFFWezzK/SaGtuPwKo272TEGVXiS0sDNJ1j0UC/5uBY5FceXCv8FXS6IrSRPjNnCpA==
X-Received: by 2002:a05:600c:3b1f:b0:46e:3dc3:b645 with SMTP id 5b1f17b1804b1-46e710ffc1amr73835685e9.3.1759744106291;
        Mon, 06 Oct 2025 02:48:26 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:2dd0:9118:d7f5:51d9? ([2a01:e0a:3d9:2080:2dd0:9118:d7f5:51d9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8e96e0sm20168586f8f.33.2025.10.06.02.48.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 02:48:25 -0700 (PDT)
Message-ID: <64ae6d27-d89b-401c-bf9e-027967e6b859@linaro.org>
Date: Mon, 6 Oct 2025 11:48:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document lanes mapping when not using in USB-C complex
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-1-86a14e8a34ac@linaro.org>
 <c8dca827-b089-48e0-9dc2-a5b6e3c5b88d@oss.qualcomm.com>
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
In-Reply-To: <c8dca827-b089-48e0-9dc2-a5b6e3c5b88d@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_024828_457310_044E5F2E 
X-CRM114-Status: GOOD (  15.39  )
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

On 10/6/25 11:43, Konrad Dybcio wrote:
> On 9/30/25 9:39 AM, Neil Armstrong wrote:
>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>
>> The routing of the lanes can be:
>> - 2 DP + 2 USB3
>> - 4 DP
>> - 2 USB3
>>
>> The layout of the lanes was designed to be mapped and swapped
>> related to the USB-C Power Delivery negociation, so it supports
>> a finite set of mappings inherited by the USB-C Altmode layouts.
>>
>> Nevertheless those QMP Comby PHY can be used to drive a DisplayPort
>> connector, DP->HDMI bridge, USB3 A Connector, etc... without
>> an USB-C connector and no PD events.
>>
>> Document the data-lanes on numbered port@0 out endpoints,
>> allowing us to document the lanes mapping to DisplayPort
>> and/or USB3 connectors/peripherals.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> 
> [...]
> 
>> +          endpoint@1:
>> +            $ref: /schemas/graph.yaml#/$defs/endpoint-base
>> +            description: USB Output lanes of the PHY when used with static mapping.
>> +			 The entry index is the USB3 lane in the order TX then RX, and the
>> +			 number is the PHY signal in the order RX0, TX0, TX1, RX1.> +            unevaluatedProperties: false
>> +
>> +            properties:
>> +              data-lanes:
> 
> Can this be described in a somewhat reasonable way to be non-compatible
> with Type-C properties for more validation?

I tried, but failed. Let me try again !

> 
> If not, let's just maybe add a comment like
> 
> # Static lane mappings are mutually exclusive with typec-mux/orientation-mux

Ack

Thanks,
Neil

> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
