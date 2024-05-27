Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ED33C25B74
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTf2O2WjmZuvlowFHdHCa9GqmIErl7CEJEF+J6PICBE=; b=Mvbau1BEWx/CcY
	6F/6ZtcthcyY7l60zNpnAMJm6lEJSy6mM4ykDXPCg0ZDoDKhv2pQUqcs/sOU5XqnSuGfzPhZThdXH
	1q9oCcKyfXrRCjuD7fOYEreBQ2ZlDJ/RJXSFqaKt++4N8KYSIGFbTXAQIWXphWfZPAXw2xWawcxMX
	6P4ld3Iu9NQxMN6mx8ZlSrFFEgy46aR2Q/W55C4iWocZeK8XaEmpBBR8vt718XXYumdFNrX61tnsO
	HGhEReSCbElegxiPZHgNbsfkqmsyt6A6vtAtMJz42FvHckvqvobKbSB5NLaXGIABhm5lH2iSVUNng
	4cQn4WT3iC3E40cukVnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWB7-0000000EKDv-2isn;
	Mon, 27 May 2024 08:58:01 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWB3-0000000EKDQ-3kkj
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:58:00 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2e95afec7e6so23485981fa.0
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716800275; x=1717405075; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RuAYanml29TlPX+qaYSWK4Mnqvbm8YMtF7p5HJx540g=;
        b=FP8FwopM6We4n1gugRUVcqNy+mnaGe4OSodQmqM4nl+cEfsxiQv7dwVpDBHvGa3dE+
         PBad4gBPc2N3KLvBb8SZYooL/J3VAnxRrmBZMv8BJ6I1tZgolLZYN55Yo9W6Ve1B/4Y6
         NU4k5DWxEiDgvWVpOADoZy37Anv1Qg3Yu5mI+1hrEbcMab4GGiJyKwA9tKiDWjpeiU/P
         Lh1ak+LWHxvUWQC67wZ8bjCXMEydnrUmUearQZ+c8TCquYr3+ANdytQS00IYQjnZnElp
         b/Bt9Sgq9fSwsb2Njk5z6ECZEGHowAe3FEC+zh6yBOIkOe6E2yhZnlzimasS93XhH5Zh
         b7vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716800275; x=1717405075;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RuAYanml29TlPX+qaYSWK4Mnqvbm8YMtF7p5HJx540g=;
        b=CTAlRPxBjreuGPHSeGj/n1JLLMeVuJMX3r7IstqhvQENsKQ/s12SU+w7Xp7PkBL0Am
         6uZIbabwKXen3LmXvQy0Br0GeradJSxOgXDwWO5KicT5sF9/dJEOScg8GeMLEs/muxUL
         1JGxaMjtHecNbBJwM5yzZ1rO2k5ryKZN/0ixrChuB3JW3h9v/gFO50ARVUqzlslc7JMC
         bRY3k9RprvreaKMYMXf5T838fT2ySr5piqMrATBhBzfJMsKfaXbaVizB8+5mzAGJEZ8a
         kEPAOpNppubT4HOKrxLlj76y4La5IBeAVETQN6sq+kY7MOl/agVJYKYaPDf9fkEqjNA5
         HrVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUWKGCXuQYb21lgBYPjiTawlb0tGFsLrigqNFQXE9uHdSBBGXu7o8bVcxfgzYJJeax21Hv0dYSTXloGQMVOY3GV4/nUIlRrQdmis91OKA==
X-Gm-Message-State: AOJu0YxLFsqrsLPCU62WsO8rwz7gSAVWqOCuN3niCbSYfVlspqK/rUui
	CPJtiYhfNt7I0djx/BLms/PkpTYfMI5bUSXAYkALfU9kMbrQR2n59H0rnNd41Gs=
X-Google-Smtp-Source: AGHT+IE5GcM3SspxXEKWWPuigZVFfTwI/IUPr7cLcilG6aZBnW9gHQCntqabHKDoUDrVc4BcSjCmsQ==
X-Received: by 2002:a2e:a795:0:b0:2e1:c97b:6f25 with SMTP id 38308e7fff4ca-2e95a096142mr32081911fa.1.1716800274837;
        Mon, 27 May 2024 01:57:54 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bf1a978sm18765661fa.125.2024.05.27.01.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:57:54 -0700 (PDT)
Date: Mon, 27 May 2024 11:57:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/7] phy: qcom: qmp-combo: register a typec mux to
 change the QPHY_MODE
Message-ID: <qgitwducxmox6vac6v3pmjxgrbizd2tk2fgxds4pjqinr2cefd@lbsrbit4xsdi>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-4-a03e68d7b8fc@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-4-a03e68d7b8fc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_015758_169584_FAB742A8 
X-CRM114-Status: GOOD (  34.02  )
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

