Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C4CAC27C79
	for <linux-phy@archiver.kernel.org>; Thu, 20 Jun 2024 16:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23H0JeeO8GvgnnC0dE+R0h73obtlu4D3jZ+wdlpctpU=; b=CtO2cNw1PXyGV2
	45e1sVuoBxPBLg/rqPRG/uw1lKp4XDpC1S0maG+tssN/F5PVtlLqpX8rF+tKcvnbV1mNWtYMilUDW
	ccv+E8ozr3JZFU8QxXZ0I418AjfOUwJ7lirZqiojDf6PZL4sCRgUtQlV/BhzohtucoPg76NyNvWAa
	aBOY6Lhy4CoMEV9di7BtRCn7D8JSeVERIWg1iZ5TUEm1Ip6dTVRUQx/Th6O/FsyWFVVgZ81bSsNDj
	dPsZCcsKfj4rB5WuoG002hmkdKuQjk/aJVM9xp6ZoV0HWfmFmY6bXhvNq4ZrphLhrw/W30bPrwvIP
	PNeEbPRip/rDrsTvgg+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKoT-00000005uEP-00T6;
	Thu, 20 Jun 2024 16:39:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKKoP-00000005uD6-46jY;
	Thu, 20 Jun 2024 16:39:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 54A77621EF;
	Thu, 20 Jun 2024 16:39:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D582FC4AF07;
	Thu, 20 Jun 2024 16:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718901541;
	bh=faSoPEg3WoUEAI0X7ip+6EQtR+wgFtkETMup5dlw1Wc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LOkcmUdHITvCe2zSErGQ0ArFRjSedZRt53X1l4HxrCnqFqtZOsWli/jSlVfF5Rk55
	 6FWpKb48XJ4eXU8uokmF9wV59YYe05qN7jgk8m30vMmr6De5LH80jcHH26O2R4UR+f
	 K4HO9gBiu8091DjEsdmfUO2csrOdg7PR+Rn+BsarEVILWk2AwNSCIO/Cf/8mwJrwj5
	 deT9WBAJ+biGusgVyPKB+egpuj90AHX85lZJPiyE6/5u/JQCVAMSx8858pATLd8eDB
	 C2kyTjwYl3m5kjRPne5FY2obEIj1fL0G4mL3NnLR4oyemLX3nR1Oryv7DFqKlr7XU9
	 AqXsj/LJCg+fQ==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: kishon@kernel.org, lorenzo.bianconi83@gmail.com, conor@kernel.org, 
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, nbd@nbd.name, john@phrozen.org, dd@embedd.com, 
 catalin.marinas@arm.com, will@kernel.org, upstream@airoha.com, 
 angelogioacchino.delregno@collabora.com, amitsinght@marvell.com
In-Reply-To: <cover.1718485860.git.lorenzo@kernel.org>
References: <cover.1718485860.git.lorenzo@kernel.org>
Subject: Re: (subset) [PATCH v4 0/3] Introduce PCIe PHY driver for EN7581
 SoC
Message-Id: <171890153544.219744.15018236291682784216.b4-ty@kernel.org>
Date: Thu, 20 Jun 2024 22:08:55 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_093902_193858_813A36EC 
X-CRM114-Status: UNSURE (   7.17  )
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


On Sat, 15 Jun 2024 23:15:40 +0200, Lorenzo Bianconi wrote:
> Add support for Airoha PCIe PHY controller available in the EN7581 SoC.
> 
> Changes since v3:
> - fix compilation errors on x86
> - remove patch 2/4
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

[1/3] dt-bindings: phy: airoha: Add PCIe PHY controller
      commit: e2d0317e665884d78c56f99d2a0005213d8390b6
[2/3] phy: airoha: Add PCIe PHY driver for EN7581 SoC.
      commit: d7d2818b93837def4a33f92da2e64c3a2752c47e

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
