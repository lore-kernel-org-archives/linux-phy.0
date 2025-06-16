Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9DAEC71135
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 07:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nnWTqUtqHlKTQn8g1pXBmxoA5yPi/aQd9ESEaUUtuoQ=; b=w/zEE61EAE55CsAgo/wchcnzSY
	lYbxwpinMiHyf1QLyn5TqIBlGoUAMNhl3TA0Ltjfpf4me8BI5db4RKNwT73UeHwiknot7w0WNZm0a
	xOOgaz8vsCLncJD3aGdfKzqQISN9eHdpLXLwBuz9qD/vLD5nE+EhVE4QpxMYBciztCR45z3kPidob
	+yajwbPQRp3G5gLlYYm/oHkUJyr/bXGd0r5bpiTRMueZjJOoHEL9r6GZQE7C+vL8jnHmbdPc9WArv
	7KlTnP0rAUebU4QUHOductEZ7+2Wvly1OtwlGsV4wXh3Z1gFTpTBc1YsA7LGKF3n9QaODOC1aX2Iy
	h3u4hUow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR4WO-00000003gUX-1xm2;
	Mon, 16 Jun 2025 07:44:48 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR4IU-00000003eNi-3A9c
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 07:30:28 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3a548a73ff2so3937367f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 00:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750059025; x=1750663825; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u4g4ohSAiRV+zTDawEcZfrTruxPOBshWISquGhuBGvo=;
        b=KzygpAnPBOXMMdNapyD7u0a+q3CZxVnkGPtyeHbGLWWrWwQpeH/OMw/I5jXRKHP3OQ
         w096bsc0bTPiQcdQkpMtZKxBxCkyLjvUb+yXW4iTQFgQpS/MfqGp66rU25+Bwm7G3nbU
         AFTVmFfDez7BdkqvMWu+NzX3jk9Ekiy5kSm7JdjObGJE3swacC9gV/bNEJ8rxsSEfyi0
         5Y6tP1uGHol2QPg8ouUEuRXShBuMaKpZ4AZZH0H/b+WdofFAC9l90B3M+VDCt91JSe9H
         gMwgBxBvtXUtrJd6Q5Ub2GuZfmuq6SXXvMO7FG6FvvMHNEHhlqKc5stnKFc8Hqq4ykk6
         DkUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750059025; x=1750663825;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=u4g4ohSAiRV+zTDawEcZfrTruxPOBshWISquGhuBGvo=;
        b=vayhSiuOOnpJ5+j6qR6zeDyev7sWHVsaBEtNuwXcXvzasf82nios08Tq7SLh+rJJyp
         hcLHvPV6YgBvg0bgHuk82TGDMvoyfbSWKMg6GcKbp6BgqI+f0DmyCCWD/Givt1X8+KYd
         Uz9kY2X38bERBpwbBpMPuezTTVR/m0nziQaFHyoqH0Ipvb+K/xXz9Av4eWm/79GmjHEn
         PTDi9RtrhAHf5l6rdC/rKlNCF8MZAMF2yXT5kAGolJUGRcpHxLvj+DM/WMtqFS2U+9gv
         HgF/+hx48iKBwGZysfhRH4VwkomH8E93CPcfz6dKm4jECNkzFoaA2+KEGP7w89ZY2NG0
         q5Ng==
X-Forwarded-Encrypted: i=1; AJvYcCXrDdsb10DGMNu8oFkv8TQuPdvvOhSLDD8IUps+kF0BVrBGs/NaSqH1QP+hiFKKv+1lsMOQlgKZ0S0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxdw/mJBi9bgjU366YUAww0phHqi1AFU7cq+gU5eqcXxNntiQ4w
	RyI62ueNHyrCAYTiPJ5Ioq6NrtWw9ry2uSNDecImh4Z9pZWBFtrqV7uBK9G3knDMc5+4d/w2cZ0
	nAbKFmR8=
X-Gm-Gg: ASbGncsPX6Zl5qTxGJlDDpV0vavfU15x9hTojErcabyswqOhHDmgy0onlAlA8YMFdVl
	Nl0kKyAbeQleIaZyAGKw9DI9dhc75PqA+qPwveS+o2YfEoniJp04fcfQJzMgqkyuTzz0uJhkU8U
	XlqYh5ZUShOzBeEIq5W/mbzR8InZdrQh8TRrP8cqu716qR0cUB7wAnCHXnOP1Krk0Hj655y0FLH
	fdPBlqvfCJWDRnrr/h8qFH+eRcnl7YVSPayOBndqzm+/8WsTofSurLhPWA4bgfL/RWMIt/b4T87
	bSIjD1gKaYomlh41tb/GxHih/3JGgPm9Wu6tXmg1CY2rbR38HTKuYDQIbs9FduZAQUkA/4iO2g6
	2bcQFNgJ1rQBUL4QkLl2STgUJwnidHMRNbxBt
X-Google-Smtp-Source: AGHT+IEwjEpuiWh57LayRsqK5pKmU9wpWm982Uem9pS1nRTdbkNJ7pz2QlqFMoGeW71phckBOrBYIQ==
X-Received: by 2002:a05:6000:430c:b0:3a4:f787:9b58 with SMTP id ffacd0b85a97d-3a572e9c412mr7428081f8f.58.1750059024717;
        Mon, 16 Jun 2025 00:30:24 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:6c7:97de:65a8:488a? ([2a01:e0a:3d9:2080:6c7:97de:65a8:488a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568b48564sm10089367f8f.82.2025.06.16.00.30.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 00:30:24 -0700 (PDT)
Message-ID: <4f703259-c27f-403e-8ebf-2358a3b90b6d@linaro.org>
Date: Mon, 16 Jun 2025 09:30:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH] phy: qcom: qmp-combo: Add missing PLL (VCO) configuration
 on SM8750
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Melody Olvera <melody.olvera@oss.qualcomm.com>,
 Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250616062541.7167-2-krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20250616062541.7167-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_003026_931577_7D72DEB8 
X-CRM114-Status: GOOD (  12.20  )
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

On 16/06/2025 08:25, Krzysztof Kozlowski wrote:
> Add missing DP PHY status and VCO clock configuration registers to fix
> configuring the VCO rate on SM8750.  Without proper VCO rate setting, it
> works on after-reset half of rate which is not enough for DP over USB to
> work as seen on logs:
> 
>    [drm:msm_dp_ctrl_link_train_1_2] *ERROR* max v_level reached
>    [drm:msm_dp_ctrl_link_train_1_2] *ERROR* link training #1 on phy 0 failed. ret=-11
> 
> Fixes: c4364048baf4 ("phy: qcom: qmp-combo: Add new PHY sequences for SM8750")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 8b9710a9654a..f07d097b129f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -228,6 +228,9 @@ static const unsigned int qmp_v8_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
>   	[QPHY_COM_CMN_STATUS]		= QSERDES_V8_COM_CMN_STATUS,
>   	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN,
>   
> +	[QPHY_DP_PHY_STATUS]		= QSERDES_V6_DP_PHY_STATUS,
> +	[QPHY_DP_PHY_VCO_DIV]		= QSERDES_V6_DP_PHY_VCO_DIV,
> +
>   	[QPHY_TX_TX_POL_INV]		= QSERDES_V8_TX_TX_POL_INV,
>   	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V8_TX_TX_DRV_LVL,
>   	[QPHY_TX_TX_EMP_POST1_LVL]	= QSERDES_V8_TX_TX_EMP_POST1_LVL,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
