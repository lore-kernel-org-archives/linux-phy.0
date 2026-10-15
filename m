Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42465CCA464
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 19:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HVmlKB8r4gG2CwXdnoaAjQHvPbwOiMtStCCgk9X60+E=; b=xJ7Glcv+12wceD
	OJWayjU501AawMBj5XJHB8rq/mc6YFaOcIrbH2S/YMSKXl6OjrU8Jt/4gCa83aWs+4ZcmxZ15cmLi
	Ua0fGID+KpnxGl0yQQpMDKRT3ql4SlV+GIDF2kpi0YqJWt4/HquWewGjVd2H5tBkN6yk75xXB99ED
	TmRjXmO8oJEzs4+2cY2sqdoyhLFLxW4a+1+ZvIg8rB+oCVOa2zcgVb8LdwrUBJSaGAMw0/ZX6OEpE
	GldxfFShDlqSkfzFR1BK4cKeap9OWfqj8j4bjqoPru7LR+LnkX/4/tysSyhgIw02hakJKcDGkEq+i
	klJp7z2S6EBqv1PjMk8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHQrA-00000001ETW-3hO2;
	Thu, 15 Oct 2026 19:11:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHQr8-00000001ETC-3thr
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 19:11:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 52D7D40DCF;
	Thu, 15 Oct 2026 19:11:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E871F1F000C4;
	Thu, 15 Oct 2026 19:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792091470;
	bh=oXmNpCPOc7PrRNagDxNj32NtDgAynuREgwko8j7L/e4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MJ6QBdLESoihs7ojJe0WyX14k3HyCS8Zbur1LvFynwMgVseVTywHsa3dXvK9LEgkd
	 Xn5RJd4VwJ0inw54iet+mqd05a5EQXQq8EH3g8+PLSEKT5oCAhl9+BajdAoetf4bpb
	 5CBLMz/bQnpgIfbqShg4vBb5a4q9e69J0JwawMjZKDeI/VhE4DCYa8rvoQ7/JcEFHe
	 EVBqnrASLT0r/5CTVkRpYnuaY4pW4C6sbA/Z3ImBBWkPxPE6Tb85WL1/JJAwxowah7
	 GhX+E0i+tOs9kf7VGQ1XzGFcFpT66v4YwhISVI3OHliG9CGCi4+XOkm0uu/3coJvsH
	 g5YVaFufPGFsQ==
Date: Thu, 15 Oct 2026 14:11:08 -0500
From: Rob Herring <robh@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: vkoul@kernel.org, devicetree@vger.kernel.org, olteanv@gmail.com,
	conor+dt@kernel.org, neil.armstrong@linaro.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: phy: qcom: Relax required supplies
Message-ID: <20261015191108.GB5059-robh@kernel.org>
References: <20260921232603.3129898-1-robh@kernel.org>
 <20260921233422.E6B0D1F000FF@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921233422.E6B0D1F000FF@smtp.kernel.org>
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

On Mon, Sep 21, 2026 at 11:34:22PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Medium] dt-bindings: unintended schema relaxation for qcom,ipq5210-qusb2-phy
> --
> 
> commit 69ee638f4004f6e325a963f3b804b3c1cac5c6fb
> Author: Rob Herring (Arm) <robh@kernel.org>
> 
> dt-bindings: phy: qcom: Relax required supplies
> 
> This commit relaxes the requirement for three regulator supplies in the QUSB2
> PHY binding for legacy IPQ6018 nodes that do not describe board rails.
> 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> > index 001fd0ccc9852..2516eab7f6d32 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> [ ... ]
> >  allOf:
> > +  - if:
> > +      not:
> > +        properties:
> > +          compatible:
> > +            contains:
> > +              enum: 
> > +                - qcom,ipq6018-qusb2-phy
> > +                - qcom,ipq8074-qusb2-phy
> 
> [Severity: Medium]
> Does this unintentionally relax the schema requirements for IPQ5210?

Yes.

> Since qcom,ipq5210-qusb2-phy falls back to qcom,ipq6018-qusb2-phy, an IPQ5210
> device tree node's compatible array will contain qcom,ipq6018-qusb2-phy.
> 
> The 'contains: enum' logic matches this fallback, which seems like it might
> incorrectly apply this legacy IPQ6018 exemption to IPQ5210 nodes, allowing
> them to silently pass schema validation without the required regulator
> supplies.
> 
> > +    then:
> > +      required:
> > +        - vdd-supply
> > +        - vdda-pll-supply
> > +        - vdda-phy-dpdm-supply

If these are compatible with ipq5210, they can't really have more 
constraints than it.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
