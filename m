Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6128FC44536
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 15:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pt62Sdpx6oZOI6J2KlQZiya6TvsVopVALUrUE5dwtqE=; b=D9UchZgeAAN7Yy
	WMnzfesyScv5pLV1gd1BaUgR7OmjQ8+UFc4OFWFrIctTmGhijTexe2LP9Wi/qeSGDWedkRaEki9kf
	DlKpznEF8XYxTij/h8nHRsONkbrMkkBeXWK9ZLeMM6GtvdPdFcp8xZwmx4nfMsMgREFfWpGNnY0BS
	6QVHBsJ6/axFxMgCcX21B90FH4Y3hImE3LkPNoEpYA9Eq4ihbooSPnP55NnXvtHvKW6m3zuLwqUHm
	AnbEsSxIpLnnJOlxLHs5dfcnhLMj8HXuIaDYUkZEoRuRWHigPvXUnZOD4BVVErCdhCw1u7GMk2LRF
	fdBGi/u+6ISolLl0qSiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmYsa-0000000C9fG-3dP9;
	Wed, 22 Jul 2026 15:29:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmYsZ-0000000C9en-2RKx
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 15:29:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5882A4383B;
	Wed, 22 Jul 2026 15:29:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D85D31F000E9;
	Wed, 22 Jul 2026 15:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784734143;
	bh=LdZxN3Xy0zxHiFOdBkZ6bVlkCPhpR7VkSOh+0hA/f6Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Jmo4Z1drS8o91eD3O0GiGPu0kjx9oaz13lZOv/YMjiRgqMISfxgsKqnV1wdUIU70C
	 xi99asAk7YoUrfvAkmlbq6r5DYz8hA2C4UcdIFyY2xAAAZD31iWzt4OwpuleKqPqIq
	 eiK3uAnM+IRw6tGIfZIqJpJXmyISlyOQsOr8b8f7/+gze3gVFVru7zQCtNQutuOHdK
	 dflVF+Fv1F5Lh6c5saatIrn1AXJ2ibwzCc9nn4ZHC6vY80jBOdhJ3/2sJU/+Bs6xIT
	 TgbnYh1OxtPGafL0AcfrwqPPgsxGvrK6ZsCnwCDXtGH7yomOO/LdQfJDO4+2hI3GyT
	 osSDzKF4xObkg==
Date: Wed, 22 Jul 2026 10:29:00 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Cc: Andreas Kemnade <andreas@kemnade.info>, linux-omap@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	Bartosz Golaszewski <brgl@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v5 1/7] dt-bindings: phy: motorola,cpcap-usb: add
 chrg_det interrupt
Message-ID: <178473409160.966043.1743137868757405238.robh@kernel.org>
References: <20260711204210.197144-1-ivo.g.dimitrov.75@gmail.com>
 <20260711204210.197144-2-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260711204210.197144-2-ivo.g.dimitrov.75@gmail.com>
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


On Sat, 11 Jul 2026 23:42:04 +0300, Ivaylo Dimitrov wrote:
> Document the optional CPCAP charger detection interrupt in the USB PHY
> binding.
> 
> Update the example DTS to include the corresponding "chrg_det" interrupt
> name.
> 
> Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
> ---
>  .../devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml   | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
