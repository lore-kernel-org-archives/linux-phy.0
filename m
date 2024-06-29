Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0AAAC3065A
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jun 2024 17:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vjsa1o1Xi0SQKS2lZAqHNuvPFiWO/KqfjQdshk2ITnA=; b=0g3iCDyLpU2bjH
	avwbHNvqF8I9REtHeKmHGPDwZjJ6gmMd7+mhRZmuC9tpZZkvANKmIR4MWP93Qae3chWS0Dnbgxt6o
	GUIX44J79JSB5SLkgJX2mio0+SuKd02+VN9qOy9TXFWlzowhyui+aFaos1XbdqLwC2xZeKMGKEGIu
	0L1mO0cfliPPTJ7pNKPnJAUA5A57aA2EXsMohu693h1zb7j0gkyxCfpo0LcRbws026URpa7xR1GqV
	iV2sdr6hlLKgJxVOqXEdKPu9zRaQWNfq/LUi+lSwClY094C9IgedqR56kFLUnGujXei+bcaXR4okh
	0lip0S5w6Q80fTZdrcUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNcFh-0000000Gk6E-13Ls;
	Sat, 29 Jun 2024 17:52:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNcFO-0000000Gk2R-3FpU;
	Sat, 29 Jun 2024 17:52:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C741E60B94;
	Sat, 29 Jun 2024 17:52:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9399C2BBFC;
	Sat, 29 Jun 2024 17:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719683533;
	bh=3fHV6U/Bv7gh82YqVltuchhbbgFmiy2GtgXiLAEyMgk=;
	h=From:To:Cc:Subject:Date:From;
	b=g0JgtN/x+TzrRQ2mvwBV5IlFwDpoQ4kAcL0A51Gl2BRqeoYEnit88gOFnGJQacKI8
	 BFuJl3nVTDcdC+hTOWfau7piFZMYzoFURuWORQB0osOfDEmf4z3TJ7YMGWV1xPpngA
	 aEVstEhgfviuOhhjWXT3Sk1a1nZ5ccdkO1YJMFwMH6CxXvfMy14ot4ht974/SMWXsp
	 XTA8Slynqa1eagCvGQNrjDDNx0iay/XmX55+CyM5DhjBO6EGYC9cezoPae/6g8VZir
	 GedencQ98dbGGWGqzCKiffoJGr/o+E4V1nr5NN1bpfAfwGlCsYaGQj37rlCwcfhCwV
	 D6GNOvy9ups7g==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org,
	kishon@kernel.org,
	lorenzo.bianconi83@gmail.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	nbd@nbd.name,
	john@phrozen.org,
	dd@embedd.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com
Subject: [PATCH 0/2] Add dtime and Rx AEQ IO registers to phy-airoha-pcie driver
Date: Sat, 29 Jun 2024 19:51:47 +0200
Message-ID: <cover.1719682943.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_105226_872464_48C517D6 
X-CRM114-Status: UNSURE (   5.82  )
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

Introduce Tx-Rx detection Time and Rx AEQ training mappings to
phy-airoha-pcie driver. This is a preliminary patch to introduce PCIe
support to En7581 SoC through the mediatek-gen3 PCIe driver.

Lorenzo Bianconi (2):
  dt-bindings: phy: airoha: Add dtime and Rx AEQ IO registers
  phy: airoha: Add dtime and Rx AEQ IO registers

 .../bindings/phy/airoha,en7581-pcie-phy.yaml  | 15 +++++++-
 drivers/phy/phy-airoha-pcie-regs.h            | 17 +++++++++
 drivers/phy/phy-airoha-pcie.c                 | 38 +++++++++++++++++++
 3 files changed, 68 insertions(+), 2 deletions(-)

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
