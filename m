Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED856C54764
	for <linux-phy@archiver.kernel.org>; Sat, 17 Feb 2024 14:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HJ/v+537l03yoaIA2qHl2fWGEpv7XuhbgJtaOCYZAQ4=; b=SQhT2qqc159zm7
	a+M5yw/pko7tEogjE1UN8RY9cOMnS7ZIHQXu2TWXoueXM2ZrwO2n4S8iQgLeQiyDj9jnL+JpgkLCo
	0P2GdeKX+YvxbCay9Jw521XLLWblmvhSeupoLmmYuFatxRrCF39TaQeaAQJ3m8T5pNZ0pJX/rqIRj
	IQIVZn/fi/2Mr3G+/ULbKM6bHTeWTIdTHuSBKP3JHmMS7VhOzp+0ykoNR4NTwgBzXFrSKen5cohcF
	2FpTjCOo66ZiEeUj7oK1EtYDZSfrxWdBbI4YxnqDHmbVKTPKldq8HAloxK5qZxJl+8XQ1/2lTPq/S
	8ulOKyUWpX5PoIc2S1cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbLHR-00000005n9F-2AR9;
	Sat, 17 Feb 2024 14:03:01 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbLHM-00000005n6W-0T1g
	for linux-phy@lists.infradead.org;
	Sat, 17 Feb 2024 14:02:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A9239CE09E9;
	Sat, 17 Feb 2024 14:02:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D570DC433C7;
	Sat, 17 Feb 2024 14:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708178571;
	bh=HB/UpB50BILuiF8CCfmMOQJkOn4bkGggnUNO1Au7/nE=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=Prdu52zqYBAbheYenbmHAmkvNyf3gxxsgDI4gPL1iwJz0eqqICn6UhzcszE96p5jq
	 5opzJ03909QPtY3otj7mjvoJTNkqMzajh6d8N8kJY0MObDCWpS49BR+ZuZoeOohSLk
	 EGIW2zXlCR/XrQbfkdU3t6pxE8biBnslTU8Ewcn0bfnNc42z0xlAA3/S68hzeq43Tf
	 XsNJCp/cWfztxd7uQyApyioePF43u8IojjzSfI7P/iZSAbDKfbQxNzjI8AX4Vl82oe
	 mp9r2ve00uWeAGpy/SNegoxCmL0EZOCv7ruoO5yDdtKt9xRM6Q8g304DMgaOl1XvqQ
	 YbesphRRlgY7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C9DC48BC3;
	Sat, 17 Feb 2024 14:02:51 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Subject: [PATCH RFC v2 0/4] phy: hisi-inno-phy: add support for
 hi3798mv200-usb2-phy
Date: Sat, 17 Feb 2024 22:02:44 +0800
Message-Id: <20240217-inno-phy-v2-0-3bf7e87b0e9e@outlook.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIS80GUC/2WMQQ6CMBBFr0JmbU07IKgrExMP4NawaKGVCdohL
 RIJ4e42bF2+/1/eAtEGshHO2QLBThSJfQLcZdB02j+toDYxoMRCoioFec9i6GahsT1W6EpTFQa
 SPgTr6LulHnC/XaFOY0dx5DBv+Ult139pUkIKpc1JoZOHPHcX/owv5n7f8BvqdV1/XYibgKcAA
 AA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jiancheng Xue <xuejiancheng@hisilicon.com>, 
 Shawn Guo <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, 
 David Yang <mmyangfl@gmail.com>, Yang Xiwen <forbidden405@outlook.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708178566; l=1863;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=HB/UpB50BILuiF8CCfmMOQJkOn4bkGggnUNO1Au7/nE=;
 b=9VtvWJ4V8m6j4mczC2xd3BTH2B4ji+ttMI83t6mBEq3+QIfY/Z3xZyGrhV1q081YTkor8OFur
 RHlXOYnBjoGAmx9h+rnXOm3h7dPDjMMla2G0IUHmN9F61Y4Fb5cJIGK
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_060256_561007_C1D93F76 
X-CRM114-Status: UNSURE (   9.51  )
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
Reply-To: forbidden405@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This should be considered a dirty hack. The proper solution would be
extracting write_reg logic to a separate regmap driver. Leaving only
"write BIT(2) to address 0x6" to the PHY driver.

The initial commit is already doing things wrong. The following patches
adding hi3798mv100 support is also very confusing. The name of the
enumeration "PHY_TYPE_x" is very misleading as if it's the phy which is
different across SoCs. But actually it's the bus (i.e. how to write to a
given address) which is different, not the PHY.

Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
---
Changes in v2:
- rewrite commit msg to show why hisilicon,hi3798mv100-usb2-phy is added
  during YAML convertion.
- split required: to multiple line
- add allOf to wrap if:
- remove perictrl wrapper and the second phy in the example
- tested the binding both for mv200 and cv200 dts. fix some silly
  errors.
Above all are suggested by Krzysztof
- use reset_control_array_* APIs to ensure all resets are controlled
- Link to v1: https://lore.kernel.org/r/20240216-inno-phy-v1-0-1ab912f0533f@outlook.com

---
Yang Xiwen (4):
      dt-bindings: phy: hisi-inno-usb2: convert to YAML
      phy: hisilicon: hisi-inno-phy: enable clocks for every ports
      phy: hisilicon: hisi-inno-phy: add support for Hi3798MV200 INNO PHY
      dt-bindings: phy: hisi-inno-usb2: add compatible of hisilicon,hi3798mv200-usb2-phy

 .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 123 +++++++++++++++++++++
 .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt |  71 ------------
 drivers/phy/hisilicon/phy-hisi-inno-usb2.c         |  69 +++++++-----
 3 files changed, 165 insertions(+), 98 deletions(-)
---
base-commit: 8d3dea210042f54b952b481838c1e7dfc4ec751d
change-id: 20240216-inno-phy-a2d872f6b74b

Best regards,
-- 
Yang Xiwen <forbidden405@outlook.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
