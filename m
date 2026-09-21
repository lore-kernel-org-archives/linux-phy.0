Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0077AC982EE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 18:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abOFsDNBPockLG+7WOuaJREBzH/KSdyf5AUGFk5IIgE=; b=iv0O3zttVlPDV+
	s7yuSoYBNrueOnVPKl4OyQD9g7UpuMc3q/TrbUQbSxdtXJagObD3AktxoCxBF8uiB//CPl/tfaCYK
	1+gHHD/J5C56G8GowPkZ33sG6x/UaCw7XwQTF872nRyfIR3On/RXYAH2cqNOTyB8jC+PtVOdpvUig
	sj92HQ4chd8/A+ZDq0U6h0/FJPBF9FsB1eMPh3fCRTV9jyYucD/TqCdIQM3gGlxK5MAQzrXzHMbR4
	ByWEHpSklJGrzjmdVZTBL1SuJDz1GkRZX5Dy+Ds1IVQjrE0aIBGkdUlzqQ/wolo4nfcbT6f0laPVP
	EyJgBlTYsKJ7PnWAHc8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8ile-000000037jP-1ybD;
	Mon, 21 Sep 2026 18:29:30 +0000
Received: from mail-oa2-x10.google.com ([2607:f8b0:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8ilb-000000037i7-3ZYb
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 18:29:29 +0000
Received: by mail-oa2-x10.google.com with SMTP id 586e51a60fabf-46accbdfb21so3451153fac.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 11:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1790015363; x=1790620163; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zBEpExP60BKwR+80aEYT0motmzonf8fi0uI5o05psGA=;
        b=UE6f6TumaPLiWfhIPF/QJL9u476YpR/drEDQWOzDCeFhJeVIbBfnezutf37Tv66dac
         +CcyJZ+8mv0qdnJzHmS2T1BkXCOcpmryq2sUNRSilNoNskOvRFpByc2J4CKC5RG5prE+
         pcKErMQbxcuQ+QR33xh/HpjIOF17nk4Feys7XwCUnVw1dCsNR48slH/CHt+sTic1cq3V
         2ta0ffojpI0DVvQrZC3oovBtVr+f65DGPBTMC2aJVuDsMcMex6uxhdIslBajviiodmA4
         X+YoHmGOJcmtF4CKnTBHZUwJodIp/Arl0z75/nGysqqF/TXgGMyqoDuLme6IEopdQT3H
         B5fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790015363; x=1790620163;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zBEpExP60BKwR+80aEYT0motmzonf8fi0uI5o05psGA=;
        b=rn/l9Z/8wVEIdb6S3EJXulLpyAY+wvsRKLVvSh8dglcEea/Q6zrZBkyHOqLUGF7OJx
         oD3xxQZye4ZI1wBq3krr6UYuLO8B+KbybISp8NTy6lI+cf8x3PrT0fHwa6nNaai/wgW1
         RhX7T3tJ3uftr5th4rhZTHStJ2UGGbG4v1bQwzrJM4W1dxe4yGupR7cLUh1gu4IEW6E4
         +H0Y5j1vnRhjDhjIPRf2PZOM898CKuh08b5Ef5DZ8jCPgfbulhGXm/cVPYegCj7MrIsW
         RH6FONBS0oP+/cWzXUCPzsqcCTWkI/dlBBZylsyjkjiMzNG/cA3E1tDHqamGLIEAUP9g
         q9Dg==
X-Forwarded-Encrypted: i=1; AKwUvByie/P+hZs2gLliq1NuibSVgsxnDDtXWMliRYgh3aXzNmX9RRcV0kFUsAV4FtaSIbWtabrc0XG/EZQ=@lists.infradead.org
X-Gm-Message-State: AFuF++lyW6Gtn1JSFJC9/vcu9pgyLaZNSU9KaeKCv93ADMr/WJF6LIMF
	APuDGhZeZU3n8r8fh+XXcF5DUrd9EuVVBXUj24+jZ8CK1e11jZRUI0Q1De6fehoqJg==
X-Gm-Gg: AYBFou33xdJf6iDeeVbxPnNpz9rRQuRo2PKG8UGNv7HdIAlXNJlT/bCEyGNdM0BbeS9
	W6dCpd/rynhPf3LBalrhyIkOakcKXMMpdn9W/tmiw4Xd9yNb4vK/RPNx951GhXkzFJavp6QTYSb
	AQzRiyUDJW68O7Guy3SVFLm9AtwBpewuycQebxnq3bCBp6qngLhkwKqbBA0oVvMxlSPSzQdSUAH
	4AL6+cWtc/Sj+Z2FMRjZomaGjbNY8hv8A4o+fk8GcIeQXAaZB8WV19ZoNkYxu1xp9EMqZhT4SqA
	EO0ZycigAmYeEhPsUiVlVjijMQfpPPJaoAflDwSHeuNTkHugAupoWCTmVYZ49FPrDQSpW5PRRDQ
	NlCgMfZG3wRusycmPay6E0v+iD95vSVJmVJlgENg3vbo0OXbUZTXbYo5EZMXVgb1NZB2gkjRL3p
	N+yysFhc4ZlLlliSOotSXMffqiVyRN0a2/fyagDd8knZeK3hvGENXYLNewHtNasHSWhJyT+xnSM
	fymn41vE24+BsmJJZkCX1fOEzVRJk0SbUrq
X-Received: by 2002:a05:6820:607:b0:6c2:c9:2c76 with SMTP id 006d021491bc7-6ca9a85289amr10091458eaf.16.1790015362272;
        Mon, 21 Sep 2026 11:29:22 -0700 (PDT)
Received: from google.com (222.97.173.34.bc.googleusercontent.com. [34.173.97.222])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6d181ae5a14sm26230eaf.3.2026.09.21.11.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 11:29:21 -0700 (PDT)
Date: Mon, 21 Sep 2026 18:29:19 +0000
From: Neill Kapron <nkapron@google.com>
To: RD Babiera <rdbabiera@google.com>
Cc: vkoul@kernel.org, peter.griffin@linaro.org, andre.draszik@linaro.org,
	tudor.ambarus@linaro.org, p.zabel@pengutronix.de,
	neil.armstrong@linaro.org, badhri@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7] phy: Add USB3 PHY support to Google Tensor SoC USB
 PHY driver
Message-ID: <arF3fynAGG5khe3B@google.com>
References: <20260918222513.2633456-2-rdbabiera@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260918222513.2633456-2-rdbabiera@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_112927_914525_9AEA5EAC 
X-CRM114-Status: GOOD (  26.37  )
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

Hi RD,

Thanks for sending v7. I've reviewed the changes and identified a few
functional issues, and a couple minor items as seen below:


On Fri, Sep 18, 2026 at 10:25:14PM +0000, RD Babiera wrote:
> Add USB3 PHY support for the Google Tensor G5 USB PHY driver.
...
> --- a/drivers/phy/phy-google-usb.c
> +++ b/drivers/phy/phy-google-usb.c
> @@ -20,6 +20,7 @@
>  #include <linux/reset.h>
>  #include <linux/usb/typec_mux.h>

The driver is now using readl_poll_timeout() and
pm_runtime_get_if_active(), we should be including linux/iopoll.h and
linux/pm_runtime.h explicitly.

> +#define TCA_CTRLSYNCMODE_CFG1_XA_TIMEOUT_VAL_100MS 0x1e85
> +#define TCA_PSTATE_0_OFFSET 0x50
> +#define TCA_PSTATE_0_UPCS_LANE0_PHYSTATUS BIT(8)
> +
> +#define GPHY_TCA_DELAY_US 10
> +#define GPHY_TCA_TIMEOUT_US 100000

With the addition of TCA_CTRLSYNCMODE_CFG1_XA_TIMEOUT_VAL_100MS, we
should consider bumping GPHY_TCA_TIMEOUT_US to be slightly larger (e.g.
110000us) to ensure the hardware timeout is guaranteed to expire before
the software poll timeout.

> +static const char * const u2phy_clk_names[] = {
> +	"usb2",
> +	"usb2_apb",
> +};
> +static const char * const u3phy_clk_names[] = {
> +	"usb3"
> +};
> +static const char * const u2phy_rst_names[] = {
> +	"usb2",
> +	"usb2_apb",
> +};
> +static const char * const u3phy_rst_names[] = {
> +	"usb3"
> +};

nit: checkpatch.pl --strict flags missing blank lines between these
array declarations (and the inline helper functions + DEFINE__FREE
macros below).

> +
> +static const struct google_usb_phy_config phy_configs[GOOGLE_USB_PHY_NUM] = {
> +	[GOOGLE_USB2_PHY] = {
> +		.clk_names = u2phy_clk_names,
> +		.num_clks = ARRAY_SIZE(u2phy_clk_names),
> +		.rst_names = u2phy_rst_names,
> +		.num_rsts = ARRAY_SIZE(u2phy_rst_names),
> +	},
> +	[GOOGLE_USB3_PHY] = {
> +		.clk_names = u3phy_clk_names,
> +		.num_clks = ARRAY_SIZE(u3phy_clk_names),
> +		.rst_names = u3phy_rst_names,
> +		.num_rsts = ARRAY_SIZE(u3phy_rst_names),
> +	},
> +};
> +
> +static inline void google_usb_phy_clk_disable(struct google_usb_phy_instance *inst)
> +{
> +	clk_bulk_disable_unprepare(inst->num_clks, inst->clks);
> +}
> +DEFINE_FREE(inst_clk_disable, struct google_usb_phy_instance *,
> +	    if (_T) google_usb_phy_clk_disable(_T))
> +
> +static inline void google_usb_phy_rst_disable(struct google_usb_phy_instance *inst)
> +{
> +	reset_control_bulk_assert(inst->num_rsts, inst->rsts);
> +}
> +DEFINE_FREE(inst_rst_disable, struct google_usb_phy_instance *,
> +	    if (_T) google_usb_phy_rst_disable(_T))
> +
...
>   
>  static int google_usb_set_orientation(struct typec_switch_dev *sw,
>  				      enum typec_orientation orientation)
>  {
>  	struct google_usb_phy *gphy = typec_switch_get_drvdata(sw);
> +	int ret = 0;
>  
>  	dev_dbg(gphy->dev, "set orientation %d\n", orientation);
>  
> -	gphy->orientation = orientation;
> +	guard(mutex)(&gphy->phy_mutex);
>  
> -	if (pm_runtime_suspended(gphy->dev))
> -		return 0;
> +	gphy->orientation = orientation;
>  
> -	guard(mutex)(&gphy->phy_mutex);
> +	if (IS_ENABLED(CONFIG_PM)) {
> +		if (pm_runtime_get_if_active(gphy->dev) <= 0)
> +			return 0;
> +	}
>  
>  	set_vbus_valid(gphy);
>  
> -	return 0;
> +	if (gphy->phy_state == COMBO_PHY_TCA_READY && orientation != TYPEC_ORIENTATION_NONE)
> +		ret = program_tca_locked(gphy);
> +
> +	pm_runtime_put(gphy->dev);
> +
> +	return ret;
>  }

Previously, sashiko recommended moving to pm_runtime_get_if_active(),
which was done in v6. However I think this may have changed the behavior
of google_usb_set_orientation() and potentially introduced a regression
due to the pre-existing ordering of calls in gooogle_usb_phy_probe(),
causing this function to always take the early 'return 0' path.

In google_usb_phy_probe(), we call devm_phy_create() prior to calling
pm_runtime_enable(dev).

In drivers/phy/phy-core.c, devm_phy_create() calls phy_create(), which
has the following check:

    if (pm_runtime_enabled(dev)) {
        pm_runtime_enable(&phy->dev);
        pm_runtime_no_callbacks(&phy->dev);
    }

Therefore, the phy device never has pm_runtime_enabled, causing this
call to pm_runtime_get_if_active() to always return 0, and the function
exits prior to calling `set_vbus_valid()`.

I think moving the pm_runtime_enable(dev) call prior to
devm_phy_create() will resolve the issue, but we should audit power
managment in this driver to verify.

> 
> +static int google_usb3_phy_init(struct phy *_phy)
> +{
> +	struct google_usb_phy_instance *inst = phy_get_drvdata(_phy);
> +	struct google_usb_phy *gphy = inst->parent;
> +	int ret = 0;
> +	u32 reg;
> +
> +	dev_dbg(gphy->dev, "initializing usb3 phy\n");
> +
> +	guard(mutex)(&gphy->phy_mutex);
> +
> +	if (gphy->phy_state != COMBO_PHY_IDLE) {
> +		dev_warn(gphy->dev, "usb3 phy init called when combo phy state is not idle\n");
> +		return 0;
> +	}
> +
> +	reg = readl(gphy->usb3_tca_base + TCA_CTRLSYNCMODE_CFG1_OFFSET);
> +	reg &= ~TCA_CTRLSYNCMODE_CFG1_XA_TIMEOUT_VAL;
> +	reg |= FIELD_PREP(TCA_CTRLSYNCMODE_CFG1_XA_TIMEOUT_VAL,
> +			  TCA_CTRLSYNCMODE_CFG1_XA_TIMEOUT_VAL_100MS);
> +	writel(reg, gphy->usb3_tca_base + TCA_CTRLSYNCMODE_CFG1_OFFSET);

I think this introduces a regression between v6 and v7, as usb3_tca_base
may be accessed prior to the 'usb3' clock being enabled, and
furthermore, the call to reset_control_bulk_deassert() will clear this
value.

Therefore, I think we need to this after the call to
reset_control_bulk_deassert().

> +
> +	reg = readl(gphy->usbdp_top_base + PHY_POWER_CONFIG_REG1_OFFSET);
> +	reg |= PHY_POWER_CONFIG_REG1_PG_MODE_EN;
> +	reg &= ~PHY_POWER_CONFIG_REG1_UPCS_PIPE_CONFIG;
> +	reg |= FIELD_PREP(PHY_POWER_CONFIG_REG1_UPCS_PIPE_CONFIG,
> +			  (UPCS_PIPE_CONFIG_ISO_CPM |
> +			   UPCS_PIPE_CONFIG_PG_MODE_STATIC |
> +			   UPCS_PIPE_CONFIG_LANE_RESET_NO_PG_EXIT));
> +	writel(reg, gphy->usbdp_top_base + PHY_POWER_CONFIG_REG1_OFFSET);
> +
> +	set_vbus_valid(gphy);
> +
> +	reg = readl(gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
> +	reg |= USBCS_PHY_CFG1_PHY0_MPLLA_SSC_EN;
> +	writel(reg, gphy->usbdp_top_base + USBCS_PHY_CFG1_OFFSET);
> +
> +	set_sram_bypass(gphy, SRAM_BYPASS_MODE_BYPASS_FIRMWARE |
> +			SRAM_BYPASS_MODE_BYPASS_CONTEXT);
> +	set_pmgt_ref_clk_req_n(gphy, true);
> +	struct google_usb_phy *pmgt_ref_clk_req_dev __free(pmgt_ref_clk_req_n) = gphy;
> +
> +	ret = clk_bulk_prepare_enable(inst->num_clks, inst->clks);
> +	if (ret)
> +		return ret;
> +	struct google_usb_phy_instance *clk_dev __free(inst_clk_disable) = inst;
> +
> +	ret = reset_control_bulk_deassert(inst->num_rsts, inst->rsts);
> +	if (ret)
> +		return ret;
> +	struct google_usb_phy_instance *rst_dev __free(inst_rst_disable) = inst;
> +
> +	ret = readl_poll_timeout(gphy->usb3_tca_base + TCA_PSTATE_0_OFFSET,
> +				 reg, !(reg & TCA_PSTATE_0_UPCS_LANE0_PHYSTATUS),
> +				 GPHY_TCA_DELAY_US, GPHY_TCA_TIMEOUT_US);
> +	if (ret) {
> +		dev_err(gphy->dev, "wait for lane0 phystatus timed out\n");
> +		return ret;
> +	}
> +
> +	gphy->phy_state = COMBO_PHY_INIT_DONE;
> +
> +	retain_and_null_ptr(rst_dev);
> +	retain_and_null_ptr(clk_dev);
> +	retain_and_null_ptr(pmgt_ref_clk_req_dev);
> +
> +	return 0;
> +}
> +
> 
>

Thanks,
Neill

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
