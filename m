Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6ABFC25B7C
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DG2s/Qk3Kqu3WwDi350AP/sLDKHP97tkFkKtWRuMAUw=; b=MILRw1VKqq2NgX
	LJEnOZmUuL/0siE0bij2Uoeg+K3/ytqq4iRLGbT+ez4oR+Z9TLAS+eEFi2KJTSqk3iG7AMyxma57J
	TjGXnRL/ql3Tvo5w9mmi/oYG+v59abjW9JLsQTxOmXtCSRDvRhCyKNrXN6RjGQ55Nr87O6Ig14qfT
	w+HvwR20+Y2L3hMLnt3Ivf5NMIUvGtjsU7MRnT2MGiCQYgy/wZbOUOiOy38cGy9++ylEaPNpU4B4X
	laQ5zZXx4gPiJU82PlWyvHv+q/QS4gdHjgThXXO/Yq9f7VzLwK6x4y9TRCfOfeAkNKrHZrryOnb00
	xDUGBJ3oPht0ud4ZSaLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWCF-0000000EKLB-1wRc;
	Mon, 27 May 2024 08:59:11 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWCC-0000000EKJL-19DV
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:59:09 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2e6f2534e41so98243031fa.0
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716800344; x=1717405144; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/5BNAdc7fzStUp+7Ojtmy7LHh0vzwdBHulbKPGaS47o=;
        b=oWHqT8jPK/LPj/AdjmlKjL6JlCDXIGzsXn225ZHBOdL1hP9cHqONhE0jZQL1RwPC8d
         Ixulm3Ln7KVRmWRRtzGCpwBMUFx9SlTyE4572fQTufWsV5hM82mnlMRxf936NDCr07CI
         jo7pmo3x7aOEUfeMSpJggHsYz97P2DQgyNCTbB16PNN1jP0PVT3u8rkMIL9JssdXXavm
         maEBVpL/dgWehMI1QbyGkBSLqZx0NlSrzmFdjfvwMzAOL/w5u2ONmb3O6DPzehR+aqwJ
         j+KxXcDX6YB87ezQQcx/ZjHWVkmk4KMwSlJ1mORIJr5UpbOzS18lEGp+uIqBXRxoEXPg
         I/0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716800344; x=1717405144;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/5BNAdc7fzStUp+7Ojtmy7LHh0vzwdBHulbKPGaS47o=;
        b=T3voi/0l8OTwWqX1F8jeyPfQ4ETRDPGiFbz9tsFimreBtVrgH9c5/NU+NIyH+PeIxu
         3ADNkKCuJMDGKwk4PXyE+dwsX9JzqFly69Y/D6+dmcN05OHqnjeTWMus42JwEL+o4Jya
         ZXVkMg77cvABZxVGIkX6eMYXSUmOEaALGnBqC1mGEw68FQCqUebTgcZXSElSWEpvlz0h
         wRToz4GfU6d1Sl9Q4N4gc17dpl9wm4cPoIFF4C2DUcRUIiX0A1bek/dnwk70Q4ndP0lR
         p12Cv6rZ/cEX0QxVW8pHI87kJlZ9xRc4LmbXwyzMeKY2DKnZgpzRIJLw4/ZF/1B/gkKS
         b9nA==
X-Forwarded-Encrypted: i=1; AJvYcCWANmFxEBrux7IXFhvZwDXkFU6q5bOv7r5cwcGVYurbweeE8jahahF2oyDfC8nodkS8HeMT+4etGXONdwKW22fEguzzBNrHgFm4kYgulA==
X-Gm-Message-State: AOJu0Yw7sN/2OafUjrTlE3YHzK4VFM5XSl0T5bsvrX1GCmT+zEvrxpL6
	6sV7NEt3FBfDmPQ1XbP2f7/EKIqvKTlp2CEJS39SdF8/y4AxXfwsJx+xSIsVWtmstr92XgrezVu
	Y
X-Google-Smtp-Source: AGHT+IEN1e8NUNgsI1QLywlyg1XCpUhtQNI6su2WHQ5KSOYWn3ql/TkuY2yIGoxn75XSD1VEQHrSRA==
X-Received: by 2002:a2e:7a07:0:b0:2e1:f199:3853 with SMTP id 38308e7fff4ca-2e95b276994mr52810941fa.47.1716800343962;
        Mon, 27 May 2024 01:59:03 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95be0182esm18277501fa.104.2024.05.27.01.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:59:03 -0700 (PDT)
Date: Mon, 27 May 2024 11:59:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/7] phy: qcom: qmp-combo: store DP phy power state
Message-ID: <du4345tswno5pfeiux5ks5eo37bbydilvdzw3firnsps2ejgn5@avnoqzxbmzj7>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-2-a03e68d7b8fc@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-2-a03e68d7b8fc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_015908_359711_9980D4DD 
X-CRM114-Status: GOOD (  16.19  )
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

On Mon, May 27, 2024 at 10:42:34AM +0200, Neil Armstrong wrote:
> Switching the PHY Mode requires the DisplayPort PHY to be powered off,
> keep track of the DisplayPort phy power state.

How is this different from dp_init_count?

> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 7f999e8a433d..183cd9cd1884 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1512,6 +1512,7 @@ struct qmp_combo {
>  	unsigned int dp_aux_cfg;
>  	struct phy_configure_opts_dp dp_opts;
>  	unsigned int dp_init_count;
> +	bool dp_powered_on;
>  
>  	struct clk_fixed_rate pipe_clk_fixed;
>  	struct clk_hw dp_link_hw;
> @@ -2685,6 +2686,8 @@ static int qmp_combo_dp_power_on(struct phy *phy)
>  	/* Configure link rate, swing, etc. */
>  	cfg->configure_dp_phy(qmp);
>  
> +	qmp->dp_powered_on = true;
> +
>  	mutex_unlock(&qmp->phy_mutex);
>  
>  	return 0;
> @@ -2699,6 +2702,8 @@ static int qmp_combo_dp_power_off(struct phy *phy)
>  	/* Assert DP PHY power down */
>  	writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
>  
> +	qmp->dp_powered_on = false;
> +
>  	mutex_unlock(&qmp->phy_mutex);
>  
>  	return 0;
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
