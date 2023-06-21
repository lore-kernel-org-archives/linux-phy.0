Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB101EB64DD
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 12:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1T+y2YZUvYtaq/7SjfwHcNWghUvInfitBzrRPKoS2W0=; b=xuUV9BySD5E+wb
	z06MqGjLOHb5a3c4UBPtd+N1AV3MO7o1Gjy13GOVbxmAa3yc+ckj1AV6dtvRnqc9rDsfp9xxOs/W6
	19dpV5ZRi2JmxufWHi0m23yyL5r0zfIY9rjE5zNBQakiMC6V2HwdG5eGAhtF4MMuNvHFOXEeM1mts
	ZPIg7BlVNiOJrl/75RCkzCmYmu3eOo4rE1onfeHDOu8/67QJuBvNSueLbjllAW9xyOIuGc2/HCXOz
	41yjbED1kvk8jRcaSFwYVJBTtoevFtnnEMaEypLnyWI1VzVwcP/HEvPkE2JzEVvpbbn16zM3HPBL8
	S7otP0O8nWNl72KzBqww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwWU-00ETP1-1u;
	Wed, 21 Jun 2023 12:01:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwWR-00ETNi-2y;
	Wed, 21 Jun 2023 12:01:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 40A8161042;
	Wed, 21 Jun 2023 12:01:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7BC0C433C8;
	Wed, 21 Jun 2023 12:01:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687348874;
	bh=dnsuzZWarW86jSlrptZska9lIeReMhuRGOg2gsQvupc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o+Tg1ZfF22nx36RE30p158t2kjt2B5u+y+r4zdxUjvL2CwhuhwrRRgnG7Suunmn+P
	 D9iejU+u34St1g1IoqHprqdT/3ZnMl0fT+83zgfd9/yUAHMUmsC2/M09Z3XFkOkImY
	 kRssyBkJbIQ0h7C85NBS+kc4TPm0zn1U/gyHcTyn3z3XIpw++r/bx3XNG5bqwOI4Jb
	 BBzMk4E8kEyVnO0+dr5v2ElK41pcGhtTNv8RVerykpElLCxpvm0oqe398QICjGZ8A/
	 3JqDOiU7lLugJwk1HlvT5lgLk5+Mbcvio151bQXuRlKOyBdShO4MG+FUeonT0lpBji
	 Q44nN94bYQp+w==
Date: Wed, 21 Jun 2023 17:31:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: Rob Herring <robh@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	"festevam@gmail.com" <festevam@gmail.com>,
	dl-linux-imx <linux-imx@nxp.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	Jun Li <jun.li@nxp.com>
Subject: Re: [EXT] Re: [PATCH v4 1/2] dt-bindings: phy: mxs-usb-phy: convert
 to DT schema format
Message-ID: <ZJLmhqHOPrBauJDn@matsya>
References: <20230613083445.1129137-1-xu.yang_2@nxp.com>
 <20230620152921.GA3626802-robh@kernel.org>
 <DB7PR04MB450532123A20DBDB0059B6718C5DA@DB7PR04MB4505.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB450532123A20DBDB0059B6718C5DA@DB7PR04MB4505.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_050116_031943_171B4F1B 
X-CRM114-Status: GOOD (  26.00  )
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

On 21-06-23, 02:16, Xu Yang wrote:
> ++ Vinod Koul
> 
> > -----Original Message-----
> > From: Rob Herring <robh@kernel.org>
> > Sent: Tuesday, June 20, 2023 11:29 PM
> > To: Xu Yang <xu.yang_2@nxp.com>
> > Cc: krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org; shawnguo@kernel.org; s.hauer@pengutronix.de;
> > kernel@pengutronix.de; festevam@gmail.com; dl-linux-imx <linux-imx@nxp.com>; linux-phy@lists.infradead.org;
> > devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-usb@vger.kernel.org; Jun Li <jun.li@nxp.com>
> > Subject: [EXT] Re: [PATCH v4 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT schema format
> >
> > Caution: This is an external email. Please take care when clicking links or opening attachments. When in doubt, report the
> > message using the 'Report this email' button
> >
> >
> > On Tue, Jun 13, 2023 at 04:34:44PM +0800, Xu Yang wrote:
> > > Convert the binding to DT schema format. Besides, this also add clocks,
> > > '#phy-cells', phy-3p0-supply and power-domains properties which are not
> > > contained in txt file due to txt file lack updates.
> > >
> > > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > >
> > > ---
> > > Changes in v2:
> > >  - change filename to fsl,mxs-usbphy.yaml
> > >  - add other optional properties
> > >  - narrow fsl,anatop to imx6
> > >  - use additionalProperties
> > > Changes in v3:
> > >  - fix indentation
> > >  - add clocks property to example
> > > Changes in v4:
> > >  - remove [fsl,imx7ulp-usbphy, fsl,imx6ul-usbphy]
> > >  - limit item of reg and interrupts to 1
> > >  - sort enum items
> > >  - modify commit message
> > > ---
> > >  .../bindings/phy/fsl,mxs-usbphy.yaml          | 125 ++++++++++++++++++
> > >  .../devicetree/bindings/phy/mxs-usb-phy.txt   |  33 -----
> > >  2 files changed, 125 insertions(+), 33 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > >  delete mode 100644 Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
> >
> > This should be applied by the PHY maintainers, but they weren't Cc'ed.
> 
> I see. Thanks for reminding.
> 
> Hi Vinod,
> 
> Could you please help to apply below two patches:
>     - [v4 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT schema format
>     - [v4,2/2] dt-bindings: phy: mxs-usb-phy: add imx8ulp and imx8qm compatible
> The review process has been completed.
> Many thanks in advance.

Applied now, please use get_maintainer.pl to find whom the patches
should be copied to

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
