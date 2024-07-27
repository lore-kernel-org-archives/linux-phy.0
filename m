Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A6F9C3DA4A
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jul 2024 16:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11FjZw1tKypVDKxDZZX7ecP21EL0J34l5RlVHTr/LPk=; b=TUg1b9ys/zP2fi
	w1GZVYaoP6RLjl93I9SIC5ByT9/X965X7mXpaPuPWVPHeDx7+u0OtxIMIDxPAqhKgdAFrni6H+xcU
	fcR76G8PGpMOUFaAZg8aZg/35QjtcdP18vjRqfWigARZ1Yj6HjHghWoxkx3y/A+KKvN3fesHP/YRv
	UPaJDkcvGr3+94cLmWu3OqVJFe6HrllMGBLowfcK+/ny4Y6Yjmq0pgnc25dtRhcofYEtAnvUwNG4t
	ASSwnbFPl4umQlKE4YQGkUff1e6XLiSWxUnfOKaTfg/Yh+pAF5NzAWv/ZGN2kVNTC+nhOdr5ACz5f
	uZBxXizZv2/mXCDDry4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXk3E-00000006x9b-3pJj;
	Sat, 27 Jul 2024 16:13:45 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXk3C-00000006x8W-1XoE
	for linux-phy@lists.infradead.org;
	Sat, 27 Jul 2024 16:13:43 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2ef25511ba9so17431641fa.0
        for <linux-phy@lists.infradead.org>; Sat, 27 Jul 2024 09:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722096821; x=1722701621; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R65NOswuKmOlcg5v/47v/NC7ISjyuU0IR8ikjFCmA14=;
        b=DVyUmrQrmt3LTGCnt1Pl5rVKbkCqDnG9YlfK/SrnFt4LYAFrop9QbYbgMirPP3UseN
         VPibgoCP9NOTen8+pvA/wtxwBUAfs/qPoxu8KERxeyAyotvr5HJw2Dk4kfL4rTTse0FR
         +uucSKlTs9vWhitU52Dt6kOgNHeVV1I4b0UzJdCvvDPakgPNFmzJ8v7zNRooHmfEjOhj
         ipHiuPGh3/RFVuyVWaJlvQxpZLS09awkbU0xWCKlKp1oQdeSZSnZx28eRJrwCld95bF7
         Ut2kSketlikELaSO/qbx4w2eFIVnz3tlhMRptEA/4eou0kD+sDnqSgGGwDOnykT+lWx8
         JlRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722096821; x=1722701621;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R65NOswuKmOlcg5v/47v/NC7ISjyuU0IR8ikjFCmA14=;
        b=MAmqJeWd8MoUS7IjAo0nA0KyKrjGNxfq4kPvFf4r0FgarlhER8vDOOItxCjVlLnbtc
         CH2KvBtVq8iRQTt+t1uy/v/IKFbhHx65fAmpxI/kp3MhCWUJ0Xaa3JvyaucVhLktEnk8
         MSPWhybbIf2h3pNQtyywaJO1y3fQ51y5qaf6LnD6wxdhmZirBm2HZUAyrmJIDbYagScX
         sXaN7bm48kibNlIPK//bt1QV03OJ6Spqy+/fyl/pAe0L/9fD2rscsRDxqhqb6Y7mPfWY
         mYojPY0gusUNuN32qM0OL3WHgd4T9007sFzcCcdkYbooi5cUbbPwhOwHFw7lyW2ra4KP
         22cw==
X-Forwarded-Encrypted: i=1; AJvYcCWfqAU0iwVngUbh/DN2midEACCgND1ulwQGJ5au6PUQXqMj1bNnYiVY17MEbw74AqUI2KV9J35yWzBkn+QEDigIemisLNaa+tv6urYsdQ==
X-Gm-Message-State: AOJu0YyVMPnU26kj+GfkGuQ7tU2qFcmnlECP5n9c3M49XEEvGhy0LYmt
	xq4JiEM8UyHh1dbKYBasTu4sxcQYT9icMTURUbT3iM7Ti/ODEH8D5CIpB3YcQmA=
X-Google-Smtp-Source: AGHT+IFmhVyFWyXbEhPfCIHxIT/ADxUCtbXvdsR87jH1Y5GSmJB81c7AAgcrJPh51vmgGGoCWI49Lg==
X-Received: by 2002:a2e:9085:0:b0:2ef:2f8a:52d5 with SMTP id 38308e7fff4ca-2f12f0bb2b1mr6793381fa.8.1722096820422;
        Sat, 27 Jul 2024 09:13:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f12dda4129sm2714401fa.139.2024.07.27.09.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 09:13:40 -0700 (PDT)
Date: Sat, 27 Jul 2024 19:13:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it, 
	frank.li@nxp.com
Subject: Re: [PATCH v2 07/16] drm/imx: Add i.MX8qxp Display Controller pixel
 engine
Message-ID: <ibdzow7lvbimaefrp2z2aolgp4pytpq3dcr2y3pegjavvknhgm@2e6j3f4zytqp>
References: <20240712093243.2108456-1-victor.liu@nxp.com>
 <20240712093243.2108456-8-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240712093243.2108456-8-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240727_091342_431992_EA5F29AF 
X-CRM114-Status: GOOD (  14.35  )
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

On Fri, Jul 12, 2024 at 05:32:34PM GMT, Liu Ying wrote:
> i.MX8qxp Display Controller pixel engine consists of all processing
> units that operate in the AXI bus clock domain.  Add drivers for
> ConstFrame, ExtDst, FetchLayer, FetchWarp and LayerBlend units, as
> well as a pixel engine driver, so that two displays with primary
> planes can be supported.  The pixel engine driver as a master binds
> those unit drivers as components.  While at it, the pixel engine
> driver is a component to be bound with the upcoming DRM driver.

Same question / comment: create subnodes directly, without going
through the subdevices. A lot of small functions that would benefit
being inlined.

> +static int dc_cf_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct dc_drm_device *dc_drm = data;
> +	struct dc_pe *pe = dc_drm->pe;
> +	struct dc_cf_priv *priv;
> +	int id;
> +
> +	priv = drmm_kzalloc(&dc_drm->base, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->reg_cfg = devm_platform_ioremap_resource_byname(pdev, "cfg");
> +	if (IS_ERR(priv->reg_cfg))
> +		return PTR_ERR(priv->reg_cfg);
> +
> +	id = of_alias_get_id(dev->of_node, "dc0-constframe");

Is it documented? Acked?

> +	if (id < 0) {
> +		dev_err(dev, "failed to get alias id: %d\n", id);
> +		return id;
> +	}
> +

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
