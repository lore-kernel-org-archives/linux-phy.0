Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD2D606A33B
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 07:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=k7FAYYPa;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Ogw4tEqo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=5i6jkBVkZTNqyaAVM5jr8lUN/FUSts6gMLHfDTmo1E8=; b=k7FAYYPa6uCZF77qeHYgbPjqMw
	AeZCSmtAB5iX5ydQZhqgBJcTxQ09xwwYO3apNiP6hMxj4dSw41h+pUT6p2htf1ha0K3vkkROsbLDq
	2ZLyk0Pkiw+Fi99lvdPkKgHpclaCcUf7wO2bKTg5kopd3sjpfjH0sL/jgMcMGNNCM5ZeXAAqArDtt
	2ToAm9qx602wuh5TaCxRtDfqDBbqHBH/FUrmWsSEEN1Eh0+C75JeAIRbnUWOxfm0ossy+sV4YwvH6
	T8TaNdPxdD617PeY34KFrbg5pPiWiyIEOa3SvXhtm1DWF3ys2F1NIs+GijkgCQyfuUPQhkczgF5ke
	b4b0nDRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOVJp-00000004VfJ-0uPa;
	Wed, 04 Nov 2026 07:22:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOVJo-00000004VeI-1fk8
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 07:22:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D3F2360DA0;
	Wed,  4 Nov 2026 07:21:59 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793776919;
	b=MipqO603qNG9ZkEgU/F7GFaEfJpVpWQ0JiNv2AUQRn4Vred/owOTv8ZDGV55j5RI1jLh
	 bxosSP0pNjMlZkh7zoCeND4xk+DOx71HEyt17VXDJT4ACb/2mPEhM0wYzCgBfPqgy7prK
	 TL8S12cbay/t6cVsM2yNTt9IiJH+JJQhD8Wi+MQaJgF34U09qgkhMHwKJKXjH3GcaFmkO
	 yl4rTo7GF7EwSLCJjEEo64ODllDamXzgnJYLOpASaqQp/yBCavu7eommsq0C7dr2qzD1z
	 2y/54/FVtMQ0qE3nfoyqLupqSyay88qbb49gxyEubQb8Fgg2ON1z/FvPbKSE1M5pSiQ==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793776919;
	h=DKIM-Signature:Received:From:Subject:Date:Message-Id:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:X-B4-Tracking:X-Change-ID:To:
	 Cc:X-Mailer:X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To;
	bh=CgWUqvXqU3qwScnku9vqQ0dGajTQvySsdpdfJkRnlrM=;
	b=PC9Ex8eQChjdEAzs1R+X+SpQJw4eKW9iNEnhgzQnFrvL4la33NprxOROn92pn74Z9JYH
	 5dHC7VRDsCWOkiqQqSx4FOuF70vQzZVajDJCbRsLvU321ZaMO5pJdEvuz9ljusw/xqQdV
	 s6lSIQAMrXJYyzeszGTRE/DzVKuQp7x/+49e7la83hbuYKH4Gm/z5BZ9yqZ7vCdMIh2/8
	 HxhZF+CqRVECNVZRooFu1Zsb/M51pDeOy6iZZZWkSPqnzzZzwXnHvDgCjMEY3e/XGQgNW
	 ZXV/zoRYVz4zXc1bsiAcGrLwDBamHfFchMkAfJi+9b1x/e7fVu8mcEMO9MNtFzX8QXw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id E84BB1F00919;
	Wed,  4 Nov 2026 07:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793776919;
	bh=CgWUqvXqU3qwScnku9vqQ0dGajTQvySsdpdfJkRnlrM=;
	h=From:Subject:Date:To:Cc:Reply-To;
	b=Ogw4tEqoc222WtMn4yso9xIdJlp8yHjR8pI8ELKcNz/3YBa6RPaHle7zsX16y5hLc
	 7ARYeWdrrQeT2bOa4QE+xI4uSAeTEWOcuNGZVKbZpzmeUDUcGgZIuNjA7b5KemN96R
	 cOD87h4vqMBg/EB860+7sm8bCmc4LWH+u1oNlNAdG//x+vcV44W38I9PmdEppfkwcf
	 5eUN2ARJUY+ngy8ruwrJB85RHH4gJQT7iX3+PWwyIpAhTEgenwjryRCh6EUT/Fs1e0
	 ToB1FapnaQ72NOGbl15MvwuMOVKUKlGi57GvQmDOtNa9ll9hjPON9YUpjYptpP7844
	 K2E0p8k0dneyA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 7C7F046CED;
	Wed,  4 Nov 2026 07:21:58 +0000 (UTC)
