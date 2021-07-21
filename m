Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59484C636CA
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 24BF561178
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 24BF561178
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PFZZ9BtArlVLqxQm+TyEsQKBepEDD5mXzYkWV4QEKU=; b=CFMPY/I4DWDHZm
	yPYOLVCJuoK+Pz5X/wYuNtxSNXnL7+5QfV039ZV1cQAKdb/kyBXas8TqKe+yeKL+bYbF0yodgKn0z
	zdSOo0bo4x2x2fdfFz7NZ4NJOew+sfN/IsU7IPJFuRPq+I0kEioviBqngjd70w9pvGlakawz/aZR6
	Kkq6/BQhM4V+4ne9ZgpGP0mW3tnLcR7Vj292MXzINz74/keR9pzTAWXDCJzM30qvfaX7+uusYN/rL
	ygXGejCWdr4ySbe0P3VsVFCZi+ZOiuB1s+Z7EXQ3aNEmA+OtvV9qY9wu+sGY843kHqB1YDQRR2+KH
	brY5YBdaDLRHJkA4+CXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m62Ut-00ENNX-MA; Wed, 21 Jul 2021 03:02:11 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m62Uq-00ENMp-6C
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 03:02:09 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.west.internal (Postfix) with ESMTP id B0B182B004FC;
 Tue, 20 Jul 2021 23:02:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Tue, 20 Jul 2021 23:02:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=1LK9TbzR4mbFW
 wxa2DMjASOGjEHNStV5ARumpu+hHTQ=; b=GZ0n3cuRcyd0fOHJcgmxcsqFnhjfb
 /0NtfYGYodl8Jj2bmgAXxCPk5BmiEfZzNUZMbVj6yjS/Gjcj0c3xovsWDy7RjYS5
 Dyu3PUUBwuw0J3JU2TgXt9QJkUbJ6V5dLYBBQTH3IjTV9sEoRC2K0oqN+Uz3XwhZ
 rjmwiLCT7B+hoQ8uWZgjYyXUreWM2HKEQEQIqh5iREeLzAS2RUGaVl6iDwq036rD
 VYCg7SpE9vcjOScdEAasYS71unHanIC2YHyeG8XxKnP5gMp6usp0YbTRQW/6Z95s
 qHB1uoVYjfROvLn+N0fuhWxZl4/v7xL6JtZybbjwYZaeDmuQT4ThD4nQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=1LK9TbzR4mbFWwxa2DMjASOGjEHNStV5ARumpu+hHTQ=; b=Wcms8viT
 uwYMjYhw+juuQkqlCzqyzG5nYcVxXmTKrXylV8wOh49560wcDDxpKL56TEvZ+8N8
 vU+MQiO6AxbXDRYtL1uokRmDWsKteouimYfc51wwYf/RQ1uDZteke/0JmbsfgS04
 2wKFy9dCJ2NU/A8CdoJnq/5P4C7lX26t9RBSHMMEWMR0dLIA3627NPT22BzODGm/
 MV2DJ2t8pT92hyWOxAcXVWfiaa/2E/WwcIXrrULvkK/MLBVVSi2qQMUlCuWnqkaG
 H5zmD5MNbaqdhnXGL2GPDIO4HJJc/L/cEB45EpzrIql4A/t3PfqyIRqumTYJxaHk
 Gw1aCyaPHuDr9A==
X-ME-Sender: <xms:LY73YEEL26fMohSQ3uDtk9fUzi8FyIAbfAg3feSEXuhamEypf2nECQ>
 <xme:LY73YNVMQkoyr7tLUi_c6ctIdZuKBkbTKAryjom-WbtH8h_NevlWOgGzxK-hdie71
 KWdFY9lkgK9R55F5yg>
X-ME-Received: <xmr:LY73YOJs_rCvM1X_JMLTFcu4WvLYMkJqxx_BEzQz0z2qnDrztsWsQTDArn3LPrMxQw2BRZ0b4lkD>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeefgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 tdenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:LY73YGHUYpPMxTd9dxolzhWKivx2L2B336gSyGvGdvzIN4IUpE-6DQ>
 <xmx:LY73YKVXk68F-w3gNSbVtyo-Cvhg6m4Q1ZyQwCYOSazdUSayYVsR0Q>
 <xmx:LY73YJMrfYX8LSSR4c1cJ4anCzbQTPEWV80Hd2nsWUG71KwqNKG-Aw>
 <xmx:Lo73YDMdQ-LWVUpU-VmVIgKWLiXm6mPKaKWvFtva1AUP1WTdjR3CGEBLVVs>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Jul 2021 23:02:01 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v3 2/9] MIPS: DTS: Pistachio add missing cpc and cdmm
Date: Wed, 21 Jul 2021 11:01:27 +0800
Message-Id: <20210721030134.10562-3-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
References: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_200208_292032_F375E1F4 
X-CRM114-Status: UNSURE (   8.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CPC and CDMM addresses are adjustable and we should tell kernel
how to place them in devicetree.

Note that MACH_PISTACHIO code hardcoded CDMM base to 0x1bdd0000,
however it will collide with GIC address range. As we don't have
any CDMM device on this platform it won't be a problem.
I found another spare range, 0x1bdf0000~0x1be00000 to place CDMM
instead.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 arch/mips/boot/dts/img/pistachio.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/mips/boot/dts/img/pistachio.dtsi b/arch/mips/boot/dts/img/pistachio.dtsi
index dc3b7909de73..b1db8b8f446f 100644
--- a/arch/mips/boot/dts/img/pistachio.dtsi
+++ b/arch/mips/boot/dts/img/pistachio.dtsi
@@ -900,6 +900,16 @@ timer {
 		};
 	};
 
+	cpc: cpc@1bde0000 {
+		compatible = "mti,mips-cpc";
+		reg = <0x1bde0000 0x10000>;
+	};
+
+	cdmm: cdmm@1bdf0000 {
+		compatible = "mti,mips-cdmm";
+		reg = <0x1bdf0000 0x10000>;
+	};
+
 	usb_phy: usb-phy {
 		compatible = "img,pistachio-usb-phy";
 		clocks = <&clk_core CLK_USB_PHY>;
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
