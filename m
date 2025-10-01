Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73185CAC5BB
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 07:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/X5mGL/bp2BlUQHstN0x3z7+6+dDaSpA2UuYmBWl430=; b=b0fVqR6FS+X1mlzbOuyti8SZOm
	ToOuubEXTBEJto74FKNjNCk5NeFd45SgsF1vAh4ikLWiRMYLeJ5iObZGpLROL/vTHw/jgP1+ZPQBa
	6+cOY3P4mr6yEUWgAJDrQRovILWQd64HgcSGUqYbhkLDvrblDleaf+boQrgH1T3Rb+5UNDXRWfdK4
	x53SAwKkZATqvMubIDWl4M0k0aPDJ6FjheO4ckyfZlXLEAYtxnNd8oHNf2WTYlaUgQ1mGNjPD8Ip0
	sQH/xeOfnAcA3sPmiqfC2HS9fY57705gbX8ygOT37rEBQJzx3blZi+VxOEf6CiYh7kcis99CysVED
	RRnxIgBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3qum-00000006sCS-3uB2;
	Wed, 01 Oct 2025 07:06:16 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3quk-00000006sC3-2Gqi
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 07:06:15 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-46b303f7469so46809005e9.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Oct 2025 00:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759302372; x=1759907172; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AvARg4BtLyjXBG/oyTU38XVRM3fscS0RfPUj5chkaa0=;
        b=IlW58kBp7Hmhiub8A1bfvyjf9wxpytCiPRhIpo0BeQ+bpodvpWVJGfFxkZmXMh9OyB
         08N9qLcMp6qVH/S04N0kSW5JoW4OGvuvoC3A9VOKzXP0+LqluNgDI8Enn6iCDKgINYp/
         5iegxWEzHUpXn2K5jxFfv5PC7HiRD+gEZYKwEicvka7PVL/JGh97IK1HI2eyYqnQlKYm
         gPfyuk/7NDKu/8DMHXm7PgnYXMfUIkoGhdFQQ5pM43YgN/h65hz0UJU/VB+alfwxSscc
         l4LRbVrAH47darygdv7wd2Ngz//kyQWKRgRvaxx5JBnETDhw57T4YKRPV5c0GtsJ2uUw
         xUhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759302372; x=1759907172;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AvARg4BtLyjXBG/oyTU38XVRM3fscS0RfPUj5chkaa0=;
        b=PKYv1WUKu3W78X7aQvfIpqcxUjBn+1OcuY05O6TYNWh31C/1maOrYfRGAYQlIHFa84
         lD+VC6TwUBbD/n1KH7zy5fXrrNFLYLajl1pNqm9SPxJQz6pARIjMIz38Gnk52qxLakIf
         GQeyOPLmaCrN7uNWjGIpdoRqBDCN5iZBiFjlFz0NPs7bGJYDOUkfQciebotgjQqoBqAv
         TC9l8+djQrbeYsjkIbfhSTHYnFxjeHKwXA+qKo262uhxHxMcyIWi35Jdb1gAcszPCWK5
         RfMiX88Ol2W0s2QUdnLdzPO1Cba+/0WkNBvYDuBezkg3F1coSXvBVYqwEvtRuzmuWRlG
         2H/g==
X-Forwarded-Encrypted: i=1; AJvYcCXdY1xf6AkLQgy5KqIVX6kp5+qNmvBuMFDm6/ZPZkXnEdoJs+HfSdO3+koONDAM8zstD/LK0uEeBPY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxwaKs7mPGtA71axKhquSwcAj7NBL6bDZ/SnXSeqLjnljTD9OJV
	HnCrLvZe23Ly7nx7dj9JD+K6F8weKun6u/OYJ02JoCFkLTIwcS7YvsqR2KHNwirWhr8=
X-Gm-Gg: ASbGnctE9EOw+iKkPbTiLEdj6nDR6yeNpaLHIMrV7ICkSB4W6ocB4Ipl5N5A6wIG7JS
	Bj2sXfavv/bgVNOEvwfwYWX4Tbqq81++5uIONrtj9b2qCFoyp77lajVgKQ0AjFsJ+WBF6oouCaF
	g3b5DrYeYuwkrITo1bzwXqziAlgbHPVENzNsRpEkWIhwF2nH3tUnYM7DNyxV2M5Atihkh7kRJEb
	mVPwAGE9Z/SQ6Plj0xYj4HX5Kp7oebaDX0Dir0b6oOJXw4eQOCQ6buae5sMCatuYlWeXXNORigN
	lPnv6OTazyp7TA2/rpDJd7YXTtQX+PIn8gXcnaUvyxkieoNc3w77Dar1qme4IsDMpk031Vrn5ve
	3O4nIeUyJCQ/hzpNKg62cBvdsFpWrOlnKRqgzA4MZtdnLtR7Sh1YOxr+hIS1hAFrs7W2bX/JwWM
	4LtCVFA/YuAWVNBtL5/c70BBI=
