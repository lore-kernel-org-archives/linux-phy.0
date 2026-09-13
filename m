Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49DF8C88E56
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 10:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C30ZfA4CYCtNk4Sr+B7QBX76Ff2JelK/wU0freDCwjM=; b=kAMoCkkpOs9nhb
	EwI5y+jRegJtXOPvrSmiIyTVojeloJHDxaNj/21msK6wMrvuIqPJA2nqnCl649TtcKU2W7aYP9Lj0
	+99AXrl77k92GbdwxXAoPGaNs5dkbM+p2V2Cb3QtWBKei+PHy2KWngLR8cI4JhohznrV7F19XuLE1
	QHClkhGEdkacauOJGfO+pEKjvz7030VKUPl2JzuMQcJs4wMEfwrIXIiDBlIakpmpgq2jvHuAwIMNy
	tOblkltLp9XuPue7EcKUerohZGh7onIDA58pGPdqBUYg11HLi5c/fEiNTTIM7JHbUSLEpitGjvZh+
	TmycyQO3BIQMpZIa6DHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5hsf-00000001bPk-1d26;
	Sun, 13 Sep 2026 10:56:17 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5hsd-00000001bPV-3byi
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 10:56:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 09DF460DE6;
	Sun, 13 Sep 2026 10:56:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A19EA1F000FF;
	Sun, 13 Sep 2026 10:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789296974;
	bh=1E+3zT5+AFY5HsBkytRy0qAOs60eN0gIe0F3fPyn5cs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=d/sNjYhIV8u8d9OTU8spf2F8kS6kn6a/61zNB87Hhk1yUlfdujBsPs6JC6rTjLhcm
	 +4yASwB5k6DuaAhQzz2NVSFnBij767CxyjI37k3cCYc/PM8I+9OGRRsDPbMESqJ4hL
	 x3zHzx/KIQUtulNa7gA7JKlo5A4RmJhbYsdHjvd7+IBdi1CpN22uayjK8Wq1oszekU
	 KuhwoyymHWnJ/c8XMdC3gHR+T3HP5JrcmV3ymRIMhwnaTReqSGF1jH4oFN6P5A5e9v
	 stMsnz7IL85DHYHIJh6SV0Ph3nkQRr1N2u/aOhZifIXlQDaQbIpOGgw+4tzWL99KKP
	 ery+l9IX4xLdQ==
From: Vinod Koul <vkoul@kernel.org>
To: Vignesh Raghavendra <vigneshr@ti.com>, Frank Li <Frank.Li@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Siewior <bigeasy@linutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, Bin Liu <b-liu@ti.com>, 
 Bhargav Joshi <j.bhargav.u@gmail.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com
In-Reply-To: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
References: <20260901-ti-am33-usb-v3-0-5e15c617d2e9@gmail.com>
Subject: Re: (subset) [PATCH v3 0/6] dt-bindings: usb: ti: Convert
 AM33xx/DA8xx MUSB bindings to DT schema
Message-Id: <178929696522.215437.7415038223377986822.b4-ty@kernel.org>
Date: Sun, 13 Sep 2026 16:26:05 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Tue, 01 Sep 2026 04:53:04 +0530, Bhargav Joshi wrote:
> This patch series converts the legacy TI AM33xx, DM816, and DA8xx
> USB/MUSB text bindings to modern DT schema.
> 
> The legacy am33xx-usb.txt and da8xx-usb.txt bindings was historically
> structured as a single, monolithic file that documented the entire USB
> subsystem (the wrapper, core MUSB controller, PHY, and control module)
> all together. This series converts that monolithic text binding into
> proper, distinct DT schema files for each hardware component.
> 
> [...]

Applied, thanks!

[2/6] dt-bindings: phy: ti,am335x-usb-phy: Convert to DT schema
      commit: ae6ee6844d5aa621f3b807dfc1ae532e975f079d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
