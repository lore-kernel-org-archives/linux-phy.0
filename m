Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4465C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  7 Mar 2022 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Z9mC8mF62r888kGXITv/AExs29BFQ4lLGgLN2qXLvA=; b=bhgfrGcvElsaws
	/g+klHBYBm19pbH3RZ+VyakhI9oXt7tnY3OeTlxXo1lMM95Iyi8hzAR0QU1W+lGG7ZcnE4ttGTrwo
	SBWEOVo5sok/n6+pfJYcl607MedeqY9HDW1F3kIRcHjuffmKgl8hg/fs4knhKcWlJ/8J2rpztR63t
	8be9apq6Vq6CWG0cI2mQpemHVcQsVKBgNzrRtx5H0io5jxyclZZR9zus2N47HUHJLrtlm1aZ7jFVv
	LVTKKT4H408yrwxyAPQuT8je0z8TQV2Qgly5vE1vSSfDGczhwWc1EH2i37Zalzgo7NoJhMgSdhs7A
	8i6/LxIPxhK2WjaGE6/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRMmb-001z13-91; Mon, 07 Mar 2022 23:28:53 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRMmY-001z0c-SS; Mon, 07 Mar 2022 23:28:52 +0000
Received: by mail-oi1-f179.google.com with SMTP id l25so17035542oic.13;
 Mon, 07 Mar 2022 15:28:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JVvzRwcrmqCD5sIuTw06DJoMahe3r0oq+Cma9RxAwg4=;
 b=gSQIxIz6HxGoQON6GCE9ksuycfYMt9cO0NacIVM9eE6bX7UR7nVfrXMYyQJxbuIlGc
 UjpdLTUs/3ph8oDnStAF9Ty21kO2CVdmdlWSv3Id0VmZfKw4Opiu0Nz5qawfO5TC2d24
 44ra9Z0+QtTbWN5eC7U2fdPEdICYaIjyGg79aw0ka6misVlPApTCilUFq0gyN4BUNcS8
 MnpkFrO0y7xEz2L1NE++BzFcj0xNKvXR4DIUhx5EDmdefIugZlPq015giLpzZjZEzCWE
 s4DrSW7RnG6HemBSljEb+9xR7AsGKIP7ktqbTMK8p6Ok9HgoGYj4wiJNX+fSom8t506S
 Ud/Q==
X-Gm-Message-State: AOAM532eiJogavx6IWREcCmsrWwv+PciMeZxCUNu7NcMpYH/uEQgoBS2
 N0XNjeJo9t1fLIX8c1jVjA==
X-Google-Smtp-Source: ABdhPJwTbvNYHHuH1SkYiIHsikdCFEp4VIL5Jq3FfR2GME7j62q5oMLly4zIPkLL7toglfqJWD/X0Q==
X-Received: by 2002:a05:6808:2383:b0:2d9:a01a:48d6 with SMTP id
 bp3-20020a056808238300b002d9a01a48d6mr951959oib.289.1646695730264; 
 Mon, 07 Mar 2022 15:28:50 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 o10-20020a0568080f8a00b002d726c76b77sm7093528oiw.15.2022.03.07.15.28.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 15:28:49 -0800 (PST)
Received: (nullmailer pid 3465035 invoked by uid 1000);
 Mon, 07 Mar 2022 23:28:47 -0000
Date: Mon, 7 Mar 2022 17:28:47 -0600
From: Rob Herring <robh@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Hans Verkuil <hans.verkuil@cisco.com>, Samuel Holland <samuel@sholland.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-sunxi@lists.linux.dev,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Yong Deng <yong.deng@magewell.com>, devicetree@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-media@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 1/9] dt-bindings: sun6i-a31-mipi-dphy: Add optional
 direction property
Message-ID: <YiaVL3Xk0XP7y7iL@robh.at.kernel.org>
References: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
 <20220302220739.144303-2-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220302220739.144303-2-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_152850_963888_87ECD6C4 
X-CRM114-Status: GOOD (  14.64  )
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

On Wed, 02 Mar 2022 23:07:31 +0100, Paul Kocialkowski wrote:
> The Allwinner A31 MIPI D-PHY block supports both tx and rx directions,
> although each instance of the block is meant to be used in one
> direction only. There will typically be one instance for MIPI DSI and
> one for MIPI CSI-2 (it seems unlikely to ever see a shared instance).
> 
> Describe the direction with a new allwinner,direction property.
> For backwards compatibility, the property is optional and tx mode
> should be assumed by default.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml  | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
