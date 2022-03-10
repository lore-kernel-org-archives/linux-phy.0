Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79222C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 10 Mar 2022 17:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/cT8l6bR5IQzRR+qBIfM4FPm0GBAhMp+MtNd/n+ggk=; b=pv/dyqpzW9KBD6
	RBcHCWh7KZYTxOMOin7AmS5O+I2ra5Xu8HtDruE0Qo/WnYzcwDS+UhThS0iPj20COUIH8WuqXT7jb
	nlr+o7VdI+UDe+WMIATfy/iOS88/Dhg0l28QwHYtBFl4CLpNURDYHjNq1wjE1lJRTg9O843UWCikt
	NiU/yU5MbSoBTuRCS/ep8m2dMoyV6wUtLsI8iSbyM7gqai0HlkEKaVczN9X8OiEDxC9Hp5QkDZq4n
	fAe/aBIOZ7PqlH1vevLhzH6Ev7nIOaP2WiwyUw8ZBmbBJj4jjtHi3IFmhWgpDz/BnChucC/636CSh
	Ahpe5xz5cfFj3Qn/IgGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSN3R-00DfpM-Un; Thu, 10 Mar 2022 17:58:25 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSN3L-00Dfnm-Vh
 for linux-phy@lists.infradead.org; Thu, 10 Mar 2022 17:58:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=67s4LA1ACb5RaCvH71SlWaGzAg+v5mOWV/nAyGumpok=; b=Jm1TmqoELDQxuVQwVOGolwc2V/
 FaOkzoIM2DUYXl5fyzAb4UwHNQgCgzlGbO7raknWw7TEjzgvj3g1TP8YdOiugAJpjJX+oZ+pe64h6
 F5CptwkCL109LWVOP5XQyFKbHvG9oTzyuDRCICTUriEjuZKuCRDild9x4L27b5UjRDx9EddrNt9ag
 bmYMNTyLx25LOnkLrPLxkbRIexQa3ir8knQhOzIUdFX7HMy4MW7OGtVkahdQwGdTxD16o3eHHefoz
 ksvR618YytGFDdq/n3L0uHRVznNCNKBqx7N40tXhZQyMqRbz4ndXJd1P1eIpFUNgvEFxSpibVMxXg
 /5L75y5A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57774)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1nSN3B-0001Wc-HQ; Thu, 10 Mar 2022 17:58:09 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1nSN39-0000nD-Kr; Thu, 10 Mar 2022 17:58:07 +0000
Date: Thu, 10 Mar 2022 17:58:07 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>, davem@davemloft.net,
 kuba@kernel.org, netdev@vger.kernel.org, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, leoyang.li@nxp.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 shawnguo@kernel.org, hongxing.zhu@nxp.com
Subject: Re: [PATCH net-next v3 2/8] dt-bindings: phy: add the "fsl, lynx-28g"
 compatible
Message-ID: <Yio8L2X0Wece2Uxm@shell.armlinux.org.uk>
References: <20220310145200.3645763-1-ioana.ciornei@nxp.com>
 <20220310145200.3645763-3-ioana.ciornei@nxp.com>
 <a32fa8df-bd07-8040-41cd-92484420756d@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a32fa8df-bd07-8040-41cd-92484420756d@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_095822_959143_33B5EE05 
X-CRM114-Status: GOOD (  10.54  )
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

On Thu, Mar 10, 2022 at 05:47:31PM +0100, Krzysztof Kozlowski wrote:
> > +patternProperties:
> > +  '^phy@[0-9a-f]$':
> > +    type: object
> > +    properties:
> > +      reg:
> > +        description:
> > +          Number of the SerDes lane.
> > +        minimum: 0
> > +        maximum: 7
> > +
> > +      "#phy-cells":
> > +        const: 0
> 
> Why do you need all these children? You just enumerated them, without
> statuses, resources or any properties. This should be rather just index
> of lynx-28g phy.

There is good reason why the Marvell driver does it this way, and that
is because there are shared registers amongst all the comphys on the
SoC.

Where that isn't the case, and there is no other reason, I would suggest
creating multiple phy modes, one per physical PHY in DT, giving their
address would be a saner approach. That way, the driver isn't locked
in to a model of "we have N PHYs which are spaced by such-and-such
apart", and you don't have this "maximum: 7" thing above either.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
