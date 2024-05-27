Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2992EC25B74
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RYu35+3OAjyQaU6wlYuBbB1geTss+xvO4SPG5VXGUow=; b=FvB9rhMq6yzRtIMzNjcaT0rhMl
	7hHsLfnb7VZiL2SgXaJYxMGgBb3tLGLu1dMt6PzW9krfOOLWTFGh51e7cWawt9kwID0aXz/Ew7jdf
	yoHNSdLmEvcELYbfTEKfTLkdpVLDUWON39i7aTZdcgjAuFqYp7qZrVZeg1d68yuhoHSeg8PUop/07
	3TJ9TCSAhtsHAym11d8uH+2SX5Wn9Gbsnoyydk+QtAi6nkGi9QVleCRy0T+C6ehv9U0iauTAwCO/M
	hI2/kPQB/0rW1Qk8iYSeZ5aQZ07tJCHEx5QF/IIZ2CfeE+cXT3MmRP+D9e5Ujf5q6yWlIV/pWilY7
	g27x5KSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBW1q-0000000EInv-332h;
	Mon, 27 May 2024 08:48:26 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBW1g-0000000EImH-27Q5
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:48:25 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-421087b6f3fso24822755e9.1
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799694; x=1717404494; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/BoiH3PrE5Z52gU+/bga8Krds/WFhLzgOzlw5DShXKc=;
        b=NkVfdjScUza6/wD2CVKaDxwRNcYGYz2SJwewITLmmF+xcQFw5cmoBnUvNM54AIv7Fe
         trMNrr1/Sl+xYd1Ebi43wiU6Z61mzfNOxm/7/Clo4v0oDgbma3qam7UaFwhXan57xHXG
         0badCrnlEfPJZPYA2pbtZ4csrzctA2v8rDLgk0vtBmaEJpyXYhqo+4q6t9o9JsOIXebP
         WDnNVp2KneQMSazVtM6Z9qjRAxiriYCYrm2kjsBOIVU3HNeKXYr4Xlbd0uuYdOHHRsKn
         zD/Sr+/1JaBcnNHou8WSMJHxemDoT6/bUz2nRwca9AkSmaeb+1ZbZp0ECxX4CxF0Pii/
         pWwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799694; x=1717404494;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/BoiH3PrE5Z52gU+/bga8Krds/WFhLzgOzlw5DShXKc=;
        b=ia9sRM40CP6R7tvWkSNK8tuM2odhKziibpOL4YFfIwOqWL6ucJKAZt089padre3pmh
         WKkXl1FCI914w+/RCLVR4UlCPNbGQkO3GPqeDQ0pbtE06Tsid2YxgwiEsc/Ku90TVxEK
         04nC8YKBNV6OrtmHq+0yoDNdT/bsiDNbUy4qZJWeI/JHsZrDfVeLF2wvnt/h8qaEl8R3
         WVunxFHjeoSD/wFiQMpQisPAlcNUtrjo01AojODh3CSCUaKNUgcYW5AAOvMXXsm/Z3jY
         nPhjU+3+YhbLTeJ/JXPFmaCd9oggLYfIM+KIpCsimAaL/+y8bUFi5qpjtesuOetoUITG
         umCg==
X-Forwarded-Encrypted: i=1; AJvYcCW9y9ul0NaqyDB6wpWa+P06IVaMUyrVLD30QOuvCP02bsev7FCzjXYGKCwBLDFccutqxnINWYgyy9A5EDme7kqRS0QymxNV2T0q9FaMWg==
X-Gm-Message-State: AOJu0YzZWGqxG2MBBPUwNjzumY4a7CHlDPBCq1q5a1PwdOym7JrfbkbM
	UnM6aK0VB3xhYnaUusZ0/9ljFSqy4cVWaiWtf5mpgkLBFwlfNDpzffdWL1QK2XQ=
