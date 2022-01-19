Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87941C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jan 2022 03:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KIFpzvxShR8d/+dUV3TcNaS029dgVwstAEjZHxKENc=; b=YzSBGxYK50YBoM
	/4CKyjBnArEkaVvdAm3lyMap9Dr6iEiS6ogoNx2LzP6OU0DjFtjrEjQvgX+eqrVZeMhafh3HgyTgd
	g1KRfXx4/UIRlbpvX/GFi2GkOwQ8NKD4a2Skm/X9T3btBo1nZNcLCYWz0eIFerDKd1MGt4jlE5btu
	MtbGswQcREukWiSMKoQHsWMqgP1puJjYc+HHhVpEpZ/EtHIHw7GWsL3vevkJkrVFASA3vMcYIW78m
	GieNHXHqHdytOf30M6SQ9COINMvlJ/k2UpAl8R2u+3nziW6DjDDTTQgat4a1Bsp6FJ/h/gUOtPrQL
	w0sGlF1pC53n3ZgdkMZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA1Ja-003eLz-V9; Wed, 19 Jan 2022 03:07:14 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA1JY-003eKy-3V
 for linux-phy@lists.infradead.org; Wed, 19 Jan 2022 03:07:13 +0000
Received: by mail-oi1-f173.google.com with SMTP id q186so1998714oih.8
 for <linux-phy@lists.infradead.org>; Tue, 18 Jan 2022 19:07:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ZG6b7uz1PB4E2oe2QeAcnHF46q6pw+U4MECvO3MKSCw=;
 b=IAcgFqVI7QjExgLS5hzm9BBWIpd/SSildr4YDICJpxtDNXdfhNOzjBgV1k2MVGmqN3
 jY/TeqzLUIhoGoFDt/KbRc2LVlcMAPCpns2U1prNZllF6XDSbbcvBOGIQSTTUTefsg0o
 QKwNpeuqMU63/knrwZ0zjWTam3Dhfxu1tv/kciwPu3iwH1f+W0yR+TuiEXtEgSkNv2+e
 Ycy49/TD36SMVnytygL2+B7t++WJnbtiB/wcA/k4qhtXvORQVAE9jVhumJrtJFMO9dKn
 EmcMnI5YlEjWEAMeeO7oxeSarRIM/dO2WwlflPpleq/SKIwZ7xtly2M1nMAQZSOsEmdK
 q0XA==
X-Gm-Message-State: AOAM53331xMRglrs2pkSr4dPLQXG6lvwLvAj7r7SBtObPZ/u4GMlbMtd
 kLEk1nS2jO7aWN86KGcSNA==
X-Google-Smtp-Source: ABdhPJxws2eRhptEN549//3CvsKN266kS9zY1g70eqi83+1D1kdUwALIO5rNbFeHwdXB8B1RTkY0qQ==
X-Received: by 2002:a05:6808:1188:: with SMTP id
 j8mr1278242oil.101.1642561631142; 
 Tue, 18 Jan 2022 19:07:11 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id o16sm6431863otk.7.2022.01.18.19.07.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Jan 2022 19:07:10 -0800 (PST)
Received: (nullmailer pid 2557216 invoked by uid 1000);
 Wed, 19 Jan 2022 03:07:09 -0000
Date: Tue, 18 Jan 2022 21:07:09 -0600
From: Rob Herring <robh@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: devicetree@vger.kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>, Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH devicetree v2] dt-bindings: phy: Add `tx-p2p-microvolt`
 property binding
Message-ID: <YeeAXSHSCn6PtqKW@robh.at.kernel.org>
References: <20220112181602.13661-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220112181602.13661-1-kabel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_190712_182449_8DC98CA6 
X-CRM114-Status: GOOD (  25.80  )
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

On Wed, Jan 12, 2022 at 07:16:02PM +0100, Marek Beh=FAn wrote:
> Common PHYs and network PCSes often have the possibility to specify
> peak-to-peak voltage on the differential pair - the default voltage
> sometimes needs to be changed for a particular board.
> =

> Add properties `tx-p2p-microvolt` and `tx-p2p-microvolt-names` for this
> purpose. The second property is needed to specify the mode for the
> corresponding voltage in the `tx-p2p-microvolt` property, if the voltage
> is to be used only for speficic mode. More voltage-mode pairs can be
> specified.
> =

