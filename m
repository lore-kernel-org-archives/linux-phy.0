Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E51DCCD190
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 07:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TKUQmYBWV80cziFyS7/KL63NawE7XrG2h7XSs2pvUMg=; b=AVyKfbfL/1OOuf
	bMQdtp08zfBhWnsmmMdYRckE17BMlRpJQjNt3QggSe6CLtVM0bSseUG/8ggRJVthUw2m/MP/JkMt3
	tqmZZ8J4mJ+q0D5eJtMlFGnGUIKci002y/IEiYZ2IwlhmIn6gvLXKetHbobKSKPTPbyY67hD8fVoH
	YCFEAVmQGbnDEZPPMCbXWXaM77F4hYqiC4kd2s1DnuHJXKssfthTskxBtj108Nxh5dXtYl3EgGi36
	Fq2S4cWsd51cXZAU2qfHmThjO2LKF18d79vrXK/Rke4LeE16hOT7QX1bL1IZwGTsh1hLVT8NsE6lU
	kHLFkGJUeUq/Zz51T7oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8w4e-00000000mBl-04Qh;
	Wed, 15 Oct 2025 07:37:28 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8w4c-00000000mAg-2Oey
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 07:37:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 02CB8624EE;
	Wed, 15 Oct 2025 07:37:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5758C4CEF8;
	Wed, 15 Oct 2025 07:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760513845;
	bh=Oi5QOWrlBOX6yjuVT9iWF7d8j671eUjkCoZ0gfy4CMQ=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=A2hOcqS57kZ4iJbJ55KoJcKe+geXFHO0h7z6Jsw15/tWyfCBebXPQtbLCYwlrSlDA
	 6A345Y7S7IYHL0sDB9Zn6MK9qedrUPfxN7tdK03nDOcygnhV5Q7P5m7QgPt8LpJs1b
	 V6Og/aN6uH/syRscNZk4ljy5dPuqnh5hqfspd1HKkpOuPG42HwLhsyyp0YzNNf7Imf
	 H+XfRormyGxMG/hgzYwYYVPjJkg4MatRqWE9pjza3lB9IoSssUJDruxeKsQfrxtHQJ
	 cZcZo7WHBeW/jBs/UOjlLzYaugQR7HAOxwbDCESmZmv0iINwVDmuoEp3p0qENhJBEv
	 RzyXaEsKMa16g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B90CCCD185;
	Wed, 15 Oct 2025 07:37:25 +0000 (UTC)
From: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Subject: [PATCH v4 0/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Date: Wed, 15 Oct 2025 09:37:07 +0200
Message-Id: <20251015-tja1145-support-v4-0-4d3ca13c8881@liebherr.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACNP72gC/23N0Q6CIBTG8VdpXEeDA6h01Xu0LhSOSStxYK7mf
 PfQrdqyy/+3nd8ZScTgMJL9ZiQBBxedb1PI7YaYpmzPSJ1NTYCBYjlktL+UnEtF473rfOipzYy
 xRlqwpSDpqgtYu8ciHk+pGxd7H57Lg4HP69sqVtbAKaNY2UJqaZVU5nB1WDUYws74G5m5Ab5EA
 XpNQCIypnVeCyh0rv8Q4kNwxsWaEImQpbYgVY0sy3+IaZpejYzTjjcBAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760513844; l=1889;
 i=dimitri.fedrau@liebherr.com; s=20241202; h=from:subject:message-id;
 bh=Oi5QOWrlBOX6yjuVT9iWF7d8j671eUjkCoZ0gfy4CMQ=;
 b=mPtPFEbP4lBXsbQ5kzDNF6r8woIMJ57Bjg3T/ImFi75H7cQwfG6o+SE6c571+dwh9D3G/2nG9
 CrfMlvJiIVXB60dK0CgTrpHMofbu0z3gGbrJrI0jIeQy+OOuc3uUikf
X-Developer-Key: i=dimitri.fedrau@liebherr.com; a=ed25519;
 pk=rT653x09JSQvotxIqQl4/XiI4AOiBZrdOGvxDUbb5m8=
X-Endpoint-Received: by B4 Relay for dimitri.fedrau@liebherr.com/20241202
 with auth_id=290
X-Original-From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
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
Changes in v4:
- Change compatible to: nxp,tja1145 (Connor)
- Mark spi-cpha as required (Connor)
- Switch from unevaluatedProperties: false to
  additionalProperties: false (Connor)
- Remove double newline after tja1145_rd_table (Marc)
- Link to v3: https://lore.kernel.org/r/20251013-tja1145-support-v3-0-4a9d245fe067@liebherr.com

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

 .../devicetree/bindings/phy/nxp,tja1145.yaml       |  80 +++++++++
 drivers/phy/Kconfig                                |  10 ++
 drivers/phy/Makefile                               |   1 +
 drivers/phy/phy-nxp-tja1145.c                      | 184 +++++++++++++++++++++
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
