Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3869FC4828E
	for <linux-phy@archiver.kernel.org>; Fri,  2 Feb 2024 11:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9WRym4dzCSNgm8FQ7xmZar5dBMAih7js9jfZSWhGcs=; b=uUHH5FUCMhRyoP
	rjZtRoslg4zTuaOQHqmZ5KpFBnFwSgrB1cSNPTOE60Ts0dxh7Oe52QzA4VW/r43rNCmX5DYYZoG4D
	UI4mp5KjbGy2jHXeS3P3M1CcS3QkZhcsfN2rl1bRU5qaVQdpRfoOPqw7zoII7SLAXCuS/uruRxXW9
	QR3PXsw9F6/TH9EYVcPPWEYj8h1Sm948rfeK+K5ptPb7n/XbODLeGa6+L+gj5r4NApOkXxgr6bLmG
	3Vm6PWZdlvVyMnsUhLFJryFUqDb6LPT0zknZ3PBmLX5onC5jY+Ol+PRwBnqEN3rb7bK6tA0APTAxW
	dJ3VfhfqncPbDiHldvgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVrbE-0000000BHD8-3MdH;
	Fri, 02 Feb 2024 11:20:48 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVrbA-0000000BH8G-1lu5;
	Fri, 02 Feb 2024 11:20:46 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8667E1BF20A;
	Fri,  2 Feb 2024 11:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706872839;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=C801XntAx6vFH+ttC2yyLkXTQzS50DDecHjK0YLEF9U=;
	b=oD4486gF+t55vbzZkQfwe6Ks80voR9BadNJK17DdKY2sGSYG3Mht8NVxspZipuV6rFKGZA
	tIGSBbv2mv4adrsdgRIKTzv7yRGxQoC0XHK8f/31SiRWvQ9fBeT9QNGkdcxYyPT4LKEVDZ
	XH7evlQ2OJcDlcJjIBtiwMpZAUxGoFR7tLGD2j5gOWQFgyFzPZOAtLfaLgvcuc2QHtLPPl
	8AzodWGrlZFdNRol8DJSOeyUKlwJuULAJ5DQlnLhsX6SD2cYyG3u/GYeP7P7FK1pjW32FM
	8HcdVuTZFig+4ifYlpN16pnaSMP0+5D4AP8QHG56UlZ8LySlFOFWcSnQVeN3vA==
Date: Fri, 2 Feb 2024 12:20:36 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Adam Ford <aford173@gmail.com>
Cc: dri-devel@lists.freedesktop.org, Kishon Vijay Abraham I
 <kishon@kernel.org>, devicetree@vger.kernel.org, Conor Dooley
 <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org, Vinod
 Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>, NXP Linux Team
 <linux-imx@nxp.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH V2 2/2] phy: freescale: add Samsung HDMI PHY
Message-ID: <20240202122036.7aa66d9d@booty>
In-Reply-To: <20240106221907.325127-2-aford173@gmail.com>
References: <20240106221907.325127-1-aford173@gmail.com>
	<20240106221907.325127-2-aford173@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_032044_654931_A1017096 
X-CRM114-Status: GOOD (  11.10  )
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

Hello Adam,

On Sat,  6 Jan 2024 16:19:05 -0600
Adam Ford <aford173@gmail.com> wrote:

> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>

I had already tested the v2 from Lucas, however I also tested this
version which works as well, on v6.8-rc1, custom hardware based on the
Avnet i.MX8MP SMARC SoM.

Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

Generally speaking, as there are several small patch series around which
together implement HDMI on iMX8MP and similar, I think it would be much
easier fore reviewing and testing if they were grouped into a unique
series.

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
