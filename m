Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14A7A106ACD0
	for <linux-phy@archiver.kernel.org>; Thu, 12 Mar 2026 16:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kV/L94H1oh5OgVemMpgaLbLqX2lji8MWVpkiqRTOm8g=; b=g9VLkOUoHNFurX
	e+phvj+77vZSLaqN2w38jqjJGSV8gwrjFWbGkkDR+juTQa/n11OopZP3sFTdbgrM7kxupMOFtiTuK
	r1KlREJEn7mjaakihghNNolwm9hrf4w/AqMlzkchArYAJ9QAuJVF1p3dsDijiIiKPcTsMf1Go1nny
	4QLJFbJynuL+gIkWYSpTSpj6O3byOXUvrbUcz5t9/W3eXJusEAK22fpVrAApr6k4ZOHTNyNQglTSl
	uHf6r/qe+q4J6A+H20nK/fEc2O4k4jlYtagYOnrVxV2N/1Uk3fQsSExSAyCw/ysgqJsAiJelZfOSP
	NA8AALtNcd/jLdugu+Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0j9U-0000000EbyY-2YD7;
	Thu, 12 Mar 2026 16:44:48 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0j9R-0000000EbxR-3nuW
	for linux-phy@lists.infradead.org;
	Thu, 12 Mar 2026 16:44:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 74B8A2C71F7;
	Thu, 12 Mar 2026 17:44:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1773333882; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=+5GeguiV+FH3mTRjunVs6nNfagcSzReqIpN01V+GjKY=;
	b=hiPkHQ9F6yu7jD8VQWt2tNeGoD63jAYByo4qmPIE+V4zvmDvD4t+VEqf8S3LxtJYK4s2ov
	a9WgPs83qBImZKh7NIEvFmWruqTQRYHdiuAVS2dDzIOxcnx2KUQ03yO8vgCKkzYNtgTws7
	jdH3RR1ZzH0EcN9wd0KBCCsYPy/ZHA+XEYX5l/dMxZ+GpNMQrPU5FJqzNWmjnPI38U0sQl
	ColWovK/PBKol8ARGAXWJorbwTd4f63AVdS3cPyoia7KWvca4f+4bTPAIVu6aICRtEtvbw
	/GUVo1El834TOvWKMbdxARa5LAYco+YCKkuKBNqruUQuHVLV5rJ7Wi8DsiaTQA==
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
Subject: [PATCH 0/2] phy: econet: Add PCIe PHY driver for EcoNet SoCs
Date: Thu, 12 Mar 2026 16:44:30 +0000
Message-Id: <20260312164432.569566-1-cjd@cjdns.fr>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_094446_135747_DD100294 
X-CRM114-Status: UNSURE (   8.05  )
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


base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
