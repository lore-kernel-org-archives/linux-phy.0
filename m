Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E41ACC48BC3
	for <linux-phy@archiver.kernel.org>; Wed, 14 Feb 2024 13:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kIgOgGOrkhSxwzcm12s/aQo5WAaOWQVylSicF5m2Vgc=; b=n+QCAU5RdsgPfI
	4xgb6hkdJXS0j0lOzJ1tbZ666kmqyEYxo9GjC7Nm8l0hSDBizzzanRGWAilV2E3WiQxXHYG+GFpUl
	9KWGOcURsoNM8mAFs3ElI4Bt4Q7qwAwkt9peX6mkXQSDSohv9ycUuMLyoLUTWFMjKvFa9lYPKPl16
	6U4zd1XX9cuxdq0vB13NCeAzMEp7QzP6tq8/vuINxXEYptoJyXYKFVIxycXtC5FsQml6899H1NELf
	3cVcEzcafzr4WjOVkBQXajBqf8a8qVgz5cglIwdOYkRIaIbQnUSc+6vk/g5egZwqRrbPnQhO8cjhu
	l5tZ0oQR1/0M/yFMXzVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raFLZ-0000000D1kh-270r;
	Wed, 14 Feb 2024 13:30:45 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raDEf-0000000Cd2S-33af;
	Wed, 14 Feb 2024 11:15:34 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8D86D4000F;
	Wed, 14 Feb 2024 11:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1707909325;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+YLskWpW8KzLQWkWwiaSJ6tOyG1M/XihbyVEveatvXM=;
	b=g8H+BXtIWWIpzUB0OLMzuzyN3do/wpKt+Dw/srTrn4CMwgARzZEXODUH9aUW8sCUaBKg3F
	wbm6Wfkxfyz0xe9q1ghbP+u4m5HumVT9remZ3srxc7qdPOjv/USLU5hzePqIXBkU3F9Ix0
	DGutAllH2Nw1lfxHIDm8hSoIZE1OkeT+0CJ8KQGbGp5+i+4m/nNDQr4moya6ct5icCA1gw
	yzP1dnyBx07n9m/aYRtWPsCpE7hnuXHmFuB2kyLWBUP54MNqlpdTPxoUfV+euywNW0jKJu
	bNaEkAytbd2Li5Vyw8Er2594tSfb+fIORpSVlRXXUYG+BFvIcI4iP33PdK3yqA==
Date: Wed, 14 Feb 2024 12:15:22 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
 aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon
 <will@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V4 5/6] arm64: dts: imx8mp: add HDMI display pipeline
Message-ID: <20240214121522.7c1ed4bf@booty>
In-Reply-To: <20240210204606.11944-6-aford173@gmail.com>
References: <20240210204606.11944-1-aford173@gmail.com>
	<20240210204606.11944-6-aford173@gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_031530_112246_C024E16D 
X-CRM114-Status: GOOD (  11.39  )
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

On Sat, 10 Feb 2024 14:46:01 -0600
Adam Ford <aford173@gmail.com> wrote:

> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the DT nodes for all the peripherals that make up the
> HDMI display pipeline.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
> V3:  Re-ordered the HDMI parts to properly come after irqstree_hdmi
>      inside AIPS4.  Change size of LCDIF3 and PVI to match TRM sizes
>      of 4KB.
> 
> V2:  I took this from Lucas' original submission with the following:
>      Removed extra clock from HDMI-TX since it is now part of the
>      power domain
>      Added interrupt-parent to PVI
>      Changed the name of the HDMI tranmitter to fsl,imx8mp-hdmi-tx
>      Added ports to HDMI-tx

[Tested using Avnet MSC SM2S-IMX8PLUS SoM on Avnet MSC SM2-MB-EP1]
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
