Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4157C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  3 Mar 2022 13:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fY4ELYIl2WhSRIrL22voH0CLmIOMLtpv4iXYRwKLSU=; b=hK+ecH4SkYSUpV
	9n1yB23sbS/yKsDQi1bltUHPUbJsEepo4yl/YgnteCp3KY6JkdPVa8N8Wg8HIFZb1vHAtCwMu94IV
	2NOKlN8OyYsZo2xa5J1joPsPu0cw9t8XbaVMKkN76B9iLcONOxWs0Kp89JGqXEowIjBcEU89a3R2t
	fDhiYmcaAeLT/ghzn79jCplIWpWfKBZrKTSJucjkMnvpegn0innPtE/9H7WpgLssmGmz/jk8UOMmy
	GxEdNYuB7pI+KZZA+Vpz1wH3E1a5pRUxH8qT3XtpgBSZuRgiRnwAnkD2V20NlzWrfjruKeEKMgkEV
	+7sKkCyrIlNCwAzBRhXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPll9-006WwJ-7g; Thu, 03 Mar 2022 13:44:47 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPll6-006WvH-6o; Thu, 03 Mar 2022 13:44:46 +0000
Received: by mail-oi1-f176.google.com with SMTP id j24so4788666oii.11;
 Thu, 03 Mar 2022 05:44:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=v44qDax9KEdYLRCIw5soHVCzl51dh0SIKoJV0wM0I0I=;
 b=8IG75VD4Tp7UbzV2WflUlS/GakhI/hc6K2M7UhwgWHtv7z/75e0ui+nRKpuT6+rUL7
 4hAOXokHtbDTN4J5ciMHelEsHF+SQciIY3/XRlm5APnbwh4w8ta4Jm7dlDzuW1GtTCCn
 7ZuU1eXOJRbiewtjzABCwazctPsX40GnWeUSx+UNVLdI7B2TTWuc4hlEOGr045yXQWvR
 KvWmX48bRTHNBkdOnfFrBvvw0gl0f9CnlUdUWfYCj0w09RtVMMyrppJ9XJFBcInup6uv
 JS4PhDhYybrFYzKm9ZXyzzuU/N07FMIoXp8YHsZNAssC1anuICzqJb2FtF5o3UnXRwWv
 yZRg==
X-Gm-Message-State: AOAM533t/x8FcdhGof5behV/5HyYY3b043EjW1xbRT8ZNYABBJWOOIR3
 9j0hw1EiFMMSNHrCZQjTVw==
X-Google-Smtp-Source: ABdhPJzn31TBcNmGDsK1JV7b+U+3AzzWAVgACRgHF4lqaMW3Q7MxwOp88OaXLDAQFSwz+6Z4Nw7nKA==
X-Received: by 2002:aca:502:0:b0:2cd:c24:278f with SMTP id
 2-20020aca0502000000b002cd0c24278fmr4457068oif.150.1646315081264; 
 Thu, 03 Mar 2022 05:44:41 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213]) by smtp.gmail.com with ESMTPSA id
 z25-20020a056808065900b002d97bda386esm980555oih.51.2022.03.03.05.44.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 05:44:40 -0800 (PST)
Received: (nullmailer pid 1495431 invoked by uid 1000);
 Thu, 03 Mar 2022 13:44:38 -0000
From: Rob Herring <robh@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Yong Deng <yong.deng@magewell.com>, Maxime Ripard <mripard@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
In-Reply-To: <20220302220739.144303-4-paul.kocialkowski@bootlin.com>
References: <20220302220739.144303-1-paul.kocialkowski@bootlin.com>
 <20220302220739.144303-4-paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v3 3/9] dt-bindings: media: sun6i-a31-csi: Add MIPI CSI-2
 input port
Date: Thu, 03 Mar 2022 07:44:38 -0600
Message-Id: <1646315078.961128.1495430.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_054444_277459_D4AA0FAD 
X-CRM114-Status: GOOD (  19.92  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, 02 Mar 2022 23:07:33 +0100, Paul Kocialkowski wrote:
> The A31 CSI controller supports two distinct input interfaces:
> parallel and an external MIPI CSI-2 bridge. The parallel interface
> is often connected to a set of hardware pins while the MIPI CSI-2
> bridge is an internal FIFO-ish link. As a result, these two inputs
> are distinguished as two different ports.
> 
> Note that only one of the two may be present on a controller instance.
> For example, the V3s has one controller dedicated to MIPI-CSI2 and one
> dedicated to parallel.
> 
> Update the binding with an explicit ports node that holds two distinct
> port nodes: one for parallel input and one for MIPI CSI-2.
> 
> This is backward-compatible with the single-port approach that was
> previously taken for representing the parallel interface port, which
> stays enumerated as fwnode port 0.
> 
> Note that additional ports may be added in the future, especially to
> support feeding the CSI controller's output to the ISP.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Acked-by: Maxime Ripard <mripard@kernel.org>
> ---
>  .../media/allwinner,sun6i-a31-csi.yaml        | 66 +++++++++++++++----
>  1 file changed, 53 insertions(+), 13 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml:88:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml:90:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml:102:5: [warning] wrong indentation: expected 6 but found 4 (indentation)
./Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml:104:5: [warning] wrong indentation: expected 6 but found 4 (indentation)

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.example.dt.yaml: csi@1cb4000: ports:port@0: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1600105

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
