Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F40DC83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FRn1dbNjlKr9wWslB8gIcQGK6ATiKPLTk6yDLK43+jE=; b=P3eCPCRwYxQEa1IuVE4C/QGAqq
	RwgbwXVHwhocuWlnS4KEeXzC/oXDD2YaORI7mtHGQsIKuMFCIo8s3xs0qhPt+KRCGWGjgOAcTR4WJ
	Db9V3cb1dzZq462SkEzzPO96o4ulwYiGooIh9r7S5MfuV9/ZpfqpBQcQZgy3Ct93MXetvGDEprTkR
	4JlRqNMyT+pWUHVP2ZpCvzQWpnkpmfdADxDxB+jVvjtQm/zKA/SDDG5d4JMeHLr6HYjDqnxcpEc6E
	MHDym9RREe+p86pvmNQOSl0Xed+G3ejkgWajFqAVzaB4POYBjwfnlrJX/xSjdGCqUHr+8DHD3CioF
	x6xqEGiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue9tn-000000026jZ-09qo;
	Tue, 22 Jul 2025 10:07:03 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue9n0-0000000252W-1rqB
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 10:00:03 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3a575a988f9so3149263f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 03:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753178401; x=1753783201; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B9mVbnLu7a1SKXyW78ldUvJa6+GK0T8z2V8R3kTNrD4=;
        b=SyKcs8Fbd/+jDeyYnXLsDikUk0FJgSk6QCchofKWx35gMvcVoGU/X4pnDJeke4jM1v
         14srCtxvOhYWP8DSJkWC805IypPWAyP9Rlo6sUNvrciOecJpZzyM2YIR8zcxq6h83n4H
         i3/aLamZe39Hl3Wyt9J6NA8sKLSQP5rG58GTpOiQxRqux/lrLaAHOpKwh4rM/ArN/S0U
         MvXIDdR+inoRKTPR2o/XEUZPdq/nLmUIHc7luwMoPVMFTcPh/eJHNf5Q3tJmTvML4pQP
         MbDdFfyDH09nHXdlzsCp+gBUVMBVdqq9bw09+lxhGbis65xP3la+2d0yd4J0OApRF8ED
         8LqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753178401; x=1753783201;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B9mVbnLu7a1SKXyW78ldUvJa6+GK0T8z2V8R3kTNrD4=;
        b=Pgu/xIg5DxzH5IgnFUVteOgxgg9l7DKJa3gQONbRU0aeQJZtQzRV4/pS7bd1R7DvwL
         QgqlmyPpUm0VnD/G9/190Ej5gheFmSS7h9OZc7jGjPZzWz+zeNvLnSyFjs8QdlpOJjZZ
         mOrgNdjGpKcfCvgSwTOjJ8axeo2Rxjkr1QNzrnOMMxD1KRSDOMDma2Nix8Mk3jtMcRI9
         n/wGehQGz/aWgqSfbSyo6dK4RE4Va4kChIbbEDLionruE9oDhTcdOq4ixmv4MGoFWtNb
         Nv5hEl/+unT7Ae3v5eTn9klFBiXDw59Gmk6wUdMl60kzGtrIAEp0b4+FrnXLgT9OceKV
         2KSA==
X-Forwarded-Encrypted: i=1; AJvYcCWfqz6pPL3fX+PWOL+E1w3XsrdhNRcGD5CqqvL7LnYfqos6KOWBBSicDPFYfItpT5on0EM/T2Ko/Uo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzUeb9P+hJ8pVSeR12ykA1LDgGZOzOBEzxJ0MZzv/xLRE4ytUx+
	S4f5L0zJDtaP6glyNNf6op6OjpErCcU7ha1OVqRqQwzMTLMGO7LeKBA416MU1F1S0cA=
