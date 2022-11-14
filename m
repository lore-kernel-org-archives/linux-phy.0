Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AE19C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 13:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdFw9QsVGGJZviDZwau/zCL3uuyQQ76k52syrBY0b2U=; b=trkrWtb+ElYU2L
	usBmot0kXXSEuzp+IY/V8z7RStUwZR3eWQN9+fN/CtBMSrHl+wutCGy5A3gGuX/nLUPhMjT3gQos9
	6HSswKlw0gIqyjNEeOyhOfQkZgpVM39ud/xuTDypBFhkUDdTqlW187wbyUDmICG8AtJznVtyGqWrW
	LLC2yg+tlRNQ09vE1eolLjdPFXOs/4p/PU8OH9yBelCoaMRCWyb59/EYt5cn+B5SUMgzTMtYE6Rak
	A8mZrW106PGp4JGZxm2e1I3jdrKyWDQrFhKrw9hAynm9PLxYNMNolii4BJDBCh2+v7yVK1tAYl3aR
	z5/3C3SU9OblacFDC6Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouZjE-001L0f-Cg; Mon, 14 Nov 2022 13:42:24 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouZek-001I2g-MB
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 13:37:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3FFE4B80EC5;
	Mon, 14 Nov 2022 13:37:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF3F5C433D7;
	Mon, 14 Nov 2022 13:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668433063;
	bh=8xlvfxt+WaMoXb0PloFzlKYuUCFDJMFOMn18gRmNUkc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RFsIXnztJNWhDOQjelLnWyBCH0WcRnDeGD6wUW8Mh0APpIY5LGZd/esWLNNA8iZ2H
	 qbC1aBChs6QEDaIwkOpjTEftm4L2VrfmR/tOdURHzgpNN9hV3hBA9HOgstID2w7/xI
	 ziGZOuWPz2DtKrkrq1tBgvl3kmDTGhrDoA0TjTOR4PeYYw0beeMWXE1Es64Ay/v7WG
	 ojd8+mh6sZyIKGGMUWzGJ/VokWlsjCjWpTKs2FuCdD7+5KYEQ+WEOw+q/ymWI6St54
	 rFptWZ9E91BCX4sfEOLDDH04PxasjKhDzsmBzma4kksRPJY7tSH3c8k2K+Aa7QQPu8
	 jt7RBMnSRe3/w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouZeB-0002y2-B7; Mon, 14 Nov 2022 14:37:12 +0100
Date: Mon, 14 Nov 2022 14:37:11 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Message-ID: <Y3JEh7wO394kepXq@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
 <ace91d8b-9a14-5569-7c59-344e9751fa96@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ace91d8b-9a14-5569-7c59-344e9751fa96@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_053747_089670_7195454E 
X-CRM114-Status: GOOD (  34.70  )
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

On Sat, Nov 12, 2022 at 02:43:03PM +0300, Dmitry Baryshkov wrote:
> On 11/11/2022 12:24, Johan Hovold wrote:
> > The current QMP USB3-DP PHY bindings are based on the original MSM8996
> > binding which provided multiple PHYs per IP block and these in turn were
> > described by child nodes.
> > 
> > The QMP USB3-DP PHY block provides a single multi-protocol PHY and even
> > if some resources are only used by either the USB or DP part of the
> > device there is no real benefit in describing these resources in child
> > nodes.
> > 
> > The original MSM8996 binding also ended up describing the individual
> > register blocks as belonging to either the wrapper node or the PHY child
> > nodes.
> > 
> > This is an unnecessary level of detail which has lead to problems when
> > later IP blocks using different register layouts have been forced to fit
> > the original mould rather than updating the binding. The bindings are
> > arguable also incomplete as they only the describe register blocks used
> > by the current Linux drivers (e.g. does not include the PCS LANE
> > registers).
> > 
> > This is specifically true for later USB4-USB3-DP QMP PHYs where the TX
> > registers are used by both the USB3 and DP parts of the PHY (and where
> > the USB4 part of the PHY was not covered by the binding at all). Notably
> > there are also no DP "RX" (sic) registers as described by the current
> > bindings and the DP "PCS" region is really a set of DP_PHY registers.
> > 
> > Add a new binding for the USB4-USB3-DP QMP PHYs found on SC8280XP which
> > further bindings can be based on.
> > 
> > Note that the binding uses a PHY type index to access either the USB3 or
> > DP part of the PHY and that this can later be used also for the USB4
> > part if needed.
> > 
> > Similarly, the clock inputs and outputs can later be extended to support
> > USB4.
> > 
> > Also note that the current binding is simply removed instead of being
> > deprecated as it was only recently merged and would not allow for
> > supporting DP mode.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---

> > +  "#clock-cells":
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    items:
> > +      - const: usb3_pipe
> > +      - const: dp_link
> > +      - const: dp_vco_div
> > +
> > +  "#phy-cells":
> > +    const: 1
> > +    description: |
> > +      PHY index
> > +        - PHY_TYPE_USB3
> > +        - PHY_TYPE_DP
> 
> I'm stepping on Rob's and Krzysztof's ground here, but it might be more 
> logical and future proof to use indices instead of phy types.

Why would that be more future-proof?

I initially added defines for these indexes to a QMP header, but noticed
that we already have PHY drivers that use the PHY types for this. So
there's already a precedent for this and I didn't see any real benefit
to adding multiple per-SoC defines for the same thing.

> Just for my understanding, would USB4 support add another qserdes+tx/rx 
> construct or would it be the same USB3 register space?

The TX/RX registers are shared by the all three parts of the PHY (USB4,
USB3, DP), while USB4 has two dedicated sets of PLL (serdes) and PCS
registers.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
