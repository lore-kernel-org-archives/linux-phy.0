Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B313AE63FED
	for <linux-phy@archiver.kernel.org>; Sat,  4 Apr 2026 18:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YcV3D/hfK/Bwl/WUm9v3MZ6nXhKRQ+wN4XU0P+MXRew=; b=nTp2DEubNIyqqw
	M8ikg2rnwcS43nlh+MH6kiOyvYbv2w/nQNfo8qTo2K9sDZQj6N8IckyLWdHQ1C87iaMqgVlvAor5z
	x1QnaZyv5RWFl5wsrhJ+lc1eS9YspVz2Cgzlh/TMrqryrcRSCzWaqz1HHDPefDu+CPkrciA08FqU8
	7kARqx4g9dkHgIAM4QWO5FHVnGdz+i5zafjzjKQ+zRBa8BsbID1tbFwgeeq0aeUqyAYUUxx+VCk8d
	5dzT/vDEr0olhFWCZB2PkznbMspT67XxSfytCvyp7Ej0zQWcG9g2iGUU/mFc6ofOsPLhEqPZJdlJ/
	WNMe2EEaOCYh+VhWY/eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w963r-00000003g1P-40un;
	Sat, 04 Apr 2026 18:49:35 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w963o-00000003g0z-3FHv
	for linux-phy@lists.infradead.org;
	Sat, 04 Apr 2026 18:49:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 02C9F18F6BB;
	Sat,  4 Apr 2026 20:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1775328569; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=Lu1Z3Rm1rWWGK7Kmxsqji1TBL5EuCNVIhoEedYUd+lM=;
	b=WHk0sXCAClAoKmuPkc5zeS+xpLerVE5gqqmUaYRBnKnKoZ1m/hySdZyYkJsE5UkXnsqx5y
	MhQryGUsFeMU0Z2cPscikzHcdE4UVWsHZiIUuyamTutQCduIvOcZ8gwxXZRlFRkE0cs8RT
	CZyGB2hgX0ESrwf3ABPRaqNjm8IYhBv2t0dja409ccZ3lu+uobebC473dThkgAqIwY8Qzc
	mnXuEV6xTaadAEUXnIqsFyvRMxpb0Zpbqv+eXH9VTdj10+Ot/pmM8S0ok5pc8yHFKkzf2/
	8eBAo2hscqgwduxY4ctKZ1zAXxNdosR0cn4CtPhuO45O04veoNeUGapfovRrOw==
From: Caleb James DeLisle <cjd@cjdns.fr>
To: linux-phy@lists.infradead.org
Cc: naseefkm@gmail.com,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-mips@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Caleb James DeLisle <cjd@cjdns.fr>
Subject: [PATCH v2 0/2] phy: econet: Add PCIe PHY driver for EcoNet SoCs
Date: Sat,  4 Apr 2026 18:49:16 +0000
Message-Id: <20260404184918.2184070-1-cjd@cjdns.fr>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260404_114933_039226_B16A0611 
X-CRM114-Status: UNSURE (   8.09  )
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

Add EcoNet EN751221 and EN7528 PCIe PHY support.

Re-sending rebased v2 because there have been no comments since March 12.

Changes from v1:
* Rebased on 2febe6e6ee6e34c7754eff3c4d81aa7b0dcb7979
* v1: https://lore.kernel.org/linux-mips/20260312164432.569566-1-cjd@cjdns.fr/

This is split from a larger PCIe patchset which crossed multiple
subsystems. I'm not labeling this a v3 because it's a new patchset, but
I'm keeping the historical record anyway.

Changes from econet-pcie v2: none relevant to this patch set
* econet-pcie v2: https://lore.kernel.org/linux-mips/20260309131818.74467-1-cjd@cjdns.fr

Changes from econet-pcie v1:
* econet,en751221-pcie-phy.yaml Refer to PHYs as "gen1" and "gen2"
* econet-pcie v1: https://lore.kernel.org/linux-mips/20260303190948.694783-1-cjd@cjdns.fr/

Caleb James DeLisle (2):
  dt-bindings: phy: Document PCIe PHY in EcoNet EN751221 and EN7528
  phy: econet: Add PCIe PHY driver for EcoNet EN751221 and EN7528 SoCs.

 .../phy/econet,en751221-pcie-phy.yaml         |  50 +++++
 MAINTAINERS                                   |   7 +
 drivers/phy/Kconfig                           |  12 ++
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-econet-pcie.c                 | 180 ++++++++++++++++++
 5 files changed, 250 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/econet,en751221-pcie-phy.yaml
 create mode 100644 drivers/phy/phy-econet-pcie.c

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
