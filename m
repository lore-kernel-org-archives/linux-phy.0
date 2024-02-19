Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4794C54788
	for <linux-phy@archiver.kernel.org>; Mon, 19 Feb 2024 21:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zA0jRGxys2EE9cJvE1TIecArQ8vo+1Um8Q/gP5rwPHs=; b=kruei+Kad87HXL
	Bf5OgMmMwov53teYGFezMnfZzGaan0DtjANR1gjCL77/Fov6X6nOLynQrIRBcrnTEnbWHE7uJJULO
	N/i1bvtw74KhWrzYp10xLFMNIaZZokiBDBf7YVOZUmgT31Axgh5BqmkXL0p7oO9C3rEDpiCKhWOct
	+FripLo8IW0NWdKo5/K02WmDhDC8MZBviipmIGSYXj60o6IpWD/ofLD/LNrgDYpPa+Qla5alFRMJz
	r3xICm3Wm9MvUR/nP567svJuqTL2chIfQwRy4hpyWS7bFI6MLEkpruE4XXu5IyKkDJ065+q4ySM0a
	0PjpHD0/ahc3Kq0puLJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcBBF-0000000CE8s-1uyS;
	Mon, 19 Feb 2024 21:28:05 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcBBB-0000000CE4O-2q6d
	for linux-phy@lists.infradead.org;
	Mon, 19 Feb 2024 21:28:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E787DCE140C;
	Mon, 19 Feb 2024 21:27:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 24B8AC433F1;
	Mon, 19 Feb 2024 21:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708378079;
	bh=gDuXXkEkFzr58dGxUU60LC3RjfnVRpdwuyjfjNAJ450=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=ggbzYq0XRjW6Y+FBjEbi3F4CWZSNytX3r5dVwHgz7MST2kh/wVbUSIHulPyBHn4pE
	 LsLqvOJdFU+ODuSH8kjGtfPqM20JgqIVgMZXUdCq46q9vETjKebUUpF3RSwT1p2XEF
	 +iQJ1Z/yysCpyfYJSOWsOp5d/+5TwKFmR7Nd0tKpA5bc6bidqQv+bDaV/Exz9NUjjl
	 P8GB1xcJw+iltdcd65P+Po+lO0m2xW59nw0YvRFWFiFyqx6dWX82nhkWkah2l8Lnkb
	 LFhF5x/aT5BU0M7XKG9eyb6EgY0Tym22H3AzvEasPyvAzeDPnBwPfZ04H8DFK4d9iF
	 YeSIR6c/0xz6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 080C1C48BC3;
	Mon, 19 Feb 2024 21:27:59 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Subject: [PATCH RFC v3 0/5] phy: hisi-inno-phy: add support for
 hi3798mv200-usb2-phy
Date: Tue, 20 Feb 2024 05:27:57 +0800
Message-Id: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAN3H02UC/2WMvQ7CIBRGX8XcWQxcammdTEx8AFfjUFqwRIUGK
 rFp+u4SphrH7+ecGYLyRgU4bGbwKppgnE2BbzfQ9o29K2K6lAEpFhRZSYy1jgz9RBrsKoG6lKK
 QkO6DV9p8suoKl/MJbqnsTRidn7I+sjz9myIjlLBG1gw13XOuj+49Pp177Fr3ypqIa1SsUEwol
 1qoSkiqavWLLsvyBdzD2tjiAAAA
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708378078; l=2399;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=gDuXXkEkFzr58dGxUU60LC3RjfnVRpdwuyjfjNAJ450=;
 b=9p7dgq5jmpamdAUqgWlwV23SezvYSPG09hlcTehj58oXrF+O0oQjBBfsDhC2/deBUWKh792fO
 DTf7ttYhf7eAo48PSSESDWIv9cloym3t9fux76XDU9EVul2mzD7yrgU
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_132802_135705_69E6757E 
X-CRM114-Status: GOOD (  11.00  )
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
      dt-bindings: phy: hisi-inno-usb2: convert to YAML
      arm64: dts: hi3798cv200: add hisilicon,inno-usb2-phy to compatible list
      phy: hisilicon: hisi-inno-phy: enable clocks for every ports
      phy: hisilicon: hisi-inno-phy: add support for Hi3798MV200 INNO PHY
      dt-bindings: phy: hisi-inno-usb2: add compatible of hisilicon,hi3798mv200-usb2-phy

 .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 123 +++++++++++++++++++++
 .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt |  71 ------------
 arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi     |   6 +-
 drivers/phy/hisilicon/phy-hisi-inno-usb2.c         |  69 +++++++-----
 4 files changed, 169 insertions(+), 100 deletions(-)
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
