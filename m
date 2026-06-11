Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95205CD98C7
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 09:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwFke6PaHGn8ahZnPnMap5c6+ajwfUaias3R/rwsyew=; b=UR5QHuFqO5WB8F
	426S/NP72ozbwzcJnBP8bW6BH2oMUqTXnlyAemQERIcNhd60oYAIPuG72m2/CMoErimHxDRpDqjeH
	r4mspufY5avzsAVBvF4Y0uUVMaVVjYRKnA0ngR+ddAU/adxT/cYVgRv4/s5p7tgTpJhWNYmh8lEsb
	+btnpFIEh9S6f1k96vBgaMjHDVuRi3fmFMpH+f8oso3vtOqgvcdOo6vTHgg6ApTcKSqogmvYSBhSe
	UBz7c5K1YFPi9dLJ5UFyqQcgv7kq50Qv3TqpTqN5pdYu76q16PDljFFaHBXOtxUySeoxTQpaXsPvz
	8XipL9l3Ntk6HbKAs6qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXbVH-000000096we-1LJb;
	Thu, 11 Jun 2026 09:15:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXbVF-000000096wE-2x4T
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 09:15:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0A93560052;
	Thu, 11 Jun 2026 09:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25BFF1F00893;
	Thu, 11 Jun 2026 09:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781169308;
	bh=7JXC/K/YYswCgRaONX63U5Y+XfOJObbnQSDICLmsE9s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=C+2ob+7N2q/Y4M88HEOUYnGbTnKgY9zysmYinGNyA8rRdr9LH6UR5MK49d84rBrXQ
	 Nt/JNsdnI3FEp9oN4RpKebghpbGBhz5eOryavbOnECa716OVqTUR3qShmV8ue25qnH
	 9MsJKOqfc9MFmUhYvvzIhkb8cq39sIjf37hp5Kj2BrmBFTdx9zP+l/LJMZUg0aMuTB
	 Y1lexqTBu7fBJ7kQM9AwhiCfktbW0TDt5DOe45wBVJ9y35hHcTXzJ5NhU2D+bl7QW5
	 9uVVYz761uk5YAa/tZlItZI46N9WrdiWl2Za+pe/ZepZlkK3qzIE7R5FYOv/xfn7fr
	 8vtIBtnOen/1w==
Date: Thu, 11 Jun 2026 11:15:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ramshouriesh <rshouriesh@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Aleksandrs Vinarskis <alex@vinarskis.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 8/9] dt-bindings: phy: qcom: add MIPI CSI2 mode constants
Message-ID: <20260611-happy-shapeless-capybara-dadd28@quoll>
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
 <20260610-a14-himax-hm1092-v1-8-0c9907da47ed@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610-a14-himax-hm1092-v1-8-0c9907da47ed@gmail.com>
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

On Wed, Jun 10, 2026 at 04:39:33PM +0530, Ramshouriesh wrote:
> The CSI2-PHY binding references <dt-bindings/phy/phy-qcom-mipi-csi2.h>

No, it does not reference it.

  $ git grep phy-qcom-mipi-csi2.h

Zero results.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
