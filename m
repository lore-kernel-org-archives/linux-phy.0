Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECE59C624C6
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 14:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eh2RiyoqcRgDBU1JkCU2OV1ofMkPqwrEHHtL2+6kj/k=; b=YwjUPmgVokNVyx
	aCsJ0FqLVdKEV0uJ9sxlBBGWwujktLIwAcx6lNcWG0C1WGSDLVtiYZjIyJDqAkF9pFuXQOlO91qWi
	sxHaTS82R27oe4p5QVzek1zSB7f0qaIyG5OLgeH/Tk1pjc2Qve+RWZno0hTeh2+Fll8hcoZ1m/OzG
	RPDZJTC8R/UlRkFNLeEtFLLgmFd8/hXFEZeDWF1TN6Uz6MP+ch/q05ANQaBZaLPgV+SOjVE1Q/Ufk
	T4999Eh5ZFZ6NGUecX04K7a0LFh25iic1jRaMSDUzLKgcRzmg8gi5Y5dBsSw14LFqaSiTV/jw+9KU
	reyQYoLFXyx5hBUb0RBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12Yf-00000009aGM-2pOU;
	Mon, 31 Aug 2026 14:00:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12Yf-00000009aGB-0O50
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 14:00:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 88DA260238;
	Mon, 31 Aug 2026 14:00:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 192F41F00A3F;
	Mon, 31 Aug 2026 14:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788184820;
	bh=xNQtXXf+Ww8JrC6uRI24lyD+zbzJC0OkZfJ8+U3Y8ys=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jBPaL6NaIKdIOL/07rBq5yx5nHx6zB1qDqzZM0OVzekZ31fWfjIaM/WupjazQGqbI
	 l8iTPoJ15NLMymwF1p12sRxIA8ny2bErkJb8NL713n/NBMpqLJ/+ZSR3CxU5tYkgjT
	 UsctH4cV1R6MlszlFGrLQwPLpE2FdjiiM2NN6w4bYrl1K1ei5GSHckK1cEG9I7tXXH
	 JDMyPGC9Y/MP2lL64VADxMq4Ku4JmOQZr3Xu1Q/FavdeIryIMt7QyoEwaP2hcrC7oI
	 ndV46BjIziwdGB/zcYlR1G+57vfliAAg2a+eaqS5Sy9NDtCYdt1msDh5P1gpfxPvGg
	 RfAw7zYDEoyZQ==
Date: Mon, 31 Aug 2026 09:00:19 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Bhargav Joshi <j.bhargav.u@gmail.com>
Cc: Sergei Shtylyov <sshtylyov@ru.mvista.com>, simona.toaca@nxp.com,
	linux-phy@lists.infradead.org, Frank Li <Frank.Li@kernel.org>,
	m-chawdhry@ti.com, Conor Dooley <conor+dt@kernel.org>,
	Roger Quadros <rogerq@kernel.org>, Ravi B <ravibabu@ti.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	daniel.baluta@gmail.com, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andrzej Siewior <bigeasy@linutronix.de>,
	Andreas Kemnade <andreas@kemnade.info>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>, linux-usb@vger.kernel.org,
	dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, goledhruva@gmail.com,
	Kumar Gupta <ajay.gupta@ti.com>, linux-omap@vger.kernel.org
Subject: Re: [PATCH v2 7/7] dt-bindings: usb: ti,da830-musb: Convert to DT
 schema
Message-ID: <178818481901.788794.2228539638923939154.robh@kernel.org>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
 <20260818-ti-am33-usb-v2-7-66fd44d66824@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260818-ti-am33-usb-v2-7-66fd44d66824@gmail.com>
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


On Tue, 18 Aug 2026 19:58:49 +0530, Bhargav Joshi wrote:
> Convert the TI DA8xx/OMAP-L1x MUSB text bindings to DT schema. Since
> DA8xx MUSB node acts as a parent bus for the CPPI41 DMA controller add
> required #address-cells, #size-cells, and ranges properties.
> 
> Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
> ---
>  .../devicetree/bindings/usb/da8xx-usb.txt          |  69 -------------
>  .../devicetree/bindings/usb/ti,da830-musb.yaml     | 113 +++++++++++++++++++++
>  2 files changed, 113 insertions(+), 69 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
