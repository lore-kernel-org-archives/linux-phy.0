Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05D43C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 12:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1JnW/Un1yI/X2fDuOM4C2xQFRABl1Ht7KyoYCJI4NQ=; b=fGjIDis3DDdnKD
	Ym4Zfl9aV3YguSOzYL9wu4wNrhVO/Ro9Nt00U3923aJBkpgCRlHs8SlhAXz4EMQUeEiD5p7lQcrRA
	P86IGfo86n4SCXXj6/Nz2QLnbCP/iodK6Zj+3EOiYsCJCqLNccvZkWXIiXHdxcHP22nSOQZszf/EF
	pYm9bFWVbF0Swp6EvRGzLgmzpfMLGeLNJODpqmkynUrUv+gWThSnJI8ktWSNMAptfham9YfiJqlR+
	YBPm2R8u5HO+XPLYIHeJZ6BkCZeUuM8POpcD3Q/wfiylHSRmLC/J9IQPrAqD6ic9wJBpF8DBYu9Az
	T9/RzHL400cqxniTgeoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hSG-000581-Ax; Tue, 05 Jul 2022 12:15:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8hSD-00056I-A8
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 12:14:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BEDE061985;
	Tue,  5 Jul 2022 12:14:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67EB3C341C7;
	Tue,  5 Jul 2022 12:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657023296;
	bh=aLQZfrDM31ozGifv0mYlP/DyenjNLWBGnOgZJDGlVT8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=he/uxbDIQ6fWWKA1hja3r9GYlQ3Lq1c2ri8Pu6het+AFtdNo2nMZol5QV0wTjX9eW
	 flevcHdytpywKNMHJ4F7wkq6+8Bx3rhmd37lmXUnvmZtXC3y1ycBFjlnKK6tkmNho4
	 awonQ27J4vOs34K6Xk7W3kFLifXba6wMif6pdQ5Ew9uWcciUzUUQiIsyyE+gOnecu9
	 VgnOPoXUlmC3YpPnjvxDhsFhONtcxi1ZJS9khqUHhhnGv93Y9rMTw0CFAXn2wNr/Fj
	 y0jigs/3kyAZocJWcgJJIgvDmRDT6jahb/MTt3a0KMB/WQtyDJiHAFUTP+gruO8Yut
	 G98uwK0Uo5o2w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o8hSD-0006Dv-Dm; Tue, 05 Jul 2022 14:14:57 +0200
Date: Tue, 5 Jul 2022 14:14:57 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 11/43] dt-bindings: phy: qcom,msm8996-qmp-pcie: deprecate
 reset names
Message-ID: <YsQrQfvxauIGy6Ug@hovoldconsulting.com>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-12-johan+linaro@kernel.org>
 <2a5fec43-352c-b304-e0c9-761e1d2b67ec@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2a5fec43-352c-b304-e0c9-761e1d2b67ec@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_051457_435460_AB56B374 
X-CRM114-Status: GOOD (  16.56  )
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

On Tue, Jul 05, 2022 at 12:12:25PM +0200, Krzysztof Kozlowski wrote:
> On 05/07/2022 11:42, Johan Hovold wrote:
> > Drop the unnecessary "lane" suffix from the PHY reset names and mark the
> > old names as deprecated.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >  .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 20 +++++++++++--------
> >  1 file changed, 12 insertions(+), 8 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> > index 7931b1fd1476..0bea8270b37e 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> > @@ -94,11 +94,15 @@ patternProperties:
> >            - description: PHY (lane) reset
> >  
> >        reset-names:
> > -        items:
> > -          - enum:
> > -              - lane0
> > -              - lane1
> > -              - lane2
> > +        oneOf:
> > +          - items:
> > +              - const: lane
> > +          - items:
> > +              - enum:
> > +                  - lane0
> > +                  - lane1
> > +                  - lane2
> > +            deprecated: true
> >  
> 
> How about just dropping reset-names entirely? Marking entire field
> deprecated and removing from DTS? The same in the previous patch.
> 
> Usually one-item xxx-names do not bring any useful information.

Yeah, I agree, that's better.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
