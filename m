Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48B4AD29DE0
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 08:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SgX4wWWjSdGYjucCJD7OJlgHtnZVPU6CNbN3+Hjdz58=; b=GMVbfFYOKOSBqHChE6qOZLQsL0
	G+gCP7oR18ApVDDH/iXotIvshKPLhSEclc0DgTe1WbsexIhoE2VCzrk0kid0EEjt0tHu5VKgU6REj
	HxAayfNeWRjuyfbTkV3ZkPtuMMJzdSe7h9Aafy0A78tw8hv+aMgKNztfcNx6N2vwk7XIY7gSvK9qv
	M+MCE5EIOsWe1FoyOmT4uzneGD7HA9lyw7CpT2ZGH6ixEHCQmRZNAp8CdRDlxw19mGLWlDYUsEzJG
	6Jx3smpbQqeMRkK4+w3EBaZwDOcA8MrKri5bzPshRmS4lLTs1xoFQhcDXRWSDY8TC6hFDw/aODC6C
	17qXYg0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZUV-00000006i0x-0AOx;
	Tue, 13 Jan 2026 08:11:03 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfZUS-00000006i0d-1WDg
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 08:11:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so49340935e9.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 00:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768291858; x=1768896658; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bwW+ygfqdK5UYdKdlacSQmA5THvQFOrd2NY1OQuLwqQ=;
        b=HAWyk5r4xLhISGOJTLcb0VLHkxlnUGKbStDD3/MRQoz00E1gbks05Vcd3mqFduF1di
         tir3cyK9wlDQR3vMoM2aeIDixxBSFH64DKvKWHakhQ8nOfqz5J8tOP6wRGaGqSrk/e7z
         2ZBmKbG78tHZ5G/tyYcejEK35EiHOYLU02nx/WU+j20O3L2tesF8aOftsJFya0EBP4Q5
         T822ttbMjEQSOuT1GXjcXsa/FVdFQ/hJDtzR50WXPIFPMoxEhzDMX+wTVCT6YXXK82c3
         qjtttHuPC5sa26ECjzwusgZ7+l1b583kjqYsAMt+nJSGEQ089PI/B8sY8BSYRBQDC2zB
         pajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768291858; x=1768896658;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bwW+ygfqdK5UYdKdlacSQmA5THvQFOrd2NY1OQuLwqQ=;
        b=kht4JmbxUwJptVPQZevlJT4oL3c1Wnc4muRoSRLM17fr1Jtev9VQ4qRmHSpvVSokyf
         AbV1U/ns/zSU2T3pSo/X6K3SD1QDDB4eM63YDZu1DK4UUiKP0FwQ9XnB95ybq1/XNKUW
         5retVyfLb7pr78/4kzWAjnVncdN9IwNRf7/YodQjDlthhtDtvzskOhjPOjQR4Wt3EGxT
         xEuR7uc9cJPuuIT5GTgK0eC06b5Pir5vJdSz+jy5pWuyEpp9jq+8kErFHYxwNU8opHDQ
         dz1EDhZTJk0U64/yXowO7xWGzXG0eVWXeHs+RGWQR5ylSxSAQo8dKn8g7YiTuiTQBMAJ
         cmbQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1RC6NuOS+WwLtOBwSUSTcXj482giKqH5KK1dlcyi1nBh6qjKpDwdUBmVOC8uy58D5ZazfTyGIJtA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx46JkMUhFuDYNhpZbhP3CCWPKvFVNqVwtNOQ87oS5KiKMPbeuq
	MiqiEyXUF6ZZRYW91+PzQZ5k7F2cOtKfFvn4RiNnFHmq2xoBfnQOW1Gcf5LxOj+Nwbw=
X-Gm-Gg: AY/fxX4WMvpcrwjRXcsq+GOGHRaPjbRWhmUmStOVMYgCqLv846II0952ko/gbivcp+5
	bDne6AtUQmTZrr4O0AsPrueH93DTX8gEU5U7XxshG2Ml1Yg+B+lToDUiHQxltB/dtTboQ+z3wSO
	yiQeM5SfB+FjY6gzs3XgUoIFo4++bMhDnwUA1ti86RX3nKzRtVl6EspDfXd3pGm0JsxAercpMz6
	sWRxxnnjIV4PSg+TTeDoUrhEYhEm32iMxQd2K2JW6BkBonJPX9WcHv0ATHqBIIyXGZeH9uQ6Giv
	qIjT3Wh1fcNKamDhKWHFfcZaW+BOowZSPrkqaDru9tEpIsQaaDC5Dt+MUeaLYb9OZtl+qShM8Yu
	myEnTEbF7V2dwvhoZizgvznORXCmGbImMdhzZALlvu1q2PVWcL/1qvFk/+48K4YjpoNHEvoPtp9
	4HIHCY+51Jl/7vVehi8wb6bivsDS/oIfupVRr4eqA=
X-Google-Smtp-Source: AGHT+IHVubdkYVXRdCYANXMR0ISA+TInCn3bu5ON04/WkSf5bxAVISHMRL30pKlB6Nx3R6Ym8XxdTQ==
X-Received: by 2002:a05:600c:3484:b0:479:2a0b:180d with SMTP id 5b1f17b1804b1-47d84b20fd7mr244456025e9.11.1768291858442;
        Tue, 13 Jan 2026 00:10:58 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080::fa42:7768? ([2a01:e0a:3d9:2080::fa42:7768])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47edc05b267sm16025705e9.15.2026.01.13.00.10.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 00:10:57 -0800 (PST)
Message-ID: <2d07b633-becc-4b79-adfa-932ae2847671@linaro.org>
Date: Tue, 13 Jan 2026 09:10:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2] phy: qcom: edp: Fix NULL pointer dereference for phy
 v6 (x1e80100)
To: Val Packett <val@packett.cool>, Vinod Koul <vkoul@kernel.org>,
 Abel Vesa <abelvesa@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260111083317.604754-1-val@packett.cool>
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
In-Reply-To: <20260111083317.604754-1-val@packett.cool>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_001100_612411_4302DB57 
X-CRM114-Status: GOOD (  11.93  )
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

On 1/11/26 09:25, Val Packett wrote:
> For Glymur SoC support, the com_clk_fwd_cfg callback was added, and a
> stub implementation was added for the v4 of the hardware. However it
> was omitted for the v6, causing a NULL pointer dereference oops on
> Hamoa/Purwa (X1E/X1P) SoC devices. Fix by adding the appropriate stub.
> 
> Fixes: add66a6673bc ("phy: qcom: edp: Add Glymur platform support")
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Val Packett <val@packett.cool>
> ---
> v2: pull R-b, reuse v4 function as suggested by Konrad
> v1: https://lore.kernel.org/all/20260109045214.5983-1-val@packett.cool/
> 
>   drivers/phy/qualcomm/phy-qcom-edp.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 13feab99feec..7372de05a0b8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -758,6 +758,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
>   	.com_power_on		= qcom_edp_phy_power_on_v6,
>   	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v6,
>   	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v6,
> +	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
>   	.com_configure_pll	= qcom_edp_com_configure_pll_v6,
>   	.com_configure_ssc	= qcom_edp_com_configure_ssc_v6,
>   };

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
