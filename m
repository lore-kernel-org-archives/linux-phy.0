Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 838DCCD6E57
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 08:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pxGwuMLRZzQ4Pg4uoSV0iKkRjBEISSvAQ4vtkfA6EV8=; b=kg0Cx8CBQ6uZ2g
	thTNIh3HgH/JOKzofFVVMvkQcSJSNz964lMgUc5CqGs+NvYLNmlO46NmdztMKDpBHNbkmLyap8DRm
	mc2+3btF96Nw/LxNi7XybPR4y2ejCo5aVqZPTiDYgzF3ZtQo3pttiMC8ny6C/R1136DUrJMs/JOzb
	u6+CEC06q4FeEElaeX033pwOxaLb8RMIAw8R/DRorEY9cDkCFrsqH3QO/v3erckb0j1TzkhDLjEcz
	+4MzuBFItpof12LKk8t2tSJ+E7XRas4xBwIJyILybjx7ATqc0GJjboJKaWI8n2ze3iCu5QGSFV3S7
	R8sn8qnLY/t4H7SGFWjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUKRf-0000000CYqc-13xG;
	Tue, 02 Jun 2026 08:25:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUKRZ-0000000CYpY-32hG
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 08:25:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1CAFF4195A;
	Tue,  2 Jun 2026 08:25:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E763FC2BCB4;
	Tue,  2 Jun 2026 08:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780388748;
	bh=cHp3nkT0cfcBUKtkYPQ5ueVJrGW1JpdFjs6fxXYP9t8=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=OOW9Pl54BT11UnaiRQXy54J2+Mz/tKgFC70yOwziqjplGS8j5beJbQKu+7qke5Qox
	 fQcVtTSfsJuqAQDJbstLiRVwFsQ0g8miNl9oUYXlvO2uPC6kKEa0uxoOFeYiRBKRFj
	 b8DXMhioJsI7KT2saR4O2hFy4r51lr/2w5YsXSQiLrPm8H8PWj657CfPVuwxeNOXKv
	 3gMX3CJ+HEFyVrSNi+P88tS6ystZcIfUQPitlf0FFtGBA72uUOpnFQmBVqcnyrv4LN
	 GHiaTU4vIzCdo+n5odX/VkAv0gnxcrGXNGhJl7XYCTZhG2mZV9cVLsDkfdJqagosWP
	 Ol7L78MgbANow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC4D2CD6E57;
	Tue,  2 Jun 2026 08:25:47 +0000 (UTC)
From: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Subject: [PATCH v6 0/2] phy: add basic support for NXPs TJA1145 CAN
 transceiver
Date: Tue, 02 Jun 2026 10:25:36 +0200
Message-Id: <20260602-tja1145-support-v6-0-0e0ffc8ee63d@liebherr.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAICTHmoC/23OzU7DMAzA8VeZciYoceJ8cOI90A5Z4tIgWKukV
 ENT35100gDRHv+W/LOvrFLJVNnT4coKzbnm4dzCPBxY7MP5lXhOrRkIQGHB8OktSKmR189xHMr
 Ek4kxRZ0gBcXa1lioy5eb+HJs3ec6DeXrdmCW6/RuuY01Sy44nZLTXifUGJ/fM516KuUxDh9s5
 Wb4JRz4LQGNMMJ72ylw3vodQv0QUki1JVQjdPAJNHYkjN0h9F8Ct4ReiaRikCo65+QOgXfCCNz
 7AhuhnAURLJFR9I9YluUbmXjhDb0BAAA=
X-Change-ID: 20250726-tja1145-support-d6ccdc4d2da3
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dimitri Fedrau <dima.fedrau@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Dimitri Fedrau <dimitri.fedrau@liebherr.com>, 
 Conor Dooley <conor.dooley@microchip.com>, lee.lockhey@gmail.com, 
 Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780388746; l=2451;
 i=dimitri.fedrau@liebherr.com; s=20241202; h=from:subject:message-id;
 bh=cHp3nkT0cfcBUKtkYPQ5ueVJrGW1JpdFjs6fxXYP9t8=;
 b=p1me/q6zUuMZYy17fczKcV6f2U8Y8qghF6aQalv6p3RC54NImHNf1nsAXn0PJRtX21EXJhhpH
 IknPafPwXvABnXb3ntP9Z0Qxxd/YYCTXP7un9KI3NOA79jhoFfyh3vS
X-Developer-Key: i=dimitri.fedrau@liebherr.com; a=ed25519;
 pk=rT653x09JSQvotxIqQl4/XiI4AOiBZrdOGvxDUbb5m8=
X-Endpoint-Received: by B4 Relay for dimitri.fedrau@liebherr.com/20241202
 with auth_id=290
X-Original-From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_012549_881297_39C27C66 
X-CRM114-Status: UNSURE (   8.86  )
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
Changes in v6:
- Added interrupts to bindings and dt example.
- Link to v5: https://lore.kernel.org/r/20260513-tja1145-support-v5-0-38720a7ee63e@liebherr.com

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

 .../devicetree/bindings/phy/nxp,tja1145.yaml       |  86 ++++++++++
 drivers/phy/Kconfig                                |  10 ++
 drivers/phy/Makefile                               |   1 +
 drivers/phy/phy-nxp-tja1145.c                      | 184 +++++++++++++++++++++
 4 files changed, 281 insertions(+)
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
