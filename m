Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5305CAC5B8
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 12:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vd29cYYqOGOhwhOE8KPl0e1BigTqb6HYMfpiwprtzyU=; b=bmAzHXO4W1nMNmvl37CYLsmpPS
	3x3RC6qrNxEJEYVwONm/sKB9Hz6CCn/lb4cHSWHQ6VO4nthyLgCU34dfSmq4YVoJpfJzI7gjebZjG
	R2+I/le5JannREuwqTiZ9ojx5F+hC13khMpIG0pspGIodpYMkZmdd8xi2ISdpguOD2sQblNeBPWbu
	wDOD4LjroBYqCItK0z22LOuqY5acDkv2GxPLEOU9FSc7qzF782JYzHga75948mBgkse6VPfBi+kjQ
	Kgdk3vT9VxetA+CJmV2ZyvGkcfKWdyAsJaq6YbiEM/+3AEfkxyND80hIw8kXB+lHwizHOYF6gH5A3
	P2LSIQLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5kfT-000000002wR-2YFV;
	Mon, 06 Oct 2025 12:50:19 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5kfR-000000002w7-0RTm
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 12:50:18 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-46e5b7dfeb0so20116525e9.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 05:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759755015; x=1760359815; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TvDhuie6qY8dt8ec7g1A3HAHuwzFnTbr7gEWQFFeMLg=;
        b=x4M7uvZCqxCS1Fj9+2/Z7sHUDLTOy7SQlvWNOrGVdQCxZDlyHpZefHo4j3g37q8gZ3
         3AaQZLmMqAmTqkZVz4dSqzNY/45xxOPUcsusWmCe2riL9YMWLxWj1MUUhZ50yX8W0IKR
         YV492Qbqr71hUi9SIe7KWitxEoFQOhPfEV3pUCAhlGfDdibzMq5HA7uzAnuZ0ZC/HmIz
         7Ehd70xWKQ/lTyUZgSIV9T6q1g0ha6/mcbGicONr7V8zw9Vx9Jx/fM17Sz8drOYkxKwY
         ZZ6YrsgNUexyLirBW5Sx/q6Sqz1X6ESvE9cQ2x8rbPqsDj2F2/e6Pxxi9b76U9K41Koc
         TCgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759755015; x=1760359815;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TvDhuie6qY8dt8ec7g1A3HAHuwzFnTbr7gEWQFFeMLg=;
        b=YOtJpkIDNrDFQatDGsMLsixQj8OeojxcpJ7I0zEWs9blZunkBAOjFTUvJ7qsghVBdO
         ybsmALxczFkJ/xs9ObEFG4Z7rdku6vl6bIdsDcO05pcygJWHuN0A2yw76XREreDBNQcG
         h4FFKbdKTQvYZrxtFxxhBlyLlMf5KsIfy/slcdOmleWlu0xwXlKvlmPE3FwGOK+kw6kx
         04hvqMtnnsKX+0XzPXDnzyUVuz34G3O7iOLTARSPbdWmvtHoJkD2ot7rNol9XYcjO5r0
         sfa3b3GQUK6H9fNIEwg/C7KKFIjtGOtoy8vG16Nrxm80GHA6naF3v2OcMJBjrLDHvFPd
         uGug==
X-Forwarded-Encrypted: i=1; AJvYcCUtWsiE4zTFkAdVg4DGHf9zjvCsu4VTJ7qT2gvR032Z6WfQtJc5IzbX9R8+XT2lss5VABCvcg4RE1E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzf+wuxRJw5i73bfABgYx3/+qHe92xpRWrar02SCdjlkn3f+mXh
	vfwNTffqjzlXehVfnFJGlDTjw6lmYZqbYMrv2iUxp8v3GQYIWvTQCVXbjuCMzI03udY=
