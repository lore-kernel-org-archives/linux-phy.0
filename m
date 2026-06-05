Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD513CD6E7B
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jun 2026 20:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L30xQ0t7GluzxII9bIJOoREhFnjyx/n2UIFbg/j9zFc=; b=x+HZ7YQAnVsXG8
	S7bW+Y/TknYi1awibSPHNIyyvQ/UrPqHFL2mINq07n4xNPs5vaJ1s3SNe+LJY82YNssfYu5fJDYZx
	Hh9N8p1W6i66nt3vvH2dEekdyQIHslu+hL+qQbLBVRSkQRV3o1oKVP4OCc5hifN6Ap746tlK95/nj
	D08TSj3hfA/xdhqDU61aCMZ0tW6D4+karSKjRkZza4eYFj584nPEUFAm1kr/zTYuDz95Ge/I82pB7
	lgNC7GRLXsd/JyqZZMYQ/OSm0jrMAoZdJrWuB14cECMz5fImB7dkaoQPG0yK5wKpnHVkBjLTdMedZ
	EBfIJDaAY4WtOLhNp6Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVb7N-00000001A72-2dzq;
	Fri, 05 Jun 2026 20:26:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVb7M-00000001A6l-02Dz
	for linux-phy@lists.infradead.org;
	Fri, 05 Jun 2026 20:26:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EF24E600AE;
	Fri,  5 Jun 2026 20:26:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C3EB1F00893;
	Fri,  5 Jun 2026 20:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780691170;
	bh=H4BqWzri2CxJu6pwE+muPny5iZ2OH8Gn8td2afpPXoQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CmlBOtbwclUlefCH6WNZfPW0j/fV5z3Y9rsLMwHEol4nSdVupg0g7TDUJ3Fetetx6
	 zMAYUVF9XZC/ET1H20rwgxofDaMs31rzxTPYcelx4AuAf7u+wzkQQktJBeP6KWZt6L
	 5YC48mf2/Dd8uBgbXmCyS7TwDnO0LtkMYRQl0t5kaQWTQ7Ac5ZAHP9VlJGHvVk+hkV
	 SVzFjYs4xu5qfz8FZJ2yqtupgbFxKrC1e91HEemoKVaoUkSdAJ43cBfQoonWPmyTUQ
	 AU4F2gtqY2E8WsefeuSjl3k1lC9wT6LcZvk7mzVCj9MiUdFh6PKHnBQC1DEndAJSmK
	 hQ4pWSbrJ8BPA==
Date: Fri, 5 Jun 2026 15:26:09 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>, Vinod Koul <vkoul@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 phy-next 14/16] dt-bindings: phy: lynx-10g: initial
 document
Message-ID: <178069116842.97729.11485900665784589365.robh@kernel.org>
References: <20260603131914.503053-1-vladimir.oltean@nxp.com>
 <20260603132059.503527-1-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260603132059.503527-1-vladimir.oltean@nxp.com>
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


On Wed, 03 Jun 2026 16:20:59 +0300, Vladimir Oltean wrote:
> Add a schema for the 10G Lynx SerDes. This is very similar to the modern
> form of the 28G Lynx SerDes, which is very much the intention.
> 
> There is intentionally no generic fsl,lynx-10g compatible string due to
> the hardware inability to report its capabilities, despite having a
> common register map.
> 
> We allow both forms of #phy-cells = <1> in the top-level provider
> and #phy-cells = <0> in the per-lane provider for more flexibility to
> consumers, and because the kernel code is shared with the 28G Lynx which
> already has that support for compatibility reasons.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> Cc: devicetree@vger.kernel.org
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> 
> v2->v3:
> - move fsl,lynx-10g compatible comment to commit message from schema
>   property description
> - make big-endian required for LS1046A
> v1->v2:
> - move patch later in series, right before driver
> - deliberately ignoring this Sashiko feedback:
>   https://lore.kernel.org/linux-phy/20260529125017.ifqunh52gdzhthdg@skbuf/
> ---
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 136 ++++++++++++++++++
>  1 file changed, 136 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
