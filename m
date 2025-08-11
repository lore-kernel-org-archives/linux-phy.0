Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B8BBC87FD2
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 07:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqkcM/BzSaC4ZmKDeOGKyGLEZdaMGES4vbk32sm4RxM=; b=nDhzwfULx5Rf5e
	/Qi66LK6eCrD5j8QCkl/mB5egKX4BhKTUBarYilK2JxLBnpY/1/fLCLfTPf7NsVcw1EorS6+i1aWW
	ScNT7UJJwPoyB+5M3c96xHSAsBkbh5fabAzY0MQL6caBv7gO2iFrAfy2hJLA9mevOi+T7MJ9mLkXR
	CgT6OK5CpaM451pyBVN/GmbKkzyquq3/K901kBFFGmTLNTd/MVo9fLYev1g8jNl+V/wFJRToOxIAx
	iglQKVeMRSSRVeKmRgPOzoKXVOmdib+K+Gy6cwZ3ZVu85RSzMjIEJt5z/T3NosHHFxz47K/ZkwPwX
	JrOWaF8aSbUWjzA+xfdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulNBF-00000006jr7-3niH;
	Mon, 11 Aug 2025 07:42:53 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulN8c-00000006jSA-1rVd
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 07:40:11 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-455b00339c8so25034135e9.3
        for <linux-phy@lists.infradead.org>; Mon, 11 Aug 2025 00:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754898008; x=1755502808; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=POALZcOL5uP4hmBAgsW0NLC3bq36nPwjL/gPbRn+/O8=;
        b=RQE68j+771lnPaj/QuIvqnuIiyHkPM6qcylRHhaApoCxohLaiXIbPz50QBu8eeTGdy
         4wTCW+DW4TfepiVmScbNygkg86E7u4TmbIf92qOHN2x2M/zLivou0YEYg89TLkfUpGwG
         qqzAYBz1QXXSOujZNaC+D88y9jYSuUWViAL4y01CbSo3ewvHgVwSoI7mSvnIMmksFeHf
         JYumXUiHzmkxh9yBE3cBYtfw4QAk1nk9ODQnPSvp5xG2o222lQeKkROCcAvIp0oMC0bY
         j+obKXTyfIURjfTqRcsV+ze2xX4fYea1yVkVLMiRfTmdZe+3jbaKikALBrhM+vlxVhxx
         5bPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754898008; x=1755502808;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=POALZcOL5uP4hmBAgsW0NLC3bq36nPwjL/gPbRn+/O8=;
        b=hqJU8a73BdpBNFGD5j5XfujasxxYnnmMx85Q8qXYHvKKG/erKqKQkRGNBzQMPVNZ/H
         40QZ9TrrYKKCizSKOyNW0H3I7ojTO+jZs3mMvud3HHCJ/vYohkDdglunwH1KFk56/EXL
         wIYbP32D/DcGra/DxX1jT+p9egneXCEhln0DFmlVX8W/4ohHZ/4wJ1IpNcziXfoYWL8Y
         uGZxDh5kpZkfxiPut6enIfR+YrljvstnyMBbU0LaLNhN44PXh3fc811g8sO4XH4sPY04
         4DQlLLI6b/7Gke/W6RjeVESL8CK9c2Zm9Q1iN8ApvieXGXNpSmBb8rTxlF08POQSwcvz
         HCOA==
X-Forwarded-Encrypted: i=1; AJvYcCWnrjdsDzBJYFlxRR+mAz6J8Q7YLCxJwU+faHtXwBuoE+u9gRiOeK7/UIz4FOWVNM3c1Auq0EgsUj8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPjYcsw1AGQnPLOti4ta21+SfYxDKEOdUpW+Kb8HRSzlMqALVQ
	r9+VDNtpam6aqNLOCUUtLYSFUGSQAl/NSAXoqRi5mGONIuQWrmEbcGbCM6CdfkrqYcE=