X-Google-Smtp-Source: AGHT+IHBO9Z+Uh3slszHAPZuX3C+R/wZHwWLiDZirHkPHFUmv4L7FdIGetheWaVB+ku2T1GmiYZmxA==
X-Received: by 2002:a05:600c:83ca:b0:46e:42cb:d93f with SMTP id 5b1f17b1804b1-46e61279f57mr18248825e9.15.1759302372335;
        Wed, 01 Oct 2025 00:06:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f45f:c590:9006:d394? ([2a01:e0a:3d9:2080:f45f:c590:9006:d394])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5c3cad50sm28924565e9.3.2025.10.01.00.06.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 00:06:11 -0700 (PDT)
Message-ID: <9d020a8e-22d8-4f1f-803c-d00bb912f699@linaro.org>
Date: Wed, 1 Oct 2025 09:06:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Xilin Wu <sophon@radxa.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
 <uozgwot7yuwmaiwmqoo6ickblpqe52tnj44tnxcorygqxwou52@hksvktgq5zp7>
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
In-Reply-To: <uozgwot7yuwmaiwmqoo6ickblpqe52tnj44tnxcorygqxwou52@hksvktgq5zp7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_000614_621358_0E051CFF 
X-CRM114-Status: GOOD (  20.05  )
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

On 9/30/25 20:56, Dmitry Baryshkov wrote:
> On Tue, Sep 30, 2025 at 09:39:48AM +0200, Neil Armstrong wrote:
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
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 145 ++++++++++++++++++++++++++++--
>>   1 file changed, 137 insertions(+), 8 deletions(-)
>>
>> @@ -4167,9 +4269,41 @@ static int qmp_combo_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		goto err_node_put;
>>   
>> -	ret = qmp_combo_typec_register(qmp);
>> -	if (ret)
>> -		goto err_node_put;
>> +	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
>> +
>> +	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
>> +	    of_find_property(dev->of_node, "orientation-switch", NULL)) {
>> +		ret = qmp_combo_typec_register(qmp);
>> +		if (ret)
>> +			goto err_node_put;
>> +	} else {
>> +		enum typec_orientation dp_orientation = TYPEC_ORIENTATION_NONE;
>> +		enum typec_orientation usb3_orientation = TYPEC_ORIENTATION_NONE;
>> +
>> +		ret = qmp_combo_get_dt_dp_orientation(dev, &dp_orientation);
>> +		if (ret)
>> +			goto err_node_put;
>> +
>> +		ret = qmp_combo_get_dt_usb3_orientation(dev, &usb3_orientation);
>> +		if (ret)
>> +			goto err_node_put;
>> +
>> +		if (dp_orientation == TYPEC_ORIENTATION_NONE &&
>> +		    usb3_orientation != TYPEC_ORIENTATION_NONE) {
>> +			qmp->qmpphy_mode = QMPPHY_MODE_USB3_ONLY;
>> +			qmp->orientation = usb3_orientation;
>> +		} else if (usb3_orientation == TYPEC_ORIENTATION_NONE &&
>> +			 dp_orientation != TYPEC_ORIENTATION_NONE) {
>> +			qmp->qmpphy_mode = QMPPHY_MODE_DP_ONLY;
>> +			qmp->orientation = dp_orientation;
>> +		} else if (dp_orientation != TYPEC_ORIENTATION_NONE &&
>> +			 dp_orientation == usb3_orientation) {
>> +			qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
>> +			qmp->orientation = dp_orientation;
>> +		} else {
>> +			dev_warn(dev, "unable to determine orientation & mode from data-lanes");
>> +		}
>> +	}
>>   
>>   	ret = drm_aux_bridge_register(dev);
>>   	if (ret)
>> @@ -4189,11 +4323,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		goto err_node_put;
>>   
>> -	/*
>> -	 * The hw default is USB3_ONLY, but USB3+DP mode lets us more easily
>> -	 * check both sub-blocks' init tables for blunders at probe time.
>> -	 */
>> -	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> 
> SHouldn't this still be a default in the 'normal' USB-C case?

It is, I just moved it before the added logic, but the comment doesn't really
apply anymore

Neil

> 
>>   
>>   	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
>>   	if (IS_ERR(qmp->usb_phy)) {
>>
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
