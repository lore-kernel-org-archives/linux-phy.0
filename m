Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A222C71135
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 08:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/40KbNtYKE8QSn1jdZmu5uc5fgjMKzQ2TaUx/lzGZC0=; b=Di7AWCkWm99bcWz4ZGME2uuWe2
	O/Mtv5FqpFKNxE9zLMlfgjxo3IYXYB8Sy3ShFqcr7O3nBcrB8iflJ2fhxQcZoGO7jH2CkBEzEf1Pf
	+6ieKZ2CmG05QLa/sJJgueFp9nXEkIUjjmSJYhKgZEIK9Bu+4pOW0EWc6lmBVFuqmfGkf9HDT/cZd
	bsCems82TnLkcxTBjd3YWdk7yqfyJmawBLBvnbl/GK3RdvePW1QjGx4+ADO7r7SNZ+6vQM2boSpz1
	SWSEGEeLv7adTwJjkrc6JtF6jDMYPX1Q+KX0XIMEblgiUT5546ZFwT/9Pu9sT+bqA1lvOuKJc79k4
	t8RWtYoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR53O-00000003lsn-2u0g;
	Mon, 16 Jun 2025 08:18:54 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR4go-00000003iL5-3qJi
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 07:55:37 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3a528243636so2366514f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 00:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750060533; x=1750665333; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tMwajpkh+cocbCYaaz8/qUrjRzZXU+QpHIECzhBSBHk=;
        b=MmqAFDtH6XpMybxvJVRQlP18Nu1bDzKLcmaEBIkLLVxmsMvxBLExlsq6yQE4cEAPIN
         hjKCQRELP0kENbDjxWd2/2iCf0/QJgv+28GjXKWaeSxFtn3aguHxcvGPPjILPRnISeHk
         bi8q0ezjJzlsy+MnfF9S7vRf2DLJO3s10fvUNESmNluQJ0wMGlR/NXOx8uxsNSxL8lVt
         7ehKwFI8uyHSRvc7MjgHxM9jiqeAT+diMbHdWh6BNtF8IE+0ElHcUbIpFsKt6qa9CyQA
         C/v5i2U19dEzB5O0L0cf343WdGy8a/w7JV+lOgIuK7xWNrRz32SzWHbj1O9c3CfhowPS
         9V+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750060533; x=1750665333;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tMwajpkh+cocbCYaaz8/qUrjRzZXU+QpHIECzhBSBHk=;
        b=bdG75B4LEDbqShgKM6fzkuWRUoPQ5FCPXxWPdbk25VE/ED/tiiuxmYWrcJWPcLzPYV
         Lq1se1wIyvfAndTEsRgjBuAPSujWK0gxBqhIHLnu/JdCOmXPFQIfRh3hku/TVBHm7EwR
         RYIOKj6yzfQbqNCVxuYSN5kjvfjLhRNWG+b406lGehlGC/G6sST8OqiZstiOlEh9qp1v
         3DjuCpJkLjmqGCzyDnchzQDmxxC5gSKjVXcwZ727h+nUgUFZslFdVJXwWe9wSWQPBLc7
         yxzT3LtzXc5RJAd8V24E3FcyY+SITbnyJ/krwM3prYWk2cI/SvcEshGW5Jw9nE+Lx6FD
         TSKA==
X-Forwarded-Encrypted: i=1; AJvYcCW6hCB1VGZ7gKBmHMvL5pkIeQmA1A8JSn87Fcct//rvg4w+3jzNyPKhbTIBG+S38T1IRQwxddEGfhw=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywj5DedTslL93cjV7ocUGqtf0PlfutxnSIKZMqca731UQ0DDWmr
	PcdXsVj6DtFiVqN4i4JzBThAYWb6QHCE8Io5stFvl3dj2M9z9p+7ya25k/hc9ff1Hp0=
X-Gm-Gg: ASbGncvtA3xn+ma3LcSW1GF7Y5145SrsaGqnUbQuVijJdUeQlCXXfUHaGLlV4kmZ4K7
	UVr1t94csp0ziB0hwJJGyDTguChIURjijmE+CYDZ46dM/S5Fy/12b2ytZn4N8k7kdCthQb2G2jn
	E/9sa7SQRX/5v5Y1/nJqc9cQN5nMj78ppFnbmE80JuBtXXAKQf3rmzW7zvgh3wDYFDhKGAuy+ng
	r5WAl9GQPV5C31TIOxck6aVOecP4fbH75RDZYWYPS0B+7fr0JpSvwaouizGzeRLdRJ/5+v7fq9v
	otKkeGDxsUrP1OmLN8DC/gxfoFnMJENbTWDhsJlYpg9iK88l5x7c2Vg2G9v7He5in3yNe8LL2oA
	hoR+pJ9X19B35ISTNy33MwiSUOCAgy4EFiciF
