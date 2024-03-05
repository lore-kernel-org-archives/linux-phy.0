Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D548C54798
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 13:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jaBpxhcJtrNW6nZLhe2MhYJopMLDOltCnGzkKH7VuZM=; b=ueuzira2WtkXk8
	shV1/8NBWkEwe57b54AGTdp0o5tfDL256J2e94LIgAnElp8kCp0mNgqsdC6LVNl2t1R4kYMFJbbji
	L1yEz1WzJszE28vqJBavHyrrxie/uBQYXYwE9eKfskwocO5Cmr9tnTVeHMkjYMBNwQS8C90ymmM6R
	W4UhwfpBAW41gbc0uGs+7P52aLqFiSn+gYiD72ed4voQAgYHkE53S9SYc9WlNwlGKv56K5VPvUrN4
	HHtpitVnssHsho2rV57VkzWGdjWOH4t/PAwIPm+/VcCsXKbu/NGeSUDJ1hZxpGhFz2vLGcuy3gT01
	CAm2drrqx62Bb/vf6vOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhUu4-0000000DlcH-0GWI;
	Tue, 05 Mar 2024 13:32:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhUu0-0000000DlaJ-3unC
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 13:32:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0888161378;
	Tue,  5 Mar 2024 13:32:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E657C433F1;
	Tue,  5 Mar 2024 13:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709645535;
	bh=FihEUwCX50+sOpSeSlKTyAI5nKu3cdR1twC0ge0m/T4=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=RVgF4Zbw/9zjAw+nC5J2lWdYwfmD/InF3Dil3B3FQYMWyWLlgizzJke+63D9uLqvY
	 tmECtsqVJa7H9Vt/xVG2Iw/AkppuDnrba80pe7i3zoHX56OkK9AHOz8Stgn9gG+SSw
	 +5c/1jNhJig3LHDnDNubicBeB/gNMnu7Q1OgcD2DiJMWTb7QwAXQin9Lufhk2HmExh
	 1uiSBewp1NMzYil19s6Mji+iI5E9K+49uo55M1943qGqT9iRWB5anC8wICaRSOOFE4
	 7+CbJ11MnTJ1gegySw2Bezg/+Uy9lM5+4carVmRx2Z1aDjepDnHiLy8uepeR+IPQEo
	 i0266NFg2od/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82F7CC54798;
	Tue,  5 Mar 2024 13:32:15 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Subject: [PATCH v5 0/5] phy: hisi-inno-phy: add support for
 hi3798mv200-usb2-phy
Date: Tue, 05 Mar 2024 21:32:11 +0800
Message-Id: <20240305-inno-phy-v5-0-dc1cb130ea08@outlook.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANse52UC/23MQQ6CMBCF4auQrq2ZzhQKrryHcUFLK41KCSDRG
 O5udWMNLt9kvv/JRjt4O7Jd9mSDnf3oQxdHvsmYaevuZLlv4mYIKAFFwX3XBd63D15jUyp0hVZ
 Ss/jeD9b5+yd1OMbd+nEKw+NTnsX7+icyCw5c1LoS6CAncvtwmy4hnLcmXNk7M2NKVUIxUtJO2
 VJpsJVdU0ooQkIp0rIi07iyINJyTeWXEuQJlZHWQAjSVMYJ80uXZXkBnvnpFlMBAAA=
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1709645533; l=2619;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=FihEUwCX50+sOpSeSlKTyAI5nKu3cdR1twC0ge0m/T4=;
 b=3ymo1/B20cCGRvoJeNsGWfYtGDcaFn42LOyz14PG9giPuRZQvqjiTXG++HxRuNK5BNmHVJ1zK
 1ci3BoVGn51AGTtNGey7HifuI4fQ3PfHW3J4obCzKlvy75IKWtm4hZW
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_053217_220899_FF33425D 
X-CRM114-Status: UNSURE (   9.30  )
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

This should be considered a hack. The proper solution would be
extracting write_reg logic to a separate regmap driver. Leaving only
"write BIT(2) to address 0x6" to the PHY driver.

A proper fix should be implemented later.

Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
---
Changes in v5:
- commit msg: bulk->array. (Philipp)
- use devm_reset_control_array_exclusive() instead. (Philipp)
- Link to v4: https://lore.kernel.org/r/20240305-inno-phy-v4-0-a03204c9cf1c@outlook.com

Changes in v4:
- remove reference to histb-clock.h
- remove fallback compatible as it has no use.
- remove phy_type (belongs to host controller)
- fix bot error (Rob Herring)
- split YAML convertion into two commits, the other add mv100 compatible (Krzysztof Kozlowski)
- Link to v3: https://lore.kernel.org/r/20240220-inno-phy-v3-0-893cdf8633b4@outlook.com

Changes in v3:
- address a few binding issue mistakenly missing in v2 (Krzysztof Kozlowski)
  - add msg about hi3798mv100 being added to compatible list
  - remove minItems for compatible
  - remove | for reg:
- fix existing dts (hi3798cv200.dtsi) due to binding change.
- Link to v2: https://lore.kernel.org/r/20240217-inno-phy-v2-0-3bf7e87b0e9e@outlook.com

Changes in v2:
- rewrite commit msg to show why hisilicon,hi3798mv100-usb2-phy is added during YAML convertion.
- split required: to multiple line
- add allOf to wrap if:
- remove perictrl wrapper and the second phy in the example
- tested the binding both for mv200 and cv200 dts. fix some silly errors.
- remove Pengcheng Li from To:
Above all are suggested by Krzysztof
- use reset_control_array_* APIs to ensure all resets are controlled
- Link to v1: https://lore.kernel.org/r/20240216-inno-phy-v1-0-1ab912f0533f@outlook.com

---
Yang Xiwen (5):
      phy: hisilicon: hisi-inno-phy: enable clocks for every ports
      dt-bindings: phy: hisi-inno-usb2: convert to YAML
      dt-bindings: phy: hisilicon,inno-usb2-phy: add support for Hi3798MV100 INNO PHY
      dt-bindings: phy: hisi-inno-usb2: add compatible of hisilicon,hi3798mv200-usb2-phy
      phy: hisilicon: hisi-inno-phy: add support for Hi3798MV200 INNO PHY

 .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 119 +++++++++++++++++++++
 .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt |  71 ------------
 drivers/phy/hisilicon/phy-hisi-inno-usb2.c         |  70 +++++++-----
 3 files changed, 162 insertions(+), 98 deletions(-)
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
