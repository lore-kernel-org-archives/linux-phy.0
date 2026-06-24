Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6EFECDB470
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jun 2026 07:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxU2nfScMIBai0hLBtKuZ6pHV6vN70R4f4z2TM0Xaf4=; b=lzjXTz0cd6Wpfy
	oSNL7WB66Rn88V/kXK+BJoOmqU/OLgCu3nPUD84DzGdxLRLcSkZzJZ8GpByA1NMEnVqoH6p2RwxHF
	BQ7Z0g+3K+iX5Y2RNOOWxPn8J1qyW3O/9/UG9//EmYnUxmht7pGFYPqTacNHHYPwHlkTLQ5oahvny
	sP89etmKJwIQVjuKImaGh9LWe/suIxwn6lloNvjgEXs9LUvr9xn1fu7uxLFfI8yJZbIbt3uXFqMi4
	5debRuTXogBBcES+kS7ld7Oij3hLpxwKow1VovOD+2giX1xo7fAiEtXRlpIXiex0MqPeE8HG7l+Vl
	QAFlfVjuU90UFNVS8R5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcI7s-00000007KEV-2NoM;
	Wed, 24 Jun 2026 07:34:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcI7r-00000007KEP-1CAv
	for linux-phy@lists.infradead.org;
	Wed, 24 Jun 2026 07:34:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8FD6E601F9;
	Wed, 24 Jun 2026 07:34:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 528831F00A3A;
	Wed, 24 Jun 2026 07:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782286462;
	bh=jw5OK81sQD3kKGgTDuDA8IyBvUD5/4jYGGBsF254TUg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Hm5edgxzhpxzidArSTgSKaH5r/6iwJUiAMg2PpJyAsb+LvisWHpYnwA2mNwcq6uUE
	 MrqAgeY+tVcvpUmR/ZxQaq55l8rqiKRDNZyb+LP/9qt6DkE8LyQJ158p1GMUh3X1m1
	 0yVA0+jy1pHOedr79ew5y6RE7Yz85bFmqZlB8ns/i24/8keNkju/nboTFYgMXyXT+J
	 ruAexHskfo8oXknxRhD5w4qWlxJTQwKsPGThzzP10uwkA2BlL5lN2G+VgpE0r0mTgI
	 WugMOzWNCx2GR2LovP5UvzQgeOHmAxGVcPF/NOdymbSW7dCuBwJmF8gsQBH540BA58
	 xCULuEioDep+A==
Date: Wed, 24 Jun 2026 09:34:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: sc8280xp-qmp-pcie: Add
 vdda-refgen supply for Glymur
Message-ID: <20260624-small-grouse-of-support-7cdf2e@quoll>
References: <20260623-phy_refgen-v2-0-4d15983bf91d@oss.qualcomm.com>
 <20260623-phy_refgen-v2-1-4d15983bf91d@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260623-phy_refgen-v2-1-4d15983bf91d@oss.qualcomm.com>
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

On Tue, Jun 23, 2026 at 06:05:17AM -0700, Qiang Yu wrote:
> The PCIe QMP PHYs require a stable reference voltage provided by REFGEN,
> which in turn requires two separate LDOs to operate.
> 
> Add vdda-refgen0p9-supply and vdda-refgen1p2-supply properties. Mark them
> as required for the Glymur PCIe QMP PHYs for now; other platforms having
> the same requirement and can be added later.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
