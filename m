Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20E1BC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 21:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQmtSQV6Ie7VgEv1X0rRTdF2HvA2+5fRbC78McSASWk=; b=cMqpM0GFwsHOmZ
	aYG5mbD1MQse0RQP2bgLLlIkCjCKqr4ijnmQ+JFsko/WFKzFibXmTJLEWxK3T1BH5uwL8FaBI039u
	xAmGklUKsciyt558c7jKY9QrjbpkzSOWJPJG2HRdr1Y4KShCKGMTFjClZd2UVnBmdOzygY1qhQIzV
	FDvt15wPwRk3iCgTfUW8ckMEByMa2ReVSUGQTc4FhEQ/HXyRZ6gPTbhFYOpaKT17I0syYIiZlmZdr
	oxCv8dn5z+dTNnDuw1O1lCi4iG/zqRoaRtmcvQAduVoWPuY7/YwEx2MfgCAbl/qHcvIOIuzUehUkJ
	PEnVk8Q/shklnU0HbWBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxcIQ-002t0y-K8; Wed, 15 Dec 2021 21:58:46 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxcIN-002t0d-Nh
 for linux-phy@lists.infradead.org; Wed, 15 Dec 2021 21:58:45 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 x19-20020a9d7053000000b0055c8b39420bso26644952otj.1
 for <linux-phy@lists.infradead.org>; Wed, 15 Dec 2021 13:58:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=3zeH0igIgZ6N61ry9PolPct9kSJDrAAlOGtWEn9bXBI=;
 b=keBLWuOrB6LLdzDNWHDBku71MGBqxULmB+1oAbPbAsBwVnox5r6EvhRguiC+KTLFGp
 oyfxWGch6SnrS+Vnwrmx+R6dvfVXbprNAfIhKevean6yjE1BDtD0Q53HrcPsECzJzU8f
 4VfrmgFV+LeJ0Wvfi2Grti3GTX7s6J/IaBJ9T2E9xrXsFM9vpq9CDEzCMAJSGsIL75LP
 h8hCT43gMqUAgxGSTFbE7/HWpjkp2IefAkTArM0JdIKbWiFHXJROcw6MzQdCH294nuaM
 l5cPzo5kvT7xFmDgygWI/jAlxR4h94uh2O/wCh7KHQsJdjUSMDqW3kQqOWBctFWO6DmR
 0dgQ==
X-Gm-Message-State: AOAM533QXfr37Hn4aiyA1HyZaCkfMvtniANOIPgr1b5u5P9fuNxYoFby
 bsBbajHLJyfcEdF4mZ6/1A==
X-Google-Smtp-Source: ABdhPJyP3vZ+Tj2Gy8J86y1uH0mdljg2WPYllUbHy5rGzBVwVXxn18MCmp5018CoYtlcAAw74T5Ovw==
X-Received: by 2002:a9d:1b0:: with SMTP id e45mr9906224ote.23.1639605522293;
 Wed, 15 Dec 2021 13:58:42 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id a6sm590039oic.39.2021.12.15.13.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:58:41 -0800 (PST)
Received: (nullmailer pid 1913087 invoked by uid 1000);
 Wed, 15 Dec 2021 21:58:40 -0000
Date: Wed, 15 Dec 2021 15:58:40 -0600
From: Rob Herring <robh@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: devicetree@vger.kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>, Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH devicetree 2/2] dt-bindings: phy: Add
 `tx-amplitude-microvolt` property binding
Message-ID: <YbplENKCcjCUdwke@robh.at.kernel.org>
References: <20211214233432.22580-1-kabel@kernel.org>
 <20211214233432.22580-3-kabel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211214233432.22580-3-kabel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_135843_823747_02391FC3 
