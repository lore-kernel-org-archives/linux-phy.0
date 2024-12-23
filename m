Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D275E7718B
	for <linux-phy@archiver.kernel.org>; Mon, 23 Dec 2024 11:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpLtJeeaZCEWlNU6hqtYUd7UwZlHaQccyyiO0fOcMbs=; b=YUMZM3J3/cpekB
	nhS6pRWtmVtwaeB912PK2xG3cz9BDNynrNv8p0PP4y8J1mLHDiTAHZYDJAjxHT6cf/wUXmO/Nzd1n
	kNo5ryAan2z4jiJbBvzJ3E7IhXGudq/em65bcVkKbqGAaL3baVDQDyA4emTqikRPdQAeKGnN4RtO8
	8DATGavlgZaG7QgwnvT3XNaWU+mTsju/whEAryN8l0bS1GBfj2lUXndVXTn5kb9ovJTB79ESW4tDI
	ACRc06oLTCIlvTXt/pVTGSP6K8SGHzn9Oyk3U3t407DpyqpqiMeZiBDDO2TE7LgRntA0lyQ+6x0U5
	8lmvT2dQ8BYslHlgeL1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPgX3-00000009tI7-3Nky;
	Mon, 23 Dec 2024 11:23:29 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPgPZ-00000009sIy-0vUu
	for linux-phy@lists.infradead.org;
	Mon, 23 Dec 2024 11:15:47 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-3022c61557cso51163881fa.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Dec 2024 03:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734952543; x=1735557343; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3mo6MP2QToWKxW6CHGPpfwk7yms3zeJ7L1O8Z7JM6ls=;
        b=bzP9LD0uBjzNkyZMlzlRtAfhXHSY5/4aNIwWwcUauda0bgrVC58CncWRfRTfasIFom
         wzby+K0w+UWVfAUubUENw2ZVqKObzVq/lXh0DI/Cnz+PEzEFcr3rnaosgVgFhFM4GeBV
         Tnas+A2e1pWdFPq48uBRlp5fR07856698/aZwHHjpjGOTiWrqj6C9azbG2Zd6AdXwU3A
         wKKjd4W1H0hrPBdpReYSkjwowxonp2E2Ju2z72/drgOUC2s9z+NcFvG+G+ThdrIvrpoJ
         w2F4MDCjbRMRrQoxNaszv9rEDceQEfCYormUDNic1Im+ja1bCT3BYEuixKWjuBSwnyJc
         im+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734952543; x=1735557343;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3mo6MP2QToWKxW6CHGPpfwk7yms3zeJ7L1O8Z7JM6ls=;
        b=m2NOyap7ZZj0jNOycJ4FhW+fQOTu6ntYlmlrf7CSRQ/cnMLm7a30/cT4BOsDqVKdUh
         iMrASPhlVEFFnLuoORmKrciOlNysFi+Av2NxEzTHyWZWqodNaUKrf84gHrcNZ+uHCz0p
         f/7B/nEvIdVaJn6Qib/6f+KFP68bzJ28+oFEVmzbZDVU8Wq1G7cee1eJksrSvhC21HjK
         uqjZgvgATpwmeZR9aUTRr1jfTr+anloMAPrPny3Jj1oJ1FkGBKCDrw6dwXECW1I2matk
         R0kLLmhQylHsHxdB6xPFHKSEblatVj1Bhr2b/RVxK34Xr+4W3wAYCzOIQ0e5ITA0AUFp
         5GYA==
X-Forwarded-Encrypted: i=1; AJvYcCXSYSqCQcd8F1URihMgW3qcAOMTA8Q87DZH+JvqHdK2EaMoHM7iJtaeiILMNx4DC9jQKs6AzpnZgn4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwzEQN8/c6axORtKzc7fzTAluu5fddvwGg9Ef71/Im7ypQEoDfM
	AcPAHlQ1thVQ+Gj/eSPK7kFxTBIeZdf8wfmX8JXn40Rby1T/MeHG5YDL9khUn0U=
