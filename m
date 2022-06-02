Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89C47C43334
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 13:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QT/rRPeAvpS9AZXBLUPfUaHFxoHRSIyDg+ZsEsuECkE=; b=4PvjrY4cIvJUw/
	hcB1xCMKPB73dsvyeDUWpe4pPJ70wQqjfSE/s8xpW8V/AYhxlmXcDIT1bIJs0oe3zxWqwyupRgwcL
	Zk5e48HatjAqls4IvI3GH86X09fcVAp/4P7AlqIRUFXwfzLoWvBxIjX9/7k/1o0G7wiIseuUrgpvb
	v7dCZPBhmF6+SkDROChYokC+grtbipm4Y9CD7UbUMsDvzzGcar/4d+3A58FiPBXoO1lMlMFH7Q9h8
	qq2pYr+Rsmb2clECOUxOU1lS42hvu5Yag0qEDpFjixNymEcRCR3QgcTR745l/f/bTzTPq1A6u6uBf
	k/T4rhVNe1Vr3WyQrBwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwkkj-003Mbm-Ue; Thu, 02 Jun 2022 13:20:41 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwkkW-003MWb-Dk; Thu, 02 Jun 2022 13:20:29 +0000
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-f314077115so6724589fac.1;
        Thu, 02 Jun 2022 06:20:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bTbwu+Mz+i2T1fupPqwAFML/HPc02MWUuXZGeQCvXZ8=;
        b=1VjyDAffuCWUfXFAAC+N+N5x2l4T7TtW0HUA48MeJXoLFoQCfty29o8gRXG/3AsfiA
         lYdIOgbuTWfxMtBmvPo6X/U17PcBnzul4b/DKTHNBxaXg1elTG9P+jS6ckGFJECW7bmP
         yQS4lxnJqxejJsjdxHxTg/rorSQmZY6OBeNbsbd9QFqfIv7pzETXLOo/Y1bpJGBbUKWC
         K5wMTN4483mMFinv3tzfvO8mm9zqqkSDUQRo2NVD1vkBZ+PaeB3jbIrpPGOcLbig246O
         WtKWcUeStb37KLWpeZExqppSopZb8oO/4ldgwNdRq6xELuiAGloF0WQemv8ExGUgq1Ip
         gKLw==
X-Gm-Message-State: AOAM530PC0R/C+ngApNl2bndqLLb5WwNeNHqGDWNUfRDuATh7sOQGLVO
	GWY6edKYViE0nc3UzC0YsQ==
X-Google-Smtp-Source: ABdhPJx8+7c641wEUgu8STii4oQje/7ttveo4f3P9XPnuvNlZ3Xg+IQx39aBP3kiPfMlhnetHIGGwg==
X-Received: by 2002:a05:6870:3456:b0:e9:23d3:e701 with SMTP id i22-20020a056870345600b000e923d3e701mr2756689oah.11.1654176027237;
        Thu, 02 Jun 2022 06:20:27 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w2-20020a9d5a82000000b0060603221240sm2220019oth.16.2022.06.02.06.20.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 06:20:26 -0700 (PDT)
Received: (nullmailer pid 2133915 invoked by uid 1000);
	Thu, 02 Jun 2022 13:20:25 -0000
Date: Thu, 2 Jun 2022 08:20:25 -0500
From: Rob Herring <robh@kernel.org>
To: Guillaume Ranquet <granquet@baylibre.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Matthias Brugger <matthias.bgg@gmail.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Helge Deller <deller@gmx.de>, CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>, Markus Schneider-Pargmann <msp@baylibre.com>, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH v10 02/21] dt-bindings: mediatek,dp: Add Display Port
 binding
Message-ID: <20220602132025.GA2110588-robh@kernel.org>
References: <20220523104758.29531-1-granquet@baylibre.com>
 <20220523104758.29531-3-granquet@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220523104758.29531-3-granquet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_062028_505989_BABDCF18 
X-CRM114-Status: GOOD (  12.44  )
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

On Mon, May 23, 2022 at 12:47:35PM +0200, Guillaume Ranquet wrote:
> From: Markus Schneider-Pargmann <msp@baylibre.com>
> 
> This controller is present on several mediatek hardware. Currently
> mt8195 and mt8395 have this controller without a functional difference,
> so only one compatible field is added.
> 
> The controller can have two forms, as a normal display port and as an
> embedded display port.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> ---
>  .../display/mediatek/mediatek,dp.yaml         | 99 +++++++++++++++++++
>  1 file changed, 99 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml

The example has warnings. Run 'make dt_binding_check' before submitting.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