On Mon, May 27, 2024 at 10:42:36AM +0200, Neil Armstrong wrote:
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
> 
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
> 
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 123 ++++++++++++++++++++++++++++--
>  1 file changed, 118 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 788e4c05eaf2..b55ab08d44c2 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -19,6 +19,7 @@
>  #include <linux/reset.h>
>  #include <linux/slab.h>
>  #include <linux/usb/typec.h>
> +#include <linux/usb/typec_dp.h>
>  #include <linux/usb/typec_mux.h>
>  
>  #include <drm/bridge/aux-bridge.h>
> @@ -1527,6 +1528,10 @@ struct qmp_combo {
>  
>  	struct typec_switch_dev *sw;
>  	enum typec_orientation orientation;
> +
> +	struct typec_mux_dev *mux;
> +	unsigned long mux_mode;
> +	unsigned int svid;
>  };
>  
>  static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
> @@ -3353,17 +3358,112 @@ static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
>  	return 0;
>  }
>  
> -static void qmp_combo_typec_unregister(void *data)
> +static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_state *state)
> +{
> +	struct qmp_combo *qmp = typec_mux_get_drvdata(mux);
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	enum qphy_mode new_mode;
> +	unsigned int svid;
> +
> +	if (state->mode == qmp->mode)
> +		return 0;
> +
> +	mutex_lock(&qmp->phy_mutex);
> +
> +	if (state->alt)
> +		svid = state->alt->svid;
> +	else
> +		svid = 0; // No SVID
> +
> +	if (svid == USB_TYPEC_DP_SID) {
> +		switch (state->mode) {
> +		/* DP Only */
> +		case TYPEC_DP_STATE_C:
> +		case TYPEC_DP_STATE_E:
> +			new_mode = QPHY_MODE_DP_ONLY;
> +			break;
> +
> +		/* DP + USB */
> +		case TYPEC_DP_STATE_D:
> +		case TYPEC_DP_STATE_F:
> +
> +		/* Safe fallback...*/
> +		default:
> +			new_mode = QPHY_MODE_COMBO;
> +			break;
> +		}
> +	} else {
> +		/* Only switch to USB_ONLY when we know we only have USB3 */
> +		if (qmp->mux_mode == TYPEC_MODE_USB3)
> +			new_mode = QPHY_MODE_USB_ONLY;
> +		else
> +			new_mode = QPHY_MODE_COMBO;
> +	}
> +
> +	if (new_mode == qmp->init_mode) {
> +		dev_dbg(qmp->dev, "typec_mux_set: same phy mode, bail out\n");
> +		qmp->mode = state->mode;
> +		goto out;
> +	}
> +
> +	if (qmp->init_mode != QPHY_MODE_USB_ONLY && qmp->dp_powered_on) {
> +		dev_dbg(qmp->dev, "typec_mux_set: DP is still powered on, delaying switch\n");
> +		goto out;
> +	}
> +
> +	dev_dbg(qmp->dev, "typec_mux_set: switching from phy mode %d to %d\n",
> +		qmp->init_mode, new_mode);
> +
> +	qmp->mux_mode = state->mode;
> +	qmp->init_mode = new_mode;
> +
> +	if (qmp->init_count) {
> +		if (qmp->usb_init_count)
> +			qmp_combo_usb_power_off(qmp->usb_phy);
> +		if (qmp->dp_init_count)
> +			writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
> +		qmp_combo_com_exit(qmp, true);
> +
> +		/* Now everything's powered down, power up the right PHYs */
> +
> +		qmp_combo_com_init(qmp, true);
> +		if (qmp->init_mode == QPHY_MODE_DP_ONLY && qmp->usb_init_count) {
> +			qmp->usb_init_count--;

Can we move this clause next to actually powering USB part off?

> +		} else if (qmp->init_mode != QPHY_MODE_DP_ONLY) {
> +			qmp_combo_usb_power_on(qmp->usb_phy);
> +			if (!qmp->usb_init_count)
> +				qmp->usb_init_count++;
> +		}
> +		if (qmp->init_mode != QPHY_MODE_USB_ONLY && qmp->dp_init_count)
> +			cfg->dp_aux_init(qmp);

Does dp_init_count reflect the actual necessity to bring up the DP part
up? Maybe we can unify the code between this function and
qmp_combo_typec_switch_set()? I don't like that it is unobvious whether
these two functions will results in the same state or not depending on
the order in which they are being called.

> +	}
> +
> +out:
> +	mutex_unlock(&qmp->phy_mutex);
> +
> +	return 0;
> +}
> +
> +static void qmp_combo_typec_switch_unregister(void *data)
>  {
>  	struct qmp_combo *qmp = data;
>  
>  	typec_switch_unregister(qmp->sw);
>  }
>  
> -static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
> +static void qmp_combo_typec_mux_unregister(void *data)
> +{
> +	struct qmp_combo *qmp = data;
> +
> +	typec_mux_unregister(qmp->mux);
> +}
> +
> +static int qmp_combo_typec_register(struct qmp_combo *qmp)
>  {
>  	struct typec_switch_desc sw_desc = {};
> +	struct typec_mux_desc mux_desc = { };
>  	struct device *dev = qmp->dev;
> +	int ret;
>  
>  	sw_desc.drvdata = qmp;
>  	sw_desc.fwnode = dev->fwnode;
> @@ -3374,10 +3474,23 @@ static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
>  		return PTR_ERR(qmp->sw);
>  	}
>  
> -	return devm_add_action_or_reset(dev, qmp_combo_typec_unregister, qmp);
> +	ret = devm_add_action_or_reset(dev, qmp_combo_typec_switch_unregister, qmp);
> +	if (ret)
> +		return ret;
> +
> +	mux_desc.drvdata = qmp;
> +	mux_desc.fwnode = dev->fwnode;
> +	mux_desc.set = qmp_combo_typec_mux_set;
> +	qmp->mux = typec_mux_register(dev, &mux_desc);
> +	if (IS_ERR(qmp->mux)) {
> +		dev_err(dev, "Unable to register typec mux: %pe\n", qmp->mux);
> +		return PTR_ERR(qmp->mux);
> +	}
> +
> +	return devm_add_action_or_reset(dev, qmp_combo_typec_mux_unregister, qmp);
>  }
>  #else
> -static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
> +static int qmp_combo_typec_register(struct qmp_combo *qmp)
>  {
>  	return 0;
>  }
> @@ -3609,7 +3722,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> -	ret = qmp_combo_typec_switch_register(qmp);
> +	ret = qmp_combo_typec_register(qmp);
>  	if (ret)
>  		goto err_node_put;
>  
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
