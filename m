Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6443C43219
	for <linux-phy@archiver.kernel.org>; Thu, 20 Oct 2022 14:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x01ukn2QCO8z+3Ic4mvTRV9ER+yZuVtW/qDYTd0eTu8=; b=MObs0taVR+4bmp
	FoDDdeaRPV4HTtK232FHgeT+Csn+3CrE2C3TId9EcH5zrOsmduNeRh4m0vTf1lD6kEqfWQO0WpfZA
	d1szqIhvPPVlqOEvi+eO+q6ZCAQWmaejn77Mbq/We6L1QX4JYiSMulHZu+TE22miGSPAwVzzPaWPD
	BRpU4ZyPNC5+6gxOP1Y2fmQC5cZYaKD0KZodvPUhsTJ+CgRYUJ+nepyx38WAI6ZlVa1RhMlaFI27z
	22Ov9M+akuTM7RieYlS/lc2apFSI1sxutR8kqmhqindwREwUV8rH+9dtA1JvwPzyCt4DgkC75R7BW
	e/1irwEV4lfYPgPBp7aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olWcA-00GELE-Tm; Thu, 20 Oct 2022 14:33:42 +0000
Received: from mail-ot1-f41.google.com ([209.85.210.41])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olWQ6-00G2tR-4Z; Thu, 20 Oct 2022 14:21:15 +0000
Received: by mail-ot1-f41.google.com with SMTP id cy15-20020a056830698f00b0065c530585afso11489092otb.2;
        Thu, 20 Oct 2022 07:21:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DRmvj/Qw7m4kPQR3vXMSaW6JmzIt/vfRx5j71ATZMPo=;
        b=tdcUfVBRppdyFj0VImPBZfsfy+T4f6cBcE6GYbHD41qonOuvPFIzpJmw2m8t3WjbQq
         taTYX0CBxz48/WllCj9b0nZon7xW2uG0MJcbPARkmYT6LgsJbjMkMoNX8hZxLSumsUWr
         I9+gbyKS84RBajIreCOaXFXinxGDoPViOyPiB08gR3cxLhykTKf4FLj0j7JSxJUo8QRV
         46VQgZb8BBd+cooVLCUSO+psgIDDuFRfZU2sOUeW/jva4UzNe8Sh8C0aQiWmY3FhPMiP
         zo2BHpirS2WM5VIxVmmSnTV5wr4D6p52eo0owNNz1pjNdzRinSek+M/5oJAqirDDVbzf
         Yhbw==
X-Gm-Message-State: ACrzQf2gz4A8MInVqUXvQVgrR0bPHvueft7KtzTjbHJbMM6u7YFd7h3I
	tglBIldYZ4zXp9QQ/+t+DZkZegjBlQ==
X-Google-Smtp-Source: AMsMyM6kgMpF5YggwgwsLirXF7Rn0lq5eGb6xz4yME8rs2ScP7Fq/R5S22HP4elC/sSX+ifGN97D+g==
X-Received: by 2002:a05:6830:2a0d:b0:656:bd3f:253f with SMTP id y13-20020a0568302a0d00b00656bd3f253fmr7105548otu.25.1666275671070;
        Thu, 20 Oct 2022 07:21:11 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z15-20020a4ade4f000000b004767c273d3csm7559774oot.5.2022.10.20.07.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 07:21:10 -0700 (PDT)
Received: (nullmailer pid 1261301 invoked by uid 1000);
	Thu, 20 Oct 2022 14:21:10 -0000
Date: Thu, 20 Oct 2022 09:21:10 -0500
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>, 
	linux-arm-kernel@lists.infradead.org, David Airlie <airlied@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Nandhini Srikandan <nandhini.srikandan@intel.com>, 
	NXP Linux Team <linux-imx@nxp.com>, Sumit Gupta <sumitg@nvidia.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, linux-kernel@vger.kernel.org, 
	Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org, linux-tegra@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea@microchip.com>, Mikko Perttunen <mperttunen@nvidia.com>, 
	Cosmin Tanislav <cosmin.tanislav@analog.com>, Vinod Koul <vkoul@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Rashmi A <rashmi.a@intel.com>, 
	Joakim Zhang <qiangqing.zhang@nxp.com>, Jonathan Cameron <jic23@kernel.org>, 
	Fabio Estevam <festevam@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org, 
	Thierry Reding <thierry.reding@gmail.com>, linux-iio@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, Eric Dumazet <edumazet@google.com>, 
	"David S. Miller" <davem@davemloft.net>, Paolo Abeni <pabeni@redhat.com>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>
Subject: Re: [PATCH] dt-bindings: Remove "status" from schema examples, again
Message-ID: <166627566746.1261189.15059225154291335125.robh@kernel.org>
References: <20221014205104.2822159-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221014205104.2822159-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_072114_237781_3BAA5E31 
X-CRM114-Status: GOOD (  12.61  )
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

On Fri, 14 Oct 2022 15:51:04 -0500, Rob Herring wrote:
> There's no reason to have "status" properties in examples. "okay" is the
> default, and "disabled" turns off some schema checks ('required'
> specifically).
> 
> A meta-schema check for this is pending, so hopefully the last time to
> fix these.
> 
> Fix the indentation in intel,phy-thunderbay-emmc while we're here.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../arm/tegra/nvidia,tegra-ccplex-cluster.yaml    |  1 -
>  .../display/tegra/nvidia,tegra124-dpaux.yaml      |  1 -
>  .../display/tegra/nvidia,tegra186-display.yaml    |  2 --
>  .../bindings/iio/addac/adi,ad74413r.yaml          |  1 -
>  .../devicetree/bindings/net/cdns,macb.yaml        |  1 -
>  .../devicetree/bindings/net/nxp,dwmac-imx.yaml    |  1 -
>  .../bindings/phy/intel,phy-thunderbay-emmc.yaml   | 15 +++++++--------
>  7 files changed, 7 insertions(+), 15 deletions(-)
> 

Applied, thanks!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
