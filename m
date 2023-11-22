Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49736C61D9C
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 13:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Y+RLdQbsTFLS0PiJGn04Bu36HD8DjH/NqXpFcHe7Jo=; b=xfj/EF5x93+nBl
	WUelng3s6MO3Ve7gGk0WBaIYh6lfYua4uIxc6TKyWIfAJngGL0eHIKinANeIX/gdgVebuBz9GJ2jo
	DJDqEzDSS9idadBxDuDd0wACR1qyyYReopY2I+gSDfLGb58x6Rxi9d507kigbLHR+HvwqhFB7LNHH
	GwoinE/evb7jcn9G9Bp4E8b4jnsClJezIjIebNrWQVP13ZRd9p9l4tYmUQg86suRzYzqVsjcPj5F5
	QqEivDZ9sMCbtk6X3R+y+7Upy8uGZbBgMUTyCclovBkE+/CRqp15IvU1LpWN1JuOA5TAsvjqeItub
	J8wvN+FI+ozIq9FAQiUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mt8-001tte-08;
	Wed, 22 Nov 2023 13:03:30 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mt4-001tst-2t
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 13:03:28 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a02d12a2444so224618566b.3
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 05:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700658204; x=1701263004; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YcYUWH5bzrETcKbno6DmH/KmpiVWUmC1uDUZpbNkxL0=;
        b=bAjfyyJp7bIap/xp2RaFcrZEDwdqjhbrsNTsGcC+FCDZLp850vkxDPY014SGdwbPE+
         8B/q8mcVKaGiQR+mvK7wDOjxUiAjdA9MAR4Wy9SAbXNQkmsICRCWPICF/EnVrff1G8Yk
         Gg/fmmkPTz6QvlNeLKzSiho4hPVcYzgLmRmLyWj3vumHT1bIUG3wc+1fkWP7gSoIXNbk
         Wl4jo8qUHy79PCbHepSBgMvpN6Syh9YU82DqtC3wyWiBVgBj2PSd1F4kG/GHrN14CKgC
         /EtgkY7g7rawn2CUVZs3reIzLdmukJkO6ydmVnyDn3/ewP3KFVzSSU5Y62ZFwczUMNho
         aKOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700658204; x=1701263004;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YcYUWH5bzrETcKbno6DmH/KmpiVWUmC1uDUZpbNkxL0=;
        b=VsQbcwpB0ricDMByCThEk7z4WPVMpkzYKA8mFEFKxtJ9AdEkUiKP8NB8dAOGlgvRi5
         ORjQnTh+eGyghgHWtFt8Fm8rhaN2Io1KkKcbBZyb5g30QjFJIlDILgeNFy5rQo/b8iA5
         7Dr/nbH1ZgWcdr4oZaMpvtR4vZrT0NAg8as/lxnJj6qLwsOqZc5+Z/JQndlckpc8T37V
         sJsT+YZcvUNHxq2y2rCFzglIXQjybzWcn/S65dxdr3mIOUhJ7eOuI50DShonU8oKbKyB
         C143dhhXdYxG8QZAa1btTQAfue4fLw+LAa1tn+fT2i72ZRlfJFTdA3VJCeSFuOfRhpaK
         awaQ==
X-Gm-Message-State: AOJu0Yx4pa7gYnC0O0XFGKi1omAvgx8ZX6fOSoOQqy4FbSigI7zPPK4D
	H7m044RmlK1+dV9FT1YdRoas7g==
X-Google-Smtp-Source: AGHT+IEh3QsM15HWI8AtDUaKzyzxO6unVwWtCJeTfgjG18wkq4n4JMq+Iw7r2nqKQmxIPt7LxPtwUw==
X-Received: by 2002:a17:906:8e:b0:9c4:6893:ccc5 with SMTP id 14-20020a170906008e00b009c46893ccc5mr1359841ejc.57.1700658204634;
        Wed, 22 Nov 2023 05:03:24 -0800 (PST)
Received: from linaro.org ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id kk17-20020a170907767100b0099cce6f7d50sm6622637ejc.64.2023.11.22.05.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 05:03:24 -0800 (PST)
Date: Wed, 22 Nov 2023 15:03:22 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom-qmp-usb: Add Qualcomm X1E80100 USB3 PHY
 support
