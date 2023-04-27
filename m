Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83BDCC77B7C
	for <linux-phy@archiver.kernel.org>; Thu, 27 Apr 2023 13:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2hBkYwKPfMuWhrEENIu2qBFS7YWZj6Var4wxIeY9UE=; b=Hp9QXXsh6yGhSx
	bdxz54E80arJRu/Nla4dbQ5J9VQCqXBev4vnEvxZXv/wIImj6LLulJgtrQOlRzBlnRNltuE0/fXO0
	w3q7M47vaIX9jmm1NuDNGPYwp4BX4XfYic/XzJ7tW6AN3P8mkbO6pJQZe1XwXgMNao1PX1dixg1a3
	vX0anL/aU2X2ZG3ibiwclcSisT1d6jc2pd8hTXIfKrAf7QmyL1ddSW1C5qeM8btw0DpnNmuXMYlBL
	pc+jRWlmoZT9amc2PL8zc9diz2QZfZStlxlWQjBeWqQi0lmnZOJmsDKpEs1udJWX5Aovr9GJGqhpG
	uV88+8Qboabh6O+Poxxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ps1WT-006chc-0W;
	Thu, 27 Apr 2023 13:18:57 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ps1WP-006cfj-2n
	for linux-phy@lists.infradead.org;
	Thu, 27 Apr 2023 13:18:55 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-95316faa3a8so1617970066b.2
        for <linux-phy@lists.infradead.org>; Thu, 27 Apr 2023 06:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682601526; x=1685193526;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=DBQvR31EzSGB+GNpVatatuXX6PWeKiJTAais4vH/bFk=;
        b=jt77vZhWMYW/P8VcFBxzg7ViTXMeJXQ+aRH2y09RmGV9dDdScY0TekL2bnIL/28SHr
         DBhdVd91UTWlkg2UhRE4F+ckE1AeXBlM61+qMvGHv30Inu+2ttF7ItKOaQWwOicuNUAV
         aZcFVoaQP/r1x0a3kiHsRwNjXjX9w4llrmBX4WqT/ZwfdXpzw/AFKW6eplYyBW46xtJV
         DMZrYoX1Yevy7yFs+p6JOH4zk0wctp0NLQmydu5whb+yW0SAmN5bgnG78p3Hz+kxRVjn
         2k/n+UxUpGdEyubpnO74l2gO2N930Xff54jDatHvS2N4uNEbn8h3E88ILxThNmalE1xZ
         wMOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682601526; x=1685193526;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DBQvR31EzSGB+GNpVatatuXX6PWeKiJTAais4vH/bFk=;
        b=kv5PRE7yyhezerNYjCyE3wrhTcb9VhUkhH/nYJZt9NuZcccpWNnC0B2vhCE1z/w1tx
         DvDeQLDzCdW/5Zr3BzSwz3AlnT2M5pJVV5F9SGWJkoN9p9fZqFogElHhd6SJXYd9PB87
         jahpET3FFMaljP75yvv7Ky5ZYakUDWmCtqPMr5b7F/kZHrOaONyeP9Ku8n5EEv0J5cmq
         5dlcencHa/ZbodxpSjVSMcIU7qlF2/tonXPiSUTZHWa+9URGSYMXB5JZCWSoX8ZkFhtA
         j9NrmSkxZ+9pgKf2Co3KElgcEAwI2Qn+YFu7HxIDLHU6LQNKPfvHqrww2OmcMH3oneWR
         2d9A==
X-Gm-Message-State: AC+VfDwuHHpRBQ96pmEfSjjxFWTaIwZDblcItl2WXijmuWU0WPTfD+yb
	ch4MYPUWD5Ic8PWMCjPLPyXJUg==
X-Google-Smtp-Source: ACHHUZ5NPbQ4UO0fccy52C1sJlVWuBlM0HmI4LnstFrC6DQmxt/MgNO2gN7soJq77PsASAbgfJUqjA==
X-Received: by 2002:a17:907:7fa7:b0:956:fbd7:bc5e with SMTP id qk39-20020a1709077fa700b00956fbd7bc5emr2297912ejc.64.1682601526024;
        Thu, 27 Apr 2023 06:18:46 -0700 (PDT)
