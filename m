Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76F7606A338
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 14:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4DOO2BpF;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=GkM8K1QJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hevrQ86RIn21yaORkQtqmVCwwGV2iH2cMdkl0bA9dmI=; b=4DOO2BpFvhIiNntM2g/EKft7Rm
	cAZncIcJn7rCc2hbge/EgUOxMGtiVfK5SHoc43OAUM3/hg6TwGvwVgbiuK2wBpkLGkugI2mEzaXs9
	nv5iXfzLegmVoe7z96ZDbqtQcbUFKjwvDHlj2OZ3S5XAZsA6qzUXCqxA2hgZla6OB13XDp1oT4N35
	Auog/4Tkp15nnFAjcidDcc5TfG9ECVC1Y7aMCsXRGRLOp+fZFPwizZ39ydyHMDgWScHXnvVZlnilB
	6hWG2BedXSyrYLJK/oFAVxLK82hcKQix+bh2LC5RyYG8Ul0oAsaw4yz7LUrpG99MGdhIzwGKAjz03
	gV81r0ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRVi8-0000000AEjW-2JCm;
	Thu, 12 Nov 2026 14:23:32 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRVi6-0000000AEif-1RHF;
	Thu, 12 Nov 2026 14:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=9gXiTKwhd0i3FmOeF109/if7WExvzUv7qcneIWltTw4=; b=GkM8K1QJwEYb9aj1af7OXzpN/G
	g5/5QCVE6DP0q/LKaEPIJTuDFHiIOj6a6I/AgVt9J9E21WMfjotLjCaUmL7RtVSuSIDQag+Wgil14
	NsMKr+8wvC+9gpqaUbXyB7NMVW9yQ02S67CO+kHdejDpBBDi6aj7c/JAMTSDGHkBra2c=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xRVhr-00G2ck-B3; Thu, 12 Nov 2026 15:23:15 +0100
Date: Thu, 12 Nov 2026 15:23:15 +0100
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
Subject: Re: [PATCH V2 5/6] ARM: dts: mxs: add EVAchargeSE board support
Message-ID: <bf6040aa-9cb0-4566-a2cb-f3edf39bf4c8@lunn.ch>
References: <20261112130506.12823-1-wahrenst@gmx.net>
 <20261112130506.12823-6-wahrenst@gmx.net>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261112130506.12823-6-wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_062330_383086_3560C62A 
X-CRM114-Status: UNSURE (   6.27  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> +&mac0 {
> +	clocks = <&clks 57>, <&clks 57>, <&clks 64>;
> +	clock-names = "ipg", "ahb", "enet_out";
> +	phy-handle = <&ethphy>;
> +	phy-mode = "rmii";
> +	phy-supply = <&reg_3p3v>;
> +	pinctrl-0 = <&mac0_pins_a &mac0_phy_reset_pin>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy: ethernet-phy@0 {
> +			compatible = "ethernet-phy-id0007.c0f0","ethernet-phy-ieee802.3-c22";
> +			reg = <0>;
> +			interrupt-parent = <&gpio4>;
> +			interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
> +			max-speed = <100>;
> +			pinctrl-0 = <&mac0_phy_int_pin>;
> +			pinctrl-names = "default";
> +			reset-assert-us = <500>;
> +			reset-deassert-us = <500>;
> +			reset-gpios = <&gpio4 13 GPIO_ACTIVE_LOW>;
> +			smsc,disable-energy-detect;
> +		};
> +	};
> +};

For these nodes only:

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
