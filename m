Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87162C4332F
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 13:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/XVtR7LqDWnQJhttezf9VwQlVTVxm+sJbEjvWB39rLE=; b=uqKZzRM0yIl8Sz
	dhNoiP4nF9hUOlE6rx+sQcpQc9UxoMr73sGhykhrkC+n3fL9xuo4nOmbSg33v8vol+6ab+kck0zvb
	DwHSN980asjURhpS0g5QfbfPE+cCObLc4evwULV5dUHDXEHf5dGckVv5lwj1nyy1cKluqF/EzHNK6
	p51Cg7h0FWC6QlDOXHdzK2I6AysLtI2cX98YX3fgm7cYUgG+vPvRDnegNMdQPqfPcb8YQgILMhAXB
	tqV5k7/eAW5qMOx33gng1P1pD8mJ9rLE42liwnLeWmO0StBqrVINx2JPwlVVW2TeXf7RgSkB+bo83
	SRHyXfxsMstjk8XXdUvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlVfX-001CfR-Vo; Mon, 02 May 2022 13:00:52 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlVfV-001Cek-FC
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 13:00:50 +0000
Received: by mail-oi1-x230.google.com with SMTP id r1so14921940oie.4
 for <linux-phy@lists.infradead.org>; Mon, 02 May 2022 06:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HvMAXXFuk42m4Zm5D1wvVDv7JZNalHrdw6XJOnjlZdQ=;
 b=g7PLjRJKRkitPqkdOGdclqkVcy2SPLaj1hzwwFuVS/mmJaYuoiq6vSSSp2XQ1oDGoO
 4aEcHRh56GZ60usCMXN66WpfzCpLm6wtyCHODWR9AXSuUOw5Iwd32+KfXJ82cR5ZT/9C
 7whkA/IzXe4Z+wN+k5YWqzrFedFHBBpLyzOu3hl5AVjbyRhYGA0TiPYAtWTs7HqM44xF
 M2TGevjkcpd7FEef4PzH0lgUJ+Yal2ehi4O9oqK9U1oxp7I7khIoUfJxVcjVpAW8qYEi
 H4uD8Wnyec4M2gHklp79iJPWxjcABYh215HbknoCfmw/SM0rUyW+FijHXSNmqr1Hk2L2
 muFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HvMAXXFuk42m4Zm5D1wvVDv7JZNalHrdw6XJOnjlZdQ=;
 b=4tmo5ggKuX+ZepZm7olwqqh9eLbnU9M6lPMdZ4ve01pJlLKBz21US6Oo+ZM2mrIzM+
 1REw/0LIFXaMTAGRXEZdXmR/DKvIJwIHWfuI508gzhBWmK7OtMGjxvt48zJxaUQ68fMN
 1IspdFmFvzJGS3v5+RxJHdCjftvMsjaucKoOY6GDDqFoP2BTYLvZNlxX/shn+22elKXY
 7J3NFfPGWJ0TWZEXd9w7tBxuY3lzGjxw0UQelulwsHqomq+BH4k05l7R5UxtZW8sV6np
 +5bwma1SMQTflAp/MM6vD+jZpDvL4Ks9EHGc8kzPbcwZTsgmW06JZfReuHVPamPO7OFq
 6uew==
X-Gm-Message-State: AOAM530zgLh6+Vce0a/lBMAatg9eCPb9e+eOq23woz9csLbvUnfjd4Tl
 tj5oL1BEx5lF7zvRO8cNg+0ehw==
X-Google-Smtp-Source: ABdhPJyXKWTBYdyocOV4fnfAvovDbuReb0l3NAWGAkYnVWGjsah8Vm2D6BAsjkjLHEGDuw8kiHpH3A==
X-Received: by 2002:a05:6808:181b:b0:325:a076:7389 with SMTP id
 bh27-20020a056808181b00b00325a0767389mr5532540oib.146.1651496446714; 
 Mon, 02 May 2022 06:00:46 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186]) by smtp.gmail.com with ESMTPSA id
 o24-20020a4ae598000000b0035eb4e5a6d0sm3814410oov.38.2022.05.02.06.00.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 06:00:46 -0700 (PDT)
Date: Mon, 2 May 2022 06:02:31 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] phy: qcom-qmp: switch to explicit reset helpers
Message-ID: <Ym/WZ/rftlUGgF6q@ripper>
References: <20220427063243.32576-1-johan+linaro@kernel.org>
 <20220427063243.32576-4-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220427063243.32576-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_060049_548748_855412F8 
X-CRM114-Status: GOOD (  18.03  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue 26 Apr 23:32 PDT 2022, Johan Hovold wrote:

> Switch to consistently using the explicit reset-controller API which
> makes it clear that the reset controllers are used exclusively by the
> PHY driver.
> 
> Note that the deprecated of_reset_control_get() and
> devm_reset_control_get() are just transitional wrappers for the explicit
> API so there's no functional change.
> 
> Suggested-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index 3f77830921f5..160d723fc773 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -5701,7 +5701,7 @@ static int qcom_qmp_phy_reset_init(struct device *dev, const struct qmp_phy_cfg
>  		struct reset_control *rst;
>  		const char *name = cfg->reset_list[i];
>  
> -		rst = devm_reset_control_get(dev, name);
> +		rst = devm_reset_control_get_exclusive(dev, name);
>  		if (IS_ERR(rst)) {
>  			dev_err(dev, "failed to get %s reset\n", name);
>  			return PTR_ERR(rst);
> @@ -6099,7 +6099,7 @@ int qcom_qmp_phy_create(struct device *dev, struct device_node *np, int id,
>  	/* Get lane reset, if any */
>  	if (cfg->has_lane_rst) {
>  		snprintf(prop_name, sizeof(prop_name), "lane%d", id);
> -		qphy->lane_rst = of_reset_control_get(np, prop_name);
> +		qphy->lane_rst = of_reset_control_get_exclusive(np, prop_name);
>  		if (IS_ERR(qphy->lane_rst)) {
>  			dev_err(dev, "failed to get lane%d reset\n", id);
>  			return PTR_ERR(qphy->lane_rst);
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
