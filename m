Return-Path: <SRS0=xaqD=ON=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5757AC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 12:44:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 244B5611C6
	for <linux-phy@archiver.kernel.org>; Thu, 23 Sep 2021 12:44:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 244B5611C6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6pqYJTQARoJ6Q5wGHzNkHr4xKs9joBntm2AQyNeNAY=; b=WS80nqivePQ9+L
	i8k4WtCDFpsqh6FXTgF3zTeXB8qpyG2GgC7EgoRZxxP5cZsmADmZBLm5RlAhnGpmoTn5H1M4Lm2l4
	dgBxUdqv4EVoeNrzKbUImZKLXammshliVmSudp4Zg9pxBsyIXM98JnFHNRXoun7ekviz6qxybJ4Wd
	PaXXIsCH/nICMsfp65teG/Tb4V0Q5ul/q6imvqtCvjJIQLBMcBODGJ62hBWp04y9ReKn3BeK53WZW
	lIUsXZbX2GTEh2h2u8XpXyT52uL/L20sTSWU7TD85kyaHuHFFuT8c4i5XK5MhRiIgdW811K5097P7
	msWsoPnYyj4icIoBLclQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTO5r-00BT9v-KY; Thu, 23 Sep 2021 12:44:51 +0000
Received: from mail-oo1-f47.google.com ([209.85.161.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTO5j-00BT8I-1c
 for linux-phy@lists.infradead.org; Thu, 23 Sep 2021 12:44:44 +0000
Received: by mail-oo1-f47.google.com with SMTP id
 p22-20020a4a8156000000b002a8c9ea1858so2068226oog.11
 for <linux-phy@lists.infradead.org>; Thu, 23 Sep 2021 05:44:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yyCfzvwg7rIpGSlFRFU708w/wushQ4Qj9uJQW9oaWkM=;
 b=bgNJYIUHBp+lOZXZ+Jj9depAs8A0i0ppgnntDukgGRCyo69uYogtKanv3uFPhtjmUa
 FCQwhKQCTD0/xAnUjjWCdaZkZDEAGQMWChe0ckJoNPOWVOr+iRJGnEVofiE8tL+zURNF
 0Q5VJQGtXFlnizSYXfFOVWVb7uRZpblp38drKSC8/v5UnYk0Du7pOGKnpQPhPEOg54D4
 u1hYyQvaljBfNySocvF3Hzj5ZaBWK5z1uBOn+BP/ePkrW5f3hk/A7zjaCSW3PtvaFLhe
 3R/1yQScA9zkSzQDPgUos3BS10fvtPmVqYkKmLvRW8G7oIwJaJF9rWOmj0T2OYb5Alo8
 Ch+Q==
X-Gm-Message-State: AOAM530homDQxl429XfoqtgNdX4HSIJctQK4YSBhhkVnsRnFVww5GPEs
 4SCBVbCWxq64rXe2xER+1Q==
X-Google-Smtp-Source: ABdhPJzXu7gb0sE2NjJ46JZwTbWeh+Ijwxmw3FPbEw8Q6iZMZJ0aBglmL1tLfscRCdYSN9AElFVH5g==
X-Received: by 2002:a4a:3ecd:: with SMTP id t196mr3527500oot.69.1632401081681; 
 Thu, 23 Sep 2021 05:44:41 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id ay42sm1237921oib.22.2021.09.23.05.44.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Sep 2021 05:44:41 -0700 (PDT)
Received: (nullmailer pid 2822288 invoked by uid 1000);
 Thu, 23 Sep 2021 12:44:40 -0000
Date: Thu, 23 Sep 2021 07:44:40 -0500
From: Rob Herring <robh@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: davem@davemloft.net, kuba@kernel.org, andrew@lunn.ch, linux@armlinux.org.uk,
 f.fainelli@gmail.com, alexandre.belloni@bootlin.com, vladimir.oltean@nxp.com,
 UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [RFC PATCH net-next 03/12] phy: Add lan966x ethernet serdes PHY
 driver
Message-ID: <YUx2uGeXcMFojrXk@robh.at.kernel.org>
References: <20210920095218.1108151-1-horatiu.vultur@microchip.com>
 <20210920095218.1108151-4-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210920095218.1108151-4-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_054443_130731_D2D7631F 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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

On Mon, Sep 20, 2021 at 11:52:09AM +0200, Horatiu Vultur wrote:
> Add the Microchip lan966x ethernet serdes PHY driver for 1G interfaces
> available in the lan966x SoC.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  drivers/phy/microchip/Kconfig               |   8 +
>  drivers/phy/microchip/Makefile              |   1 +
>  drivers/phy/microchip/lan966x_serdes.c      | 525 ++++++++++++++++++++
>  drivers/phy/microchip/lan966x_serdes_regs.h | 482 ++++++++++++++++++
>  include/dt-bindings/phy/lan966x_serdes.h    |  14 +

This belongs with the binding change. 

>  5 files changed, 1030 insertions(+)
>  create mode 100644 drivers/phy/microchip/lan966x_serdes.c
>  create mode 100644 drivers/phy/microchip/lan966x_serdes_regs.h
>  create mode 100644 include/dt-bindings/phy/lan966x_serdes.h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
