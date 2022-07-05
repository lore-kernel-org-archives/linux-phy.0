Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37EC1CCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txmFf/q14QaZuYN31oORXHtJ2QqcZ7mHTA8Y50Vb0ow=; b=a2KQqF5aY9GLsF
	WseFkSKFm9TumyIlwTpzEbvV0KULcdH20o/kGhULTd0K+w3BL0jZERwZ/T+ummgnz/ggMn2HL+vbo
	WtIuLKe8M74NkPIVtmcl7Y4dadrCKCTcK6ttHcqiOfvNm77GW8FbSvYDTDHh0XnNMFfk5yDl1VWFf
	zL3B03LgcCz+EgHxZmuTjpEWMTKX3Vmt9NXTU1YCvxMt7DwSibWIhRce5e+FJcNqnUeuCczp3FGdU
	+jG6CigRLTTxv3sMVQe4P5FK0fineBa0snOGCbarm2dlotk2Qx7CsjMC1BrrPO71zNO1vEOmWV+fP
	VJ0JWZGAYXTP7vvtxf9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8ffp-00H8EM-KZ; Tue, 05 Jul 2022 10:20:53 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8ffn-00H8D5-1h
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:20:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0CA60B81744;
	Tue,  5 Jul 2022 10:20:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5629FC341C7;
	Tue,  5 Jul 2022 10:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657016447;
	bh=RAkY+wvaF4GTKl/ePFJozpLmUoWkpkz/u3e8jPZsNlo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R00oG4MoK+jENJsN8NWEwyAabitOydRAZY5pVC5z1n47uXmbFpC97MmjcrYTNwocE
	 C0cHwv2nwRjBd9vQfF4PKuExDVcufw+rkkerk5ngbDT6ipv52cCTTD216KYP5n3KVd
	 Zq57LM46H3/Zv7UjtguPm42sQqeq/rpZlgJ7wR9UwRZutHARmyPoIpfj/VhCzEAoE6
	 TTG9izVBhvnvqyCbLpBndoRcTSwqLRWxiBeJGuxMM+/d7T4s6siDEmdGXBvrJT+fy7
	 CRjw43Pe7k8IMyZW9W6Ap2GVlqqiS+q0hfD8tCXCi94lzKGes3EzUN66FMQe1wv7sZ
	 owZZ+7QA8t+dw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1o8ffj-00055H-SU; Tue, 05 Jul 2022 12:20:47 +0200
Date: Tue, 5 Jul 2022 12:20:47 +0200
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
Subject: Re: [PATCH 06/43] dt-bindings: phy: qcom,qmp: split out
 msm8996-qmp-pcie-phy
Message-ID: <YsQQfwqmiQ7O3FdY@hovoldconsulting.com>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-7-johan+linaro@kernel.org>
 <46b0cdab-aa94-7f55-5d9f-f79a644f0fec@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <46b0cdab-aa94-7f55-5d9f-f79a644f0fec@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_032051_448923_FAFF489D 
X-CRM114-Status: GOOD (  21.32  )
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

On Tue, Jul 05, 2022 at 12:08:36PM +0200, Krzysztof Kozlowski wrote:
> On 05/07/2022 11:42, Johan Hovold wrote:
> > The QMP PHY DT schema is getting unwieldy. Break out the odd-bird
> > msm8996-qmp-pcie-phy which is the only QMP PHY that uses separate
> > "per-lane" nodes.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >  .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 114 ++++++++++++++++++
> >  .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  32 -----
> >  2 files changed, 114 insertions(+), 32 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> > new file mode 100644
> > index 000000000000..14fd86fd91ec
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
> > @@ -0,0 +1,114 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +
> 
> No line break
> 
> > +%YAML 1.2
> > +---
> > +$id: "http://devicetree.org/schemas/phy/qcom,msm8996-qmp-pcie-phy.yaml#"
> > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> 
> Drop the quotes from two above.

This comes from the current binding. I can clean that one up first.

> > +
> > +title: Qualcomm QMP PHY controller (MSM8996 PCIe)
> > +
> > +maintainers:
> > +  - Vinod Koul <vkoul@kernel.org>
> > +
> > +description:
> > +  QMP PHY controller supports physical layer functionality for a number of
> > +  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
> > +
> > +properties:
> > +  compatible:
> > +    const: qcom,msm8996-qmp-pcie-phy
> > +
> > +  reg:
> > +    minItems: 1
> > +    items:
> > +      - description: Address and length of PHY's common serdes block.
> > +      - description: Address and length of PHY's DP_COM control block.
> 
> Are two reg items applicable here?

No, but see below.

> > +
> > +  "#address-cells":
> > +    enum: [ 1, 2 ]
> > +
> > +  "#size-cells":
> > +    enum: [ 1, 2 ]
> > +
> > +  ranges: true
> > +
> > +  clocks:
> > +    minItems: 1
> > +    maxItems: 4
> 
> Define clocks here, not in allOf:if:then.

To remain sane, and to help reviewers, I decided not to do changes to
the binding while splitting it up which would only make them harder
to review.

Hence the split followed by cleanup/tightening of constraints.

> How about an example?

That's also a new addition to the binding and goes in a later separate
patch.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
