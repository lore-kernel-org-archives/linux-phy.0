Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C455EC624A4
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 13:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97QaHRQ9pdMiiYwQnQS+ERY2RrjWcLPKGlHJDTd/WuY=; b=un3m7zzeWrTMgj
	M3h/SAtpqSblTWcZwweP0ocQmsWSSKZwVafipXBT5TGdYQGy8w/+DnrQJsNZWpj+IdSS5D2fmzwYV
	S6KLwRa6PQeO2K+MYP0VmqpSyf3dHsQOQ4/fZ//KeR9ZZ1LYdnIjxMw6jdpI1CaMlAvgqMA8X+16L
	Y6whfs/AqlT7uA5KRV3kw3JhQVju3d8Xn2QLxHivq2YuAHPTLqrRIciAyu+ITVqiDaBErX9ju4BWM
	pXfokOWK/0yE6+ECjo60HRFkeb1GSAJuloQVj7ir/BC/N1rZFnsPrLpNRIX9jYiC5brhoYvYssDGd
	z4OnpwWgcK0ya+/KWxRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12N8-00000009WyI-1MGO;
	Mon, 31 Aug 2026 13:48:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12N6-00000009Wxr-44Pw
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 13:48:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9567B43851;
	Mon, 31 Aug 2026 13:48:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47FD81F00A3D;
	Mon, 31 Aug 2026 13:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788184104;
	bh=Uk2bfsWBqIOKDY5IOy+LzNuDq986xnkLRGje+YX7MIs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=N4t+0c6vwrVPLkV3wIdx5fWJsiDvmlsQ9BjoZtlcDpxm/yB+ixqhe59tBxkwmQVNk
	 XaRA1W00l7nT5A9OgNs5IQt+iX7KQjOJtWUVHw4Yh1G3tWsxzv30RmKhjUPyZEzpSB
	 p+0zG7t7NyqJlJL+h2fq1PzQG2PDGAQAKvFebdE+YXQ7/0z618SHBRMV2HtqiKpcbp
	 GATaMtn0Pm/Y1KjRt00KiyIxPkUPexC2YensDJo6ZLyu2qEp89/+e8DV1TafoI6P7w
	 OQcikH298PL88SCvCjvr8b0Z3+JUPH3y6SeRVZKNi24+r4tnTdzpDUgVkdIZnbxtff
	 eGa5UKRoQpJkg==
Date: Mon, 31 Aug 2026 08:48:23 -0500
From: Rob Herring <robh@kernel.org>
To: Bhargav Joshi <j.bhargav.u@gmail.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Frank Li <Frank.Li@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrzej Siewior <bigeasy@linutronix.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>,
	Sergei Shtylyov <sshtylyov@ru.mvista.com>,
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-omap@vger.kernel.org,
	goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com,
	simona.toaca@nxp.com
Subject: Re: [PATCH v2 0/7] dt-bindings: usb: ti: Convert AM33xx/DA8xx MUSB
 bindings to DT schema
Message-ID: <20260831134823.GB733140-robh@kernel.org>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
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

On Tue, Aug 18, 2026 at 07:58:42PM +0530, Bhargav Joshi wrote:
> This patch series converts the legacy TI AM33xx, DM816, and DA8xx
> USB/MUSB text bindings to modern DT schema.
> 
> The legacy am33xx-usb.txt and da8xx-usb.txt bindings was historically
> structured as a single, monolithic file that documented the entire USB
> subsystem (the wrapper, core MUSB controller, PHY, and control module)
> all together. This series converts that monolithic text binding into
> proper, distinct DT schema files for each hardware component.
> 
> Patches in this series:
> 1. dt-bindings: dma: ti,cppi41: Convert to DT schema
> 2. dt-bindings: phy: ti,am335x-usb-phy: Convert to DT schema
> 3. ARM: dts: ti: am335x: Fix redundant interrupts property in USB nodes
> 4. dt-bindings: usb: ti,musb-am33xx: Convert to DT schema
> 5. dt-bindings: usb: ti,am335x-usb-ctrl-module: Convert to DT schema
> 6. dt-bindings: usb: ti,am33xx-usb: Convert to DT schema
> 7. dt-bindings: usb: ti,da830-musb: Convert to DT schema
> 
> Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
> ---
> Changes in v2:
> - patch 1: add interrupts as required property for am335x-cppi41
> - patch 4,7: add pattern constraint for dma-names
> - patch 6: remove deprecated property ti,hwmods from required
> - Link to v1: https://lore.kernel.org/r/20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com
> 
> ---
> Bhargav Joshi (7):
>       dt-bindings: dma: ti,cppi41: Convert to DT schema
>       dt-bindings: phy: ti,am335x-usb-phy: Convert to DT schema

These 2 can be sent on their own.

>       ARM: dts: ti: am335x: Fix redundant interrupts property in USB nodes
>       dt-bindings: usb: ti,musb-am33xx: Convert to DT schema
>       dt-bindings: usb: ti,am335x-usb-ctrl-module: Convert to DT schema
>       dt-bindings: usb: ti,am33xx-usb: Convert to DT schema
>       dt-bindings: usb: ti,da830-musb: Convert to DT schema

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