> Example usage with only one voltage (it will be used for all supported
> PHY modes, the `tx-p2p-microvolt-names` property is not needed in this
> case):
> =

>   tx-p2p-microvolt =3D <915000>;
> =

> Example usage with voltages for multiple modes:
> =

>   tx-p2p-microvolt =3D <915000>, <1100000>, <1200000>;
>   tx-p2p-microvolt-names =3D "2500base-x", "usb", "pcie";
> =

> Add these properties into a separate file phy/transmit-amplitude.yaml,
> selecting it for validation if either of the `tx-p2p-microvolt`,
> `tx-p2p-microvolt-names` properties is set for a node.
> =

> Signed-off-by: Marek Beh=FAn <kabel@kernel.org>
> ---
>  .../bindings/phy/transmit-amplitude.yaml      | 110 ++++++++++++++++++
>  1 file changed, 110 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/transmit-amplit=
ude.yaml
> =

> diff --git a/Documentation/devicetree/bindings/phy/transmit-amplitude.yam=
l b/Documentation/devicetree/bindings/phy/transmit-amplitude.yaml
> new file mode 100644
> index 000000000000..90a491b75f61
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/transmit-amplitude.yaml
> @@ -0,0 +1,110 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/transmit-amplitude.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Common PHY and network PCS transmit amplitude property binding
> +
> +description:
> +  Binding describing the peak-to-peak transmit amplitude for common PHYs
> +  and network PCSes.
> +
> +maintainers:
> +  - Marek Beh=FAn <kabel@kernel.org>
> +
> +properties:
> +  tx-p2p-microvolt:
> +    description:
> +      Transmit amplitude voltages in microvolts, peak-to-peak. If this p=
roperty
> +      contains multiple values for various PHY modes, the
> +      'tx-p2p-microvolt-names' property must be provided and contain
> +      corresponding mode names.
> +
> +  tx-p2p-microvolt-names:
> +    description: |
> +      Names of the modes corresponding to voltages in the 'tx-p2p-microv=
olt'
> +      property. Required only if multiple voltages are provided.
> +
> +      If a value of 'default' is provided, the system should use it for =
any PHY
> +      mode that is otherwise not defined here. If 'default' is not provi=
ded, the
> +      system should use manufacturer default value.
> +    minItems: 1
> +    maxItems: 16
> +    items:
> +      enum:
> +        - default
> +
> +        # ethernet modes
> +        - sgmii
> +        - qsgmii
> +        - xgmii
> +        - 1000base-x
> +        - 2500base-x
> +        - 5gbase-r
> +        - rxaui
> +        - xaui
> +        - 10gbase-kr
> +        - usxgmii
> +        - 10gbase-r
> +        - 25gbase-r
> +
> +        # PCIe modes
> +        - pcie
> +        - pcie1
> +        - pcie2
> +        - pcie3
> +        - pcie4
> +        - pcie5
> +        - pcie6
> +
> +        # USB modes
> +        - usb
> +        - usb-ls
> +        - usb-fs
> +        - usb-hs
> +        - usb-ss
> +        - usb-ss+
> +        - usb-4
> +
> +        # storage modes
> +        - sata
> +        - ufs-hs
> +        - ufs-hs-a
> +        - ufs-hs-b
> +
> +        # display modes
> +        - lvds
> +        - dp
> +        - dp-rbr
> +        - dp-hbr
> +        - dp-hbr2
> +        - dp-hbr3
> +        - dp-uhbr-10
> +        - dp-uhbr-13.5
> +        - dp-uhbr-20
> +
> +        # camera modes
> +        - mipi-dphy
> +        - mipi-dphy-univ
> +        - mipi-dphy-v2.5-univ
> +
> +dependencies:
> +  tx-p2p-microvolt-names: [ tx-p2p-microvolt ]
> +
> +select:

This should be omitted and this schema should be referenced by any =

binding that uses it. That is necessary so all properties get evaluated.

> +  anyOf:
> +    - required:
> +      - 'tx-p2p-microvolt'
> +    - required:
> +      - 'tx-p2p-microvolt-names'
> +
> +additionalProperties: true
> +
> +examples:
> +  - |
> +    phy: phy {
> +      #phy-cells =3D <1>;
> +      tx-p2p-microvolt =3D <915000>, <1100000>, <1200000>;
> +      tx-p2p-microvolt-names =3D "2500base-x", "usb-hs", "usb-ss";
> +    };
> -- =

> 2.34.1
> =

> =


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
