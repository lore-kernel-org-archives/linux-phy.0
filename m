Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 438ACC44536
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jul 2026 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CF3KUeocCU+GKvkprRnXx6/0TU5/VI28/NUrg/LN5gc=; b=YxmZqMLnsQhH9+
	uAWhTq7wA8KYz7Z17MujlLHHL7etqi1ZMEE+m44V7WDZjdU2ULMSa88yl5sxEYr62Q46QbnNoNapd
	phKuEN7OPnUlvz0UvBVzS37rFf/iqPEY+8PndvqheG5VF3uFECeS7fNzYne8UIc2JNY5znOWfCMv5
	kdOUzJLHLZBEJun1ZC0US5IFhsZBkgvownjPxwdpDhCV/cHLqdCexcfT2Qbf9dPhhixlVE2ebWatz
	wggG+DV9SMwDAhhfrxWsi2jALNK4Mwt31Wn0Q9zigI6kegHoXcy2Kxx2I4jW02+oaQte6CW+4wSUo
	Ha6MG8D/WOSWMTMSeasQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmYtM-0000000C9l7-40Ao;
	Wed, 22 Jul 2026 15:29:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmYtM-0000000C9ky-0rpM
	for linux-phy@lists.infradead.org;
	Wed, 22 Jul 2026 15:29:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CA253435CB;
	Wed, 22 Jul 2026 15:29:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6371A1F000E9;
	Wed, 22 Jul 2026 15:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784734191;
	bh=MiQon9B13JCqJ0ZBlba87Lc4HaPjX/zchUwplkS+IdU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LCC4R1v0jWUsMNFaS+5KjDDT5n6lfO+NQiaCp6DGdH/9ttyBE8R7oW8Di/T1K26D6
	 NHL1ntBZsVBOj4HBGUptwxozE8WItQ56Xt8C8/hayvKKTmuDdfdaBWMFhQTGVoQATN
	 PfV4nB4XbnSa35JCZWL3GDknVu+0UKlTHGEF5ZFyE0vTmoJhTbJDcxY3QGib247hdO
	 lctF+SW9X1YfFB8ZwE50VK53NKjXNBiYGWtBSsys24ymDGfnI2cw6DQi69r3+3iL7s
	 fnLPfn/ZBXiPxVMlQbkaCvHMYHJQQk1zpR3LAugohRIdnWuIRd5/H8xKC1sRFljfpF
	 5A1HeLvUar2Og==
Date: Wed, 22 Jul 2026 10:29:49 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Cc: Tony Lindgren <tony@atomide.com>, Bartosz Golaszewski <brgl@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Roger Quadros <rogerq@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>, linux-omap@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Linus Walleij <linusw@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v5 2/7] dt-bindings: phy: motorola,cpcap-usb-phy: add
 optional safe pinctrl state
Message-ID: <178473416255.967931.16569030812535097273.robh@kernel.org>
References: <20260711204210.197144-1-ivo.g.dimitrov.75@gmail.com>
 <20260711204210.197144-3-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260711204210.197144-3-ivo.g.dimitrov.75@gmail.com>
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


On Sat, 11 Jul 2026 23:42:05 +0300, Ivaylo Dimitrov wrote:
> Document the optional "safe" pinctrl state for the CPCAP USB PHY.
> 
> Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
> ---
>  .../devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml      | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
