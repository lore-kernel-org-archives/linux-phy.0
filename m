Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FADDC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 22:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkXvLxiVZ5GpwM8Tfp2GFzgk8o2jmn2efTNsp77FfS0=; b=1nq65fFTplcpNY
	y5NoLrKfWhUaWO0JavXRMld5RwqdrJ/MrMtupUKejO4ycbq9ADwIPyKqw1AvgZ/svW8NUtkHAyDv2
	0Zg9DwJKYKw4qJeqWCAKQvyGhfyokiWflFR0cA4c2Tpx5H4O5h0tUUkw7YqqWFNL/ujJssUtjGVuP
	WZs4FJLccpp3L2dJggWIpzo9lObvJNBoIootHJsRcvweViHUF8DA7XAuozzfWcB1+09jvqProOCDI
	nTQDlHPfo8yaIjXEUUHsRArLv1PLsU9ZFBJq/PXPhr8BIqEVudwpT1NRkcOAOJIgaUAEHWbqOPFDU
	OxuV7UCxjI39I0SHca3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwuDw-00BsoI-Py; Mon, 13 Dec 2021 22:55:12 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwu6m-00Bqp0-8E
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 22:47:49 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 n104-20020a9d2071000000b005799790cf0bso19084170ota.5
 for <linux-phy@lists.infradead.org>; Mon, 13 Dec 2021 14:47:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5H0qbzaIjgpKRl661XZSUbngEcJPf590BIus7cp6ncA=;
 b=R8VoYyyDTSEuy9f0P5FaPR1C53Xu7aozxo+dMc2TKIiQHU8WDK78rkYLFGz2W9PvW7
 Rc6ms+egFX7SkYxyk7zzCTGkoqVk2nv4iJcBSAVQj1h8PBYGZW8JwRQJdKGgD8Phe932
 KV+utJuCmcnQ+tcsjSsktrHTtmEtTFAqyiYB9vzPdDOXCru6cQ6mPlh836V1XKUKnDqh
 SWcROoMM2fPmQt51gazWdN+qK6SYOMXNj+hYfjdhxrdV+6XREu1aVl6wOX68d3Yj2D4L
 +b1zOkEAWEoX/dF7bR6efzQ6uCVkvOcDlAzh8/KQIUx1KIdaiFUSMNQm3qSSXPga45Nr
 p1QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5H0qbzaIjgpKRl661XZSUbngEcJPf590BIus7cp6ncA=;
 b=4Ps+UXUuaRd5a89GnRPvZqBwnpaRYBnkBGAVc5uTq4yLrq4Clcj0GV+IFTbvHZYtM6
 8wCQw6camjaNH5hIInjAmuBW5pT0ODlLsc4c08Q2l/C8Sn53qDve/+yRlMlr9Dx8xGxL
 vox87NEbUksMJKge7aCWGBUPKAeeis2PIluei/QFlABlkx130vvj49i7diG7C7FSbs8h
 SkEL4KCG+A+airj3YfizwX/Ty8ygX74Bu5qUt40gn1YV2nhXvW2GcwVuxBnJAIQTY1KJ
 4MVLZGPoURUIXv7aQy8vs0IbmpdjsPWT50Tj6tO1CeSAFDye3DgU4rkj1WL7cjW943Hv
 dUQQ==
X-Gm-Message-State: AOAM5329XdA8W+qh0KorkBpHsF9kIVee75oVjLqtu966IuJgGUOSuWER
 n3invf+DtUs2Jwba6S0WLTUT+g==
X-Google-Smtp-Source: ABdhPJxwfsPGVsS6Hn+ISBirM7ASf+Uy53iWfLYPVPoMDB+x0HE6I2kdL1NxQdLYbPLt8fOLBERuOw==
X-Received: by 2002:a9d:6254:: with SMTP id i20mr1172374otk.343.1639435667299; 
 Mon, 13 Dec 2021 14:47:47 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id t14sm2473150oth.81.2021.12.13.14.47.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Dec 2021 14:47:46 -0800 (PST)
Date: Mon, 13 Dec 2021 16:47:42 -0600
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Wesley Cheng <wcheng@codeaurora.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] phy: qcom-qmp: Add SM8450 USB QMP PHYs
Message-ID: <YbfNji+glICLDy76@builder.lan>
References: <20211213131450.535775-1-vkoul@kernel.org>
 <20211213131450.535775-3-vkoul@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211213131450.535775-3-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_144748_384369_5EBED869 
X-CRM114-Status: GOOD (  15.94  )
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

On Mon 13 Dec 07:14 CST 2021, Vinod Koul wrote:

> Add support for the USB DP & UNI PHYs found on SM8450. This is same as
> the phy version used on SM8350 and sequences turned out to be same, so
> use the same table from SM8350 for this as well.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> index a959c97a699f..13a249ec8ab6 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> @@ -5777,6 +5777,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
>  	}, {
>  		.compatible = "qcom,sm8450-qmp-ufs-phy",
>  		.data = &sm8450_ufsphy_cfg,
> +	}, {
> +		.compatible = "qcom,sm8450-qmp-usb3-phy",
> +		.data = &sm8350_usb3phy_cfg,
>  	}, {
>  		.compatible = "qcom,qcm2290-qmp-usb3-phy",
>  		.data = &qcm2290_usb3phy_cfg,
> -- 
> 2.31.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
