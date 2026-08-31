Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9695C624C6
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 13:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgC0iGp4GneIe+ABNLC3Hes9bS7REgY0EvEmJsl1fK4=; b=Tz4f7R4jfMJrme
	1q49dJZlxNdzEp8+R9U2S0UYyoCn0CzRKDOdIeg7CwVVl05kfwOJWzWeaCQxEeKaEJuPYImk5mBJy
	aZItqDN6mYiO3Of5EMTtXOVG1/z/v5lhmzrJ4+ZRYP5YXe0QvGcO7eTQtzOpm9evsvOi/qmI/w6H7
	H4cWnPM/bWDylwp66LqVgkH5Oyandkj1rEGkLBh7I2XG2mdWJeITfUR2K/BI6wMBfStSTQfrFCcac
	eKQ9neQUD8HKbiz0wgrlW7j1qhGNK94ep0MEICbSZ6d02K+QC5qOcssLkz6XesXbCVdV1gnLjNW3i
	zsBt8nldISLnxSy3JW/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12G7-00000009Tdc-21r8;
	Mon, 31 Aug 2026 13:41:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12Ft-00000009TSp-2UBL
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 13:40:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0887D601FD;
	Mon, 31 Aug 2026 13:40:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 966541F00ACA;
	Mon, 31 Aug 2026 13:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788183656;
	bh=a3xAqzva9iX6AIHQHMEXxnpG84kympdAWLmYKSlr+xE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nLYn4XocDGJ1j1+1kyeg9YASiCwGxZO0YIHtAhQpl8Q1TAnHBXKZcqb9T2vPRWpOi
	 FY/S1Jv0qCGT85GrAWDdU7Z2ma++tztcHNa89yrkLxxHZtSBrJGkhv20kDuQNhv/ji
	 kmZX6OUEn4+55sql03lwPaZIyjGDTp+awBrgDcCCFlNOQAG7nN9ksDHAoUjI3wk5Xr
	 SKE+moxbut4b6SSFtGTjvAAT2LSJY6odKWuYqs05LmgRwq0JmtGW++tBXMknBQBJoj
	 5fmdjWVKmw4KMVYeiD4MUZKzkMIErWm0/DlbUxq96V+gDGYoDjbpwepfuNfNrJb+qE
	 hLpD68SyOvJTQ==
Date: Mon, 31 Aug 2026 08:40:56 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Bhargav Joshi <j.bhargav.u@gmail.com>
Cc: Roger Quadros <rogerq@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Frank Li <Frank.Li@kernel.org>, dmaengine@vger.kernel.org,
	linux-kernel@vger.kernel.org, daniel.baluta@gmail.com,
	m-chawdhry@ti.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Tony Lindgren <tony@atomide.com>, linux-usb@vger.kernel.org,
	linux-omap@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
	Andrzej Siewior <bigeasy@linutronix.de>,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Kumar Gupta <ajay.gupta@ti.com>,
	Sergei Shtylyov <sshtylyov@ru.mvista.com>, goledhruva@gmail.com,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	devicetree@vger.kernel.org, simona.toaca@nxp.com,
	Ravi B <ravibabu@ti.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: dma: ti,cppi41: Convert to DT schema
Message-ID: <178818365533.732788.12823920440612665617.robh@kernel.org>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
 <20260818-ti-am33-usb-v2-1-66fd44d66824@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260818-ti-am33-usb-v2-1-66fd44d66824@gmail.com>
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


On Tue, 18 Aug 2026 19:58:43 +0530, Bhargav Joshi wrote:
> Convert TI CPPI 4.1 DMA controller text bindings to DT schema. Add
> ti,am3359-cppi41 and ti,da830-cppi41 into single schema since they share
> the same hardware IP block and driver. Add undocumented #dma-requests
> and power-domains properties to match existing DTS usage.
> 
> Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
> ---
>  .../devicetree/bindings/dma/ti/ti,cppi41.yaml      | 109 +++++++++++++++++++++
>  .../devicetree/bindings/usb/am33xx-usb.txt         |  14 ---
>  .../devicetree/bindings/usb/da8xx-usb.txt          |  12 ---
>  3 files changed, 109 insertions(+), 26 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
