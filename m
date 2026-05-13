Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08A2DCD4851
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 13:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gSFW4XJv6/NbDDPNn3KrI2LTkXD32zVvvo4NzXCGsGk=; b=3fdzBgHsb1Ppzi
	6LyqWj9s8cqnleLmzp0FKITs0Y6gnz3VL77fxFAkOTC7EItlqbkuVSTGJ2YaUaj4bDZKHYzNjWgix
	qtScpCTjSrfts/41EbBYogIMzKqjuEV87kvC3MdUeARMe23Z401GiNpNpO5kMFEaFnZBVYwyVIAaZ
	n29fnYGJ2+X+SePjHpbmYzOLwj4I7w/NRk9PdukhTFaHm13cMK3RJUJvcgtYGQ9k5Wb1m9fM4RhMs
	782k0D0L0AruXsdS7r0kX1Zv192Dx7a6ytHyBlOvpwThTqFJ0shcOYH3vd5LuA5BmZgktrCioFp9H
	xzZgCBh4EGy1qB5RIn/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN9Ni-00000002cW8-1OSj;
	Wed, 13 May 2026 13:12:10 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN9Ng-00000002cVL-2omp
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 13:12:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CF73A60121;
	Wed, 13 May 2026 13:12:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8039EC2BCB7;
	Wed, 13 May 2026 13:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778677927;
	bh=9JxEm/HHNJQiQUpuQ7/jDsnz645CHsgcyhfIXRpZ8oU=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=XqULGoIcCJ+z23cZbsdcxEnq9egoFu4yRFEvoIL7+pAV7diA/dNf/kg3JI1aXeWjd
	 +stdbn/z2V8IKa9KXbpxWLHrkOjS2uzUv67FCbx4+Bz8LRa7qrlhTJItNBU/ti7MEC
	 vTssS4MeS3Cfn2L8FfRFA5z3hzZgu+BpHlwQGyzsQo58LKd0iv9bDD87zRVJ8nszQ1
	 1dOVLaBLzvOF5g0MKdtl0WLVoz0/1oVliPmrO4h3frAOysr57G2KhUWcscnhiR+xfO
	 K4HYebUhU0pRpyPzFZQy3Cp0Xc6374bzdFSpu5edfolweX/qavC6avjrlOQXjTgyod
	 Z9wqbWdUCVSlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72CA2CD4F39;
	Wed, 13 May 2026 13:12:07 +0000 (UTC)
From: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Subject: [PATCH v5 0/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Date: Wed, 13 May 2026 15:12:01 +0200
Message-Id: <20260513-tja1145-support-v5-0-38720a7ee63e@liebherr.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKF4BGoC/23NQU7DMBCF4atUXmNkj8eJ3VXvUbFwPRNiBE1kh
 whU5e44lVoQ6fJ/0nxzEYVz4iL2u4vIPKeShnMN+7QTsQ/nV5aJagtQYFULjZzegtZoZfkcxyF
 PkpoYKSIBBSPq1Zi5S19X8fhSu09lGvL39cGs1/VmuY01a6kkn8ihR7Jo4+E98annnJ/j8CFWb
 oZfwoHfElCJRnnfdgacb/0DwtwJrbTZEqYSGDwB2o5V0z4g8C9htwSuBJkYtInOOf2PWJblBwQ
 8Amp6AQAA
X-Change-ID: 20250726-tja1145-support-d6ccdc4d2da3
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dimitri Fedrau <dimitri.fedrau@liebherr.com>, 
 Dimitri Fedrau <dima.fedrau@gmail.com>, 
 Conor Dooley <conor.dooley@microchip.com>, lee.lockhey@gmail.com, 
 Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778677926; l=2287;
 i=dimitri.fedrau@liebherr.com; s=20241202; h=from:subject:message-id;
 bh=9JxEm/HHNJQiQUpuQ7/jDsnz645CHsgcyhfIXRpZ8oU=;
 b=78Sz5dpvZTkvTtPlG/TiaXEnhtb9HDN27jhzJanz9IGXWc6jIbnKIhSA+SxXPZM/hjsf8Vgz8
 XSbGIQM7QILDarvKE3ObyKEqUG0Fkm9F1+i0G7EzTVDkfEB3YJCsTSb
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
Changes in v5:
- No functional change, basically a resend with added tags
- fixed typo in define TJA1145_MODE_CRTL_STBY to TJA1145_MODE_CTRL_STBY
  and TJA1145_MODE_CRTL_NORMAL to TJA1145_MODE_CTRL_NORMAL
- remove unneeded include -#include <linux/bitfield.h>
- added owner to tja1145_phy_ops
- Link to v4: https://lore.kernel.org/r/20251015-tja1145-support-v4-0-4d3ca13c8881@liebherr.com

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
base-commit: 29b4d8a7637f027b538787896bee520f2dacc904
change-id: 20250726-tja1145-support-d6ccdc4d2da3

Best regards,
-- 
Dimitri Fedrau <dimitri.fedrau@liebherr.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
