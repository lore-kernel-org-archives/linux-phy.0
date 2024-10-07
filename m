Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F2C7CFB449
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 16:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvVCpwE1GPCQ3C5BXg/+FcnM2YA5rO/pP5JfxXRC7mc=; b=2cqKTdlxHRkT1u
	/21RZnXPqH3n9erQ1ghQZgpb0Po2VNyw07QWSSYcaZhIrHbY4S0zJi/JE2HQc7QS7kI2T7MqwWAF6
	hlSFwDjPGDlfvXRumWfLlWgET/iqSyI5OkDdOMzt2MmLJK6hi+oayETSP6biTc+59GjrtmiBn1Af3
	RrBfGRCAJ042ri+8Op+cOMO2sjaksAn6IGtdHl+cZZEIOyYWUG1hJJUFpDxo+Jr2Cjthtm3sAyVoR
	U/xTgCDS+muHwJpQPx1YDfgsL9+sWUjzAMb9SxGHFCjxQRMCywitm56ekajb4OsDDSYW0J1CCmLpc
	aSOT+y2PuaiMQzS7Yc6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxqkP-00000003BlK-3JpF;
	Mon, 07 Oct 2024 16:38:13 +0000
Received: from mout.gmx.net ([212.227.15.18])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxqj8-00000003BOb-3BkG
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 16:36:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728318987; x=1728923787;
	i=markus.stockhausen@gmx.de;
	bh=bgSn0O6BXShULsVEObQzCSZRW0/xCAvRAFQsab1tNH8=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=ApLZm8qDQk9NeYvPuO7F7NfguLFP/wxWs+jBrYuEdUijkf7mBCkdyoC4l50vuFSI
	 4klfMTRzdc5YyShOQnUkW84WY2Os0F7/2xAsE3UStjUSG34GmXsiVIADZuDOGmfTf
	 Y1L1OZP2dIaX3pDrkpSOBQeF4AI9M8E12khgcQyLrYSRZeCsk5P06i0kSRBCDlP8n
	 7jizxWwN7YJYIbatO+cYyCD6J6zFMTUp/brvnuR00GPOKj7PyloV+9mmYIzogLdpf
	 BIaRZbrdK6vs9pTc1aXu2X3kLrmmN2axytuxU9T6JLO0ddKC1mTPrW9+Cm6VUFNxx
	 eCcHDCwg40ni9lVwTw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.45]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MacSe-1tZvMH2zdq-00fq1Y; Mon, 07
 Oct 2024 18:36:27 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: linux-phy@lists.infradead.org,
	chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org,
	krzk@kernel.org
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v2 3/3] phy: Integrate Realtek Otto SerDes driver into build system
Date: Mon,  7 Oct 2024 12:36:23 -0400
Message-ID: <20241007163623.3274510-4-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:OJUu2MnLIGziuljRNM7vToeXOrPjoHlcXWxwTjDl5vXwmTFVpHk
 OjCReMHYukIi5xahzUpPDPyZ77rblXRZt/vTRy0WeIdKpSU134luDZutwrRKwmtVUsFFFFl
 paS+JGZkJkxc5OUUT/xvdFayj+0jQd7WgdNkBFAh/XCta20XEewXynk8/rbaDG10sOCzSc3
 FqkV0n/GvM9JgZk+gW5lw==
UI-OutboundReport: notjunk:1;M01:P0:yIPAjd0kYkY=;UX+OkX8JhcyQgHNMEymxOIsSBb8
 nQ+XPKKis09YkQDJuyznCCLQ3+ju+ZtqhfnZkiCQdqoI9B4KsGI9RRBvSfE8bJyDDOul+yeu5
 KqTgO6/HVk+HUaENAsTmh5j6+ZwW2889VMhcD9qzMCPIhma1L/NVKWUnlp7oQ7iGWtUxA5TuJ
 Zg8oFYehGK/pvl3o8XeVvJuiXc6Ozos4lvpAK8i0IxuvrjufR5ILUMCisdghofZlIppyatLw6
 lC0QnUGufEuzPXWGLC7Z90sWHkzoyZWc6I7m6AyOKs3StFZ9COfKgZaZXplwtV7z87HsBBDEh
 JLs8SHZBmny2N1V3roNOjfFKSD15xI/08ioZH2lD236OIYQWDvP/C71FKHTxbG6fKHni8x67a
 MZdFERcoH7b75mPwm3ZQt+56L8lhy0MW6QswdO3A+zMCjlAmOUskSWMXE6214cH8+HzJxjWWe
 nlb7Z6yMfWWerOU06/GnONtZo/r/Z0mXQOENXr671TfbfEa/hG5HC3V64dZGxEjcBeoXtbLbS
 rc7mJGdKWR2JwvcWJ4p7xI6+bkeLDn8Y1y+baoWLx/tWKjOzbXlvDXGstoSvdt54UHFB25tU6
 wf+II5A5cDAVJ9bMziL3St3+J1maXXkgQSM35TtsXrB5ck3LoQgoKzt5p+HDkyYRHSKPDSAeg
 2co4TiTCrrqjhRc50aBkanM1QiqXeKz/e/4zX71WaXpP300/RrKDjazfeuL0kF0a1VP+kaEoe
 y2IYEXetRb8OIimLqIQuM3gqWZ3zKFrVOnzNt1tBVOicrEnJpmEdWvvv9wvwXMxlcfNA3IqMV
 r+YAoE7BCMrybMBby+zaytfQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_093655_109687_108E02B6 
X-CRM114-Status: GOOD (  10.17  )
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

Add the driver to the build system. The Otto platform currently has
only some drivers upstream and is missing a lot of platform bits.
Use only the bare minimum of dependencies.

Changes in v2:
- Change naming convention
- Add more help text

Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
---
 drivers/phy/realtek/Kconfig  | 10 ++++++++++
 drivers/phy/realtek/Makefile |  1 +
 2 files changed, 11 insertions(+)

diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
index 75ac7e7c31ae..021b4c4e700a 100644
--- a/drivers/phy/realtek/Kconfig
+++ b/drivers/phy/realtek/Kconfig
@@ -30,3 +30,13 @@ config PHY_RTK_RTD_USB3PHY
 	  of the parameters.

 endif # ARCH_REALTEK || COMPILE_TEST
+
+config PHY_RTK_OTTO_SERDES
+	tristate "SerDes driver for the Realtek Otto platform"
+	depends on OF
+	select GENERIC_PHY
+	help
+	  Enable this to support Realtek SerDes in the RTL83xx and
+	  RTL93xx network SoCs. These are based on MIPS32 architecture
+	  and the SerDes connect to one to octa transceivers to build
+	  up switches with up to 52 ports.
diff --git a/drivers/phy/realtek/Makefile b/drivers/phy/realtek/Makefile
index ed7b47ff8a26..34e607f33961 100644
--- a/drivers/phy/realtek/Makefile
+++ b/drivers/phy/realtek/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_PHY_RTK_RTD_USB2PHY)	+= phy-rtk-usb2.o
 obj-$(CONFIG_PHY_RTK_RTD_USB3PHY)	+= phy-rtk-usb3.o
+obj-$(CONFIG_PHY_RTK_OTTO_SERDES)	+= phy-rtk-otto-serdes.o
--
2.46.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
