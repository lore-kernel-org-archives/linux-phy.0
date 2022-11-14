Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92195C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 13:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7JIa/ZmXyNdoaoN5oJfeiBHm5WxQPODR2RMgfTdIGk=; b=3B046rYv9TrNLO
	EnYDkyKlHOp47WFz32KlV90KeyvNXwEnMWJFmp/RyboR6UQYFbFuXvgCR/d5T7rXssReZl/wMbizJ
	uY07V/1PxdT/2ZITKeFYBL1sD+qUswQTklat4D3W7lXqeXgG+MBZezaZcmhSaJCF16gW8XcoW5j89
	YyDrYCR0/Y39SMk8JUlSgfBX3gEIKz19zzJWMC1KrAGN1F3fkXk9z3FdSzx77sENewgFVm5f3bevx
	wfbQe/8Rhd0D40NtBDdmCtzS15jMf2Eyt66nBC5DlLS3Obo2BQFMvJ43fTIFIRPLA6VySTumJLLFa
	DgxfYGSlL8QY4oylCjDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouZdz-001Hfr-Gg; Mon, 14 Nov 2022 13:36:59 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouZVj-001DXm-Us
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 13:28:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 7FC6ECE0FFA;
	Mon, 14 Nov 2022 13:28:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0049C433C1;
	Mon, 14 Nov 2022 13:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668432503;
	bh=nNGW2Iswzw1r+ZrdtLgk9X55bimO0kAAwJsujwLckSE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pzSzze975EcOZvvpsghnV1MIb+1kUOQwwsRIidu+qX1ykxtU9KmtV+YhZlsuLyq8t
	 LPbR4mCmuTTcAkqenp9lp64RpkqWcybV9TjPEr7LyPewO+/LjjzG4n5gcVUL+RVii9
	 Qh3/rb8Rh5NkI6Iglhyzm7Kn6JHbu74uUpxPzY+9TYPa4Hpbn0qQ85ISaUZHMxJOsU
	 60cfOt+rS3GI2MYFZXtx/mhVJkhrEx7q5xtJb4Ew1q8mTO9xDPowfgv8F2KkISanuu
	 xrfemjeLBOp7Oqqfry6BtNacnS1Ibjfcx9oM4U5CIZ/wvEJFdYVPqS2+mwrK5YIsgf
	 M5TuHmY+sIsmQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouZV9-0002p3-Mu; Mon, 14 Nov 2022 14:27:51 +0100
Date: Mon, 14 Nov 2022 14:27:51 +0100
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Message-ID: <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-3-johan+linaro@kernel.org>
 <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_052828_387293_D6454CBD 
X-CRM114-Status: GOOD (  22.88  )
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

On Fri, Nov 11, 2022 at 04:17:29PM +0100, Krzysztof Kozlowski wrote:
> On 11/11/2022 10:24, Johan Hovold wrote:
> > The current QMP USB3-DP PHY bindings are based on the original MSM8996
> > binding which provided multiple PHYs per IP block and these in turn were
> > described by child nodes.
> > 
> 
> Thank you for your patch. There is something to discuss/improve.
> 
> 
> > +
> > +maintainers:
> > +  - Vinod Koul <vkoul@kernel.org>
> 
> Maybe you want to add also yourself?

Due to the lack of public documentation for these platforms and the
amount of work involved in effectively reverse-engineering the
corresponding details from random vendor-kernel trees, it's probably
best to leave maintainence with Vinod who at least has access to some
documentation.

> > +
> > +description:
> > +  The QMP PHY controller supports physical layer functionality for a number of
> > +  controllers on Qualcomm chipsets, such as, PCIe, UFS and USB.
> > +
> > +  See also:
> > +    - include/dt-bindings/dt-bindings/phy/phy.h
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - qcom,sc8280xp-qmp-usb43dp-phy
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 4
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aux
> > +      - const: ref
> > +      - const: com_aux
> > +      - const: usb3_pipe
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  resets:
> > +    maxItems: 2
> > +
> > +  reset-names:
> > +    items:
> > +      - const: phy
> > +      - const: common
> > +
> > +  vdda-phy-supply: true
> > +
> > +  vdda-pll-supply: true
> > +
> > +  "#clock-cells":
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    items:
> > +      - const: usb3_pipe
> > +      - const: dp_link
> > +      - const: dp_vco_div
> 
> Why defining here fixed names? The purpose of this field is to actually
> allow customizing these - at least in most cases. If these have to be
> fixed, then driver should just instantiate these clocks with such names,
> right?

I'm only using these names as documentation of the indexes. The driver
doesn't use these names, but that's a Linux-specific implementation
detail.

I noticed that several bindings leave the clock indexes unspecified, or
have header files defining some or all of them. I first added a QMP
header but that seemed like overkill, especially if we'd end up with
one header per SoC (cf. the GCC headers) due to (known and potential)
platform differences.

On the other hand reproducing this list in each node is admittedly a bit
redundant.

Shall I add back a shared header for all PHYs handled by this driver
(another implementation detail) even if this could eventually lead to
describing clocks not supported by a particular SoC (so such constraints
would still need to be described by the binding somehow):

	/* QMP clocks */
	#define QMP_USB3_PIPE_CLK	0
	#define QMP_DP_LINK_CLK		1
	#define QMP_DP_VCO_DIV_CLK	2

Note that for SC8280XP this list may later get extended with clocks for
USB4 (once we understand how to use them), but those would not apply to
the older USB3-DP PHYs, so we'd still need to describe that in the
binding somehow.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
