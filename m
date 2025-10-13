Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB8BECCA476
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 09:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QTSX62GnNZE35d1mbx3FFYenCux9Egunu0V6HLimju4=; b=lTIypP0qyEyMGC
	KcBdCQIL7mlbj60QbH3/kgOi06rbfnSy112Rwh74rXWPeB8lAEcWELmikAxQ1aQ2jOS8gym/JLYxu
	ovmkq+ataDeluGMCuco+1utBr5tjxrsVYuiq8WHRrqbvIEPa3bHBw1TtjcbJKceQhomNo/B7HKZIE
	MC6TNNepGdbUnWtGRi+9V0gkT5MF6pHh5TgGfxhZKuJYLWPo1ad0VcYQ4oov07bp7kh3kS1UQ7/Ew
	Pe2ASf79rirMbkXHzlgQJbkO5wW9YTraaAqB6oEVwVo4QDQtdHaRxlMOe2JGnMT+L0Rx4XLcJa+cF
	08nkIRfyXmVMCW/VoSNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8EiL-0000000Ci4H-2Bgz;
	Mon, 13 Oct 2025 09:19:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8EiJ-0000000Ci3f-1cfF
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 09:19:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4E3B440C2B;
	Mon, 13 Oct 2025 09:19:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22FEBC4CEE7;
	Mon, 13 Oct 2025 09:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760347170;
	bh=DD7IBJHeQ8o/jhi5QgFhDQOe2dxMtOoT5L78yQPxeMk=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=Je7/Q9dgrk5e2fghLh8TD5fxfA/uwU/+9E+kobL2ut4DICEffqstXQQkPidOHdGOo
	 jjYMoWcg86wDDlIFCm6hE9dNVbV6cQVvlWfaYh9TikePowPvaUYa7P37zXFwoZAIWY
	 jyOMPB9gRe/ekbsV9ZBzeBc8G1+PMHE6nyAe1Ee+em5CgLmPjYzhtjGHdfD+nsWY/s
	 KXA5E67uu7bDSGKRhhmljPLiW3ro5Up5Bbw47J8OudLiqIT5qUBV7lNdf8gErW8ps/
	 YagblQSfpN6mD6AeAGIRAw5MBdI9N84lOjKiikK0psT/83b2bms391+bcoQqLJbwDg
	 fERYpoonj7G0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10808CCD185;
	Mon, 13 Oct 2025 09:19:30 +0000 (UTC)
From: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Subject: [PATCH v3 0/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Date: Mon, 13 Oct 2025 11:19:17 +0200
Message-Id: <20251013-tja1145-support-v3-0-4a9d245fe067@liebherr.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABXE7GgC/2XN0Q6CIBTG8VdpXEeDIyh01Xu0LhSOSStxYKzmf
 PfQrbXl5f/bzu9MJGJwGMlxN5GAyUXn+xzFfkdMV/dXpM7mJsBAsgpKOt5qzoWk8TkMPozUlsZ
 YIyzYuiD5agjYutcqni+5OxdHH97rg8SX9WupjZU4ZRQbq4QWVgppTneHTYchHIx/kIVL8CMU6
 C0BmSiZ1lVbgNKV/iPmef4ABCgwJvQAAAA=
X-Change-ID: 20250726-tja1145-support-d6ccdc4d2da3
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dimitri Fedrau <dimitri.fedrau@liebherr.com>, 
 Dimitri Fedrau <dima.fedrau@gmail.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, linux-can@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760347168; l=1548;
 i=dimitri.fedrau@liebherr.com; s=20241202; h=from:subject:message-id;
 bh=DD7IBJHeQ8o/jhi5QgFhDQOe2dxMtOoT5L78yQPxeMk=;
 b=ZRnpk9YG8ASHR8WG5ZA1i3FsQK8yIJ+Z0JZ6GRA9tzyJsw0vYU+L4prkFIu5L82Ix4T8JroDF
 CS7U3JPWslFAMp38rAdVv6bKFM9b4lHy3sYfGpBc14fVXGf18D9xNOh
X-Developer-Key: i=dimitri.fedrau@liebherr.com; a=ed25519;
 pk=rT653x09JSQvotxIqQl4/XiI4AOiBZrdOGvxDUbb5m8=
X-Endpoint-Received: by B4 Relay for dimitri.fedrau@liebherr.com/20241202
 with auth_id=290
X-Original-From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_021931_470229_92F0C5F8 
X-CRM114-Status: UNSURE (   8.54  )
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
Reply-To: dimitri.fedrau@liebherr.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add basic driver support for NXPs TJA1145 CAN transceiver which brings the
PHY up/down by switching to normal/standby mode using SPI commands.

Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
---
Changes in v3:
- bindings: fix SPI bus unit address format error
- bindings: added resolution of discussion into commit msg
- Checked binding with:
  make dt_binding_check DT_SCHEMA_FILES=nxp,tja1145-can.yaml
  Missed it for V2, didn't do it intentionally. Sorry.
- Link to v2: https://lore.kernel.org/r/20250829-tja1145-support-v2-0-60997f328979@liebherr.com

Changes in v2:
- bindings: Change node name in example to can-phy
- bindings: Fix order of properties, reg property is second
- bindings: Change compatible to match filename
- change compatible to nxp,tja1145-can
- Link to v1: https://lore.kernel.org/r/20250728-tja1145-support-v1-0-ebd8494d545c@liebherr.com

---
Dimitri Fedrau (2):
      dt-bindings: phy: add support for NXPs TJA1145 CAN transceiver
      phy: add basic support for NXPs TJA1145 CAN transceiver

 .../devicetree/bindings/phy/nxp,tja1145-can.yaml   |  79 +++++++++
 drivers/phy/Kconfig                                |  10 ++
 drivers/phy/Makefile                               |   1 +
 drivers/phy/phy-nxp-tja1145.c                      | 185 +++++++++++++++++++++
 4 files changed, 275 insertions(+)
---
base-commit: 920852baf6bdffb2818c0de8ff3437d8f6570dc2
change-id: 20250726-tja1145-support-d6ccdc4d2da3

Best regards,
-- 
Dimitri Fedrau <dimitri.fedrau@liebherr.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
