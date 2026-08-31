Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC39AC624A4
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 13:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oomTqFDdrWsxLgQC0ilFhrqqFVBlN0wl+BkdusiLA9Q=; b=02iH5OWdHbvuy7
	bEyleKNcPvXHTxeXQbOonW9i/+x0KDPWj2lqM6nuHIGmtiktyA85LFro5mREw1TrQij3oX/HAsczv
	9ORJq23PlD/RTZyEmhFTbvF4NQIy2O7zXHgVkGlVL3s6Ll0z+o9+BVvLcx6yg0ueV7jk+fgHRIrry
	Y1vCegQ40+1Pvd+VB2tNo0EGBKcfbM0uPpvGzIeUuoi8n7fwmrak1tZOSQ5RxXr1+hWcE8EsEyb+U
	KnHr0JtnvKYv0ETUUioN1Z1ue0ETLOd/11SBvzndoScENAE7PAHeiGsSQboMMcf5i5x+ctxNpawhA
	IaJWZo/1jdVF0J8xfpqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12OK-00000009Xc5-2FVo;
	Mon, 31 Aug 2026 13:49:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12OJ-00000009XbI-1WOf
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 13:49:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1C82E42A26;
	Mon, 31 Aug 2026 13:49:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0E2B1F00A3F;
	Mon, 31 Aug 2026 13:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788184179;
	bh=8dkjGXjjiy2qO5+OPGt9h4bb+ufyCUXSkHX+tJjWxSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QIV+6Nkpy+WS9pCaGSw6vBV9mD/4UBopCvDp+kYbjwwbYko4/v9n9k6N8JP5ZyPl8
	 U++gknhzExHIQTADC6S+SYsQJr8ZX8ZIHn5ECW5tZRysAIuwLbOPboRBH4BmlYSNVs
	 Pm39+/CxnsUB2yktiNroBWJ3PjdDW8bmfn9G3rvARe+xSTpkK8gRLnfE/zfw6c3aBI
	 ZTVQmwQbmDzBJbVKAGWksh8tCix130c7NaztBkRzYFBP/67940hAAhIrasGi8Xgc9g
	 XZwhzWImnQZH3nAiEp9M5V7cwZuoLauAAuW9cLN26xKny2kT6aR9NuKtCNWWGPo7O4
	 hm9j+H3CDVN1Q==
Date: Mon, 31 Aug 2026 08:49:38 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Bhargav Joshi <j.bhargav.u@gmail.com>
Cc: goledhruva@gmail.com, dmaengine@vger.kernel.org,
	Sergei Shtylyov <sshtylyov@ru.mvista.com>,
	Kumar Gupta <ajay.gupta@ti.com>, devicetree@vger.kernel.org,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, m-chawdhry@ti.com,
	linux-usb@vger.kernel.org, daniel.baluta@gmail.com,
	Vinod Koul <vkoul@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
	linux-omap@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
	Roger Quadros <rogerq@kernel.org>, Ravi B <ravibabu@ti.com>,
	linux-kernel@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
	Andreas Kemnade <andreas@kemnade.info>, simona.toaca@nxp.com,
	Frank Li <Frank.Li@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH v2 2/7] dt-bindings: phy: ti,am335x-usb-phy: Convert to
 DT schema
Message-ID: <178818417774.757369.190007408390454150.robh@kernel.org>
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
 <20260818-ti-am33-usb-v2-2-66fd44d66824@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260818-ti-am33-usb-v2-2-66fd44d66824@gmail.com>
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


On Tue, 18 Aug 2026 19:58:44 +0530, Bhargav Joshi wrote:
> Convert the TI AM335x USB PHY text bindings to DT schema.
> Add undocumented vcc-supply property to match existing DTS usage.
> 
> Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
> ---
>  .../devicetree/bindings/phy/ti,am335x-usb-phy.yaml | 49 ++++++++++++++++++++++
>  .../devicetree/bindings/usb/am33xx-usb.txt         |  9 ----
>  2 files changed, 49 insertions(+), 9 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