X-Gm-Gg: ASbGncvD5Qguav/Pf0GK4itIuGRAmOll+yN3Wzdqz19DOFXNO6TXU0dmEKfjDF3b4Ka
	pAUTmEqqolJuZVfbAgzMt6KsX9RCy2pu3/r/Mj9AMQJU2Qz2pvHZlFc3VPxAMZUV/F+TZquHNj/
	xOxJVxQMusD+meGS7XDZo75+NAjJ1VsLyk5LCVLjTy81SYOJFDvB/b8YKdPLfEyLxW2J2eYEpyB
	biHFWt84R584Su6hpbYK22ZsgHpgkHpWi62AqSPqMWii86tMrYwLaSuw6lLZDVlHjiwKmAtYuJZ
	H3Pmac1Ob0QFrdXQuaEUT7bYz9W1oEO4t1i9
X-Google-Smtp-Source: AGHT+IEgmX/5ATGHYxkBwsAFplT1zESRogm6vsP2Mbb2JNoPZ4jUEIIAF7+Dio6FJRuZVz2+3nzV0g==
X-Received: by 2002:a05:651c:b0a:b0:304:4cac:d8ef with SMTP id 38308e7fff4ca-304685487c2mr37661981fa.7.1734952543223;
        Mon, 23 Dec 2024 03:15:43 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045b083e92sm12807641fa.116.2024.12.23.03.15.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 03:15:41 -0800 (PST)
Date: Mon, 23 Dec 2024 13:15:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, 
	u.kleine-koenig@baylibre.com, francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [PATCH v7 10/19] drm/imx: Add i.MX8qxp Display Controller pixel
 engine
Message-ID: <7k2jqpkpagm3x7shywgzvtst364f6dmmhuz2covpbvghoa5rzc@3dvlbdgtnjck>
References: <20241223064147.3961652-1-victor.liu@nxp.com>
 <20241223064147.3961652-11-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241223064147.3961652-11-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_031545_284286_D4B2B1B9 
X-CRM114-Status: GOOD (  26.48  )
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

On Mon, Dec 23, 2024 at 02:41:38PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller pixel engine consists of all processing
> units that operate in the AXI bus clock domain.  Add drivers for
> ConstFrame, ExtDst, FetchLayer, FetchWarp and LayerBlend units, as
> well as a pixel engine driver, so that two displays with primary
> planes can be supported.  The pixel engine driver and those unit
> drivers are components to be aggregated by a master registered in
> the upcoming DRM driver.
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v7:
> * Add kernel doc for struct dc_drm_device. (Dmitry)
> * Fix regmap_config definitions by correcting name field, correcting read
>   ranges and setting max_register field.
> * Get instance numbers from device data(compatible strings) instead of OF
>   aliases.
> * Collect Maxime's R-b tag.
> * Trivial tweaks.
> 
> v6:
> * Fix build warning by expanding sizeof(fu->name) from 13 to 21.
>   (kernel test robot)
> 
> v5:
> * Replace .remove_new with .remove in dc-{cf,de,fl,fw,lb,pe}.c. (Uwe)
> * Fix commit message to state that pixel engine driver is a component driver
>   instead of a master/aggregate driver.
> 
> v4:
> * Use regmap to define register map for all registers. (Dmitry)
> * Use regmap APIs to access registers. (Dmitry)
> * Inline some small functions. (Dmitry)
> * Move dc_lb_blendcontrol() function call from KMS routine to initialization
>   stage. (Dmitry)
> * Use devm_kzalloc() to drmm_kzalloc() to allocate dc_* data strutures.
> * Drop unnecessary private struct dc_*_priv.
> * Set suppress_bind_attrs driver flag to true to avoid unnecessary sys
>   interfaces to bind/unbind the drivers.
> * Make some fetch unit operations be aware of fractional fetch unit index(0-7).
> 
> v3:
> * No change.
> 
> v2:
> * Use OF alias id to get instance id.

Carrying several comments from previous patch:
- shdld vs shdload
- use of indices in the compat strings
- bind() behaviour depending on the particular order of device bindings

