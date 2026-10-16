Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45E7CCCA464
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 11:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCFetDhIgt6NqSI12A50gPeaZskVDWtIi+Ht14UPIlM=; b=LhAlWbh6SUJ+CR
	d+GUupIQaJ2FVaeaiClrjUcVsxDy0uEu08kyzQF9nWyjn22Kozd9Ca+hEIUKk9Nl6Cm9MP9AwF8KA
	3BUcNGlRhz9SODKh51tC2gxScoFH+VDyHu7Wplw8VCYMmofZO5TQnq7ybQTx6uRoYAlq2QoM/r3ud
	EAyDe9v7RLKwk7S+O7JENGkStQxa6dqOfa3/V7Hi3fk7FoUFIrMQhmA8HEHA8gW+tf6o3FKMujNJR
	0kWjsiuzYuVyZzvhKiK2bYwegLr9yFp6dmouYEm5KlAcEv85hFWbRSCrUTrBYKd6oO9WiHYrYj1AK
	yB8XAnAFp8a7aRSBwFvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHflv-00000002k3B-3lZI;
	Fri, 16 Oct 2026 11:06:47 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfls-00000002k2o-2Tuy
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 11:06:45 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4a140e7405dso29401465e9.3
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 04:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792148802; x=1792753602; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=BhJhQfG6m5IjmjHeVsqFyoc/qVFSsNb+YvIuAxHlx2E=;
        b=b/nNNo453XEMMDRh0KLE8x8IZMfxi41N9+ZCQ7W2zdIHuwBR/uAnKyQGGygu5tpDIL
         dBL3vs1zsc1LgWToUbzAuKSJVTLP4HvZLlKxfM0jDI971yoj+sr5P3rPQs5ycIgu8Fvb
         aC+FPxrNJ0F+16Ds+8FTPtwrnjO40RQGmB26QwVWqwB539Ut1876LoLSMw1jrmJvqJE/
         A7TEVjtpm46g8LGMwWkQT2vSNirpSC0WrwHU/w0Z9W6v/nra+Iynt0462MGHBtlay9zx
         YOUSJkVjRWnXXrsj5xjKNKxyEygDu3y65LneymMzNuoCT7qM5tOmxtqaqWeJEku8MG4V
         C/jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792148802; x=1792753602;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BhJhQfG6m5IjmjHeVsqFyoc/qVFSsNb+YvIuAxHlx2E=;
        b=uguIRAV2QK3YXJjtvzUeAl/pHczwV2ejJDhiNm06rcE1QFE9EvyejUbInsEvOtDrRh
         xN93mm+SpEA2vmRzM4qirTt3Lqhza9OUEZiueqzV4V+kEx3WxHVd2Cj+2ZtxwQKoAIlx
         q9FwVGZO+wlyvIlROuEx0eis0RtfAw3k5IAV1cCZtzdx+zd1iZNt+PEmyb0A866vCr8V
         PRDBDtc6F7QtMC9Fut7Gcv6NQ0bPluZaK5jqDabWkaYLrz5EZwniOeANTWcO9UBuAGcr
         1G2Iq9i5VVm1gx8gsV1wOgIxnhDef45kSw++51P9aG7A4gg9s0VxG4LXEGEJwcKFQdJe
         61yQ==
X-Forwarded-Encrypted: i=1; AKwUvBwneCRmZgmV1ZWtGVXvh2We/VEG4vaxXv08t9VLE3FHs/EqFeJo0a4fUV9YFSLHqmKz6gdT5Ab7mXg=@lists.infradead.org
X-Gm-Message-State: AFq9FYLOcDR1n1QCTvmIbTc3r/n0fYt7qEMo/tK7NVLcLNPQ8rP6YOH3
	Y7jSsmW2+ei1smvo+LSsapAr52Hd1PYiCynv4Q3Anf5PO9z0YTfittEpuQMac4HdmQI=
X-Gm-Gg: AYBFou02dtodCZmQyidRn7oFDqLSFtqEEf3gGgAfFu6EmHWUObwTnf9Hdstx10GH4e+
	JaVv2tymrj4pgnjczs6EQ2xwxbnWqrTRtkNwKEoqmsjfFvWnM4oigSMvvRs97yLMEdIAyRYVHN+
	naoa3ucspNFDIvSK9iqYawX5kHXFqiG1TNzO16IuBsbB7amufGG+UJvhHoM8/fao8U063HyQmrp
	pZWWSaqEjVc1CgWsJD7Uz4hUob7ErzZMIL6/Po+7LIhIQKuFtqkd71Xf63MeNAosWlMB+OUx7C5
	B7YnwaZViDr5BnGOLHftXISRv6IdvZzvIZEq+7/sFeFQ0DWW98sctuRkzs+092LibYVBbekUab5
	9yJecwo2FeJhHBfl+v7XT4qCfDH0uR9fP+K+NZG2oCK/ng1kAfZC4V6u8vBxFD1Be+cVngZwo87
	HDzoaLiF/PFEmegVHSrxoP7J9tNvvmZt3HPCkD1OgqCz7TQ8EdAM475KK8SABqc1v1UJ1wo0bAO
	AHgqjZDyaU=
X-Received: by 2002:a05:600c:46cc:b0:4a1:688d:a41c with SMTP id 5b1f17b1804b1-4a18e4c06a8mr423248765e9.25.1792148802433;
        Fri, 16 Oct 2026 04:06:42 -0700 (PDT)
