Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26582D216A6
	for <linux-phy@archiver.kernel.org>; Thu,  4 Dec 2025 16:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsuxJpu0dQLZV2sRAb24RPssor//9SLqHsnOp8wdLYA=; b=LeThQ/JOPWu3c/
	h5F9I6f+IEj8W8GZWsCnLa3QNgq+765ABIttc8V1r5UYY9PB+1bwBbnyXdWVuynRkmZIbNRqAhQ6s
	wUwHhUJGJwDMxx0ONjy0jazvgnWyfqZinN7IVCcPr20UqZLdq9IX3EJjrl3hFmzYHwLyc5ThmDCnp
	jQ8qxYACyw9gPiXirWBSgMfw8kmrE0x4TOBmGBnUnugqSEV75A+Ze83n1+wU0M0xlg8fwjD68TTEX
	rAfxreFr4RxfzTz9iWipuFDL4ziGbf5yU4VATbUnTZZ3QH1zc8Igt6XKCd/mZlOisfz7HTbnt9OQ1
	8JACWFs9uSYKj0E3wBbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRBxI-00000008GRZ-3lg3;
	Thu, 04 Dec 2025 16:13:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRBxH-00000008GQe-0FQe;
	Thu, 04 Dec 2025 16:13:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7AA9C601FD;
	Thu,  4 Dec 2025 16:13:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9F84C4CEFB;
	Thu,  4 Dec 2025 16:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764864798;
	bh=BrNx6hRXccMLCbDLWyg8tGP+XIvGp7NdIU9kGAIwDxk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aRdZROds3f0jvOdMXob8rBlcxJFXp/eb84yof+VXswL63kLYl7AM8zbN15mhmaTRc
	 cioIGfrmSYahuhtxgDP5boH33oev09ETkd9pIyzBzKg0tEf9O6JCPWchmhuyQQRTYp
	 k1fGSMxnnhM+vMqsjRzUGhbvMTpsf26fYO0t8dm7lS3PnyfwieLl9Ou+Sjlo2trHno
	 draZfUk4xJgTBWfJj82BpaPLSaSe3WnX1VdF1RmyTdVE12JDOR46dS2XeKHqjB6UIw
	 g23s1fN8n3xf5iMxRNJX81HFRZaOWh6JxSGBUiNO7Xalkaaw2zvyzSUWKdI6qiEE62
	 VIbWwDYEZU8GQ==
Date: Thu, 4 Dec 2025 10:13:15 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: devicetree@vger.kernel.org, Daniel Golle <daniel@makrotopia.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Eric Woudstra <ericwouds@gmail.com>, Lee Jones <lee@kernel.org>,
	netdev@vger.kernel.org,
	Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	"David S. Miller" <davem@davemloft.net>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	linux-phy@lists.infradead.org, linux-mediatek@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Eric Dumazet <edumazet@google.com>, Vinod Koul <vkoul@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next 4/9] dt-bindings: net: xpcs: allow properties
 from phy-common-props.yaml
Message-ID: <176486479535.1579612.18279461397755794325.robh@kernel.org>
References: <20251122193341.332324-1-vladimir.oltean@nxp.com>
 <20251122193341.332324-5-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251122193341.332324-5-vladimir.oltean@nxp.com>
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


On Sat, 22 Nov 2025 21:33:36 +0200, Vladimir Oltean wrote:
> Now XPCS device tree nodes can specify properties to configure transmit
> amplitude, receiver polarity inversion, and transmitter polarity
> inversion for different PHY protocols.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  Documentation/devicetree/bindings/net/pcs/snps,dw-xpcs.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