X-CRM114-Status: GOOD (  26.80  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, Dec 15, 2021 at 12:34:32AM +0100, Marek Beh=FAn wrote:
> Common PHYs often have the possibility to specify peak-to-peak voltage
> on the differential pair - the default voltage sometimes needs to be
> changed for a particular board.

I can envision needing this, but I can't say that I've seen custom =

properties being proposed for this purpose.

> =

> Add properties `tx-amplitude-microvolt` and
> `tx-amplitude-microvolt-names` for this purpose. The second property is
> needed to specify

Is the amplitude peak to peak? You just said it was, but perhaps make =

the property name more clearly defined: tx-p2p-microvolt

> =

> Example usage with only one voltage (it will be used for all supported
> PHY modes, the `tx-amplitude-microvolt-names` property is not needed in
> this case):
> =

>   tx-amplitude-microvolt =3D <915000>;
> =

> Example usage with voltages for multiple modes:
> =

>   tx-amplitude-microvolt =3D <915000>, <1100000>, <1200000>;
>   tx-amplitude-microvolt-names =3D "2500base-x", "usb", "pcie";

I'm not wild about the -names, but I think outside of ethernet most =

cases will only be 1 entry.

For a phy provider with multiple phys, what if each one needs a =

different voltage (for the same mode)?

> =

> Signed-off-by: Marek Beh=FAn <kabel@kernel.org>
> ---
> =

> I wanted to constrain the values allowed in the
> `tx-amplitude-microvolt-names` property to:
> - ethernet SerDes modes (sgmii, qsgmii, 10gbase-r, 2500base-x, ...)
> - PCIe modes (pattern: ^pcie[1-6]?$)
> - USB modes (pattern: ^usb((-host|-device|-otg)?-(ls|fs|hs|ss|ss\+|4))?$)
> - DisplayPort modes (pattern: ^dp(-rbr|-hbr[23]?|-uhbr-(10|13.5|20))?$)
> - Camera modes (mipi-dphy, mipi-dphy-univ, mipi-dphy-v2.5-univ)
> - Storage modes (sata, ufs-hs, ufs-hs-a, ufs-hs-b)
> =

> But was unable to. The '-names' suffix implies string-array type, and
> string-array type does not allow to specify a type for all items in a
> simple way, i.e.:
>   items:
>     enum:
>       - sgmii
>       - sata
>       - usb
>       ...

Works here: Documentation/devicetree/bindings/arm/samsung/pmu.yaml:56

The requirement is you need to constrain the size with maxItems. It can =

be a 'should be enough for anyone' value.

> Such constraint does work when changing ethernet controller's
> `phy-connection-type` to array, see
> https://lore.kernel.org/netdev/20211123164027.15618-2-kabel@kernel.org/
> =

> But it seems that string-array type prohibits this.
> =

> ---
>  .../devicetree/bindings/phy/phy.yaml          | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
> =

> diff --git a/Documentation/devicetree/bindings/phy/phy.yaml b/Documentati=
on/devicetree/bindings/phy/phy.yaml
> index a5b6b04cff5b..8915065cf6c2 100644
> --- a/Documentation/devicetree/bindings/phy/phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy.yaml
> @@ -31,9 +31,29 @@ properties:
>        Phandle to a regulator that provides power to the PHY. This regula=
tor
>        will be managed during the PHY power on/off sequence.
>  =

> +  tx-amplitude-microvolt:
> +    description:
> +      Transmit amplitude voltages in microvolts, peak-to-peak. If this p=
roperty
> +      contains multiple values for various PHY modes, the
> +      'tx-amplitude-microvolt-names' property must be provided and conta=
in
> +      corresponding mode names.
> +
> +  tx-amplitude-microvolt-names:
> +    description: |
> +      Names of the modes corresponding to voltages in the
> +      'tx-amplitude-microvolt' property. Required only if multiple volta=
ges
> +      are provided.
> +
> +      If a value of 'default' is provided, the system should use it for =
any PHY
> +      mode that is otherwise not defined here. If 'default' is not provi=
ded, the
> +      system should use manufacturer default value.
> +
>  required:
>    - '#phy-cells'
>  =

> +dependencies:
> +  tx-amplitude-microvolt-names: [ tx-amplitude-microvolt ]
> +
>  additionalProperties: true
>  =

>  examples:
> @@ -46,6 +66,8 @@ examples:
>      phy: phy {
>        #phy-cells =3D <1>;
>        phy-supply =3D <&phy_regulator>;
> +      tx-amplitude-microvolt =3D <915000>, <1100000>, <1200000>;
> +      tx-amplitude-microvolt-names =3D "2500base-x", "usb-hs", "usb-ss";
>      };
>  =

>      ethernet-controller {
> -- =

> 2.32.0
> =

> =



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
