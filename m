Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD597CFD2F6
	for <linux-phy@archiver.kernel.org>; Thu, 27 Nov 2025 10:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoLSq6vAZTfmfzBRqgARH/26qF17byMD/NuQbw8t0BE=; b=lSq4Q5/21aY19+
	4Q+S6FzrLh8KttVwptqEGjvHWwy6rEI94kx3+MSbuL5yJ46Pw/xyPmLSTDmcSJSseBv+9a7Dr2WNS
	cJonRiNTkMEvAgvFvQC6DJVWWKgLq1aUatkY6zG2XAkKINRSvbxPLK82upDRIC6JcxV3Oz18wE3nN
	zk3zmmU2cfHTRjdEGNSCdSu6zxscDpFpEvs3BHvx1WMVJXZI8uIGvJOwbg6fTy+rT3LPvysMG6iuJ
	92cjlrZIatznHGmDOi+QFFQzDmEtd8GPDFmeALRUgVRwEQAfUPD+/LQAGPdU8YXt56YfyQx278BCa
	yBGbfaMMxaIpbSKNl6vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYq3-0000000GL4F-1WEP;
	Thu, 27 Nov 2025 10:02:59 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYq0-0000000GL3g-2As8
	for linux-phy@lists.infradead.org;
	Thu, 27 Nov 2025 10:02:57 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so7114495e9.2
        for <linux-phy@lists.infradead.org>; Thu, 27 Nov 2025 02:02:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764237774; x=1764842574; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hHH+tly9rHv5BTYYu0oNzi86knHHlo9gZUqpwYfBIkU=;
        b=D7qWzpp+KgcVZGbCK/QwbuI9VfsvvDtaGD89JOr2cipbZf4Xq2I6k5TNDNACcC4SEt
         k6f6Bf18AOhbXDsO9PAgoZO5C7d134r3VyjB9XwDU8hS9iotageAj3mjHlmLf0pRq49X
         4KgO+MhR/xJcUOfKjZhtLSlBapqhnK3jPCnuacQSt9Hmv0OJ9tW9fo0SeEfElNRLioeq
         IQVVYIFgLDRuRetZ1M+3W4bd32JXOkUnDjqSEFVSmHdT6Faqi17q/Iii7hZ/oCsvHAyv
         QZ2tTu/3HOWREcPDfzlNXMu7BrfxatKB01clcafuGaGife0/fHZUgkW8f7kqVNaYORBD
         vgYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764237774; x=1764842574;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hHH+tly9rHv5BTYYu0oNzi86knHHlo9gZUqpwYfBIkU=;
        b=Z6bAkHMVy/qQN7pEuw6m0lSCutge2ei475v2Eesdd2QMqZqb6v5gm2GFXdNMfpRrJP
         fH2vduXzZcvzpUwx/++iTHWWuKAs/74BDJYaghWSezw0/jqoNTMN4b2Pi6Ei92KwoyXM
         ItsHdBJga1Tj5C5o36H+3BzshSqDQoggQjDglpAT8RWDq5IGWsIbGYl5GDlGr4mSPU6r
         dJAQAEGrpShMX6Do5JtLZtwR8+LlSjNO+sNlAn8fhZJR5bTC83Us4qazKThCRitH7cvT
         Iz1IVpQ/Tlbm5xx1+Dd+dN8HPGzNIy/xmzUBjUo2Xw6jyvgP9NpHUYHCqlaJL475fvjd
         jl7A==
X-Forwarded-Encrypted: i=1; AJvYcCWvPXzr8FUt+239tQ3dXYEMLZ23RCQ4TvRXl7YaGt3cYhLnsj4waaPhBtQ6qtiqdcMBsr2Z/7leq6c=@lists.infradead.org
X-Gm-Message-State: AOJu0YxsUyAF1KsZWIr6QcNm2RMk4/oHESSwcAtm8yORNlHypfbCKprH
	mMHVA5TVMH4Y4vJuLrJYp0qysC6/lVemXoILHRDpU+o1pK5lED3Zd12K5o5MX22yJiU=
X-Gm-Gg: ASbGnct5s0+gtxdQkALPAp75hUhfDl7galzk1NCEENrDHBUaKaolYibhAmDLb79Qd0B
	Xk3vB9S2cgKHmT66AHLfqAB44GsX32VsC0P6bu4czXpY1N/rUaMDT4Z66wPkK8ckwe0ni7UxG/E
	tKeIt3BodPIIMvaK6wlMteBEpWhYkvks6cSbblY4DSX+RMGqm7n+YwSwqOHd/5XpLjsKif0qc0w
	OQHBPHQGEDL+2maQD5XybqVdOTeCdmPmy3M76ooStRw7jOuQhC63mhZfLXUS/An08AIVTArxfT6
	48RkJZIxoTBfNbevcbno+oFxBeltYHnHtKrsk5j5ilrcbAwizISMPojWAvDGY5JluoaSUJBIIUX
	BZDYi+XhqtUQjw0kNJ8/ooExWefdhqYea9GzKFhn+fsQzE3Agj3Aw1nZIA8krCzprc0xnwX6u2Q
	XRXRLi3e0/e4hXOueh4hyfKykqlCgP0la8dLffqO+FT04XeCFxgOJG5GKxmGTwN/7w2PC132Qkb
	w==
