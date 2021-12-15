Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1588DC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 20:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgxwXv6ZJRiZCmF2dtclN1HZENno3luLr0VfXlvyKoU=; b=LT8yBHrmmi74cp
	kaKn1g74f0Mlz2cxXo2i35qVRUsrHleXlN0mbG1ny1zjHwzsEj00FeMhMxJM499cSer96KsBXODxm
	WzswppRYFXD05zGnF3m3cw+dkpFEvo1VpN0gauymYRuNWNBoN0ASA46oh3UZzlaMH+dZSf5NytqeP
	gjZko3/lIdNl+8LWlZDrJ0sui+nBOTAXvnqSjY8Wk+N43+MIL66kttY33sFYKfhQHV2MTrOe3BDbb
	5MjHKamgDzWD6qqGck9JHaOl3pICWEdcnNNm7Q1wqc9LmgkHAU4tfKvXgHFAYaNh6n8kUPbtNysZ6
	Oqp1VO3rk7dPDe/2QWFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxb4z-002fkn-GL; Wed, 15 Dec 2021 20:40:49 +0000
Received: from mail-oo1-f54.google.com ([209.85.161.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxb4v-002fie-Ud
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 20:40:47 +0000
Received: by mail-oo1-f54.google.com with SMTP id
 b1-20020a4a8101000000b002c659ab1342so6271139oog.1
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 12:40:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tCm31AopJqJh3IGAGVf/dCMDar4WQOTuKl/qvZkribo=;
 b=X8wNrdf50T3bf/WqGOnULiYQKU4YjMVE7dk+QzQAEZ7Ej9F306AlkVlgUJ18hukgcD
 yyGU4fKm4m0gdL3MO+SKX8yQ/iZLTwkkH2XHoD20qo0Sry54cdmgq1I5Tjg8DBsySRDg
 GfMsAczpN+FS3PaMTS16uqDcNWaKoUQOd3rbfZen6gR0pvTvIONhrvz7j5EgY7TMu7+7
 GhU4CA4A3oY2Xhv/K3mAlFSWZ/o77eOQgo9iO8Bz1B0A+kZPqz7cxpG/W7xYdXkumvGF
 Z6L6PbG1mwIlm7DHLx2nLfx8qpU4W1k577VizasmLI3bnSTz4Ng6RvdoCWn7nH4IUk+8
 1rcw==
X-Gm-Message-State: AOAM532/J9POCHFH2IiVWx9/Gw47sm2EVeHLc6BKu9btYqdmm8LTipPj
 5/bsYf1PgHvRjxbn3DgK6A==
X-Google-Smtp-Source: ABdhPJwkO6XUr282lpbyRQWgyGURMsV/N5cuswo4uKTuUZTRW3m+/Apo0eeSYdMnHWOq88WSqW/wmw==
X-Received: by 2002:a4a:3110:: with SMTP id k16mr8722917ooa.64.1639600844654; 
 Wed, 15 Dec 2021 12:40:44 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id b22sm527081oib.41.2021.12.15.12.40.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 12:40:44 -0800 (PST)
Received: (nullmailer pid 1801237 invoked by uid 1000);
 Wed, 15 Dec 2021 20:40:43 -0000
Date: Wed, 15 Dec 2021 14:40:43 -0600
From: Rob Herring <robh@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-can@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,tcan104x-can: Document
 mux-states property
Message-ID: <YbpSy0+x/SnTYUzb@robh.at.kernel.org>
References: <20211214142908.27940-1-a-govindraju@ti.com>
 <20211214142908.27940-2-a-govindraju@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211214142908.27940-2-a-govindraju@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_124046_017339_21D8EC26 
X-CRM114-Status: GOOD (  21.41  )
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

On Tue, Dec 14, 2021 at 07:59:07PM +0530, Aswath Govindraju wrote:
> On some boards, for routing CAN signals from controller to transceivers,
> muxes might need to be set. This can be implemented using mux-states
> property. Therefore, document the same in the respective bindings.
> 
> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
> ---
>  .../devicetree/bindings/phy/ti,tcan104x-can.yaml       | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> index 6107880e5246..7b9216e43b58 100644
> --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
> @@ -37,6 +37,15 @@ properties:
>        max bit rate supported in bps
>      minimum: 1
>  
> +  mux-states:
> +    description:
> +      mux controller node to route the signals from controller to
> +      transceiver. Two arguments can be present depending on the
> +      mux chip. If one argument is used then it represents the state
> +      to be set on the mux-chip. If there are two arguments then the
> +      first argument is the control line and the second argument is
> +      its corresponding state to be set, on the mux-chip.
> +

You are still describing how the mux-states works. What the cells 
contain and how many are opaque to this binding. Here you need to 
describe how many muxes you have and what they are controlling as that 
is what is specific to this binding. If there is only one, this boils 
down to 'maxItems: 1'. It's just like reg, interrupts, clocks, etc.

>  required:
>    - compatible
>    - '#phy-cells'
> @@ -53,4 +62,5 @@ examples:
>        max-bitrate = <5000000>;
>        standby-gpios = <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
>        enable-gpios = <&main_gpio1 67 GPIO_ACTIVE_HIGH>;
> +      mux-states = <&mux0 1>;
>      };
> -- 
> 2.17.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
