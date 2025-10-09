Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F0FFCCD184
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 16:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oPbRX04yqsucYi8nkjACmc4GHjSVtLqIQzHR/u2NdCA=; b=x3Ri5kcMCiztVYFi12o6rDIY7u
	rafx3lJ3bLAWgd+G/Tju8Jsi9Rm0xBkRh2zolCHGoDI3IIcXOt3+AtEn2walD8uP9AKNX1LsSeVcC
	YLfJsXAw6G0onzY/ndi1PZwkOKSEU76wndQrfbm4RRvm7i4TE01K3rD3w8R/9jw9vBRABhM/AEBYX
	oTdCab7lxpjZoUeSZunvDdvhQim9GGJY43tYYgF5TvrXt6+oRIpwYYWv5k4EjMqlaneBB7O2ciAZR
	goJqnOITqdhNfGFr40u+enI0lcSHUBgvbFZbcNYJcVJMHx0iLTphHMTFeSMYh8wUyCenHKyVMIXMI
	ha97kydw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6tjE-00000006iOt-14md;
	Thu, 09 Oct 2025 16:42:56 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6tjB-00000006iNe-26Qg
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 16:42:54 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-46e61ebddd6so12277675e9.0
        for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 09:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760028172; x=1760632972; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NPMST/OYZXxOylWa/2TauSP8MZB4Vq6Zxq+da0/witg=;
        b=Q1gU4sdqglxt22VlqvUXzYc1ho3QDdcyBZHneeafYjTr7g+tYw4nbS1t8J7jMRngz8
         +7iyD1po5coTwtAWvwyuvvzgQ8W2i0aKHEHYa8++yg4ZdR9e1OVtCbFBF1Z9SOyHozQh
         u0I2Di2mBEda/abV6Izev1H05xQZ2Da6P6fd3h/IHyeheSskvZbo1IO7K9egvzQtZIxP
         c4qHKGSUxsBeaBSkrszCH2stAH032kLcLdQfwf3fKhtUO7YvinA08UnEkMURstTPjoex
         6h1hTmRaTOvylCqg3VU71NeBenfnruG5ZGa4Btq5jG8tYHLvkARDwxlIcEJ5lQUdF6hi
         YbBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760028172; x=1760632972;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NPMST/OYZXxOylWa/2TauSP8MZB4Vq6Zxq+da0/witg=;
        b=S7OjBaegUN3oRvVFHGkbhPa3WeDSmGCgoDJQiNPDR5LdZ8T6USX9m9qF30Yc4xy8P6
         24NdnW2sONzZngasASiTQZCI2q/AnQpf3JQ3HVxHr96i9kaL8og751ujyS+EWhjIakaq
         45fN4e94Zy+RG/twqj+e9GWArkqODFNp2iQDJp5JlYQ0PVQ++D4CcfL3byZnfNenSG5e
         gbCnFqKw5faaMUePx3GT3fnNhFVSSRiT4n57K9/xLmOtlO4IvZpsw2kHX6wFbz86Fl6n
         6vnx2RxJSGL8JJk5Uk/t+XrWmT48pRCLT465TrdHFPmmXdThIrDxjgUygRizeuhCefxy
         052A==
X-Forwarded-Encrypted: i=1; AJvYcCWfymtkNkHg4AJ4jP6OgV6PjhgxyLdFLIdJJyxHgnlF6sxHwZmAVeQzxVUVXws8eO3AzV8I2FiiWIE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwNujqhEpP7qp8EXp4S6E3Ku1MwYV+CoPK24naXY4yO18xusL0o
	samOYokqRLzAFlap/O+Gp0GLQa6xzenIG+yPt9XHDNLfaX+tw2zqmVofBfrDPfA3zUY=
X-Gm-Gg: ASbGncu+V5pHk5Jf3PULG2WT7crYUKUmN9tPjt+Zsm4C1oizAaGGIBLIucW5shMFZ17
	sTX2gpZZCvX+6BT1HTkqDBrtQf/wXzTL0FgamFukJ6RjNGPPihRusVFjVk1+PD8m8Eg0SKQJCUp
	nXlamOq2RBJgAXSxQJ8KrLJ4P6lhWbPnzzNIybg1M47WO1EY1iqZ8P3uf2Z8nDFEaLx5xJCuis8
	PKBPFnPI6v+9pyIaKx9QO0RTTEQFpTwQgb5ncfLe2E1FoETo1BpOR97RQndQR+SzE/uEV3AnSsA
	cTfcvdQjVnX/XUBhfrYTHY3bcc+ELK1Pn/lMpp5ksX2KIlURYdGVbnIKJFb91/PeYvvb3r3pbeG
	mTB4z4SF6WS7n+eLk5FxdgFTjdiOjjUNuj6kOIj3ycn544rB/vQBQuVVAVuiKCTy0isURd5vN0w
	SSH6Ii1lub5GgSAus6qiDrV/CsXi4=