Received: from [172.23.2.82] ([31.221.30.162])
        by smtp.gmail.com with ESMTPSA id q22-20020aa7d456000000b005083b217cb7sm7891870edr.46.2023.04.27.06.18.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 06:18:45 -0700 (PDT)
Message-ID: <ece3e721-6e67-b2a9-4544-14e41a9b8589@linaro.org>
Date: Thu, 27 Apr 2023 15:18:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 4/7] phy: qcom-qmp-combo: Introduce orientation switching
Content-Language: en-US
To: Bjorn Andersson <quic_bjorande@quicinc.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-5-quic_bjorande@quicinc.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230425034010.3789376-5-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_061853_903359_648E24CC 
X-CRM114-Status: GOOD (  30.28  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On 25/04/2023 05:40, Bjorn Andersson wrote:
> The data lanes of the QMP PHY is swapped in order to handle changing
> orientation of the USB Type-C cable. Register a typec_switch device to
> allow a TCPM to configure the orientation.
> 
> The newly introduced orientation variable is adjusted based on the
> request, and the initialized components are brought down and up again.
> To keep track of what parts needs to be cycled new variables to keep
> track of the individual init_count is introduced.
> 
> Both the USB and the DisplayPort altmode signals are properly switched.
> For DisplayPort the controller will after the TCPM having established
> orientation power on the PHY, so this is not done implicitly, but for
> USB the PHY typically is kept initialized across the switch, and must
> therefor then be reinitialized.

   therefore
> 
> This is based on initial work by Wesley Cheng.
> 
> Link: https://lore.kernel.org/r/20201009082843.28503-3-wcheng@codeaurora.org/
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 92 ++++++++++++++++++++---
>   1 file changed, 83 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 6748f31da7a3..5d6d6ef3944b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -20,6 +20,7 @@
>   #include <linux/reset.h>
>   #include <linux/slab.h>
>   #include <linux/usb/typec.h>
> +#include <linux/usb/typec_mux.h>
>   
>   #include <dt-bindings/phy/phy-qcom-qmp.h>
>   
> @@ -1320,15 +1321,18 @@ struct qmp_combo {
>   
>   	struct phy *usb_phy;
>   	enum phy_mode mode;
> +	unsigned int usb_init_count;
>   
>   	struct phy *dp_phy;
>   	unsigned int dp_aux_cfg;
>   	struct phy_configure_opts_dp dp_opts;
> +	unsigned int dp_init_count;
>   
>   	struct clk_fixed_rate pipe_clk_fixed;
>   	struct clk_hw dp_link_hw;
>   	struct clk_hw dp_pixel_hw;
>   
> +	struct typec_switch_dev *sw;
>   	enum typec_orientation orientation;
>   };
>   
> @@ -2458,14 +2462,14 @@ static int qmp_combo_dp_calibrate(struct phy *phy)
>   	return 0;
>   }
>   
> -static int qmp_combo_com_init(struct qmp_combo *qmp)
> +static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>   {
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>   	void __iomem *com = qmp->com;
>   	int ret;
>   	u32 val;
>   
> -	if (qmp->init_count++)
> +	if (!force && qmp->init_count++)
>   		return 0;
>   
>   	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
> @@ -2526,11 +2530,11 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
>   	return ret;
>   }
>   
> -static int qmp_combo_com_exit(struct qmp_combo *qmp)
> +static int qmp_combo_com_exit(struct qmp_combo *qmp, bool force)
>   {
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
>   
> -	if (--qmp->init_count)
> +	if (!force && --qmp->init_count)
>   		return 0;
>   
>   	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
> @@ -2550,12 +2554,14 @@ static int qmp_combo_dp_init(struct phy *phy)
>   
>   	mutex_lock(&qmp->phy_mutex);
>   
> -	ret = qmp_combo_com_init(qmp);
> +	ret = qmp_combo_com_init(qmp, false);
>   	if (ret)
>   		goto out_unlock;
>   
>   	cfg->dp_aux_init(qmp);
>   
> +	qmp->dp_init_count++;
> +
>   out_unlock:
>   	mutex_unlock(&qmp->phy_mutex);
>   	return ret;
> @@ -2567,8 +2573,9 @@ static int qmp_combo_dp_exit(struct phy *phy)
>   
>   	mutex_lock(&qmp->phy_mutex);
>   
> -	qmp_combo_com_exit(qmp);
> +	qmp_combo_com_exit(qmp, false);
>   
> +	qmp->dp_init_count--;
>   	mutex_unlock(&qmp->phy_mutex);
>   
>   	return 0;
> @@ -2688,16 +2695,18 @@ static int qmp_combo_usb_init(struct phy *phy)
>   	int ret;
>   
>   	mutex_lock(&qmp->phy_mutex);
> -	ret = qmp_combo_com_init(qmp);
> +	ret = qmp_combo_com_init(qmp, false);
>   	if (ret)
>   		goto out_unlock;
>   
>   	ret = qmp_combo_usb_power_on(phy);
>   	if (ret) {
> -		qmp_combo_com_exit(qmp);
> +		qmp_combo_com_exit(qmp, false);
>   		goto out_unlock;
>   	}
>   
> +	qmp->usb_init_count++;
> +
>   out_unlock:
>   	mutex_unlock(&qmp->phy_mutex);
>   	return ret;
> @@ -2713,10 +2722,12 @@ static int qmp_combo_usb_exit(struct phy *phy)
>   	if (ret)
>   		goto out_unlock;
>   
> -	ret = qmp_combo_com_exit(qmp);
> +	ret = qmp_combo_com_exit(qmp, false);
>   	if (ret)
>   		goto out_unlock;
>   
> +	qmp->usb_init_count--;
> +
>   out_unlock:
>   	mutex_unlock(&qmp->phy_mutex);
>   	return ret;
> @@ -3351,6 +3362,65 @@ static struct phy *qmp_combo_phy_xlate(struct device *dev, struct of_phandle_arg
>   	return ERR_PTR(-EINVAL);
>   }
>   
> +#if IS_ENABLED(CONFIG_TYPEC)
> +static int qmp_combo_typec_switch_set(struct typec_switch_dev *sw,
> +				      enum typec_orientation orientation)
> +{
> +	struct qmp_combo *qmp = typec_switch_get_drvdata(sw);
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +
> +	if (orientation == qmp->orientation || orientation == TYPEC_ORIENTATION_NONE)
> +		return 0;
> +
> +	mutex_lock(&qmp->phy_mutex);
> +	qmp->orientation = orientation;
> +
> +	if (qmp->init_count) {
> +		if (qmp->usb_init_count)
> +			qmp_combo_usb_power_off(qmp->usb_phy);
> +		qmp_combo_com_exit(qmp, true);
> +
> +		qmp_combo_com_init(qmp, true);
> +		if (qmp->usb_init_count)
> +			qmp_combo_usb_power_on(qmp->usb_phy);
> +		if (qmp->dp_init_count)
> +			cfg->dp_aux_init(qmp);
> +	}
> +	mutex_unlock(&qmp->phy_mutex);
> +
> +	return 0;
> +}
> +
> +static void qmp_combo_typec_unregister(void *data)
> +{
> +	struct qmp_combo *qmp = data;
> +
> +	typec_switch_unregister(qmp->sw);
> +}
> +
> +static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
> +{
> +	struct typec_switch_desc sw_desc = {};
> +	struct device *dev = qmp->dev;
> +
> +	sw_desc.drvdata = qmp;
> +	sw_desc.fwnode = dev->fwnode;
> +	sw_desc.set = qmp_combo_typec_switch_set;
> +	qmp->sw = typec_switch_register(dev, &sw_desc);
> +	if (IS_ERR(qmp->sw)) {
> +		dev_err(dev, "Unable to register typec switch: %pe\n", qmp->sw);
> +		return PTR_ERR(qmp->sw);
> +	}
> +
> +	return devm_add_action_or_reset(dev, qmp_combo_typec_unregister, qmp);
> +}
> +#else
> +static int qmp_combo_typec_switch_register(struct qmp_combo *qmp)
> +{
> +	return 0;
> +}
> +#endif
> +
>   static int qmp_combo_probe(struct platform_device *pdev)
>   {
>   	struct qmp_combo *qmp;
> @@ -3385,6 +3455,10 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   	if (ret)
>   		return ret;
>   
> +	ret = qmp_combo_typec_switch_register(qmp);
> +	if (ret)
> +		return ret;
> +
>   	/* Check for legacy binding with child nodes. */
>   	usb_np = of_get_child_by_name(dev->of_node, "usb3-phy");
>   	if (usb_np) {

Thanks for taking care of this, with the commit typo fix:

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