X-Gm-Gg: ASbGncuwOBZ2Drk30rw16shrOGdFVghN2i3TflXv+9gQr2mOs7Z/44dxiDvgOm6w8I2
	Sa0dr7E+ADiWXR7hvMsftC25DKM1T4GmseiV62E4Vh7zLFcjTb/W7zhxkVtquhzJOQZ+CxcX7YA
	4umhmyI0ol2cJ7WMju8Zk6hE+mRawDDBYqnBvRZg3X4YPrCtl6DWpsrz1JcZsCaxdnhxDcH0Zpp
	gZ3JUbuhD3on+E/kFhqp4vMAbmwIiXNhVN7k3ROgC4Y0/gLlQxi3wvFGqhvOQgZ9wtui/FKB0aQ
	f+GD8H+xZJb81eoifmS/qd3W4lvTNNSRkKgT36QJIiEZfHkCTjdKiRoLdRVp9vcUaYU8CvglNpu
	J8rdu8i/gjHcvBoynJt1XRMLtO+XVWS+KDI1QHFn/uD0siYB8EiUi7cPd1hkJRnc9yfdjF0aEKQ
	tQuKDhI0m9Ww==
X-Google-Smtp-Source: AGHT+IH4eA/RKU/GboTJ9VfoA/pYzZzZec5od8RkolpPdI5Ifcjq96waQtwfFh9MBuje3p8eQLal9g==
X-Received: by 2002:a05:600c:1c83:b0:456:2698:d4d9 with SMTP id 5b1f17b1804b1-459f4f2e2eemr97639165e9.3.1754898008092;
        Mon, 11 Aug 2025 00:40:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:b0fa:b045:4b82:de09? ([2a01:e0a:3d9:2080:b0fa:b045:4b82:de09])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459dbba5210sm314243925e9.2.2025.08.11.00.40.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 00:40:07 -0700 (PDT)
Message-ID: <9f2bdd43-da4c-47b2-bba5-d69bc0b06ac7@linaro.org>
Date: Mon, 11 Aug 2025 09:40:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/6] phy: qcom: qmp-combo: Rename 'mode' to 'phy_mode'
To: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-2-43272d6eca92@oss.qualcomm.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-2-43272d6eca92@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_004010_501015_916F5A13 
X-CRM114-Status: GOOD (  17.08  )
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

On 07/08/2025 18:33, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> There are a numbers of ""modes"" involved: USB mode, Type-C mode (with
> its altmodes), phy_mode and QMP_PHY mode (DP/combo/USB/off).
> 
> Rename the generic sounding 'mode' to 'phy_mode' to hopefully make
> the code easier to follow.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index f07d097b129fb7b3fad003103b7468b16c1c4390..30749943f66280c3aa9e9673466f6f736d1adbc8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1846,7 +1846,7 @@ struct qmp_combo {
>   	int init_count;
>   
>   	struct phy *usb_phy;
> -	enum phy_mode mode;
> +	enum phy_mode phy_mode;
>   	unsigned int usb_init_count;
>   
>   	struct phy *dp_phy;
> @@ -3282,7 +3282,7 @@ static int qmp_combo_usb_set_mode(struct phy *phy, enum phy_mode mode, int submo
>   {
>   	struct qmp_combo *qmp = phy_get_drvdata(phy);
>   
> -	qmp->mode = mode;
> +	qmp->phy_mode = mode;
>   
>   	return 0;
>   }
> @@ -3311,8 +3311,8 @@ static void qmp_combo_enable_autonomous_mode(struct qmp_combo *qmp)
>   	void __iomem *pcs_misc = qmp->pcs_misc;
>   	u32 intr_mask;
>   
> -	if (qmp->mode == PHY_MODE_USB_HOST_SS ||
> -	    qmp->mode == PHY_MODE_USB_DEVICE_SS)
> +	if (qmp->phy_mode == PHY_MODE_USB_HOST_SS ||
> +	    qmp->phy_mode == PHY_MODE_USB_DEVICE_SS)
>   		intr_mask = ARCVR_DTCT_EN | ALFPS_DTCT_EN;
>   	else
>   		intr_mask = ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL;
> @@ -3355,7 +3355,7 @@ static int __maybe_unused qmp_combo_runtime_suspend(struct device *dev)
>   {
>   	struct qmp_combo *qmp = dev_get_drvdata(dev);
>   
> -	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
> +	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->phy_mode);
>   
>   	if (!qmp->init_count) {
>   		dev_vdbg(dev, "PHY not initialized, bailing out\n");
> @@ -3375,7 +3375,7 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
>   	struct qmp_combo *qmp = dev_get_drvdata(dev);
>   	int ret = 0;
>   
> -	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
> +	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->phy_mode);
>   
>   	if (!qmp->init_count) {
>   		dev_vdbg(dev, "PHY not initialized, bailing out\n");
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
