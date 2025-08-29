Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D31ECCA1000
	for <linux-phy@archiver.kernel.org>; Fri, 29 Aug 2025 10:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OTXUAWnkLOhTXYheLFD68myCROL8Hm/usNU0Ci6o0ms=; b=IdB4J7HKWW1mRU
	Q1i5E/iDYVWBg5w+TaWIfAZlk7eQrrYwuFl7CJ/JfFNLXDE+i1GxGY62+kGN06sTjYH75+4FG0ofA
	NPmZ4p9zdhawIBeahgb1jUpQ34qX9ISqdrna5EhF+de8mqnR8W2sd+OmdE3i0koV4iiY9pYxPVGlE
	vP90lQmPTU2UKex12PdAi2Ghi+2i3FSR02iAg+QWdgkXucb/9VAS4NQtIB27HWp/JxMyoRMy9U4U9
	TDCQ2fyUzcILr2AcHeXLbBmbzPvcQAyOKme36YVbQP0s+HzRWh8TFzd2knZ6sDsJm9ooHMaDKGfIY
	9DxAd1NaeQwESMPtNuSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urwJT-00000005JgK-1nKG;
	Fri, 29 Aug 2025 10:26:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urvHF-000000057Ui-3YTm
	for linux-phy@lists.infradead.org;
	Fri, 29 Aug 2025 09:20:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 174A7453B5;
	Fri, 29 Aug 2025 09:20:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEC1C4CEF0;
	Fri, 29 Aug 2025 09:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756459208;
	bh=XKpDXSN+sByAS9cR9W+5ZzKQ3tc8PFlTmx1lTt++ZzA=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=GhJRQSm5FZkI67SZV5HCgiXYa0YHQKtFQebSIMUg5eqmjxC3zbp+GjLnNVxwkVrqX
	 gbx3q5eb7qxHnoUYuVQq16oHGcpbTfkHAV1BlF5uErfbN+zgJwp4p0hN+OoEwMOge1
	 7lSbhxfjK1Gj8yTLCeoFUKmQa7V8jJ6O2wW7MiysqEjxA5XYwABsXvLiUdtV6Q2CZ6
	 qC0T+s4Yh/y5YgEZiZyWAKm0Gl78GNpDQERNZF+vUtRRuhqsbKAsXzrvSkUH6aZgEk
	 U5qM6HA9nEeHEV/tuxPPm0wd4HB8RGotZBbIu+hbzvvLeDL0T7UhCfHAZZ9ht3uPHC
	 n8RnCoiobwQzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4D38CA0FF9;
	Fri, 29 Aug 2025 09:20:08 +0000 (UTC)
From: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Subject: [PATCH v2 0/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Date: Fri, 29 Aug 2025 11:19:57 +0200
Message-Id: <20250829-tja1145-support-v2-0-60997f328979@liebherr.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAL1wsWgC/2WNQQ6CMBBFr0JmbQ2tLaIr72FYQGeUMUrJtBIN4
 e5WElcu30v++zNEEqYIx2IGoYkjhyGD2RTg+3a4kmLMDKY0rtybSqVbq7V1Kj7HMUhSWHmP3qL
 Bdgd5NQpd+LUWz03mnmMK8l4PJv21v1b915q0KhV1WNuDRWedP92Zup5Etj48oFmW5QN8iP0Js
 QAAAA==
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756459207; l=1179;
 i=dimitri.fedrau@liebherr.com; s=20241202; h=from:subject:message-id;
 bh=XKpDXSN+sByAS9cR9W+5ZzKQ3tc8PFlTmx1lTt++ZzA=;
 b=uF/G+Ymv8uMPZbfuVrFQ+2Se6z+fKUghr5aAI/7wQ2Jqvwy8CMPBxyHMXi7V8Ws6++kwLMbOL
 JyyXS6qtkYxBJMIeLmWXXO0RgsJxbDJeb2yhKs4Xvij1jn3UavaWpbM
X-Developer-Key: i=dimitri.fedrau@liebherr.com; a=ed25519;
 pk=rT653x09JSQvotxIqQl4/XiI4AOiBZrdOGvxDUbb5m8=
X-Endpoint-Received: by B4 Relay for dimitri.fedrau@liebherr.com/20241202
 with auth_id=290
X-Original-From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_022009_927853_7E8E6985 
X-CRM114-Status: UNSURE (   8.13  )
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
base-commit: e373c183bc8a4a421f14ea0dd1edf4f8fd79537f
change-id: 20250726-tja1145-support-d6ccdc4d2da3

Best regards,
-- 
Dimitri Fedrau <dimitri.fedrau@liebherr.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
