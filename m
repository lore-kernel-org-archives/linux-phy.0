Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015B7606A321
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 02:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aR+RMbnj;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=UWgDXJNq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Io8O6ga6mFqqfO4cGzWvKmFwBLS/efo9zp0iL6GhV0c=; b=aR+RMbnjNPFmVFYVcwJeZHBFc7
	fVdB9SAplbvH6t/rOXrcy+LTz98Yobz/jUJulXvfbcLH4dMCxPH1aLm7u6w1MEFt/2NBXFe6D+9a1
	pHyzn/EB/OwPVErOvbCtU3Euk1nhdCWrPKypbf90r9JOVbYbQVQPggKonBeKSHJO8YymhP+mYqfv/
	Mopkh1jkcNqX58wcCZocB6yYuwUp4WXmJwWZKyiZ+OeuQR8azBJ0gh+hcaaJKrDgagpagBVtWpzH8
	TBSWsb2HE1iNkPyBIRw64zmx9QdUu5HNmnqiqaIua8XKB04IJrhUGISChmkIl5CrnAAUDomBCfBUi
	J/83xb0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQxpR-00000005QCS-36RD;
	Wed, 11 Nov 2026 02:12:49 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQxpO-00000005QC0-3A9j;
	Wed, 11 Nov 2026 02:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=DuqYtNneUEuH9evPuapHLCBL5pEX/5BkjSDOaIOKRgs=; b=UWgDXJNqXBh/YLE2LI9GNZiocG
	c6UK7T6Q9IcIIj2LbSO7d6OKp/KBBFzGh3zomvFgO2F7bIGLlylRTiBMEqiIWmGLzWsa6XtM58Jce
	I90WnPA63oR6I7RURgkzBxntuZ7iNGXqdjZ24pNFh7J81WjQgG6gTUJOuWf1i3D+/nYM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xQxpH-00Fd71-03; Wed, 11 Nov 2026 03:12:39 +0100
Date: Wed, 11 Nov 2026 03:12:38 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vincent Mailhol <mailhol@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de,
	Fabio Estevam <festevam@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 5/5] ARM: mxs: add EVAchargeSE board support
Message-ID: <61d1cb97-5c8e-45f1-8c01-1745e768e4e4@lunn.ch>
References: <20261106230746.21954-1-wahrenst@gmx.net>
 <20261106230746.21954-6-wahrenst@gmx.net>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261106230746.21954-6-wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_181246_820565_0CEE8A26 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

 +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy: ethernet-phy@0 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +			clocks = <&clks 64>; /* enet_out */
> +			interrupt-parent = <&gpio4>;
> +			interrupts = <5 IRQ_TYPE_EDGE_FALLING>;

PHY interrupts are pretty much always level, not edge.

	Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
