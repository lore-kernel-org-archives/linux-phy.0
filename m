Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A560C433EF
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 02:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0gCytL1GItNWnDkU9k92ETuK4mqCYb+0RoU0DXh7us=; b=Wc5HGAOUZk32yS
	+16iw3G3wu4phy82vQkNXVHrcpC7J/OqT53AZYNfJW2nSgZzLSGeinKUNH/HEScwoLTrCV6sFVo1l
	KR0uz1r8kLO5B8hjDb+rNJlVXjwA+ze0xJn5E0TEc0/s+zbWeEWOMgMFIelI5rsgV0ugV4NiMk+37
	76AudakGFtFAkflaTFQMFUa074BKTKFMzbrlAs4WJztsBe4lVQXlmn7JmvNQyKceYtrMOU/tnELwa
	SfiqDlQXujz+VVFV3JxkLsAW5+FsuLo0GaOBNauRnNcoeF8wYB7vpvRDBunVKfTx/x+7bK/NCRq9g
	IxrAcE5+at8mlq5Bx/cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGAf0-005xkK-Ga; Sat, 05 Feb 2022 02:18:46 +0000
Received: from mail-oo1-f45.google.com ([209.85.161.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGAex-005xjC-GZ
 for linux-phy@lists.infradead.org; Sat, 05 Feb 2022 02:18:44 +0000
Received: by mail-oo1-f45.google.com with SMTP id
 t75-20020a4a3e4e000000b002e9c0821d78so6761944oot.4
 for <linux-phy@lists.infradead.org>; Fri, 04 Feb 2022 18:18:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=dh+lEqNlO5YoCM8DAnReukIGw+hgF+pQdL2dapiz1tw=;
 b=jJKArC28y40JFZHTNYXHyAGFd6NKT/phL+8CGauUNx3Y9NlysesAuwIy54SgDOL1G2
 xeYpWUCJrsquIKJJdYcoyrTJ8vpDtEuBnTMKf57y18nLv5EeBVvCgqzcqCrUGv6Pg3C7
 a0JEmxUMI+sB4eX+w9TjRxV27/biGkiaE6+4S9IQfVKGtaU7ZfqtTRr9LwaVnlVCoJLT
 gUD7qq5fiMso7aJgLu1OWqvUqCdjorf75ZQHLaZ4KlMcHOyp5Qwnc4CcenbsXS58aoIO
 iPVjUNUNzwcO7h2Swq0tnL5p6YM4Ja8jwn50mw55AmB76tAF2kyazrjAuDnc59T5r0KP
 yfiA==
X-Gm-Message-State: AOAM531lC6kBN1oaicz0ZKh2oQU+HcPyMQ4K3jP3Ao1we6RDcL2ni655
 +AqAUHGptb2L38Vd4GO+UWA/pNK/yw==
X-Google-Smtp-Source: ABdhPJzVNBt81cbdJTvk5Ro3frSpSh5Zi976G6ToD+gWG8jKQFJyo6E99hWEtAccWCoNG6CR6ss2dw==
X-Received: by 2002:a05:6870:37c5:: with SMTP id
 p5mr1411350oai.252.1644027522457; 
 Fri, 04 Feb 2022 18:18:42 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id h9sm1425584otk.42.2022.02.04.18.18.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Feb 2022 18:18:41 -0800 (PST)
Received: (nullmailer pid 3624417 invoked by uid 1000);
 Sat, 05 Feb 2022 02:18:40 -0000
Date: Fri, 4 Feb 2022 20:18:40 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Cc: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
 devicetree@vger.kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>, Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH devicetree v3] dt-bindings: phy: Add `tx-p2p-microvolt`
 property binding
Message-ID: <Yf3egEVYyyXUkklM@robh.at.kernel.org>
References: <20220119131117.30245-1-kabel@kernel.org>
 <74566284-ff3f-8e69-5b7d-d8ede75b78ad@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74566284-ff3f-8e69-5b7d-d8ede75b78ad@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220204_181843_578012_35C297CD 
X-CRM114-Status: GOOD (  16.37  )
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

On Fri, Jan 21, 2022 at 11:18:09AM -0800, Florian Fainelli wrote:
> On 1/19/22 5:11 AM, Marek Beh=FAn wrote:
> > Common PHYs and network PCSes often have the possibility to specify
> > peak-to-peak voltage on the differential pair - the default voltage
> > sometimes needs to be changed for a particular board.
> > =

> > Add properties `tx-p2p-microvolt` and `tx-p2p-microvolt-names` for this
> > purpose. The second property is needed to specify the mode for the
> > corresponding voltage in the `tx-p2p-microvolt` property, if the voltage
> > is to be used only for speficic mode. More voltage-mode pairs can be
> > specified.
> > =

> > Example usage with only one voltage (it will be used for all supported
> > PHY modes, the `tx-p2p-microvolt-names` property is not needed in this
> > case):
> > =

> >   tx-p2p-microvolt =3D <915000>;
> > =

> > Example usage with voltages for multiple modes:
> > =

> >   tx-p2p-microvolt =3D <915000>, <1100000>, <1200000>;
> >   tx-p2p-microvolt-names =3D "2500base-x", "usb", "pcie";
> > =

> > Add these properties into a separate file phy/transmit-amplitude.yaml,
> > which should be referenced by any binding that uses it.
> =

> p2p commonly means peer to peer which incidentally could be confusing,
> can you spell out the property entire:
> =

> tx-peaktopeak-microvolt or:
> =

> tx-pk2pk-microvolt for a more compact name maybe?

Peer to peer makes little sense in terms of a voltage. I think this is =

fine as-is.

Rob

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
