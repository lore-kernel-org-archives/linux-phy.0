Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9265DFF8861
	for <linux-phy@archiver.kernel.org>; Sat, 25 Apr 2026 17:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m3mwl9BeZpr5N1lythYMWdLF5fASvpgp4iDA2q215Xk=; b=sOLoZE6MWxC5Yl
	lyTYPUR3M/kDXChU4H2QIwzeY6gfjteqmo4WK29VJdj9Y2MVQj10Ic8HaOZDYYV0i6eFEAs0Vo/Cu
	6utCmEXJJEsjWIz7H85s00LwY8SQKXI2Tejoqx9RubTg177Gf3Hg8jQwpQmRDiLLbBQzbdJCtGLiy
	RGIo4JDWp70V7IdBUBjpi2T+g6RivU924aTiA69aoN9MgyytThcGhjAbcZ6y/nBMdXy+u/GDWSUoY
	AqoYFqMdK6rCR954QN+k65lEFc5BorJATH2Xa2423iLTvekUpJE1Fd8VPtzyqyDG5ndLZE4sPiAb3
	kfDRv86ETl5F3Xi6fczg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGgw9-0000000Ebn2-30ro;
	Sat, 25 Apr 2026 17:37:01 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGgw6-0000000Eblj-415R
	for linux-phy@lists.infradead.org;
	Sat, 25 Apr 2026 17:37:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3C0B11E9463;
	Sat, 25 Apr 2026 19:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1777138610; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=5WGZ+bSSVS+1Vma9J9tn28vMMSbvmT6sMd+kIPkaZtk=;
	b=qRbUKiOtTCmWQOtAJPYD0l/oZ/AaSVMv5QE5Yb+RWEXetBAtaBrSxjW5rcwT0IlWAysUcQ
	xxpYRkmx1dyi6yrjY6LSyyy2+RsrBUf+1vmxzOKvwpZS+l+JRFqrXgoBPfF+jvU8pOM1wc
	oOHjdo9jkrWvk6WoKhGrrzeHbWme6fmWDUrqAWxz0oaeYO2iyeJ13WYVxR74AMzxA5DMnE
	HKMQdpvP4mVawndaQCxxVxS3sPOEEzTRfK0k17z/wOsAguMeWGsyLoZTdUswXjLfQWDeDG
	e5KKgzXibAV7xjQ+82qzmN7Yl7lGwQHjRnNyJx/Bn8u/GxW5v1dLBRIkFkzNvg==
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
Subject: [PATCH v3 0/2] phy: econet: Add PCIe PHY driver for EcoNet SoCs
Date: Sat, 25 Apr 2026 17:36:40 +0000
Message-Id: <20260425173642.406089-1-cjd@cjdns.fr>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_103659_215168_658C0105 
X-CRM114-Status: UNSURE (   7.67  )
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

I just added explicit includes per the recommendation of
vladimiroltean/sashiko
See https://sashiko.dev/#/patchset/20260404184918.2184070-1-cjd@cjdns.fr

Changes from v2:
* Added includes per recommendation of vladimiroltean/sashiko
* Rebased on commit 7080e32d3f09 ("Add linux-next specific files for 20260424")
* v2: https://lore.kernel.org/linux-mips/20260404184918.2184070-1-cjd@cjdns.fr/

Changes from v1:
* Rebased on commit 2febe6e6ee6e ("Add linux-next specific files for 20260403")
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
 drivers/phy/phy-econet-pcie.c                 | 182 ++++++++++++++++++
 5 files changed, 252 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/econet,en751221-pcie-phy.yaml
 create mode 100644 drivers/phy/phy-econet-pcie.c


base-commit: 7080e32d3f09d8688c4a87d81bdcc71f7f606b16
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
