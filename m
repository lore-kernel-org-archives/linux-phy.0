Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F143D29DE0
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 08:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mWgSTxWXbI7Oq8b6zQOoGzwbKvbHr0yqS4ozNgXuACQ=; b=GNdL1nz3ISnh+hFQ6oSPpNXO8s
	Ar4A+N17hcQ53a6SPN8PWWCvMQ+KxEquJ5vuc5+l05JecBXtbT4on2TC7jhbdR0vBK2vFuw/yFnfv
	Rgl+qRoxNij3CF4Y/iDJ40FdhwypBCo5NY3REaNJ1TYPCD6nTXILzDbbC96ywTE1rpJugJHoeeVbn
	sKIY4VVZacbZzu3z7Odfqgf6+nTgi3/6plu1dWYG579CkLzlVtCKcWQb/relezC1GjIwTDTjJDGSC
	wyf3zSeiChSHJa21KmPTKTxmCZR7JpbqlJf7m9Uzvc/6umjeLM9DqgMOS2xtE9eX9CnA3juNFvQOd
	BQ6a9Atg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZU5-00000006hyp-2iU1;
	Tue, 13 Jan 2026 08:10:39 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZU2-00000006hyT-2Hsi
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 08:10:35 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-47bdbc90dcaso51049675e9.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 00:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768291832; x=1768896632; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TyrISbBW8+PtR6598NJT1L7vvAgAoA5tCosKy9SNs8I=;
        b=G1/mKyFMp/lx2kWkrfCKJwJHdvxrM62AkP4g+k2wKTABFOJOBT1nCO3VCfKzHloe9E
         q3Gr8hjIqFPg2DUhIOuI74yGIHa6eEx60nCg2QFuWKeIevQ+6gWepgmgnQsQHD1SgCT/
         vNqaUI59Zxh2ZJ/2DsjzbFxzjTlp6fvgjbhKHu2/LH0n5IZAQGl/7CwVpqC6uIlOhjEM
         c2DFitadveBDAIsGcXzfu94GBQ49F5Dx26cYtCbFslcw2fQCecmiRIMM4QLV5RNEEclV
         PJd/akYFvYsmLjmRnd75r4KTGPJOaAe4VWmpbwZd/upPjizCxCCRua4RmB8YNadKJOeP
         cvCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768291832; x=1768896632;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TyrISbBW8+PtR6598NJT1L7vvAgAoA5tCosKy9SNs8I=;
        b=S0EBt6D9Oxhs3dhSXWizuyIwypdVHkTw7XNTYuJ0Kcb3vrasX5Ia/krIalK3126orY
         GX3kXtDayKVK4T1BPUG0pXdZNa5NrbbxwvgQVjsqh7RHrStd4uetBxOz/+ZpCQI/2why
         AUchA9OWZEF9SRsp5LIVi3Qku6y1DRx8CPNBhdQiaQ9kAy3omZmKBY+cVHL4q9vrUusg
         kiavZVCFJeMk2yvshmAI06rfChn+ChFjT/wElX4Hnva0adZKAluJez+jyMY95dELtWnx
         miASyzkfzh7807heGuRjBL95LeMPQnwqk1lY2R0zZzT7gnu7itHSjXiqeGnbOXpqpXiq
         lLKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrbiw09M8vFCUHfWPNmwQdgTCn62ZeY7pSYUy2YmwnnsknyWIE/PDjgz7uXS3C4wEl3+QPb5Im+WE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyt1D/vRmf97l3hMigPsT1d13LS1wDDkxrI4YaMPNQCKgg49vv/
	EiYgpW9RiZPTr8mCxUAfcuCXuKFUwYv4Auc/2qlTCg1z+/axMQKpT4QXPxNP0QEs+gA=
