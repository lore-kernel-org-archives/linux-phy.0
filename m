Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B353C44512
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jul 2026 06:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWtks4xEPW4cd0mNc0uOLB67FjUOnO1KSWwschvvxxQ=; b=Rm3oYeh3NuGOy3
	+03mydzl1jeAfzrPRH7Ccw5gYzBX6do6vsE2iNZwhFqse/GjgGx+OdB+qpg5Z+L1nJkesa4WyqvAr
	7uG0JI6cUzyVlqwDETPllRYUF3bN1tWkngFBTPOzdv+54l5t8AkPKOsj1jtgcZi9dV6R0cg2YhOkY
	Ngh3/SWxkHtQNf7XOmCwYT16Zgp35+6rIktbB30P5jxSmIGl9y+Gn8fw+tau82ky9Z0vjHYOzhk/Q
	t62m7I46LRybsbTpDyqTN1wV6Cm8/iRPn36+mzELrxofqTRv12q1sj88yMpmIu1Fp41Zgv+kUDLcA
	HuwAvhrL2LvIBpQIs9fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlLFe-00000004nZo-3y9J;
	Sun, 19 Jul 2026 06:43:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlLFd-00000004nZi-2rZZ
	for linux-phy@lists.infradead.org;
	Sun, 19 Jul 2026 06:43:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 75DDA42AAF;
	Sun, 19 Jul 2026 06:43:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBF451F000E9;
	Sun, 19 Jul 2026 06:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784443428;
	bh=SLQl6/ZZUHU837YWcDE8ts1N0/0M5SUGrVQi06gSLno=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UQdnVp+8dvCoRsUVrVpgGCNt39oqqv8caElyU3XF1drfpkXoXs9GJwY6VJdBZL/qe
	 x54S5jVM6fDfNwfQoKv5n4vIu5NdrH+XktoF72MO7SIwlJ+1je2FczVBTLVTe3dvsX
	 b5JvUAE5wfInIzK7x3GeP5b99QUoXQd3mOTlLugXRY+MPFLZmepafOgyxx41R2sZEp
	 ElysEV9Ib0EfOYV7f7MCMxnYxZ0ZOIJYtETqCu/pYYRYyW9TURJhoGLVLpvSnVoYZP
	 7cE0TqfY1tjfXVa3Mf+bf9qNH82IgnIpa8jZyMjyKJPXumc2vLsCJCvp7XKL2BgKln
	 kPFro7/CZcx4A==
Date: Sun, 19 Jul 2026 08:43:43 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/3] Add QMP PCIe multiple link-mode PHY support
Message-ID: <20260719-beautiful-pheasant-of-variation-61b8cd@quoll>
References: <20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com>
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

On Fri, Jul 17, 2026 at 02:58:32AM -0700, Qiang Yu wrote:
> Hi all,
> 
> Some QMP PCIe PHY hardware blocks can be configured through a link-mode
> register into different link topologies, such as a single wide link, or
> multiple independent narrower links (e.g. x8 or x4+x4 mode on the Glymur
> PCIe3 PHY).
> 
> Earlier revisions tried to extend the existing single-instance
> phy-qcom-qmp-pcie.c driver to cover this hardware. That added a large
> amount of conditional, multi-PHY logic to a driver whose data model
> assumes one PHY per node.
> 
> This series adds a dedicated PHY provider driver,
> phy-qcom-qmp-pcie-multiphy.c:
> 
> A single PHY provider node describes the shared hardware block. A new
> "qcom,link-mode" property points at the TCSR syscon register that reports
> the active topology; the driver reads it once at probe. #phy-cells = <1>
> lets consumers pass a logical PHY index to obtain their sub-PHY. Match
> data is indexed by link mode, and each link mode has its own array of
> per-PHY config tables, so one shared provider exposes a different set of
> logical PHYs depending on the active mode. The driver inherits the PHY
> settings and link mode already programmed by UEFI, so only the no-CSR
> reset is used, and no PHY setting tables or related structures are
> defined. Each sub-PHY owns its register regions and power domain, so in a
> bifurcated mode the links are brought up, and powered independently.
> 
> The driver is implemented and validated on Glymur, and is intended to
> be extensible to other multi-mode QMP PCIe PHYs.
> 
> This series depends on a prerequisite patch by Krzysztof Kozlowski:
> https://lore.kernel.org/r/20260420133616.88740-2-krzysztof.kozlowski@oss.qualcomm.com

There was a v2, still not applied I think:
https://lore.kernel.org/all/20260609141608.354186-2-krzysztof.kozlowski@oss.qualcomm.com/

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