X-Google-Smtp-Source: AGHT+IF5zvnDRbVTnzuyo7QCvds7DrqcKUP8pYldpNd7ZP9dP9q6luOXliT/fbdOtrdM86gZ/xBt1Q==
X-Received: by 2002:a05:600c:1e28:b0:46e:394b:4991 with SMTP id 5b1f17b1804b1-46fa9aa0e3amr59814195e9.11.1760028171510;
        Thu, 09 Oct 2025 09:42:51 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:7a0c:da2f:6591:67ee? ([2a01:e0a:3d9:2080:7a0c:da2f:6591:67ee])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb489accbsm6885755e9.14.2025.10.09.09.42.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 09:42:51 -0700 (PDT)
Message-ID: <e10594dd-cfc2-4d5e-bc1f-35aca05be027@linaro.org>
Date: Thu, 9 Oct 2025 18:42:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v5 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
 <20251006-topic-x1e80100-hdmi-v5-2-c006311d59d7@linaro.org>
 <141e33fc-c963-4f58-a69c-e7068c9ec6e8@oss.qualcomm.com>
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
In-Reply-To: <141e33fc-c963-4f58-a69c-e7068c9ec6e8@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_094253_594948_4BEA43F8 
X-CRM114-Status: GOOD (  14.69  )
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

On 10/8/25 11:31, Konrad Dybcio wrote:
> On 10/6/25 3:55 PM, Neil Armstrong wrote:
>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>
>> The routing of the lanes can be:
>> - 2 DP + 2 USB3
>> - 4 DP
>> - 2 USB3
>>
>> Get the lanes mapping from DT and stop registering the USB-C
>> muxes in favor of a static mode and orientation detemined
>> by the lanes mapping.
>>
>> This allows supporting boards with direct connection of USB3 and
>> DisplayPort lanes to the QMP Combo PHY lanes, not using the
>> USB-C Altmode feature.
>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> 
> [...]
> 
>> +static int qmp_combo_get_dt_lanes_mapping(struct device *dev, unsigned int endpoint,
>> +					  u32 *data_lanes, unsigned int max,
>> +					  unsigned int *count)
>> +{
>> +	struct device_node *ep;
>> +	int ret;
>> +
>> +	ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, endpoint);
>> +	if (!ep)
>> +		return -EINVAL;
>> +
>> +	ret = of_property_count_u32_elems(ep, "data-lanes");
>> +	if (ret < 0)
>> +		goto err_node_put;
>> +
>> +	*count = ret;
>> +
>> +	ret = of_property_read_u32_array(ep, "data-lanes", data_lanes,
>> +					 max_t(unsigned int, *count, max));
> 
> if (*count > max)
> 	return -EINVAL;

Yep

> 
>> +
>> +err_node_put:
>> +	of_node_put(ep);
> 
> __free(device_node)

why ? ep is not allocated, it goes up to:

static struct device_node *__of_get_next_child(const struct device_node *node,
						struct device_node *prev)
{
	struct device_node *next;

	if (!node)
		return NULL;

	next = prev ? prev->sibling : node->child;
	of_node_get(next);
	of_node_put(prev);
	return next;
}

> 
>> +
>> +	return ret;
>> +}
>> +
>> +static int qmp_combo_get_dt_dp_orientation(struct device *dev,
>> +					     enum typec_orientation *orientation)
>> +{
>> +	unsigned int count;
>> +	u32 data_lanes[4];
>> +	int ret;
>> +
>> +	/* DP is described on the first endpoint of the first port */
>> +	ret = qmp_combo_get_dt_lanes_mapping(dev, 0, data_lanes, 4, &count);
>> +	if (ret < 0)
>> +		return ret == -EINVAL ? 0 : ret;
>> +
>> +	/* Search for a match and only update orientation if found */
>> +	qmp_combo_find_lanes_orientation(dp_data_lanes, ARRAY_SIZE(dp_data_lanes),
>> +					 data_lanes, count, orientation);
> 
> You can zero-initialize `count` and drop the custom error parsing above

Good idea


Thanks,
Neil

> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