Received: from [192.168.0.167] ([109.78.92.136])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48dfd4d4978sm4017925f8f.21.2026.10.16.04.06.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 04:06:41 -0700 (PDT)
Message-ID: <a295568c-1599-45c1-a60b-66fc106a2281@linaro.org>
Date: Fri, 16 Oct 2026 12:06:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 2/4] phy: Add MIPI C-PHY configuration helpers
To: geocausa@gmail.com, Vinod Koul <vkoul@kernel.org>,
 David Heidelberg <david@ixit.cz>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
 Suresh Vankadara <svankada@qti.qualcomm.com>, tjose@qti.qualcomm.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20261016-x1e-cphy-rfc-v2-0-377654253193@gmail.com>
 <FSgHquVCF3k-Ipt8d6Xu8eAn745A_NyIA7d_BvByx3RTufBZXE-NlVL7jHWYixnuNYx8MvrFfT6LUcHtq-BXDA==@protonmail.internalid>
 <20261016-x1e-cphy-rfc-v2-2-377654253193@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261016-x1e-cphy-rfc-v2-2-377654253193@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_040644_673294_0148B4EC 
X-CRM114-Status: GOOD (  22.84  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 16/10/2026 11:57, George Neacsu via B4 Relay wrote:
> From: George Neacsu <geocausa@gmail.com>
> 
> A CSI-2 receiver knows the link frequency of its transmitter, and by the
> V4L2 convention a C-PHY link frequency is half the symbol rate on each
> trio. Add helpers so that the receiver and the PHY do not each open-code
> that conversion, as phy_mipi_dphy_get_default_config_for_hsclk() does
> for D-PHY:
> 
> - phy_mipi_cphy_get_default_config_for_link_freq() fills a
>    configuration from a link frequency and a trio count;
> - phy_mipi_cphy_config_validate() checks for a symbol rate and one to
>    three trios;
> - phy_mipi_cphy_link_freq() gives the link frequency of a configuration.
> 
> They are small enough to be inline, so no new Kconfig symbol is needed.
> 
> Suggested-by: Bryan O'Donoghue <bod@kernel.org>
> Suggested-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: George Neacsu <geocausa@gmail.com>
> ---
>   include/linux/phy/phy-mipi-cphy.h | 61 +++++++++++++++++++++++++++++++++++++++
>   1 file changed, 61 insertions(+)
> 
> diff --git a/include/linux/phy/phy-mipi-cphy.h b/include/linux/phy/phy-mipi-cphy.h
> index ef6af61de..f6746dcb0 100644
> --- a/include/linux/phy/phy-mipi-cphy.h
> +++ b/include/linux/phy/phy-mipi-cphy.h
> @@ -2,6 +2,10 @@
>   #ifndef __PHY_MIPI_CPHY_H_
>   #define __PHY_MIPI_CPHY_H_
> 
> +#include <linux/errno.h>
> +
> +#define PHY_MIPI_CPHY_MAX_TRIOS		3
> +
>   /**
>    * struct phy_configure_opts_mipi_cphy - MIPI C-PHY configuration set
>    *
> @@ -24,4 +28,61 @@ struct phy_configure_opts_mipi_cphy {
>   	unsigned char		trios;
>   };
> 
> +/**
> + * phy_mipi_cphy_config_validate() - Validate a MIPI C-PHY configuration
> + * @cfg: configuration to check
> + *
> + * Return: 0 if @cfg has a symbol rate and one to three trios, -EINVAL
> + * otherwise.
> + */
> +static inline int
> +phy_mipi_cphy_config_validate(const struct phy_configure_opts_mipi_cphy *cfg)
> +{
> +	if (!cfg->symbol_rate)
> +		return -EINVAL;
> +
> +	if (cfg->trios < 1 || cfg->trios > PHY_MIPI_CPHY_MAX_TRIOS)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +/**
> + * phy_mipi_cphy_get_default_config_for_link_freq() - C-PHY configuration
> + * from a link frequency
> + * @link_freq: link frequency in Hz
> + * @trios: number of active trios
> + * @cfg: configuration to fill
> + *
> + * A C-PHY link frequency is half the symbol rate on each trio, the
> + * convention V4L2 uses for the link frequency of a C-PHY transmitter.
> + *
> + * Return: 0 on success, -EINVAL if the resulting configuration is invalid.
> + */
> +static inline int
> +phy_mipi_cphy_get_default_config_for_link_freq(unsigned long long link_freq,
> +					       unsigned int trios,
> +					       struct phy_configure_opts_mipi_cphy *cfg)
> +{
> +	if (trios > PHY_MIPI_CPHY_MAX_TRIOS)
> +		return -EINVAL;
> +
> +	cfg->symbol_rate = link_freq * 2;
> +	cfg->trios = trios;
> +
> +	return phy_mipi_cphy_config_validate(cfg);
> +}
> +
> +/**
> + * phy_mipi_cphy_link_freq() - Link frequency of a MIPI C-PHY configuration
> + * @cfg: configuration
> + *
> + * Return: the link frequency in Hz, half the symbol rate on each trio.
> + */
> +static inline unsigned long long
> +phy_mipi_cphy_link_freq(const struct phy_configure_opts_mipi_cphy *cfg)
> +{
> +	return cfg->symbol_rate / 2;
> +}
> +
>   #endif /* __PHY_MIPI_CPHY_H_ */
> 
> --
> 2.53.0
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
