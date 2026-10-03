Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65000CA5FE6
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQNAuB1/LcFGiYWDTj6DF/XzulNXIyaXZgPvhgH0fns=; b=bVPrXIDzPbVCm1
	zHRz9MTK/cGrIqRgVcBMpoxB/l8oSiEIqF1WZ/ng859xjkeZTKi/5FwsjK5ncWfNXsnLh+dijvuut
	9Y+YkjvA3XVRCUnhFvXU9mkgtaLSKgQgZstS7MWyH99JOJ6ZAo1qAaBk0ZyrnPn7Ak+yTpGtD52ly
	Vo/cJaVpyY1NxcV3Zx7CJQGwCSiV6J8X6EnCRzFurhGIF7wYVkSvKnN+FpBUD/P2J985jc4Bf4hvT
	4sXe8BjPBP2uh5JyffuvVzM2AWn01Pleq495PN7n42+e3geWNn/QXLAg7fvE6slRRveboOIW6gm64
	2ITMx6s1myKLWOxx7H5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAe-0000000DHrZ-0SfP;
	Sat, 03 Oct 2026 09:36:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAc-0000000DHqr-4AY2
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:36:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 70A4460D8B;
	Sat,  3 Oct 2026 09:36:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 865411F0089B;
	Sat,  3 Oct 2026 09:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791020202;
	bh=sp6YDd78O/820ItCyYBtjYCAruI3E5mR39oKNIwVpgk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=eJVt/tm5zzliv5fQfmpC/C8fZR6Rgx/PyUWwtkjDpzTyxO3e2BJLg8cYr+xwhtlrx
	 NDZM/pGdpdslda30APqNy0X/GsS0gzZwFmQZbc7oZP1fSSOiYCLZiL5M5YnNnaW4iL
	 B5mx+c6UI6OquA2kHW5XFjdL1aNxZyhp28mQHBVt3gC0oj/jJTwYmzDEH7O8FIoxH9
	 LPSBkU3xaRQAf6UL2P1TEgvHcaiuHC/lG+bpl2MjVPo5WjIMDgTxfRYc6tztvEvDU7
	 RTzlLjXwAUjL3aVP+M5E/FgZbI3821vsgu6nqN/AmpVK4YVcqSkvZ3WaRuwk3OiKDb
	 MUnIA98scj5lQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vivek Pernamitta <vivek.pernamitta@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
In-Reply-To: <20260917-vdev_next-20260916_dt-v4-1-e2f22f67646e@oss.qualcomm.com>
References: <20260917-vdev_next-20260916_dt-v4-1-e2f22f67646e@oss.qualcomm.com>
Subject: Re: [PATCH v4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Maili PCIe PHY compatibles
Message-Id: <179102019925.199361.12695470504373601173.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 11:36:39 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Thu, 17 Sep 2026 16:32:35 +0530, Vivek Pernamitta wrote:
> Add qcom,maili-qmp-gen3x2-pcie-phy and qcom,maili-qmp-gen4x1-pcie-phy
> compatible strings for the Maili SoC PCIe QMP PHY.
> 
> Maili reuses the Hawi QMP PCIe PHY hardware, so the compatibles use
> the two-item fallback format with Hawi as the fallback:
> 
>   qcom,maili-qmp-gen3x2-pcie-phy -> qcom,hawi-qmp-gen3x2-pcie-phy
>   qcom,maili-qmp-gen4x1-pcie-phy -> qcom,hawi-qmp-gen4x1-pcie-phy
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Maili PCIe PHY compatibles
      commit: 926da02a917dec4b5188b76118318b471f14dbe0

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
