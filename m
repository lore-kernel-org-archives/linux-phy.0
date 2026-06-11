Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 426AACD98C7
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 08:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P41OYF71DekaG9VeETHwSmu+tzS7bcFH0AGm7OmVPus=; b=DWqwuhoAsI4TT4
	yeWPbrL4x0jiNCi2LMZHYX/vAwg0Xa/R8jvCyoU5nBFAKgO2YNWw5oAsi6X859lSYtaZhsdmB5EaA
	uSuge1tSdy4jKYrLroF8WLJ3JFbX6Veq3dWzCK249AbwjBW/dcJRnGppYpQSi3h0b7HVhEl7dD/ym
	8weLVUgfMuuH1yNgJw826C5R4ml/ByL/hXxwcyxgliFWmlk7JjtBqKrzSWZBAt/Fq1ekpwrwwCDy6
	i7lfLrTApiRWXe5eXIwj/SKVjGDOCQwp2JWoiJM8vsqzLfzZ3MnncyESmK56TExD+VkqbBqtr4QuQ
	zP+CUY+Lmag5idEJC6Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXaf4-00000008zjs-33yY;
	Thu, 11 Jun 2026 08:21:14 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXaf3-00000008zjh-3f3l
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 08:21:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0599D60052;
	Thu, 11 Jun 2026 08:21:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20A451F00898;
	Thu, 11 Jun 2026 08:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781166072;
	bh=8DystJi/J+n75a0MQ4yqnrjh1EgH4OWWf/1bAsAyNH0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Jw71aTjJhDfC7QwqT0B5242fX8E51Ivy391ILfKkqASbppqVlWlaheOp/8lwa+q0b
	 LxvHDC4M1Q7gB9q4XldQbZeB5IvNBt1opBmw5tr+U8SD96e6t1aZ5WLQcL3KEkXDOI
	 Dn6GOmpyFkiQa9e9347fwzAmQlbuVdrLMaO4SxF2N0OpDpDC+BVOnI89z5ziK/X0fq
	 Vhcwkc0rDnCyDm053+pUajXK2Ee/jQDFH9KudoiCILD+J2LwDtQ/W/n6hDZYsovNXV
	 K79EP5g1eF/iut5+wkq2mq+wpnOlIm24RHrCTa487rs4hoE/kx14wSezO+Ft30SMca
	 eWfet29E9t8Xw==
Date: Thu, 11 Jun 2026 10:21:10 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document
 the ipq5210 QMP PCIe PHY
Message-ID: <20260611-talkative-formidable-fennec-ad135d@quoll>
References: <20260610-pcie-phy-v3-0-334011b378d6@oss.qualcomm.com>
 <20260610-pcie-phy-v3-1-334011b378d6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610-pcie-phy-v3-1-334011b378d6@oss.qualcomm.com>
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

On Wed, Jun 10, 2026 at 04:46:08PM +0530, Varadarajan Narayanan wrote:
> Document the PCIe phys on the ipq5210 platform. The 2 lane phy uses the
> ipq9574 as fallback. The single lane phy is documented separately.

Drop

> 
> The ipq5210 has one dual lane and one single lane PCIe phy.
> 
> The dual lane phy is similar to the dual lane phy present in ipq9574. Hence
> qcom,ipq5210-qmp-gen3x2-pcie-phy is documented with ipq9574's dual lane phy
> as fallback compatible.

You are repeating the first paragraph.

> 
> The single lane phy (qcom,ipq5210-qmp-gen3x1-pcie-phy) is documented as
> specific compatible.

Because? I asked last time - do not repeat the diff. You explain here
why it is not using fallback.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
