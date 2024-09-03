Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBA54CD342E
	for <linux-phy@archiver.kernel.org>; Tue,  3 Sep 2024 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcVHZROzrtIvMq+slUw36UIT7OJnQVlI3d+fFoc7SAU=; b=2ZcBPoCsTJO7yP
	XVfNlf9sq8QYvf1zhTrQkQspfWd9FcPpMzawfFUVOrjBU0uPK2+Ijyej681i3jdKHrz7HKfaTU6LQ
	66ThhNTWg6eXpLMs70p9WePzwWCZ3pJ5Q2XU3OjuPrlUpyR02vgiPFb1pJsjESuSTks2c/B6ay/9u
	0u5g3GAhZUvrpC7oN//9iLWFNgWa7na2lAG9CcVCMiy2sCsBTnzo2zi7Q1RpmXC99dbvmxI+yFcDE
	EsPI4RqpardMDWAQH9gR06KR+wyw9JqBSYwnfuSYvFmWxC5JByHG8Lon9Y2r2zmhh3PJLtnZQU/Jz
	d7V+djEWUwUAS0WYN5FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slNfl-0000000Gbe2-2Lyc;
	Tue, 03 Sep 2024 07:09:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slNeq-0000000GbOt-0zdM;
	Tue, 03 Sep 2024 07:08:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 076E55C5974;
	Tue,  3 Sep 2024 07:08:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85EA0C4CEC5;
	Tue,  3 Sep 2024 07:08:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1725347335;
	bh=bTovO0s/85vxVwC1EVSDWJ6CYsHfXmbw+NNS3x21Hb0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=17x5NNP9Idwc8DE5dLqI55XntnLQ1/kNaElYPEhprdklN3M6SNkSO4SGvYShIZ380
	 6w9NeCLSeTnmK9SKKHdBBPOmTLzRphQocTfpO4sjDUL8StIWVcpMVbsKQrXKCsEutb
	 kSEbYbYcWsus+Iw4egdLvfQywd0mp9mK6jwBz3MI=
Date: Tue, 3 Sep 2024 09:08:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	peter.chen@kernel.org, herve.codina@bootlin.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org, jun.li@nxp.com
Subject: Re: [PATCH v2 3/6] dt-bindings: phy: mxs-usb-phy: add nxp,sim
 property
Message-ID: <2024090332-smokiness-virus-5f65@gregkh>
References: <20240726113207.3393247-1-xu.yang_2@nxp.com>
 <20240726113207.3393247-3-xu.yang_2@nxp.com>
 <20240829090935.ktc7jgd2en4qay2h@hippo>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240829090935.ktc7jgd2en4qay2h@hippo>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_000856_343260_8D11634B 
X-CRM114-Status: GOOD (  17.48  )
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

On Thu, Aug 29, 2024 at 05:09:35PM +0800, Xu Yang wrote:
> Hi Greg,
> 
> On Fri, Jul 26, 2024 at 07:32:04PM +0800, Xu Yang wrote:
> > i.MX7ULP need properly set System Integration Module(SIM) module to make
> > usb wakeup work well. This will add a "nxp,sim" property.
> > 
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > 
> > ---
> > Changes in v2:
> >  - add else branch suggested by Rob
> > ---
> >  .../devicetree/bindings/phy/fsl,mxs-usbphy.yaml | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > index f4b1ca2fb562..ce665a2779b7 100644
> > --- a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> > @@ -87,6 +87,12 @@ properties:
> >      maximum: 119
> >      default: 100
> >  
> > +  nxp,sim:
> > +    description:
> > +      The system integration module (SIM) provides system control and chip
> > +      configuration registers.
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +
> >  required:
> >    - compatible
> >    - reg
> > @@ -110,6 +116,17 @@ allOf:
> >        required:
> >          - fsl,anatop
> >  
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          const: fsl,imx7ulp-usbphy
> > +    then:
> > +      required:
> > +        - nxp,sim
> > +    else:
> > +      properties:
> > +        nxp,sim: false
> > +
> >  additionalProperties: false
> >  
> >  examples:
> 
> 
> Could you please pick up patch #3? Rest of the patches are mainlined.

Can you please resend it as an individual patch with the reviewed-by
added to it?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
