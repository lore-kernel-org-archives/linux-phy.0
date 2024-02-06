Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30B7CC48297
	for <linux-phy@archiver.kernel.org>; Tue,  6 Feb 2024 17:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QaxQegpHWapgtXpOWjbsqOedFXUjIttjP82oYGKgcWM=; b=sQW8i0vzQYXaDf
	k+rZSXFoRgAWJnR3OIV3nS4Ty1fyIIoPKa1gub7erXVFgdlyAegXI0s9sHAynB9PBvzxRPz0zNrsL
	BwlAGipWWaV2izgcoQC27JyqlOmTi8SigMf3hwKjmKf4Exk1TsspJH6ROUjo2+85lIiFY9S0mU5oh
	pxmYz0aksRgzQeJ2b4jU5leF4dXUuQ77295Q8zzMfjB+IymzigGzuxD0r1Zf1gvOqzXY18PTJOCRf
	7p/9NAIqubTBVCLfqAYaMEv0uu/MeKvH++fclJZeSB7LUGtDj7qKlwCnUUw3mfqZ2kQNe+36SaH4A
	0Ev9YtA37ZLgZ1YZs/aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXPMl-00000008PMI-2lzG;
	Tue, 06 Feb 2024 17:36:15 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXPMc-00000008PFY-1frD;
	Tue, 06 Feb 2024 17:36:12 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id E064DFF804;
	Tue,  6 Feb 2024 17:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1707240963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZprZaJ3ymP3skmdLg1+MO6aPXXlIBTqsbgRz9xo2kcc=;
	b=CKtss21823QhHbaxHdvc9ef9MQxN9DR1PULPtmC2JUfbY9ixESWQBIUyWHyy0NOh8T57ax
	bESUe7Mlaq1K3CWfOQAm5esbmfVblSpK3OEqDfW7FDZjUtBq0DBwrfIOOktkQR/++QmxI1
	DzCJ5EnI3oVYOktQ8gl7LDnl2sdVxVhvnVfwcPwKDxuUqVDu8adyxYwDsV/ntvK1DbVO5O
	aEmgQg2SeUM/XMS4O/BZEJeP50qrFsmywrPsoDhldMgGyr8+D/3+N62jviLj8wmquxlu+G
	DnMXuUGHVkw7SsEU4QrFaKVRbZ1TLYYTb6SJsWemVIMb1W1/Jb088ypH9bVb4Q==
Date: Tue, 6 Feb 2024 18:35:57 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
 alexander.stein@ew.tq-group.com, frieder.schrempf@kontron.de, Lucas Stach
 <l.stach@pengutronix.de>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Richard Leitner
 <richard.leitner@skidata.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam
 <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH V8 10/12] drm/bridge: imx: add bridge wrapper driver for
 i.MX8MP DWC HDMI
Message-ID: <20240206183557.408399f0@booty>
In-Reply-To: <20240203165307.7806-11-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
 <20240203165307.7806-11-aford173@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_093606_749709_BB73128C 
X-CRM114-Status: UNSURE (   9.93  )
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

On Sat,  3 Feb 2024 10:52:50 -0600
Adam Ford <aford173@gmail.com> wrote:

> From: Lucas Stach <l.stach@pengutronix.de>
> 
> Add a simple wrapper driver for the DWC HDMI bridge driver that
> implements the few bits that are necessary to abstract the i.MX8MP
> SoC integration.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Tested-by: Marek Vasut <marex@denx.de>
> Tested-by: Adam Ford <aford173@gmail.com> #imx8mp-beacon
> Tested-by: Richard Leitner <richard.leitner@skidata.com>
> Tested-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> Signed-off-by:  Adam Ford <aford173@gmail.com>

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
