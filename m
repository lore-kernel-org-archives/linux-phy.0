Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBB16C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 19:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzHpbrasIUHDyCdvEEXzQArhvxHWTtwoUEpSJJefwiI=; b=wn1lcoxuS98+nb
	dF5gmPdeMzxcVuzKnuhCgbEu895JWipyusU4cVA/ZliLJ+o4933UN+u/0UCEcq8p9Z9LED/H9xzLD
	CTuO5BYayT5Xzv1nT7LWPZ5zXLZG1o2lqQ8K9XqIqY17lFE+XnM7UhuCV7azC2/csDBDM3w5Xb8fn
	IxFL1B9BAFLON6D2TG0xsqSRpSUkbssVTkNfc6TeLjITDWOfr7LXYdUyc3c3q3qLDz5KqGjRV8cV7
	XobDLDYCWNnAWr8DmMfX4WbtnyP25m8OZEIcr0UXctiDBAsxdaeUCnk8+m/b11CygaZsPWA/Ez8Di
	EwPhGWucNbG3llAlAqyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otZGp-000KkK-4B; Fri, 11 Nov 2022 19:00:55 +0000
Received: from mail-oo1-f50.google.com ([209.85.161.50])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otXtO-00HIFN-P7
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 17:32:40 +0000
Received: by mail-oo1-f50.google.com with SMTP id g10-20020a4ab4ca000000b00481082808cbso740287ooo.10
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 09:32:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=po5PnrsJOrtibdnuIvtZD7NvBSBhlNi4tJ/oxCe6Y54=;
        b=C62tp0UT9qmmNOBYHJNX9NBiuuY/E4c36QWRHHAN/GCgemFmcw+H7Bdc/f/96r1YU+
         a9vrhNTyiDKUaitJzAKb9y+f1mV5JvuRCrPyjjaTHHXheUlJEdWWnCWq03ft2D7r+rVB
         WFMNM+oziTjOMHUga5qHIroAkZEj2sKSI/7uIBXvfPJqP29m8PsUAyQX41Hlg2gXycEn
         /pL7cZ/yEpm7cmQ9DoXBXdtLf93j0qm0Fo2uzz9GpZVLhmzQOBrc2x0GgMrgfeUXAd8K
         j1ANVuwN7uWIcV78INWvurkiztwQV6cfWhKns3o5VdU1av9jlfubtSYbDjfvRb0nMdQp
         GoMw==
X-Gm-Message-State: ANoB5pmy8klk/UfXQH6zM5cUtM3ntiPxDdPgjZjr7ErFB8s2gBXdZEOk
	cb+Rj37keAf8Hpf30UEJIQ==
X-Google-Smtp-Source: AA0mqf4Z94tBfrdLD8Dbj2VxNYqWTWzdRAPZ/PPQAwiuJKHfq3mYjcMCQnCCnCuCCJIqaSvKoTgpGg==
X-Received: by 2002:a4a:a78b:0:b0:498:260c:d780 with SMTP id l11-20020a4aa78b000000b00498260cd780mr1380739oom.27.1668187955744;
        Fri, 11 Nov 2022 09:32:35 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i2-20020a4ac502000000b00480816a5b8csm999120ooq.18.2022.11.11.09.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 09:32:35 -0800 (PST)
Received: (nullmailer pid 3566720 invoked by uid 1000);
	Fri, 11 Nov 2022 17:32:36 -0000
Date: Fri, 11 Nov 2022 11:32:36 -0600
From: Rob Herring <robh@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: Wayne Chang <waynec@nvidia.com>, mathias.nyman@intel.com, p.zabel@pengutronix.de, devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, linux-tegra@vger.kernel.org, singhanc@nvidia.com, balbi@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, thierry.reding@gmail.com, ajayg@nvidia.com, heikki.krogerus@linux.intel.com, linux-usb@vger.kernel.org, treding@nvidia.com, jckuo@nvidia.com, linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v2 02/13] dt-bindings: usb: Add NVIDIA Tegra234 XUSB host
 controller binding
Message-ID: <20221111173236.GA3561612-robh@kernel.org>
References: <20221111101509.999589-1-waynec@nvidia.com>
 <20221111101509.999589-3-waynec@nvidia.com>
 <166817308790.3060162.14990231448404857914.robh@kernel.org>
 <5782d31a-9a0c-33da-ff84-20cae29f977e@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5782d31a-9a0c-33da-ff84-20cae29f977e@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_093238_858611_6D17F8E6 
X-CRM114-Status: GOOD (  16.40  )
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

On Fri, Nov 11, 2022 at 02:38:21PM +0000, Jon Hunter wrote:
> 
> On 11/11/2022 13:30, Rob Herring wrote:
> > 
> > On Fri, 11 Nov 2022 18:14:58 +0800, Wayne Chang wrote:
> > > Add device-tree binding documentation for the XUSB host controller present
> > > on Tegra234 SoC. This controller supports the USB 3.1 specification.
> > > 
> > > Signed-off-by: Wayne Chang <waynec@nvidia.com>
> > > ---
> > > V1 -> V2: new change for adding nvidia,tegra234-xusb.yaml
> > >   .../bindings/usb/nvidia,tegra234-xusb.yaml    | 159 ++++++++++++++++++
> > >   1 file changed, 159 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
> > > 
> > 
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > Error: Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.example.dts:36.27-28 syntax error
> > FATAL ERROR: Unable to parse input tree
> > make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.example.dtb] Error 1
> > make[1]: *** Waiting for unfinished jobs....
> > make: *** [Makefile:1492: dt_binding_check] Error 2
> 
> This compiles fine on top of -next. We are just missing the change that
> populates the required definitions.

Where exactly is that mentioned in the commit msg?

No maintainer can take patches which apply against linux-next, so not a 
good dependency to mention either.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