X-Google-Smtp-Source: AGHT+IEED56KX/k0SKrUPUle14ZPrTlxBx2vb8tUqjMqmW8hTWg0L4LEMzpI/Q0kkUkfTHENA1aPyA==
X-Received: by 2002:a05:600c:5848:b0:41f:fb7b:bc53 with SMTP id 5b1f17b1804b1-421089ea66cmr72367625e9.22.1716799693619;
        Mon, 27 May 2024 01:48:13 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:371c:b423:6c2b:61bb? ([2a01:e0a:982:cbb0:371c:b423:6c2b:61bb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100f1ad4bsm134400675e9.19.2024.05.27.01.48.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 01:48:13 -0700 (PDT)
Message-ID: <c767bc42-f4f7-44f5-b712-5933a921b386@linaro.org>
Date: Mon, 27 May 2024 10:48:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 3/7] phy: qcom: qmp-combo: introduce QPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-3-a03e68d7b8fc@linaro.org>
 <v36mrliwd7rarqofbitv5mtb6kd3n3hmuwp6bgg67krnvzejd6@luityjlkb7nn>
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
In-Reply-To: <v36mrliwd7rarqofbitv5mtb6kd3n3hmuwp6bgg67krnvzejd6@luityjlkb7nn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_014816_608422_907FB6E0 
X-CRM114-Status: GOOD (  17.32  )
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

On 27/05/2024 10:46, Dmitry Baryshkov wrote:
> On Mon, May 27, 2024 at 10:42:35AM +0200, Neil Armstrong wrote:
>> Introduce an enum for the QMP Combo PHY modes, use it in the
>> QMP commmon phy init function and default to COMBO mode.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 41 +++++++++++++++++++++++++++----
>>   1 file changed, 36 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> index 183cd9cd1884..788e4c05eaf2 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> @@ -61,6 +61,12 @@
>>   
>>   #define PHY_INIT_COMPLETE_TIMEOUT		10000
>>   
>> +enum qphy_mode {
>> +	QPHY_MODE_COMBO = 0,
>> +	QPHY_MODE_DP_ONLY,
>> +	QPHY_MODE_USB_ONLY,
>> +};
>> +
>>   /* set of registers with offsets different per-PHY */
>>   enum qphy_reg_layout {
>>   	/* PCS registers */
>> @@ -1503,6 +1509,7 @@ struct qmp_combo {
>>   
>>   	struct mutex phy_mutex;
>>   	int init_count;
>> +	enum qphy_mode init_mode;
>>   
>>   	struct phy *usb_phy;
>>   	enum phy_mode mode;
>> @@ -2589,12 +2596,33 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>>   	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
>>   		val |= SW_PORTSELECT_VAL;
>>   	writel(val, com + QPHY_V3_DP_COM_TYPEC_CTRL);
>> -	writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>>   
>> -	/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
>> -	qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>> -			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
>> -			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>> +	switch (qmp->init_mode) {
>> +	case QPHY_MODE_COMBO:
>> +		writel(USB3_MODE | DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>> +
>> +		/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
>> +		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>> +				SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
>> +				SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>> +		break;
>> +
>> +	case QPHY_MODE_DP_ONLY:
>> +		writel(DP_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>> +
>> +		/* bring QMP DP PHY PCS block out of reset */
>> +		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>> +				SW_DPPHY_RESET_MUX | SW_DPPHY_RESET);
>> +		break;
>> +
>> +	case QPHY_MODE_USB_ONLY:
>> +		writel(USB3_MODE, com + QPHY_V3_DP_COM_PHY_MODE_CTRL);
>> +
>> +		/* bring QMP USB PHY PCS block out of reset */
>> +		qphy_clrbits(com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
>> +				SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>> +		break;
>> +	}
>>   
>>   	qphy_clrbits(com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
>>   	qphy_clrbits(com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
>> @@ -3603,6 +3631,9 @@ static int qmp_combo_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		goto err_node_put;
>>   
>> +	/* Set PHY_MODE as combo by default */
>> +	qmp->init_mode = QPHY_MODE_COMBO;
>> +
> 
> I see that COMBO mode is backwards compatible with existing code. But
> shouldn't the USB-only be a default mode?

No because it would break existing platforms without "mode-switch" in DT.

Neil

> 
>>   	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
>>   	if (IS_ERR(qmp->usb_phy)) {
>>   		ret = PTR_ERR(qmp->usb_phy);
>>
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