X-Gm-Gg: AY/fxX5R2UpHX0YJxOxCl3EYdPhumH3qw3vk7chVd36auDuAQ7pCWOUaFEMTrK+QEor
	bvwhOx0G1p1h1Oz21PEmiJbC7JSNDadFSlkJYj56Rg3/Z1Ir1ONubCG9svGT/qnQQtalGOqruvf
	XjrUp14mB2a8dlKsv1zb4YnGOCqoJ+7ZcZJxSpko/u2pxRj1IyiRiFj0S+fHxIzzaRM0hDiy3vL
	GlGRP9VzngfP3FE88eGCITByoGjATnHnCKT+Aa9LLaAUDY6QjrMJrQtS30IduQahpdZOVhtPW0t
	ydWIvTFUY1XB22Jr1R2e/V90Gu8rIEiuXS0/ignPfo3ixYL88vGRJkjMqpnYwXaBPlGlBgCNz1U
	cN6N6r1FWRkPKwyGIPp0B/5peXA8wSibOiWhD/Ft5wbE2xr/3STOzHhKgKH0Rd2Zwf54O10odju
	Nk/9Oe6GKDh58ncCVt8woHhzYPs9jJYWjhDPsEf5O7LDF7ieJkBQ==
X-Google-Smtp-Source: AGHT+IERmM5mpJUL5+COkgMNwZDlO8gj1cFeRcvQbW8L339YKMkWPW9Lp8tje21QCwG1r2XjJ4Vdug==
X-Received: by 2002:a05:600c:3556:b0:477:63b5:6f76 with SMTP id 5b1f17b1804b1-47d84b3b3d7mr237933285e9.25.1768291832386;
        Tue, 13 Jan 2026 00:10:32 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080::fa42:7768? ([2a01:e0a:3d9:2080::fa42:7768])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47ed9feb7d6sm9589145e9.6.2026.01.13.00.10.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 00:10:31 -0800 (PST)
Message-ID: <11158d95-4a96-4343-a099-a2a26f6ad589@linaro.org>
Date: Tue, 13 Jan 2026 09:10:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] phy: qcom: edp: Fix NULL pointer dereference for phy v6
 (x1e80100)
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Val Packett <val@packett.cool>, Vinod Koul <vkoul@kernel.org>,
 Abel Vesa <abelvesa@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260109045214.5983-1-val@packett.cool>
 <bc08f938-a315-4797-931b-5c11d402670b@oss.qualcomm.com>
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
In-Reply-To: <bc08f938-a315-4797-931b-5c11d402670b@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_001034_622357_A108FADB 
X-CRM114-Status: GOOD (  11.49  )
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

On 1/9/26 11:49, Konrad Dybcio wrote:
> On 1/9/26 5:50 AM, Val Packett wrote:
>> For Glymur SoC support, the com_clk_fwd_cfg callback was added, and a
>> stub implementation was added for the v4 of the hardware. However it
>> was omitted for the v6, causing a NULL pointer dereference oops on
>> Hamoa/Purwa (X1E/X1P) SoC devices. Fix by adding the appropriate stub.
>>
>> Fixes: add66a6673bc ("phy: qcom: edp: Add Glymur platform support")
>> Signed-off-by: Val Packett <val@packett.cool>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-edp.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
>> index 13feab99feec..a17492db21d8 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
>> @@ -613,6 +613,11 @@ static int qcom_edp_phy_com_resetsm_cntrl_v6(const struct qcom_edp *edp)
>>   				     val, val & BIT(0), 500, 10000);
>>   }
>>   
>> +static int qcom_edp_com_clk_fwd_cfg_v6(const struct qcom_edp *edp)
>> +{
>> +	return 0;
>> +}
>> +
>>   static int qcom_edp_com_bias_en_clkbuflr_v6(const struct qcom_edp *edp)
>>   {
>>   	/* Turn on BIAS current for PHY/PLL */
>> @@ -758,6 +763,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
>>   	.com_power_on		= qcom_edp_phy_power_on_v6,
>>   	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v6,
>>   	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v6,
>> +	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v6,
> 
> Let's just point it to the existing qcom_edp_com_clk_fwd_cfg_v4

Yes

Neil

> 
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
