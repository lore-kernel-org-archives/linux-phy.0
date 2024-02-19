Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34AFDC48BF8
	for <linux-phy@archiver.kernel.org>; Mon, 19 Feb 2024 21:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AgHyb6Fm8qsmB2oWPRK2Ve/SUghRayrIEX8ycvNWXHk=; b=KeDk/kHzQBQzVo
	MxfxbabhGVjvOIHz0oNW0xxFozBwvq1O5nJhoTnRxivcMVAQ4oqaqCsiZj3WJYlqax3hDe8llVvf8
	V3bHlx+/LQJhlIe91BFTxSx2yJeRY5yhUfnfPiHzD3aymtvME25Ox4pJDMBjbeQmCt1hq1kfuwyFD
	BYTdE9F0LreDpYWp+U1EHhTmdb5NEAcTaU7CapRg1j0qDxdO9pZwDS2fF5ox++9bm4kRu9QbmAnLo
	ljHIWWZ7AqLAVYMAftlbhIVR6MB3bNYnVBu6bYYozKYA/L8IEagVSrFeQHYsEI8OjIGS1blSQckZJ
	6Lzt5Lh1dAU/adPYkO0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcBBE-0000000CE8O-3cmt;
	Mon, 19 Feb 2024 21:28:04 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcBBB-0000000CE4U-05AP
	for linux-phy@lists.infradead.org;
	Mon, 19 Feb 2024 21:28:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 512DF60FC9;
	Mon, 19 Feb 2024 21:28:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 49721C43394;
	Mon, 19 Feb 2024 21:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708378079;
	bh=QALXNb0onLycYsgMBD77sidxYNcSFWXNGDA/ZI2hTFs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=WY+2cyF8KbO2esqkK//upSklFy9fdKQNieae1c1W9+bw4JoGjAS1Xg2K4nBdNCzkz
	 Obnv5wb0aayVQmSqJmSB2atMUJPeojRc34aMUResDLnoQztvs0YgqdPfg3acqz5YRH
	 FbbBxzdBmL9KA7wTzIoZOslS67VSwuIsvNJQEIQqpFp+anBkNDAVDbgawEALIbAKpQ
	 54qGzvgo7mDwJ2WNOxHSwFdQnPiKCYLQaXiVbC4zbQDKUd1JElBKhxNnOs1quZiT07
	 ss03Z2oEsFVkeNHAqcAaO9pU/pssbGv+omExgR+7IVq97B/fZzPjWlwRf2Mb8DcW5E
	 stRXe4YextrJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28650C54787;
	Mon, 19 Feb 2024 21:27:59 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Date: Tue, 20 Feb 2024 05:27:59 +0800
Subject: [PATCH RFC v3 2/5] arm64: dts: hi3798cv200: add
 hisilicon,inno-usb2-phy to compatible list
MIME-Version: 1.0
Message-Id: <20240220-inno-phy-v3-2-893cdf8633b4@outlook.com>
References: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
In-Reply-To: <20240220-inno-phy-v3-0-893cdf8633b4@outlook.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708378078; l=1213;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=9vJGt8Ea6nDd4110Luo3uNaofm3Nie+YLh4/3aqzgKY=;
 b=G6dwipOzO7tIAyQn4WvhzD9c9rqV9ps0/6dGeA76lSMJBMrT0dJH/JkirMdy8SIQDVSc+ggtB
 y70Sgiw1jlyAAwqIqcwJKTAco24oWGn7DDyAwaasUOTGA/spqPteT2+
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_132801_143998_DA7ED2EF 
X-CRM114-Status: UNSURE (   8.12  )
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

From: Yang Xiwen <forbidden405@outlook.com>

This is required due to recent binding changes.

Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
---
 arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
index ed1b5a7a6067..268d57eabce7 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi
@@ -114,7 +114,8 @@ perictrl: peripheral-controller@8a20000 {
 			ranges = <0x0 0x8a20000 0x1000>;
 
 			usb2_phy1: usb2_phy@120 {
-				compatible = "hisilicon,hi3798cv200-usb2-phy";
+				compatible = "hisilicon,hi3798cv200-usb2-phy",
+					     "hisilicon,inno-usb2-phy";
 				reg = <0x120 0x4>;
 				clocks = <&crg HISTB_USB2_PHY1_REF_CLK>;
 				resets = <&crg 0xbc 4>;
@@ -135,7 +136,8 @@ usb2_phy1_port1: phy@1 {
 			};
 
 			usb2_phy2: usb2_phy@124 {
-				compatible = "hisilicon,hi3798cv200-usb2-phy";
+				compatible = "hisilicon,hi3798cv200-usb2-phy",
+					     "hisilicon,inno-usb2-phy";
 				reg = <0x124 0x4>;
 				clocks = <&crg HISTB_USB2_PHY2_REF_CLK>;
 				resets = <&crg 0xbc 6>;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
