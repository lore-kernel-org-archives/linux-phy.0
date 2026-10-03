Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E6BFCA5FDD
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2iUToGq6aPELEu8o+aPXizDI7Wu7TGTUo+oK4RsgVI=; b=HmBmuJ1osiRq/q
	R3B4Np6G9D9/jgSwKuAgVe9yMB38mD9dH+QnbEPz1TAfeyhpUtu0YM1DoWebPOqhMMFrDjCVz+egj
	wlSr0S1kTwZEBXefnGxetLcXttKva86zpfYthJ7tO5RHmRycAsNjSpX7Mh8TlEuMXWa3kRYWM416G
	id1F7mmI3prxm62x+5G6s1HruJ+RfL+WzFBSfil6N31oyOZQWbXER8oMgBNnJhO93f8nQ4vX8QBaM
	6tfLw1dkIX0t5mybaq1shvMdVgIe4pp5TThfPCLjqmHROf2h94t+uej0mZGxQ0AvdGeoGfz1rb2hL
	BPuFhXESzKXO8naPPmww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAj-0000000DHuH-0bxH;
	Sat, 03 Oct 2026 09:36:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAi-0000000DHtV-2b13
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:36:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 15D4F60A56;
	Sat,  3 Oct 2026 09:36:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD3E91F0089C;
	Sat,  3 Oct 2026 09:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791020207;
	bh=7gzunmSexxFvSdO6CQV0V+cHSmsOwsggeZ65H1G6LVE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=efutRHNo0mXv5gXDnQ+tGbE2ad864zg/a2diiPhhWdEfMCEwsuqaPXvoClgWYGCVp
	 6ILdp5yvGRPUQ9zL3Jv7GkWz4nPWiDq0rT4X5gypSY4TICE1Fu5R33WrKSVcdjKEEF
	 IS56BN+2WSPbCXLHVT8jmkDFMrue3LKo1Plc7Jc1hgQBXIRMy0OCIkcCDVyIXjCuzX
	 2X1E6jVXkN3gR/gthKJy3LU2A3C4qwA+EYYRna+d+K7GwAzPM9tyYDlCzaxKLwQ/EB
	 7efH6Tj7VHZJXQtnMJYW5ntIgCov554NZhVnJ7csTx/UR+c/Tn8wV2FSa5V1kXUsey
	 roebiVLoEaSmA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Qiang Yu <qiang.yu@oss.qualcomm.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
In-Reply-To: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v4 0/6] Add PCIe support for Qualcomm Nord
 platform
Message-Id: <179102020242.199361.10760570551982756754.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 11:36:42 +0200
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


On Mon, 21 Sep 2026 11:07:08 +0530, Krishna Chaitanya Chundru wrote:
> This series adds PCIe support for the Qualcomm Nord (SA8797P) platform.
> 
> Nord has a single Gen5-capable QMP PCIe PHY block split into four
> independently-clocked and independently-resettable ports (A/B/C/D).
> Firmware selects the active lane topology at boot via a TCSR
> configuration register, and the same PHY block can appear as a single
> x16 port, x8+x8, x8+x4+x4, or x8+x4+x2+x2 depending on that mode. This
> is similar in spirit to the Glymur multi-PHY support already posted,
> except Nord's PHY registers are programmed by Linux rather than by
> firmware, so this series adds the PLL, TXRXZ, PCS and PCS-lane init
> tables along with the power-up/power-down/soft-reset sequencing needed
> to bring each port up.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom: add Nord QMP PCIe PHY binding
      commit: 1a60038589285eec5b345f1da05ba04a185b8db5
[4/6] phy: qcom: qmp: Move qphy_setbits/clrbits/checkbits to common header
      commit: 63cfcae23b2b4ca43994d507f5f04cba0306dd5a
[5/6] phy: qcom: qmp-pcie: Refactor common multiphy handling
      commit: 6dd77bf6a10d0eb9ed17f5b6093b3511052084db
[6/6] phy: qcom: qmp-pcie: Add Nord Gen5x16 PCIe multi-PHY support
      commit: e397c8507e362a29ecfb4aef38b408f2de731526

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
