Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 981F6C5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 07:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRHIhXBW3q/WpcV6WS5paseOUf2MFMtHTrA/8uvtYjE=; b=lAtiw81zGqIcAH
	yKe3NfqMszqhmtTIxlwhnDV2sKOurXa3yyeDTzl6TVG/qE30n+cuWidw+QrlNF5O4wijUsOC+GBKz
	9VRVq+YwOdFxdlkiS51bZ7bWbbgzfTlB9P+OcB2fRvazUBkYwL8Y4IgIM+Vglv62yI5BY5gKrO85D
	osjyClHIrIrTA62cPYngU4F3MsnkterTsakrdJY/DroLosPdvsr4P5EAtEELJE6WNbRQX0x7C2sVB
	dpelfJ7QKzc+Udm6kMPNMRmjICH83EIWOasGwU4IYa9C+N8GLcQ9kGzmFraqHanWMOrOmfB4b2AsK
	mZV01AQnhN0iL1oYzzJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvren-00000005XI3-0bOf;
	Mon, 17 Aug 2026 07:21:17 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvrel-00000005XHg-1n18
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 07:21:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 85BFE60120;
	Mon, 17 Aug 2026 07:21:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD56B1F000E9;
	Mon, 17 Aug 2026 07:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786951274;
	bh=P2lBksvn0lgzSL25cOJI/uadjSTHnlaum8EICbKupuo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Vvhd2pZAhK4IsXz11Iop+rrkPfeizQJ+tvY5/Vypnl9xKuM0LLMXPnmuZJ7JghN+8
	 wmbZBqW2auyHOQ7f4Uci/zWDVCOJJLRoGYg9joDmnBVPs5ndaG8J+UUT7eUZcVkj+7
	 Ej1OUBj+utCposjtXPHprrSNoSByoS69BloGnLIF7HkEx4iFULdro31DRcodumh5IC
	 e7WpvlD0UyhHKqR4gPWik2BHhaDmCIXLDBwKKL1RJxGyvDxTbrety11pfwmwIThs/r
	 ZMGGwUTZo5G9rXEZ0yWcX6IieLIg75dFSwISOadJz+MKH1CYY95kzBQ2RcFiWPTrxK
	 RCoPQPSlcx2Qw==
Date: Mon, 17 Aug 2026 09:21:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
Cc: vkoul@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH V2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP
 UFS PHY compatible for Maili
Message-ID: <20260817-brave-wildcat-of-psychology-2ab7ea@quoll>
References: <20260814070112.1676300-1-nitin.rawat@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260814070112.1676300-1-nitin.rawat@oss.qualcomm.com>
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

On Fri, Aug 14, 2026 at 12:31:12PM +0530, Nitin Rawat wrote:
> Document the QMP UFS PHY compatible for Qualcomm Maili to support
> physical layer functionality for UFS found on the SoC. Use fallback to
> indicate the compatibility of the QMP UFS PHY on the Maili with that on
> the Hawi.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
> ---
> Change from V1:
> 1. Fixed Signed-off-by chain order.
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