From: Joseph Telaak via B4 Relay <devnull+joseph.telaak.dev@kernel.org>
Subject: [PATCH 0/2] phy: Add the Siflower SF19A2890 USB 2.0 PHY
Date: Wed, 04 Nov 2026 02:21:51 -0500
Message-Id: <20261104-sf19a2890-usb-phy-v1-0-db0cad937614@telaak.dev>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAA/d6moC/y2NQQ6CMBBFr0Jm7STtBNB6FcOCwiDDArBDiYZwd
 6qyfMn772+gHIQV7tkGgVdRmcYE9pJB09fjk1HaxECGSmsNoXbW1XRzBqN6nPsPFt6Xee4cXQs
 DaTcH7uT9az6qP2v0AzfLN3QagV8xnS2ntu8HhjmPYIoAAAA=
X-Change-ID: 20261102-sf19a2890-usb-phy-5bb644992750
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Chuanhong Guo <gch981213@gmail.com>, linux-mips@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Joseph Telaak <joseph@telaak.dev>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793776917; l=1830;
 i=joseph@telaak.dev; s=20261104; h=from:subject:message-id;
 bh=5xOxVIa7y4Bncr1tgiFluYq3mT02k/fOAPJuTB3HPwQ=;
 b=gbBiXRjPrS1uOUFkV7WMVTIj0DPUOx577XxDCUirsdq3WthYc+Rf2RJPaWFA3qhopLlPcPJoL
 +v5VjW7c72IDoSNOW2LtIGBw0evDcvdE8A4jxMe4WcLev/7TLEGbaMM
X-Developer-Key: i=joseph@telaak.dev; a=ed25519;
 pk=oQI+UfddlZ0wK2ac4WKOGNjUl1ZEN8j9ZVFSqEDoNP0=
X-Endpoint-Received: by B4 Relay for joseph@telaak.dev/20261104 with
 auth_id=1404
X-Original-From: Joseph Telaak <joseph@telaak.dev>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: joseph@telaak.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series adds a binding and a driver for the USB 2.0 PHY of the
Siflower SF19A2890, a MIPS SoC for home routers. The PHY takes its
reference clock and its two resets from the USB block's clock and reset
manager, which goes to the clk tree.

The driver is Chuanhong Guo's, from his SF19A2890 branch [1], with my
changes noted.

The SoC support itself (MACH_SIFLOWER_MIPS) goes through the MIPS tree;
until then the driver builds with COMPILE_TEST. The DWC2 part goes to
the USB tree.

The MAINTAINERS entry that covers these files comes with the MIPS series
"MIPS: Add support for the Siflower SF19A2890"; this series applies on
its own. That entry is also why checkpatch's question about updating
MAINTAINERS for the new files is left unanswered here.

Tested on a GL.iNet GL-SFT1200 with the DWC2 patches: a USB stick
enumerates at 480 Mb/s and reads at 5.6 MB/s (5.0 MB/s with the same
stick on OpenWrt's 6.18 kernel), and comes back after unplugging and
replugging it twice.

[1] https://github.com/981213/linux/commits/siflower-7.1

---
Chuanhong Guo (1):
      phy: siflower: Add SF19A2890 USB 2.0 PHY driver

Joseph Telaak (1):
      dt-bindings: phy: Add Siflower SF19A2890 USB 2.0 PHY

 .../bindings/phy/siflower,sf19a2890-usb-phy.yaml   |  58 +++++++++
 drivers/phy/Kconfig                                |   1 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/siflower/Kconfig                       |  12 ++
 drivers/phy/siflower/Makefile                      |   2 +
 drivers/phy/siflower/phy-sf19a2890-usb.c           | 143 +++++++++++++++++++++
 6 files changed, 217 insertions(+)
---
base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
change-id: 20261102-sf19a2890-usb-phy-5bb644992750

Best regards,
--  
Joseph Telaak <joseph@telaak.dev>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
