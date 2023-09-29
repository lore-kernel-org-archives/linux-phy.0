Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DB8BE728CA
	for <linux-phy@archiver.kernel.org>; Fri, 29 Sep 2023 16:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/a49WksG0MvibeNJqqKz9mRLbqj6nqJJBeXQeh498I=; b=Erv5PevmL3QbiH
	Cf+qciXM7j6qpVHF2Yv07QmpQnstVseJ/1vrpEAJkcxT0k6bzhfk+D3JiUzMlHhtkeMKuZDzwoP1k
	8LoDoQppTCZNKUwdNmsCfilOznBVsKHNmWar+Vg0kEIaWgl9RC6Axy5AYlBtCUtWy2OO8i7U91Hxi
	AXq1wuvBvP2VxFPQb/NbB+W7KRv2R2hEwpPd8Av/SquTU7jjUBRVIeKFo2lAiXfBhRPtrth9PAGuu
	qxd/3oQYCQaoW2ukZrqsQ8sIHOiI3MZ/y56BpPiaXn2rVLfa0u8inCeEWUtPlgNCiuAv+KOff/A9u
	LJDCW5gxFxwImbQ0OQYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmGH4-008HvW-33;
	Fri, 29 Sep 2023 16:23:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmGH2-008Hue-1k
	for linux-phy@lists.infradead.org;
	Fri, 29 Sep 2023 16:23:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1CEBD61E50;
	Fri, 29 Sep 2023 16:23:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 449B5C433C7;
	Fri, 29 Sep 2023 16:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696004606;
	bh=vdHsFS1qwouM+3ZESdMWBKhRRi64cXjRGOWqnTWm4nE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HiKXhd8fVklhkUvZLY/7nVB9NKzzeU+CKrADgeA2VwJVUpuWHiHGUV7uVaUcd3oQz
	 VRjklVMCsTZ0MT4mgBsdx42amXJ993diG7iv3JZKM78vHl3G2s/muANlcfbmZSBXvv
	 vsVntbyTdWfsJSiGresmpLIY2AnnnG0HDr6BKSlMzhqGMisPBMOsKdII/RVMX8HzQ1
	 NmZ7E/PLEudfKlQjsGJROfj/RndTmFX1aaT+jV5ewhGa529PLNG8uBCVeyIlm+MXQW
	 SPqgJwnCWE+JkFjHlVMZEcQYG+e+JwVWSoLmglreLJJsvVt1fm3WIVrmtafI3V5gYv
	 iMV8gsUxh6Low==
Date: Fri, 29 Sep 2023 21:53:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Camelia Groza <camelia.groza@nxp.com>, Li Yang <leoyang.li@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor@kernel.org>,
	Sean Anderson <sean.anderson@seco.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [RFC PATCH v2 net-next 04/15] phy: allow querying the address of
 protocol converters through phy_get_status()
Message-ID: <ZRb5+h4TnGRKl3/6@matsya>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-5-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230923134904.3627402-5-vladimir.oltean@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230929_092328_691047_980CB27C 
X-CRM114-Status: GOOD (  30.59  )
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

On 23-09-23, 16:48, Vladimir Oltean wrote:
> The bit stream handled by a SerDes lane needs protocol converters to be
> usable for Ethernet. On Freescale/NXP SoCs, those protocol converters
> are located on the internal MDIO buses of the Ethernet MACs that need
> them.
> 
> The location on that MDIO bus, on these SoCs, is not fixed, but given by
> some control registers of the SerDes block itself.
> 
> Because no one modifies those addresses from the power-on default, so
> far we've relied on hardcoding the default values in the device trees,
> resulting in something like this:
> 
> 		pcs_mdio1: mdio@8c07000 {
> 			compatible = "fsl,fman-memac-mdio";
> 
> 			pcs1: ethernet-phy@0 {
> 				reg = <0>;
> 			};
> 		};
> 
> where the "reg" of "pcs1" can actually be retrieved from "serdes_1".
> 
> That was for the PCS. For AN/LT blocks, that can also be done, but the
> MAC to PCS to AN/LT block mapping is non-trivial and extremely easy to
> get wrong, which will confuse and frustrate any device tree writers.
> 
> The proposal is to take advantage of the fact that these protocol
> converters *are* discoverable, and to side-step that entire device tree
> mapping issue by not putting them in the device tree at all. So, one of
> the consumers of the SerDes PHY uses the phy_get_status() API to figure
> out the address on the MDIO bus, it also has a reference to the MDIO bus
> => it can create the mdio_device in a non OF-based manner.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> v1->v2: patch is new
> 
>  include/linux/phy/phy.h | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index f1f03fa66943..ee721067517b 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -56,6 +56,33 @@ enum phy_media {
>  enum phy_status_type {
>  	/* Valid for PHY_MODE_ETHERNET and PHY_MODE_ETHTOOL */
>  	PHY_STATUS_CDR_LOCK,
> +	PHY_STATUS_PCVT_ADDR,
> +};
> +
> +/* enum phy_pcvt_type - PHY protocol converter type

It is not a generic protocol converter but an ethernet phy protocol
converter, so i guess we should add that here (we are generic phy and
not ethernet phy here!

> + *
> + * @PHY_PCVT_ETHERNET_PCS: Ethernet Physical Coding Sublayer, top-most layer of
> + *			   an Ethernet PHY. Connects through MII to the MAC,
> + *			   and handles link status detection and the conversion
> + *			   of MII signals to link-specific code words (8b/10b,
> + *			   64b/66b etc).
> + * @PHY_PCVT_ETHERNET_ANLT: Ethernet Auto-Negotiation and Link Training,
> + *			    bottom-most layer of an Ethernet PHY, beneath the
> + *			    PMA and PMD. Its activity is only visible on the
> + *			    physical medium, and it is responsible for
> + *			    selecting the most adequate PCS/PMA/PMD set that
> + *			    can operate on that medium.
> + */
> +enum phy_pcvt_type {
> +	PHY_PCVT_ETHERNET_PCS,
> +	PHY_PCVT_ETHERNET_ANLT,
> +};
> +
> +struct phy_status_opts_pcvt {
> +	enum phy_pcvt_type type;
> +	union {
> +		unsigned int mdio;
> +	} addr;
>  };
>  
>  /* If the CDR (Clock and Data Recovery) block is able to lock onto the RX bit
> @@ -71,9 +98,11 @@ struct phy_status_opts_cdr {
>   * union phy_status_opts - Opaque generic phy status
>   *
>   * @cdr:	Configuration set applicable for PHY_STATUS_CDR_LOCK.
> + * @pcvt:	Configuration set applicable for PHY_STATUS_PCVT_ADDR.
>   */
>  union phy_status_opts {
>  	struct phy_status_opts_cdr		cdr;
> +	struct phy_status_opts_pcvt		pcvt;
>  };
>  
>  /**
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