X-Gm-Gg: ASbGncvbf3CIL8OZUqgnLxwxxyMjX8GliqSdDaWH3shqfbT96sU+CCcJcK1C5EN9fcg
	o/QRqLPha/ll6VUrYvF3reSWbx07ORjyCgqZ0riemn1lkwahxnd8NBBWAlO1GU/3UzioMC3T712
	qeNqb9KKInU3jORwlvWcCPCK0JYimYSeLkrgrC35RMynm/TD1ykIIJjWFNrSMS63bkNkt6UHjI/
	1Um9klSOXFCCqAPEY6uoZYmrsFTc+H4sUrcS2H87gsTIufePjQStD6M9d/uxsD2/aFl/7FxnTTx
	tgbFNAgrH0Uc/tUUVAhWkOMqeESybRhOwVctNLWh9MtqGbVoF2RHCZxZeGstmoqmhnfnxNONL2+
	fdgmam3NWJmfkXTFisE2EZXXqcEEhkfgWOXixksYS625RNzTxI/qBpOEdJ7PXOB6s6XjYHJhGjG
	0AZ1KAPWZJHN1TZEncKg7cObUEE1I=
X-Google-Smtp-Source: AGHT+IGxYNrhR5rb1hMdZacbBTASV6s/vat0+OUcrWk/mznR4enIUg1haus1BRrmnxmBozboXRQ6Ug==
X-Received: by 2002:a05:600c:3b08:b0:46e:396b:f5ae with SMTP id 5b1f17b1804b1-46e7110cf6fmr95364035e9.16.1759755014953;
        Mon, 06 Oct 2025 05:50:14 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:2dd0:9118:d7f5:51d9? ([2a01:e0a:3d9:2080:2dd0:9118:d7f5:51d9])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e723593d8sm173623055e9.11.2025.10.06.05.50.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 05:50:14 -0700 (PDT)
Message-ID: <4bb1c10d-b8fe-485e-b4aa-faa43033be76@linaro.org>
Date: Mon, 6 Oct 2025 14:50:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
 <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
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
In-Reply-To: <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_055017_182526_6A49943F 
X-CRM114-Status: GOOD (  17.75  )
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

On 10/6/25 12:08, Konrad Dybcio wrote:
> On 9/30/25 9:39 AM, Neil Armstrong wrote:
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
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> 
> [...]
> 
>> +struct qmp_combo_lane_mapping {
>> +	unsigned int lanes_count;
> 
> "num_lanes"?

Is this significant ?

> 
>> +	enum typec_orientation orientation;
>> +	u32 lanes[4];
>> +};
>> +
>> +static const struct qmp_combo_lane_mapping usb3_data_lanes[] = {
>> +	{ 2, TYPEC_ORIENTATION_NORMAL, { 1, 0 }},
>> +	{ 2, TYPEC_ORIENTATION_REVERSE, { 2, 3 }},
>> +};
>> +
>> +static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
>> +	{ 1, TYPEC_ORIENTATION_NORMAL, { 0 }},
>> +	{ 1, TYPEC_ORIENTATION_REVERSE, { 3 }},
> 
> This is not corroborated by your bindings change ^

Damn you're right, I'll fix it...

> 
> I'm also frankly not sure whether it's pin 2 or 3 that 1-lane-DP
> would be TXd on
> 
>> +	{ 2, TYPEC_ORIENTATION_NORMAL, { 3, 2 }},
>> +	{ 2, TYPEC_ORIENTATION_REVERSE, { 0, 1 }},
>> +	{ 4, TYPEC_ORIENTATION_NORMAL, { 3, 2, 1, 0 }},
>> +	{ 4, TYPEC_ORIENTATION_REVERSE, { 0, 1, 2, 3 }},
> 
> Would it be too cheesy to check orientation based like:
> 
> static bool qmpphy_mapping_orient_flipped(u32 *data_lanes)
> {
> 	return data_lanes[0] == 0;
> }
> 
> ?

Do we want a proper check of the property content or some random check ?
Sorry I prefer something formal, since perhaps sometime we will have
a full lanes remapping available instead of just orientation and if
we have some random input it will explose...

> 
>> -	ret = qmp_combo_typec_register(qmp);
>> -	if (ret)
>> -		goto err_node_put;
>> +	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
>> +
>> +	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
>> +	    of_find_property(dev->of_node, "orientation-switch", NULL)) {
> 
> of_property_present()

I'll replace with that.

Thanks,
Neil

> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
