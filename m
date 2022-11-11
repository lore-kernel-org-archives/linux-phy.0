Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28C3EC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 13:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHAcdaBpuFp5/cuTsaWoCO0Pqg5WkToa7trbjdtq2eE=; b=ZWAiwj5HaQiO7U
	McGFaz5K+uxNc51sf9NEyApw+zRA6AxeDckJq/K+lz+3HBCUNl6AAT5jA3OuK/6PP83Qd4M/mB30O
	TU+6jdVzcvEzUrtTGnzW3e2rVwCoEU0dtAwCsQ0ZP74cmel1NGTsdZ3d4EwLXoJhDER80XpNpNcYe
	f5KhPs7xupEq18Bca4G5cWctaUdUZlat7+qpRgEt38PTsV60PvYyqBn5TAi5kNHBgtdFLEZ1yvFUE
	4BgF29M7m09pqWcuOoUvIalaEBiiw0yMwxJ25NLh8Bs85MqY1B98ril3O/Lq3CYfMy8VD/23K3GS8
	PmbWYJ89UdZdYHJXtiYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otU78-00FuVo-Kp; Fri, 11 Nov 2022 13:30:34 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otU75-00FuSb-Od
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 13:30:33 +0000
Received: by mail-ot1-f49.google.com with SMTP id l42-20020a9d1b2d000000b0066c6366fbc3so2803967otl.3
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 05:30:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+H4vFKcVhdT5utr9Kqit7Ee08fhFyoKnskQwRap40i4=;
        b=2uoeS6Df81s2Wh/hBkttbNIrxJj80wqLqNajObUhm4J+2iOmI7LOptcUiNQzLqZlhl
         +guHRyqYZuy4gFMCR2ijQI/fuoIv259pbwtDqv+UjBt5LVK0E3AtVSLs6SLYSZYn3ZDI
         Wvt1Mz5SKG4v7Nimtr2P5XdZL7Nx2ijJngvO3d1AN2pA9vHkp706jBEkm5x1v2a77ApO
         rnPYVBoZMtvyk6HORn/+LTB918d0MboZhKIQlPgbs2R0IGxguUFkO3IDSE2PwHpx6OaL
         PG/rMHXZfgU0qWp30LefljORf+7F5AXDagJ6PL5NfmMZtCsGqC/MGVVG/5WZ2Q+d1ky6
         0f/g==
X-Gm-Message-State: ANoB5pmK19IAlPjdpjK6EHpmzDu6Nf4QVrMVNjdRbXP51iBKAqhf+eRP
	TXX4cbNsJ7BHAKVtyXbSnQ==
X-Google-Smtp-Source: AA0mqf5Qj3/GbhqnO2Nl2v5FMmObS8qqaAWio4R7QoQud1x66XkXmTZ4UJUHtqj+lywkDe6kiB/IQA==
X-Received: by 2002:a05:6830:4122:b0:66c:2b2c:e7aa with SMTP id w34-20020a056830412200b0066c2b2ce7aamr1162463ott.303.1668173426609;
        Fri, 11 Nov 2022 05:30:26 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 124-20020a4a1582000000b0047f72b6988fsm766425oon.45.2022.11.11.05.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Nov 2022 05:30:26 -0800 (PST)
Received: (nullmailer pid 3073768 invoked by uid 1000);
	Fri, 11 Nov 2022 13:30:24 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: mathias.nyman@intel.com, p.zabel@pengutronix.de, jonathanh@nvidia.com, devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, linux-tegra@vger.kernel.org, singhanc@nvidia.com, balbi@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, thierry.reding@gmail.com, ajayg@nvidia.com, heikki.krogerus@linux.intel.com, linux-usb@vger.kernel.org, treding@nvidia.com, jckuo@nvidia.com, linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, linux-i2c@vger.kernel.org
In-Reply-To: <20221111101509.999589-3-waynec@nvidia.com>
References: <20221111101509.999589-1-waynec@nvidia.com>
 <20221111101509.999589-3-waynec@nvidia.com>
Message-Id: <166817308790.3060162.14990231448404857914.robh@kernel.org>
Subject: Re: [PATCH v2 02/13] dt-bindings: usb: Add NVIDIA Tegra234 XUSB host
 controller binding
Date: Fri, 11 Nov 2022 07:30:24 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_053031_828805_C23E5138 
X-CRM114-Status: GOOD (  11.71  )
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


On Fri, 11 Nov 2022 18:14:58 +0800, Wayne Chang wrote:
> Add device-tree binding documentation for the XUSB host controller present
> on Tegra234 SoC. This controller supports the USB 3.1 specification.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> ---
> V1 -> V2: new change for adding nvidia,tegra234-xusb.yaml
>  .../bindings/usb/nvidia,tegra234-xusb.yaml    | 159 ++++++++++++++++++
>  1 file changed, 159 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.example.dts:36.27-28 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1492: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
