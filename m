Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3708C25B75
	for <linux-phy@archiver.kernel.org>; Thu,  6 Jun 2024 14:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LMdlYLoAshxQfav9XBqLXZygfkWuGkVrTjEIFKrJ5Aw=; b=hD/+3kwvR3WKmkNjS6B6ZGqvJu
	laOkpLD5As6OsadGO5QSApjQxFyeCcEr+A0pdqBudUhIDdxnqeAwdzRYrG2Gp0+24Tuu0ZNQOfdP6
	cZQt771yEyOPVXpx9k0RZfoTHJg6+h5IQIf1y+FnDUl2quUjtwcZ1O9sDdnciym6CYP1yLZcn8k8u
	wyCZSxRjDzAeUrPOgBOInJ+FZflTTVVyNSGpbPpwCJRgS87yl/f4dhUne2FDJENMgl6EEhMqZHe6o
	QOXHQ+tzuDGwsjaFj8EjuHskNdQ9xgXJ+N9Q4PCoZINwB62tw2rD8ukK6pqpb9ov/tOExl9jfrkeK
	ctl7ppAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFDyA-0000000A2EK-1oRq;
	Thu, 06 Jun 2024 14:19:58 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFDy7-0000000A2DM-2ANe
	for linux-phy@lists.infradead.org;
	Thu, 06 Jun 2024 14:19:56 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4215b0bffe1so6069855e9.0
        for <linux-phy@lists.infradead.org>; Thu, 06 Jun 2024 07:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717683593; x=1718288393; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=36iJiWPjD6SuqWw0fPcJGiqZW0CSrSFa1RF7xICeHVs=;
        b=f3m6L+0zDjuPwoF31yOuFW08Ixwo8i/uNLZRLHh+NQ5SrFjHzpub97ROypCzYyHxQ4
         PQQYQYv4dSbmoJ3buRkiguioul+87daXsgQyoDzzmkeRxpVIo1rN10hCInIOOWGGlH4q
         44xsXhrrzD4RaIZQRDcCYwSbq6Q6dgl6GXLp3uhnBETSg29cD/0XHHvaGjuHK0gyNdUK
         hS7iEBFd7Pnea1+MvDdB06T/HjIhbOSzSEQXmggB6GUvEjkUfW8S7daDrC/wkOZDcfyq
         CyfFcfUoT4W24xzKnztx34iHWG32wRecyGI8bRstGJFjaZD//oF6NQ884AveU1GbJx9R
         lxRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717683593; x=1718288393;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=36iJiWPjD6SuqWw0fPcJGiqZW0CSrSFa1RF7xICeHVs=;
        b=tekl5W/q/dms2Ll0WVatV+VU6ztGo1JYvMaChSTVlgbcJbJaQ/P/Px5wK/LnrfrbQU
         G92964C8DrXvlUhYDbyCQwwZVSG+B8OkM3qEvcQjzuA9RVPiQqp3hdo7FwNZyj74TMlY
         agduEgUgp0dWr4zoGpHVq6LgtkOC+MC6YWQWy/P2WtHnlgRQVS2qyWtW7O1gMQBn0eUV
         X+iR0fLLMBbNkOMyYbmZPwqeo+6i7FT4KAuyd0/dg8mo6tfagPEOpuhPv4smsuPU5sto
         5Ebz7JjaRzfnLtMtdFeuXUwK+Cs7s+1Qm59y8IV4cxXB4l+ipQW/ZnByhdVDYUd4vshn
         qeww==
X-Forwarded-Encrypted: i=1; AJvYcCUDnTSEwb4fHMSlxy5VIfqcpuslHao8Zovd2WVoF7ENLQbutliJ79tRp9cU0oEm6vhl5tRgp9UaY1eCBjauf/9sGddpGvX7+yXm3U8vow==
X-Gm-Message-State: AOJu0YxG9NdRpmqQv9HpSsLQZRiObr0/EqgFejXRrRpXgzjG2R3PZICr
	mbC+MrZU/4GhpEqAsTnweVpACcaRmF2Em0+ffexhQuhKWzuK+BTS3uckhY5b//Y=
