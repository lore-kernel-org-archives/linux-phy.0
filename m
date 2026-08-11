Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAE70C5B56A
	for <linux-phy@archiver.kernel.org>; Tue, 11 Aug 2026 17:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efX+NVAgO4zWyzkzw6c1hXHS5hgFV1Q6CibzMZCGTP8=; b=o+SMpXIUtfyKsz
	N4MzCLiZiSM2DQWhTiJZ1VsHAhe52wIYGnZiqX6uagYTxPFFlFGunC3pE5w/4IOHFJD9OPyKj2/wC
	KWg1r+IXXf3onwiO0NtS2NtKTcE8JpeiQe85M2GAYIiDQw+/4cfcp7j+u5N7RRiYBzV6GNDjen84J
	u1TRXZ6H5g0p81Zypu0w2bTHxrWSb+7dUWZcjzn5tieVCs4SAPm0vdd1j/KHc8LHPIjegsk8pRkl7
	2Ih0PB70n2+Ca62OMev9aBzDS0e5nJmijBzYz+IdYtWfDMlcsRgJgsaxzUTsKib0GqbfD/FMRn1f+
	ZbPSfblZ+Jq7sFeMjcjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtpsr-0000000EaKf-13Fi;
	Tue, 11 Aug 2026 17:03:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtpsq-0000000EaKP-1PLz
	for linux-phy@lists.infradead.org;
	Tue, 11 Aug 2026 17:03:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E625C43744;
	Tue, 11 Aug 2026 17:03:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA43D1F00A3A;
	Tue, 11 Aug 2026 17:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786467803;
	bh=R7+SYlMBF01F6LVt2QHUIxWBhZCgFZwi08xjiut6eoo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=XV7P5E05kYPlhke/8MmWCKe4LvpoCbUHhX9zWNiK9VPiSpUhjtYNSjUlBlmHdvuHT
	 uFlgw3MNA+bFgsNn5kPkeqaOehXBDGCmdkPS9C92tTpmaeJYd+LsdXKGAQlEPNKPoE
	 zZ+1RvsDJ1zte5oy2g7EvobLXLEmSaXnARVfu557n5zLoZ0q3jp3m6G7WOujOqpMqf
	 7XrKrZieLTEaP8ksXXwk4vTzDksWc3ij12KFYaxHv/YI724WZbS5B5FrthyZQMFZB6
	 ycLI2e0Rdk9gyEEZIA6NAl71XCGD1l2lRpZ759iPgwiOcJche/XW15E5jF9C3shkR0
	 jP1V0HcrLyRGg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
References: <20260730-glymur_linkmode_0731-v8-0-a455265ad8bf@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v8 0/6] Add QMP PCIe Multi-PHY support
Message-Id: <178646779847.1081354.9443968795839438752.b4-ty@kernel.org>
Date: Tue, 11 Aug 2026 22:33:18 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Thu, 30 Jul 2026 22:13:49 -0700, Qiang Yu wrote:
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
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom: Add Glymur QMP PCIe multiple link-mode PHY
      commit: 5619458024925b3a488f9046b3ab26647582b99f
[2/6] phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver
      commit: 1781be3c8a5ddf40f5f9e7b9dc32cc577d491062

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
