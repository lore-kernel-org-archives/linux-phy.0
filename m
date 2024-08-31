Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7F58CD1293
	for <linux-phy@archiver.kernel.org>; Sat, 31 Aug 2024 10:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BVNXyhf0MVh1jicwA7VUEseh3VxMU7fYoBhqRdQ4MFM=; b=x9io/jImpSJcU3
	S6EzbXWHqBJcNMhAkjyCx3HxGzmEpbjXB3YhH5zz3h4ck4pXGXHyPFWs+ZK76blxm5H9y+nyjt0T3
	S9l6sFQUCARIRZHvNC4UTFO9iVRYq+AR4ZKOOSr9RRPfXLK3nG6xgPraJYtJm9EXAyuGxtHG0GrjR
	PSNJF6yzAS71RIy7VXHJ+QBISwk80oP0Io9Lg0/WLwAto/BNcV9rd0663zVWZnxCgOTxy4bvVmSEq
	RpiLIYk7oEg2F5XgYg8DSRShaytf1NqS4jDIza/lt5fHmqWCGmUcGQYcXw2yHDNc0/xHgLEpotYyI
	UEzQnmLTyZ8hOCMngpfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skLRK-000000099O9-2mjg;
	Sat, 31 Aug 2024 10:34:42 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skLPN-0000000996F-2Rq2
	for linux-phy@lists.infradead.org;
	Sat, 31 Aug 2024 10:32:43 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-dff1ccdc17bso2837883276.0
        for <linux-phy@lists.infradead.org>; Sat, 31 Aug 2024 03:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725100360; x=1725705160; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tKxIacQXeZ2qcUvNmDUUVII5ysi793GfJwtJp8UupOo=;
        b=okRW12XPeXOJwfD10uZ8xh8YMBFsuh5Jm3ay+Rgd8k2FMY6Xcu7vVn90Hr3lOuMMKt
         g424iLhUu8mlFZJM3bi6TXC/O+voeHm2SIj8wS+OGcOEzW8HluQUMSVzDuloYngzCBaa
         v79BsrVhgdsz+W/ra/VKCiy9vbw33AdhiwmAxv41vHrXTxgYex9h6hckcfO4pD6kU7eo
         0K62l38htQMyf4psGetJPgWyN1vo8ORAVGu5hJGx7x9BPgXJNaqUbkhBZ6LweZfsNo3t
         1jH8oehhVLGi7b713SqREjWS8PToXUxYKKApwtNAIYeiYDSXkm3ioowzvDgnHrTTRmxl
         obCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725100360; x=1725705160;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tKxIacQXeZ2qcUvNmDUUVII5ysi793GfJwtJp8UupOo=;
        b=p4Pl4L0zeOJoEWQpTFruHetcEi+dNtqGi1Do0bcEBvSClzKgOkjkw+rWbSnd2D949N
         S+S30MAf7Ba6ZBf6I+RZAWpk88QaHv/JXc//kBsRP9HKy4ZdamIxqc3MEeSlLKZs5W6b
         hnmkOjjAvVt26BX4U23cBUw4lAJFdsUZ83RNlSmr+s7qJebRrEUHrQO7RQBDKtmsfNXe
         j2dZDFSxLKzzO/tzJ56WNdNuME05JLUeUccsbkIVgHWnYYqYS57/rrkyD/DhMTdc1p21
         g+LBwYg7o3i+NAG45IevooA3Oaz4FZSutDIihoRsoSu3A3PCA8gsiy0q96ZioOnzF0Lw
         5fPQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9DUyvo5op85NV6RzXM1HFSY8mU0cBaRtzWbTyjeJx7cFOGd1nYN1np/nO2FPvy6G4hIAmTEcE0xk=@lists.infradead.org
X-Gm-Message-State: AOJu0YyPl7QyHgfE02Dt9YkNE3YFyJTf3wMcfO/g5q1L4AGnATiBWnjo
	B1e6nn26RUAQnqRQjykmEjySkK/TrsDix52NUdNNASpNNWwyINuJfowEi6hcWywbb/THog6EElQ
	yJbZ8RwN9Cl3NickPVLLRRXHmxw3jedHpmOwGcA==
X-Google-Smtp-Source: AGHT+IH8Eb7EYXiidD/DrNNChHQ2lwNk48tFSRFBB77aRxIJWoIIPagMeOtludSNPt8BV9FsjbJZVJT8vUY8xBCkml0=
X-Received: by 2002:a05:6902:1145:b0:e0b:a7c1:9dcc with SMTP id
 3f1490d57ef6-e1a7a019106mr5308764276.20.1725100360016; Sat, 31 Aug 2024
 03:32:40 -0700 (PDT)
MIME-Version: 1.0
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com>
 <99bef301-9f6c-4797-b47e-c83e56dfbda9@tuxon.dev> <CAPDyKFrVS2vpsJqTvjKCJ7ADqXc4D4k2eeCBsaK4T+=pXDnKUA@mail.gmail.com>
 <fa9b3449-ea3e-4482-b7eb-96999445cea5@tuxon.dev>