X-Gm-Gg: ASbGncuJ/7GhCkm5p+XynL+YqVtN9BqyJVjKIoilYHxne6A5BgUt/k7ekuDjGy9jknd
	Vxh9J0sV/gsUK88WA5AD2AjkEksIg3jcabwwRHTwH/BB4mZZhpJTs3gmcdMpmsxhdvKy408a4ju
	Saa7jDzJWxNvcTnnNtSN0A3FrY9EI/qyzgSzBhrQh67VFzN8OI749HoX1Y8uoBjn6z6d/E8YoPV
	aMYOiet3eTjfxK3Ke/BVEijHJxwHq/0RhKFrbb1eICaYcZIx7tmR534bFGelHOGJMrN96m5rRgJ
	mxAUvetq6AU3BI3WiDFMoa28TjhQieKsQzz1BSjEH0qjVTSATXLRUKY4PO60vIbwUw0o74fY72O
	VBKr/YTbI2Uq0VPyaML5M88Xc1I3Aw+lY1ZRgfWdrWZ7I2KYeIR5lnvnZJEXWE1M2JGmkRV3dLz
	w=
X-Google-Smtp-Source: AGHT+IGcJyJZcZl6JmFdEcmEQZt5L5wILaf0S4QQxyjYW5ekrqujhnwASeqFRVCxYUAXxFw93P/L3A==
X-Received: by 2002:a05:6000:4b09:b0:3b5:f168:5e60 with SMTP id ffacd0b85a97d-3b61b0f1eadmr11797144f8f.19.1753178400603;
        Tue, 22 Jul 2025 03:00:00 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:bce4:725d:6922:d1ba? ([2a01:e0a:3d9:2080:bce4:725d:6922:d1ba])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4562e88476csm189714485e9.21.2025.07.22.02.59.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 03:00:00 -0700 (PDT)
Message-ID: <84eea632-02d8-4b7f-a4ca-36ce7159a170@linaro.org>
Date: Tue, 22 Jul 2025 11:59:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
 <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
 <0a12879f-dc4a-47fb-87a0-ac4b8bcd4d75@linaro.org>
 <53a19b1d-5665-4937-a07c-5dd1fcde06c5@linaro.org>
 <3b760685-97db-46e3-80a3-7fad69ad31cd@oss.qualcomm.com>
 <94b75177-9401-4e0c-966b-5847a29cb6f7@linaro.org>
 <427548c0-b0e3-4462-a15e-bd7843f00c7f@oss.qualcomm.com>
 <3UXVZ6ANM9mDjVdMV4SXsiIx_pT3S1lp3RC_Q7mh_o7jF2dpYsni1Sl2TAWv6OCMCRTFmi9aE6BxDquGkOnwEg==@protonmail.internalid>
 <8b908a20-0bf3-447d-82ea-a5ecee1bf54c@linaro.org>
 <57501e81-7e9c-4cb1-9a37-18307d1e06ca@linaro.org>
 <33d76d7f-ab14-4e76-8ffb-eb370901a046@linaro.org>
 <4edefe21-27b6-4884-befa-ddb451bb9376@linaro.org>
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
In-Reply-To: <4edefe21-27b6-4884-befa-ddb451bb9376@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_030002_502914_D7904405 
X-CRM114-Status: GOOD (  14.14  )
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

On 22/07/2025 11:08, Bryan O'Donoghue wrote:
> On 22/07/2025 09:32, Neil Armstrong wrote:
>> The whole key point here is the combo mode, as I understood the combo mode feature
>> makes the PHY lanes available as 2 separate streams, like if you got 2 "controllers"
>> attached to the same PHY. So in fact, the PHY should have a single node, but 2 PHY
>> interfaces in combo mode.
>>
>> This makes all this controller/phy model very complex to handle and add a lot of
>> logic in the camss side. Moving the "csiphy" as an independent media device that
>> can declare up to 2 endpoints in combo mode makes things much simpler, and allows
>> us to attach each "csiphy" stream to any "controller" side of camss.
> 
> I think there should be a generic extension to PHY/linux-media to support that instead of something Qualcomm specific.

Can you point out what's missing ? AFAIK it's more a matter of proper representation of all
the CAMSS components with a proper ports/endpoint graph design that adding new kernel APIs.

Neil

> 
> The first task is qcom/CAMSS specific which is separate the CSIPHYs out from the CAMSS block - done in this series and do so in a way that doesn't break the existing ABI - done in the context of adding Hamoa/x1e.
> 
> The second step should be to extend the existing linux-media and PHY API to support multiple sensors on the same CSIPHY in a generic way.
> 
> If you want to ship me some hardware, I'll help.
> 
> ---
> bod


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