Message-ID: <ZV38GhOK/n47c6ne@linaro.org>
References: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-0-3f5bd223d5b4@linaro.org>
 <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-2-3f5bd223d5b4@linaro.org>
 <ZV36k8AZdy9Zm-rj@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZV36k8AZdy9Zm-rj@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_050326_942986_35AE9C26 
X-CRM114-Status: GOOD (  19.66  )
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

On 23-11-22 13:56:51, Johan Hovold wrote:
> On Wed, Nov 22, 2023 at 02:05:22PM +0200, Abel Vesa wrote:
> > The X1E80100 platform has two instances of the USB3 UNI phy attached
> > to the multi-port USB controller, add definition for these.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 152 ++++++++++++++++++++++++++++++++
> >  1 file changed, 152 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > index 02f156298e77..bbeba5722cf0 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > @@ -24,6 +24,7 @@
> >  #include "phy-qcom-qmp-pcs-misc-v4.h"
> >  #include "phy-qcom-qmp-pcs-usb-v4.h"
> >  #include "phy-qcom-qmp-pcs-usb-v5.h"
> > +#include "phy-qcom-qmp-pcs-usb-v7.h"
> >  
> >  /* QPHY_SW_RESET bit */
> >  #define SW_RESET				BIT(0)
> > @@ -1138,6 +1139,134 @@ static const struct qmp_phy_init_tbl sc8280xp_usb3_uniphy_pcs_usb_tbl[] = {
> >  	QMP_PHY_INIT_CFG(QPHY_V5_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
> >  };
> >  
> > +static const struct qmp_phy_init_tbl x1e80100_usb3_uniphy_serdes_tbl[] = {
> 
> These tables and...
> 
> > @@ -1411,6 +1540,26 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
> >  	.regs			= qmp_v5_usb3phy_regs_layout,
> >  };
> >  
> > +static const struct qmp_phy_cfg x1e80100_usb3_uniphy_cfg = {
> > +	.lanes			= 1,
> > +
> > +	.offsets		= &qmp_usb_offsets_v5,
> > +
> > +	.serdes_tbl		= x1e80100_usb3_uniphy_serdes_tbl,
> > +	.serdes_tbl_num		= ARRAY_SIZE(x1e80100_usb3_uniphy_serdes_tbl),
> > +	.tx_tbl			= x1e80100_usb3_uniphy_tx_tbl,
> > +	.tx_tbl_num		= ARRAY_SIZE(x1e80100_usb3_uniphy_tx_tbl),
> > +	.rx_tbl			= x1e80100_usb3_uniphy_rx_tbl,
> > +	.rx_tbl_num		= ARRAY_SIZE(x1e80100_usb3_uniphy_rx_tbl),
> > +	.pcs_tbl		= x1e80100_usb3_uniphy_pcs_tbl,
> > +	.pcs_tbl_num		= ARRAY_SIZE(x1e80100_usb3_uniphy_pcs_tbl),
> > +	.pcs_usb_tbl		= x1e80100_usb3_uniphy_pcs_usb_tbl,
> > +	.pcs_usb_tbl_num	= ARRAY_SIZE(x1e80100_usb3_uniphy_pcs_usb_tbl),
> > +	.vreg_list		= qmp_phy_vreg_l,
> > +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> > +	.regs			= qmp_v5_usb3phy_regs_layout,
> > +};
> 
> ...this struct no longer looks like they've been added at the right
> places.
> 
> > +
> >  static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
> >  	.lanes			= 1,
> >  
> > @@ -2247,6 +2396,9 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
> >  	}, {
> >  		.compatible = "qcom,sc8280xp-qmp-usb3-uni-phy",
> >  		.data = &sc8280xp_usb3_uniphy_cfg,
> > +	}, {
> > +		.compatible = "qcom,x1e80100-qmp-usb3-uni-phy",
> > +		.data = &x1e80100_usb3_uniphy_cfg,
> 
> Same here, please keep the entries sorted by compatible (and please
> check your other x1e80100 patches for such issues after changing the SoC
> name).

Thanks for reviewing and catching this. Will triple check from now on.

> 
> >  	}, {
> >  		.compatible = "qcom,sdm845-qmp-usb3-uni-phy",
> >  		.data = &qmp_v3_usb3_uniphy_cfg,
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