In-Reply-To: <fa9b3449-ea3e-4482-b7eb-96999445cea5@tuxon.dev>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Sat, 31 Aug 2024 12:32:02 +0200
Message-ID: <CAPDyKFrkkASq7rfRN=9sEet-p8T8t+f__PdnSNRN3bMNipnNNw@mail.gmail.com>
Subject: Re: [PATCH 00/16] Add initial USB support for the Renesas RZ/G3S SoC
To: claudiu beznea <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
	magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com, 
	sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com, 
	biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-pm@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240831_033241_651740_4D11CD9E 
X-CRM114-Status: GOOD (  21.36  )
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

[...]

> >
> > If not, there are two other options that can be considered I think.
> > *) Using the genpd on/off notifiers, to really allow the consumer
> > driver of the reset-control to know when the PM domain gets turned
> > on/off.
> > **) Move the entire reset handling into the PM domain provider, as it
> > obviously knows when the domain is getting turned on/off.
>
> This option is what I've explored, tested on my side.
>
> I explored it in 2 ways:
>
> 1/ SYSC modeled as an individual PM domain provider (this is more
>    appropriate to how HW manual described the hardware) with this the PHY
>    reset DT node would have to get 2 PM domains handlers (one for the
>    current PM domain provider and the other one for SYSC):
>
> +               phyrst: usbphy-ctrl@11e00000 {
> +                       compatible = "renesas,r9a08g045-usbphy-ctrl";
> +                       reg = <0 0x11e00000 0 0x10000>;
> +                       clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>;
> +                       resets = <&cpg R9A08G045_USB_PRESETN>;
> +                       power-domain-names = "cpg", "sysc";
> +                       power-domains = <&cpg R9A08G045_PD_USB_PHY>, <&sysc
> R9A08G045_SYSC_PD_USB>;
> +                       #reset-cells = <1>;
> +                       status = "disabled";
> +
> +                       usb0_vbus_otg: regulator-vbus {
> +                               regulator-name = "vbus";
> +                       };
> +               };
> +

According to what you have described earlier/above, modelling the SYSC
as a PM domain provider seems like a better description of the HW to
me. Although, as I said earlier, if you prefer the reset approach, I
would not object to that.

>
> and the PHY reset driver will get bulky with powering on/off both of these,
> at least with my current implementation, something like (and the following
> code is in probe()):
>
> +       if (priv->set_power) {
> +               priv->cpg_genpd_dev = dev_pm_domain_attach_by_name(dev, "cpg");
> +               if (IS_ERR(priv->cpg_genpd_dev)) {
> +                       dev_err_probe(dev, error, "Failed to attach CPG PM
> domain!");
> +                       error = PTR_ERR(priv->cpg_genpd_dev);
> +                       goto err_pm_runtime_put;
> +               }
> +
> +               priv->sysc_genpd_dev = dev_pm_domain_attach_by_name(dev,
> "sysc");
> +               if (IS_ERR(priv->sysc_genpd_dev)) {
> +                       dev_err_probe(dev, error, "Failed to attach sysc PM
> domain!");
> +                       error = PTR_ERR(priv->sysc_genpd_dev);
> +                       goto err_genpd_cpg_detach;
> +               }
> +
> +               priv->cpg_genpd_dl = device_link_add(dev, priv->cpg_genpd_dev,
> +                                                    DL_FLAG_PM_RUNTIME |
> +                                                    DL_FLAG_STATELESS);
> +               if (!priv->cpg_genpd_dl) {
> +                       dev_err_probe(dev, -ENOMEM, "Failed to add CPG
> genpd device link!");
> +                       goto err_genpd_sysc_detach;
> +               }
> +
> +               priv->sysc_genpd_dl = device_link_add(dev,
> priv->sysc_genpd_dev,
> +                                                     DL_FLAG_PM_RUNTIME |
> +                                                     DL_FLAG_STATELESS);
> +               if (!priv->sysc_genpd_dl) {
> +                       dev_err_probe(dev, -ENOMEM, "Failed to add sysc
> genpd device link!");
> +                       goto err_genpd_cpg_dl_del;
> +               }
> +
> +
> +               error = pm_runtime_resume_and_get(priv->cpg_genpd_dev);
> +               if (error) {
> +                       dev_err_probe(dev, error, "Failed to runtime resume
> cpg PM domain!");
> +                       goto err_genpd_sysc_dl_del;
> +               }
> +
> +               error = pm_runtime_resume_and_get(priv->sysc_genpd_dev);
> +               if (error) {
> +                       dev_err_probe(dev, error, "Failed to runtime resume
> sysc PM domain!");
> +                       goto err_genpd_cpg_off;
> +               }
> +       }

Indeed, the code above looks bulky.

Fortunately, we now have dev|devm_pm_domain_attach_list(), which
replaces all of the code above.

[...]

Kind regards
Uffe

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