X-Google-Smtp-Source: AGHT+IG21gKNgjLUBpai50csLbmChbH+hrhkNuMwzFV516/1MVZp5+k2NOpm8TNn6F07EiU8l24KNg==
X-Received: by 2002:a05:600c:1c24:b0:477:aed0:f40a with SMTP id 5b1f17b1804b1-47904b1af90mr119451105e9.19.1764237773634;
        Thu, 27 Nov 2025 02:02:53 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:564f:2952:ee58:6d9d? ([2a01:e0a:3d9:2080:564f:2952:ee58:6d9d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479052d9affsm63367835e9.4.2025.11.27.02.02.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 02:02:53 -0800 (PST)
Message-ID: <b769345f-ba5b-4ce1-afd1-4bd30e3dc713@linaro.org>
Date: Thu, 27 Nov 2025 11:02:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: cadence-torrent: restore parent clock for refclk
 during resume
To: "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, Udit Kumar <u-kumar1@ti.com>,
 Prasanth Mantena <p-mantena@ti.com>, Abhash Kumar <a-kumar2@ti.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251126-phy-cadence-torrent-resume-restore-refclk-parent-v2-1-5d2eaa958b06@bootlin.com>
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
In-Reply-To: <20251126-phy-cadence-torrent-resume-restore-refclk-parent-v2-1-5d2eaa958b06@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_020256_656240_B2F8A4AA 
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/26/25 16:33, Thomas Richard (TI.com) wrote:
> While suspend and resume, parent clock config for refclk was getting lost.
> So save and restore it in suspend and resume operations.
> 
> Signed-off-by: Thomas Richard (TI.com) <thomas.richard@bootlin.com>
> ---
> Changes in v2:
> - store parent configuration in cdns_torrent_refclk_driver.
> - add cdns_torrent_refclk_driver_suspend/_resume() functions.
> - use get_parent() and set_parent() operations to save and restore the
>    configuration.
> - Link to v1: https://lore.kernel.org/r/20251110-phy-cadence-torrent-resume-restore-refclk-parent-v1-1-1be87af7d19e@bootlin.com
> ---
>   drivers/phy/cadence/phy-cadence-torrent.c | 23 +++++++++++++++++++++++
>   1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
> index 37fa4bad6bd72..877f22177c699 100644
> --- a/drivers/phy/cadence/phy-cadence-torrent.c
> +++ b/drivers/phy/cadence/phy-cadence-torrent.c
> @@ -397,6 +397,7 @@ struct cdns_torrent_refclk_driver {
>   	struct clk_hw		hw;
>   	struct regmap_field	*cmn_fields[REFCLK_OUT_NUM_CMN_CONFIG];
>   	struct clk_init_data	clk_data;
> +	u8 parent_index;
>   };
>   
>   #define to_cdns_torrent_refclk_driver(_hw)	\
> @@ -3326,11 +3327,29 @@ static const struct cdns_torrent_vals sgmii_qsgmii_xcvr_diag_ln_vals = {
>   	.num_regs = ARRAY_SIZE(sgmii_qsgmii_xcvr_diag_ln_regs),
>   };
>   
> +static void cdns_torrent_refclk_driver_suspend(struct cdns_torrent_phy *cdns_phy)
> +{
> +	struct clk_hw *hw = cdns_phy->clk_hw_data->hws[CDNS_TORRENT_REFCLK_DRIVER];
> +	struct cdns_torrent_refclk_driver *refclk_driver = to_cdns_torrent_refclk_driver(hw);
> +
> +	refclk_driver->parent_index = cdns_torrent_refclk_driver_get_parent(hw);
> +}
> +
> +static int cdns_torrent_refclk_driver_resume(struct cdns_torrent_phy *cdns_phy)
> +{
> +	struct clk_hw *hw = cdns_phy->clk_hw_data->hws[CDNS_TORRENT_REFCLK_DRIVER];
> +	struct cdns_torrent_refclk_driver *refclk_driver = to_cdns_torrent_refclk_driver(hw);
> +
> +	return cdns_torrent_refclk_driver_set_parent(hw, refclk_driver->parent_index);
> +}
> +
>   static int cdns_torrent_phy_suspend_noirq(struct device *dev)
>   {
>   	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(dev);
>   	int i;
>   
> +	cdns_torrent_refclk_driver_suspend(cdns_phy);
> +
>   	reset_control_assert(cdns_phy->phy_rst);
>   	reset_control_assert(cdns_phy->apb_rst);
>   	for (i = 0; i < cdns_phy->nsubnodes; i++)
> @@ -3352,6 +3371,10 @@ static int cdns_torrent_phy_resume_noirq(struct device *dev)
>   	int node = cdns_phy->nsubnodes;
>   	int ret, i;
>   
> +	ret = cdns_torrent_refclk_driver_resume(cdns_phy);
> +	if (ret)
> +		return ret;
> +
>   	ret = cdns_torrent_clk(cdns_phy);
>   	if (ret)
>   		return ret;
> 
> ---
> base-commit: c0ea2ae3b2d7fb9eb4bc14400e39d8fb4f510714
> change-id: 20251110-phy-cadence-torrent-resume-restore-refclk-parent-f59fb5fc69fa
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