X-Google-Smtp-Source: AGHT+IEzv7xWCPYmEuD5fShuCcU8yTtYgmqv0LOPzcLIsCFnP+f3v0+HNVLzzFTb9xkPa5IzUplKRQ==
X-Received: by 2002:a5d:64ed:0:b0:3a4:d452:fff with SMTP id ffacd0b85a97d-3a5723a15c1mr5994610f8f.17.1750060533317;
        Mon, 16 Jun 2025 00:55:33 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:6c7:97de:65a8:488a? ([2a01:e0a:3d9:2080:6c7:97de:65a8:488a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e1838e4sm138959705e9.40.2025.06.16.00.55.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 00:55:32 -0700 (PDT)
Message-ID: <6e52204c-3d79-41c9-8b25-b1a6d7db129c@linaro.org>
Date: Mon, 16 Jun 2025 09:55:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 3/4] phy: rockchip: usbdp: reset USB3 and reinit on
 orientation switch
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>
Cc: Alexey Charkov <alchark@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250610-rk3576-sige5-usb-v4-0-7e7f779619c1@collabora.com>
 <20250610-rk3576-sige5-usb-v4-3-7e7f779619c1@collabora.com>
 <49eb73df-9a15-436e-a05c-72dd3aa36bf8@linaro.org>
 <4115444.Lt9SDvczpP@workhorse>
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
In-Reply-To: <4115444.Lt9SDvczpP@workhorse>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_005535_048215_D28F341C 
X-CRM114-Status: GOOD (  35.44  )
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

On 13/06/2025 15:21, Nicolas Frattaroli wrote:
> On Friday, 13 June 2025 10:55:43 Central European Summer Time neil.armstrong@linaro.org wrote:
>> Hi,
>>
>> On 10/06/2025 16:07, Nicolas Frattaroli wrote:
>>> Until now, super speed on Type-C only worked in one orientation. This is
>>> because on an orientation switch, the UDPHY was never reinitialised.
>>>
>>> Heiko presented a patch to do this[1], but there were concerns over the
>>> correctness of it[2]. Experimentally using Heiko's patch on RK3576 did
>>> make me run into issues, though they seemed to be related to the
>>> orientation switch actually happening while a clock driving a GRF
>>> register was disabled.
>>>
>>> The key issue is that the hardware wants the USB 3 controller to be held
>>> in reset while the PHY is being reconfigured, otherwise we may run into
>>> hard-to-catch race conditions.
>>>
>>> Either way, this patch implements the required ordering in a somewhat
>>> unpleasant way: we get the USB 3 controller from the DT, and use runtime
>>> power management to forcibly suspend it while the UDPHY is being
>>> reconfigured, and then forcibly resume it later. As an added pain in the
>>> rear, the suspend/resume of the USB 3 controller also tries fiddling
>>> with the USB 3 PHY part of the UDPHY, which means we introduce an atomic
>>> flag to skip suspending/resuming the UDPHY if we're resetting the USB 3
>>> controller. We may just need to skip trying to acquire the mutex again,
>>> but both ways work for me in practice.
>>>
>>> This solution may in fact be complete rubbish, but it works to get USB 3
>>> Super Speed working in both cable orientations on my board.
>>
>> Yeah this is kind of a hack, and we have a similar situation on Qualcomm platforms
>> when dealing with USB2-only and DP-only altmodes, where we need the DWC3 to
>> disable the usb3 path. Hopefully on Qcom combo PHYs we can switch lanes without
>> disable the USB3 PHY.
>>
>> So the proper solution would have the dwc3 driver to also react to mux and
>> orientation events and disable the usb3 path to allow the phy to reconfigure
>> itself.
>>
>> We don't have any concrete proposal yet, but we will get something soonish.
> 
> Thanks you for the additional insight, I do agree that having the
> controller be in charge of this is the better solution. That way, the PHY
> doesn't need to know its controller, and the controller driver is in charge
> of ordering the resets and reconfigure right, which means the ugly reset
> loop breaking in this patch isn't needed.
> 
> If you do end up sending a patch series with a proposal, please +Cc me,
> so that I can see if it also works for Rockchip.

Of course I'll add you in CC if this happens
Neil

> 
> If the hack isn't acceptable to be merged until then, then I'll drop
> this patch from future revisions of the series to get the other parts
> in.
> 
>>
>> Neil
> 
> Best regards,
> Nicolas Frattaroli
> 
>>
>>>
>>> Link: https://lore.kernel.org/all/20250226103810.3746018-3-heiko@sntech.de/ [1]
>>> Link: https://lore.kernel.org/linux-rockchip/h57ok2hw6os7bcafqkrqknfvm7hnu25m2oe54qmrsuzdwqlos3@m4och2fcdm7s/ [2]
>>> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
>>> ---
>>>    drivers/phy/rockchip/phy-rockchip-usbdp.c | 54 +++++++++++++++++++++++++++++++
>>>    1 file changed, 54 insertions(+)
>>>
>>> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
>>> index fff54900feea601c8fe6bf4c7123dfebc5661a15..5cd6bbc367f69bca15c2a94a07e72f850b381ae3 100644
>>> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
>>> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
>>> @@ -200,6 +200,10 @@ struct rk_udphy {
>>>    	/* PHY devices */
>>>    	struct phy *phy_dp;
>>>    	struct phy *phy_u3;
>>> +
>>> +	/* USB 3 controller device */
>>> +	struct device *ctrl_u3;
>>> +	atomic_t ctrl_resetting;
>>>    };
>>>    
>>>    static const struct rk_udphy_dp_tx_drv_ctrl rk3588_dp_tx_drv_ctrl_rbr_hbr[4][4] = {
>>> @@ -1255,6 +1259,9 @@ static int rk_udphy_usb3_phy_init(struct phy *phy)
>>>    	struct rk_udphy *udphy = phy_get_drvdata(phy);
>>>    	int ret = 0;
>>>    
>>> +	if (atomic_read(&udphy->ctrl_resetting))
>>> +		return 0;
>>> +
>>>    	mutex_lock(&udphy->mutex);
>>>    	/* DP only or high-speed, disable U3 port */
>>>    	if (!(udphy->mode & UDPHY_MODE_USB) || udphy->hs) {
>>> @@ -1273,6 +1280,9 @@ static int rk_udphy_usb3_phy_exit(struct phy *phy)
>>>    {
>>>    	struct rk_udphy *udphy = phy_get_drvdata(phy);
>>>    
>>> +	if (atomic_read(&udphy->ctrl_resetting))
>>> +		return 0;
>>> +
>>>    	mutex_lock(&udphy->mutex);
>>>    	/* DP only or high-speed */
>>>    	if (!(udphy->mode & UDPHY_MODE_USB) || udphy->hs)
>>> @@ -1401,10 +1411,31 @@ static struct phy *rk_udphy_phy_xlate(struct device *dev, const struct of_phandl
>>>    	return ERR_PTR(-EINVAL);
>>>    }
>>>    
>>> +static struct device_node *rk_udphy_to_controller(struct rk_udphy *udphy)
>>> +{
>>> +	struct device_node *np;
>>> +
>>> +	for_each_node_with_property(np, "phys") {
>>> +		struct of_phandle_iterator it;
>>> +		int ret;
>>> +
>>> +		of_for_each_phandle(&it, ret, np, "phys", NULL, 0) {
>>> +			if (it.node != udphy->dev->of_node)
>>> +				continue;
>>> +
>>> +			of_node_put(it.node);
>>> +			return np;
>>> +		}
>>> +	}
>>> +
>>> +	return NULL;
>>> +}
>>> +
>>>    static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
>>>    				 enum typec_orientation orien)
>>>    {
>>>    	struct rk_udphy *udphy = typec_switch_get_drvdata(sw);
>>> +	int ret;
>>>    
>>>    	mutex_lock(&udphy->mutex);
>>>    
>>> @@ -1420,6 +1451,18 @@ static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
>>>    	rk_udphy_set_typec_default_mapping(udphy);
>>>    	rk_udphy_usb_bvalid_enable(udphy, true);
>>>    
>>> +	if (udphy->status != UDPHY_MODE_NONE && udphy->ctrl_u3) {
>>> +		atomic_set(&udphy->ctrl_resetting, 1);
>>> +		pm_runtime_force_suspend(udphy->ctrl_u3);
>>> +
>>> +		ret = rk_udphy_setup(udphy);
>>> +		if (!ret)
>>> +			clk_bulk_disable_unprepare(udphy->num_clks, udphy->clks);
>>> +
>>> +		pm_runtime_force_resume(udphy->ctrl_u3);
>>> +		atomic_set(&udphy->ctrl_resetting, 0);
>>> +	}
>>> +
>>>    unlock_ret:
>>>    	mutex_unlock(&udphy->mutex);
>>>    	return 0;
>>> @@ -1430,12 +1473,22 @@ static void rk_udphy_orien_switch_unregister(void *data)
>>>    	struct rk_udphy *udphy = data;
>>>    
>>>    	typec_switch_unregister(udphy->sw);
>>> +	put_device(udphy->ctrl_u3);
>>>    }
>>>    
>>>    static int rk_udphy_setup_orien_switch(struct rk_udphy *udphy)
>>>    {
>>> +	struct device_node *ctrl = rk_udphy_to_controller(udphy);
>>>    	struct typec_switch_desc sw_desc = { };
>>>    
>>> +	if (ctrl) {
>>> +		udphy->ctrl_u3 = bus_find_device_by_of_node(udphy->dev->bus, ctrl);
>>> +		of_node_put(ctrl);
>>> +	}
>>> +
>>> +	if (!udphy->ctrl_u3)
>>> +		dev_info(udphy->dev, "couldn't find this PHY's USB3 controller\n");
>>> +
>>>    	sw_desc.drvdata = udphy;
>>>    	sw_desc.fwnode = dev_fwnode(udphy->dev);
>>>    	sw_desc.set = rk_udphy_orien_sw_set;
>>> @@ -1499,6 +1552,7 @@ static int rk_udphy_probe(struct platform_device *pdev)
>>>    		return ret;
>>>    
>>>    	mutex_init(&udphy->mutex);
>>> +	atomic_set(&udphy->ctrl_resetting, 0);
>>>    	platform_set_drvdata(pdev, udphy);
>>>    
>>>    	if (device_property_present(dev, "orientation-switch")) {
>>>
>>
>>
> 
> 
> 
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
