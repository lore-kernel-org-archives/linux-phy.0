Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E7CEC2BA1A
	for <linux-phy@archiver.kernel.org>; Thu, 20 Jun 2024 16:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6xCNb3gekJOB0a0kRqOl61LHdvY5Jd4ErVWEcE3fsc=; b=T3U7mDoeI/fXpb
	ejbn2p2Vls2fyL8yfvFzVMrKsqEdHs9s0FGLMkZy+sE70eQZ3tuTNzuyy7HeoABic3Hc0p+gwwfMB
	vP72aBFGVakbKknUuSSyexdpSMrqrrPv6pxXE9syJShrLrtK83AaMxDT1COvwXQK4OEOR0KvoBsrk
	yrDlsixNoNWOyG8mp74drsVwIW9QIMsmkwj7aUt1m3l7w/QGKmN8qLLLNmwHyJ1dOOC8TAUx9/I1Q
	wZDkWVRxBtv9wc1LIqttYGdrcMacJ9IaSpXFp1vqMXLMx5fjJBFeIg8cXxeqeyeLvf6tAMU/HVrPf
	DLPVXxm6sZUlT57LFrig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKoM-00000005uBu-1geI;
	Thu, 20 Jun 2024 16:38:58 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKoI-00000005uB0-0P8d;
	Thu, 20 Jun 2024 16:38:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5058DCE26EC;
	Thu, 20 Jun 2024 16:38:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20B82C2BD10;
	Thu, 20 Jun 2024 16:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718901531;
	bh=fzwqwWemSVE2NweWJKvjoTPNMJPEDFI6TZNbVvd79bQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=mnyWUZKEv/lvIe6Ah41q8pRfQK3zNSsIYOlRwNiUwCGqnqVYrt402LUDFgyOukIt9
	 iqb8VSjp05Iu9yMZtZR24Tc3+8MOb8m4t8KW1Nsmaw+ZKJyAQqzTpkqb+BmVdbGn++
	 GJlpkdpnwZ+SaJAq+V5FfUoVyfl1myvbdetFDZCGuFzYgAydQGttBeA4Dh7P97Ah9Q
	 r4t4ha+DugcnenvJxeTnalG2cRd3b+zanLUosIxmd1L44OFMr7Me5xFPykVRZMAU41
	 R0iofwfsgt0zuIbuvxtaXFp2d3KawNHHwUODmnVGEKZdVwug3wa7BlzVe+ezrOXhqh
	 V7l+thSWVxwFQ==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: kishon@kernel.org, lorenzo.bianconi83@gmail.com, conor@kernel.org, 
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com, 
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com, 
 angelogioacchino.delregno@collabora.com, amitsinght@marvell.com
In-Reply-To: <cover.1716031610.git.lorenzo@kernel.org>
References: <cover.1716031610.git.lorenzo@kernel.org>
Subject: Re: (subset) [PATCH v3 0/4] Introduce PCIe PHY driver for EN7581
 SoC
Message-Id: <171890152570.219744.4184379340358440728.b4-ty@kernel.org>
Date: Thu, 20 Jun 2024 22:08:45 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_093854_341872_1C58F55E 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
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


On Sat, 18 May 2024 13:31:40 +0200, Lorenzo Bianconi wrote:
> Add support for Airoha PCIe PHY controller available in the EN7581 SoC.
> 
> Changes since v2:
> - introduce registers description in dts binding
> - compile PCIe PHY controller driver as module by default
> - improve code readability
> Changes since v1:
> - add patch 4/4 to enable PCIe PHY driver
> - rename documentation binding in airoha,en7581-pcie-phy.yaml
> - fix kernel doc
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: airoha: Add binding doc for PCIe PHY driver
      (no commit info)
[3/4] phy: airoha: Add PCIe PHY driver for EN7581 SoC.
      commit: d7d2818b93837def4a33f92da2e64c3a2752c47e

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