> 
> +
> +void dc_fu_common_hw_init(struct dc_fu *fu)
> +{
> +	enum dc_fu_frac frac;
> +	int i;
> +
> +	dc_fu_baddr_autoupdate(fu, 0x0);
> +	dc_fu_enable_shden(fu);
> +	dc_fu_set_linemode(fu, LINEMODE_DISPLAY);
> +	dc_fu_set_numbuffers(fu, 16);
> +
> +	for (i = 0; i < ARRAY_SIZE(dc_fetchunit_all_fracs); i++) {

for (i = DC_FETCHUNIT_FRAC0 ; i < DC_FETCHUNIT_FRAC_NUM; i++) ?

> +		frac = dc_fetchunit_all_fracs[i];
> +
> +		dc_fu_layeroffset(fu, frac, 0, 0);
> +		dc_fu_clipoffset(fu, frac, 0, 0);
> +		dc_fu_clipdimensions(fu, frac, 1, 1);
> +		dc_fu_disable_src_buf(fu, frac);
> +		dc_fu_set_pixel_blend_mode(fu, frac);
> +	}
> +}
> +

[...]

> +enum dc_link_id dc_lb_get_link_id(struct dc_lb *lb)
> +{
> +	return lb->link;
> +}
> +
> +void dc_lb_pec_dynamic_prim_sel(struct dc_lb *lb, enum dc_link_id prim)
> +{
> +	int fixed_sels_num = ARRAY_SIZE(prim_sels) - 4;
> +	int i;
> +
> +	for (i = 0; i < fixed_sels_num + lb->id; i++) {

This function and the next one silently skip writing link ID if it is
incorrect. Can it actually become incorrect? If not, I'd say, it is
better to drop the loop and the array. If you are not sure, there should
be some kind of dev_warn() or drm_warn().

> +		if (prim_sels[i] == prim) {
> +			regmap_write_bits(lb->reg_pec, PIXENGCFG_DYNAMIC,
> +					  PIXENGCFG_DYNAMIC_PRIM_SEL_MASK,
> +					  PIXENGCFG_DYNAMIC_PRIM_SEL(prim));
> +			return;
> +		}
> +	}
> +}
> +
> +void dc_lb_pec_dynamic_sec_sel(struct dc_lb *lb, enum dc_link_id sec)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(sec_sels); i++) {
> +		if (sec_sels[i] == sec) {
> +			regmap_write_bits(lb->reg_pec, PIXENGCFG_DYNAMIC,
> +					  PIXENGCFG_DYNAMIC_SEC_SEL_MASK,
> +					  PIXENGCFG_DYNAMIC_SEC_SEL(sec));
> +			return;
> +		}
> +	}
> +}
> +

[...]

> +
> +static int dc_lb_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct dc_drm_device *dc_drm = data;
> +	struct dc_pe *pe = dc_drm->pe;
> +	void __iomem *base_pec;
> +	void __iomem *base_cfg;
> +	struct dc_lb *lb;
> +
> +	lb = devm_kzalloc(dev, sizeof(*lb), GFP_KERNEL);
> +	if (!lb)
> +		return -ENOMEM;
> +
> +	lb->id = (enum dc_lb_id)(uintptr_t)device_get_match_data(dev);
> +
> +	base_pec = devm_platform_ioremap_resource_byname(pdev, "pec");
> +	if (IS_ERR(base_pec))
> +		return PTR_ERR(base_pec);
> +
> +	base_cfg = devm_platform_ioremap_resource_byname(pdev, "cfg");
> +	if (IS_ERR(base_cfg))
> +		return PTR_ERR(base_cfg);
> +
> +	lb->reg_pec = devm_regmap_init_mmio(dev, base_pec,
> +					    &dc_lb_pec_regmap_config);
> +	if (IS_ERR(lb->reg_pec))
> +		return PTR_ERR(lb->reg_pec);
> +
> +	lb->reg_cfg = devm_regmap_init_mmio(dev, base_cfg,
> +					    &dc_lb_cfg_regmap_config);
> +	if (IS_ERR(lb->reg_cfg))
> +		return PTR_ERR(lb->reg_cfg);
> +
> +	lb->link = lb_links[lb->id];

lb->link = LINK_ID_LAYERBLEND0 + lb->id ?

> +
> +	pe->lb[lb->id] = lb;
> +
> +	return 0;
> +}
> +
> +static const struct component_ops dc_lb_ops = {
> +	.bind = dc_lb_bind,
> +};
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
