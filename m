Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A9F7C61DB9
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 09:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1FxIDm3S/KxWQ34COsKluseFLyy7HfA9KmVQAdCNYk=; b=A4KqlJyDqOGg15
	wSTvmaMnv70UN51gCwwgI1ukksUaI8ZbV5KZYuScpPADl+YG4lMw+mKfxBF9fYw3eAMUk4DZN2TNc
	QsqgrRRQKiv1KZJQOFyShXlKM5Cj8Ghn8vY29G7HNmLn3oNd5RCZ8PxuyJaWDVN0yx1WqcCgk8DUP
	zD+zL0XsIKyfsXbeMTzB81k3iFvmokVdYAQ9giZmqQHuIIQcYIJvv2GmK08nQQNMF70c1M9Ego708
	OWQmgkhid6N1Hl4we29R5jMBHk8MGn94Ib3bXH9fu2+350XPWixW2PdAWyG7iLvWmKHuFHnJfwaDr
	YLjWWADzANHXIBd4klzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzswR-00000005TxR-0sIl;
	Fri, 28 Aug 2026 09:32:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzswP-00000005TxI-3v5D
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 09:32:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2ABEC601F7;
	Fri, 28 Aug 2026 09:32:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BE751F000E9;
	Fri, 28 Aug 2026 09:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787909524;
	bh=SWdFgHXgcO6u9mKiLK8HiS9oTMZunLS3Odf1SczKC9Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DgMCTpVTqpZ5ORSUqJUt4fLSNxg1q+bxaD3HU/mipuCtR4wuV0zCQcYETfGHw0T1W
	 x1Dkrcsf6Z6lL5RcNdghVjbsXO3vbXmkCCGCWM/qnqsFX76etZXjI1W9MrBWhJtE1j
	 zi7QKAz77ryE22MBr/s4sXwIzFEj6yZHy9R8z+2LwoEmtsu9Dj/co/4QFUWkEsJU2H
	 KkEV1V5m0UjllgrmR7+91X2QqDPrVgBu1fEM9GRKaLLdLbi9HATPUDbMmFWdCe65y2
	 fXU2m+yxRqVbWwngJVOaAhSJq2bJ+dGKen4hblBtJawE+vTUvCXUWjuv5g5JflODPO
	 ygi2rIyLsoFrQ==
Date: Fri, 28 Aug 2026 11:32:01 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3 PHY
Message-ID: <20260828-active-tourmaline-doberman-fc680b@quoll>
References: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
 <20260824-phy-v1-1-257d68a3210b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260824-phy-v1-1-257d68a3210b@oss.qualcomm.com>
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

On Mon, Aug 24, 2026 at 12:07:41PM +0530, Varadarajan Narayanan wrote:
> Document the Qualcomm IPQ9650 USB3 QMP PHY compatible.
> 
> Use a standalone compatible because the IPQ9650 PHY has register
> configuration data that differs from the currently supported SoCs and
> should not fall back to an existing definition.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml         | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
