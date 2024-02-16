Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3300FC48BC4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 15:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=14eQXOTaQIhJH/3rCqh33fiXLTPqQXKJenWt7fcKpc8=; b=LoxIF8zrx2X1iO
	aVri1nO+y1a6Z8RO2+Sg9hPSqsiVP56X3ldbbGB3DwbOkAbWbTDX2i5kmtBKScMS/YnSny3M74qTe
	9PEA9uDIui/R4Ranc2d5TS30yJ3smGEJHDeXa1n6BLhX8ymKTsutUGwMasgMsSdPTmUyQmoGiLmf5
	k7aDXhfJ9oSw2aJF5X0dUbhq8yEDr6L4cE30yeqOKolLZScYefAkoC3tKPJbUlIhaPyd0dw/hu6+L
	4tbSYxE7AvSuPvakyxYr81z1BrAHgkHUB3eKbJDdUtqvmzud4qv/pKybohxfHpTw+N8/2k843gm8K
	bpysrJ2/1+djcf9QzWYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb024-00000002kWd-3MKf;
	Fri, 16 Feb 2024 15:21:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb01o-00000002kPN-3NGp
	for linux-phy@lists.infradead.org;
	Fri, 16 Feb 2024 15:21:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AA76361B6C;
	Fri, 16 Feb 2024 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 46FDDC433C7;
	Fri, 16 Feb 2024 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708096887;
	bh=IxnSWTB2sBXQF0390u8a976PN+j85jvd6/lGGofC8VY=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=t8WSu/vWzA3RAuEKVApWeF6Dn0DnVniiHCrLWnfntoku88Vb4Y4mz6lsLI+iafxcj
	 kWAwRes8UHJnyXfUA1go2QS5nTZP6X50jjefqD8QpTvzmWEXr8giiaAtac90S3vVZp
	 Wa+71Tp7fjI90vI8iIOx0XTN102gI82qtTK7n7ca3hOE8BMkULDF6DCzlayADLyJ23
	 0Yaq1kP+aujvX1aonwgNiC1nUsySQ1ZSNfPMx/ehkd416Iks+baHt9zkSeABW39DzP
	 xAB4c9ySq2sGW/c8sYuaE+4AHfA6gzFlifDdF9nkZQS+ALJiqtjWKFXcqjv0RfYuLI
	 gkB1Qdkr4YqXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CA8AC48260;
	Fri, 16 Feb 2024 15:21:27 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Subject: [PATCH RFC 0/4] phy: hisi-inno-phy: add support for
 hi3798mv200-usb2-phy
Date: Fri, 16 Feb 2024 23:21:00 +0800
Message-Id: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFx9z2UC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDI0Mz3cy8vHzdgoxK3USjFAtzozSzJHOTJCWg8oKi1LTMCrBR0UpBbs5
 KsbW1AO6AnyJfAAAA
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jiancheng Xue <xuejiancheng@hisilicon.com>, 
 Pengcheng Li <lpc.li@hisilicon.com>, Shawn Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, 
 David Yang <mmyangfl@gmail.com>, Yang Xiwen <forbidden405@outlook.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708096886; l=1304;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=IxnSWTB2sBXQF0390u8a976PN+j85jvd6/lGGofC8VY=;
 b=jVZPCURmpgkvsGh4pmLptz411OscyhZfFOxAAmB4AKycoTJpCK24CwzaBAjfCCKBgjM8qYArr
 uVTzXRcqYHvCIgzGWjYN3cP73jcSNBzIRH0pfkqv/yg6MlQsD8aC2Eo
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_072128_989928_DEC36D8B 
X-CRM114-Status: UNSURE (   7.35  )
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
Yang Xiwen (4):
      dt-binding: phy: hisi-inno-usb2: convert to YAML
      phy: hisilicon: enable clocks for every ports
      phy: hisi-inno-usb2: add support for direct MMIO
      dt-binding: phy: hisi-inno-usb2: add compatible of hisilicon,hi3798mv200-usb2-phy

 .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 125 +++++++++++++++++++++
 .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt |  71 ------------
 drivers/phy/hisilicon/phy-hisi-inno-usb2.c         |  57 ++++++----
 3 files changed, 161 insertions(+), 92 deletions(-)
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