X-Google-Smtp-Source: AGHT+IHH4QeBm1WgAvOZdSJ5CLoMFu8LRgw4cTXRi0ooO8Q3Ak2T7S1SjZMKgar96ypnBMCR0zMUOw==
X-Received: by 2002:a5d:6d8f:0:b0:34c:7ed4:55a with SMTP id ffacd0b85a97d-35ef0ddb092mr3388718f8f.33.1717683592559;
        Thu, 06 Jun 2024 07:19:52 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:6d66:dc6b:6c6b:f7aa? ([2a01:e0a:982:cbb0:6d66:dc6b:6c6b:f7aa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215c2c7dafsm23719935e9.35.2024.06.06.07.19.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 07:19:52 -0700 (PDT)
Message-ID: <168caaed-b43c-4663-b35e-c010b58b310a@linaro.org>
Date: Thu, 6 Jun 2024 16:19:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 4/7] phy: qcom: qmp-combo: register a typec mux to
 change the QPHY_MODE
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
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-4-a03e68d7b8fc@linaro.org>
 <qgitwducxmox6vac6v3pmjxgrbizd2tk2fgxds4pjqinr2cefd@lbsrbit4xsdi>
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
In-Reply-To: <qgitwducxmox6vac6v3pmjxgrbizd2tk2fgxds4pjqinr2cefd@lbsrbit4xsdi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_071955_623286_35D4328D 
X-CRM114-Status: GOOD (  29.85  )
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

On 27/05/2024 10:57, Dmitry Baryshkov wrote:
> On Mon, May 27, 2024 at 10:42:36AM +0200, Neil Armstrong wrote:
>> Register a typec mux in order to change the PHY mode on the Type-C
>> mux events depending on the mode and the svid when in Altmode setup.
>>
>> The DisplayPort phy should be left enabled if is still powered on
>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>> PHY is not powered off.
>>
>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>> will be set in between of USB-Only, Combo and DisplayPort Only so
>> this will leave enough time to the DRM DisplayPort controller to
>> turn of the DisplayPort PHY.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 123 ++++++++++++++++++++++++++++--
>>   1 file changed, 118 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> index 788e4c05eaf2..b55ab08d44c2 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>> @@ -19,6 +19,7 @@
>>   #include <linux/reset.h>
>>   #include <linux/slab.h>
>>   #include <linux/usb/typec.h>
>> +#include <linux/usb/typec_dp.h>
>>   #include <linux/usb/typec_mux.h>
>>   
>>   #include <drm/bridge/aux-bridge.h>
>> @@ -1527,6 +1528,10 @@ struct qmp_combo {
>>   
>>   	struct typec_switch_dev *sw;
>>   	enum typec_orientation orientation;
>> +
>> +	struct typec_mux_dev *mux;
>> +	unsigned long mux_mode;
>> +	unsigned int svid;
>>   };
>>   
>>   static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
>> @@ -3353,17 +3358,112 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
>>   	return 0;
>>   }
>>   
>> -static void qmp_combo_typec_unregister(void *data)
>> +static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
>> +{
>> +	struct qmp_combo *qmp = typec_mux_get_drvdata(mux);
>> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
>> +	enum qphy_mode new_mode;
>> +	unsigned int svid;
>> +
>> +	if (state->mode == qmp->mode)
>> +		return 0;
>> +
>> +	mutex_lock(&qmp->phy_mutex);
>> +
>> +	if (state->alt)
>> +		svid = state->alt->svid;
>> +	else
>> +		svid = 0; // No SVID
>> +
>> +	if (svid == USB_TYPEC_DP_SID) {
>> +		switch (state->mode) {
>> +		/* DP Only */
>> +		case TYPEC_DP_STATE_C:
>> +		case TYPEC_DP_STATE_E:
>> +			new_mode = QPHY_MODE_DP_ONLY;
>> +			break;
>> +
>> +		/* DP + USB */
>> +		case TYPEC_DP_STATE_D:
>> +		case TYPEC_DP_STATE_F:
>> +
>> +		/* Safe fallback...*/
>> +		default:
>> +			new_mode = QPHY_MODE_COMBO;
>> +			break;
>> +		}
>> +	} else {
>> +		/* Only switch to USB_ONLY when we know we only have USB3 */
>> +		if (qmp->mux_mode == TYPEC_MODE_USB3)
>> +			new_mode = QPHY_MODE_USB_ONLY;
>> +		else
>> +			new_mode = QPHY_MODE_COMBO;
>> +	}
>> +
>> +	if (new_mode == qmp->init_mode) {
>> +		dev_dbg(qmp->dev, "typec_mux_set: same phy mode, bail out\n");
>> +		qmp->mode = state->mode;
>> +		goto out;
>> +	}
>> +
>> +	if (qmp->init_mode != QPHY_MODE_USB_ONLY && qmp->dp_powered_on) {
>> +		dev_dbg(qmp->dev, "typec_mux_set: DP is still powered on, delaying switch\n");
>> +		goto out;
>> +	}
>> +
>> +	dev_dbg(qmp->dev, "typec_mux_set: switching from phy mode %d to %d\n",
>> +		qmp->init_mode, new_mode);
>> +
>> +	qmp->mux_mode = state->mode;
>> +	qmp->init_mode = new_mode;
>> +
>> +	if (qmp->init_count) {
>> +		if (qmp->usb_init_count)
>> +			qmp_combo_usb_power_off(qmp->usb_phy);
>> +		if (qmp->dp_init_count)
>> +			writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
>> +		qmp_combo_com_exit(qmp, true);
>> +
>> +		/* Now everything's powered down, power up the right PHYs */
>> +
>> +		qmp_combo_com_init(qmp, true);
>> +		if (qmp->init_mode == QPHY_MODE_DP_ONLY && qmp->usb_init_count) {
>> +			qmp->usb_init_count--;
> 
> Can we move this clause next to actually powering USB part off?
> 
>> +		} else if (qmp->init_mode != QPHY_MODE_DP_ONLY) {
>> +			qmp_combo_usb_power_on(qmp->usb_phy);
>> +			if (!qmp->usb_init_count)
>> +				qmp->usb_init_count++;
>> +		}
>> +		if (qmp->init_mode != QPHY_MODE_USB_ONLY && qmp->dp_init_count)
>> +			cfg->dp_aux_init(qmp);
> 
> Does dp_init_count reflect the actual necessity to bring up the DP part
> up? Maybe we can unify the code between this function and
> qmp_combo_typec_switch_set()? I don't like that it is unobvious whether
> these two functions will results in the same state or not depending on
> the order in which they are being called.

Yep, I'll try to use a common function, so any switch/mux call would use
the same process, and I can probably simplify it.

Thanks,
Neil

> 
>> +	}
>> +
>> +out:
>> +	mutex_unlock(&qmp->phy_mutex);
>> +
>> +	return 0;
>> +}
>> +
>> +static void qmp_combo_typec_switch_unregister(void *data)
>>   {
>>   	struct qmp_combo *qmp = data;
>>   
>>   	typec_switch_unregister(qmp->sw);
>>   }
>>   
>> -static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
>> +static void qmp_combo_typec_mux_unregister(void *data)
>> +{
>> +	struct qmp_combo *qmp = data;
>> +
>> +	typec_mux_unregister(qmp->mux);
>> +}
>> +
>> +static int qmp_combo_typec_register(struct qmp_combo *qmp)
>>   {
>>   	struct typec_switch_desc sw_desc = {};
>> +	struct typec_mux_desc mux_desc = { };
>>   	struct device *dev = qmp->dev;
>> +	int ret;
>>   
>>   	sw_desc.drvdata = qmp;
>>   	sw_desc.fwnode = dev->fwnode;
>> @@ -3374,10 +3474,23 @@ static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
>>   		return PTR_ERR(qmp->sw);
>>   	}
>>   
>> -	return devm_add_action_or_reset(dev, qmp_combo_typec_unregister, qmp);
>> +	ret = devm_add_action_or_reset(dev, qmp_combo_typec_switch_unregister, qmp);
>> +	if (ret)
>> +		return ret;
>> +
>> +	mux_desc.drvdata = qmp;
>> +	mux_desc.fwnode = dev->fwnode;
>> +	mux_desc.set = qmp_combo_typec_mux_set;
>> +	qmp->mux = typec_mux_register(dev, &mux_desc);
>> +	if (IS_ERR(qmp->mux)) {
>> +		dev_err(dev, "Unable to register typec mux: %pe\n", qmp->mux);
>> +		return PTR_ERR(qmp->mux);
>> +	}
>> +
>> +	return devm_add_action_or_reset(dev, qmp_combo_typec_mux_unregister, qmp);
>>   }
>>   #else
>> -static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
>> +static int qmp_combo_typec_register(struct qmp_combo *qmp)
>>   {
>>   	return 0;
>>   }
>> @@ -3609,7 +3722,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		goto err_node_put;
>>   
>> -	ret = qmp_combo_typec_switch_register(qmp);
>> +	ret = qmp_combo_typec_register(qmp);
>>   	if (ret)
>>   		goto err_node_put;
>>   
>>
>> -- 
>> 2.34.1
>>
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
