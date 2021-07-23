Return-Path: <SRS0=Vlgz=MP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D85A4C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 02:26:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 58F6860ED4
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 02:26:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 58F6860ED4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhrnEixDxON57aAxa5sBe+uv78XMEQVbyxaGemPmU5I=; b=lUQXBfXprrxzZK
	lyzNGXZPZblwsuSUWQrMwHB4ovhwY++S5FpTTvD4KDLgTwZhXBTtCdmq3NEFMFIc6nIto4tXeK4Z6
	M9pF5W/q30uWwxIw/I6D+2xYaDTJiN0jKXw+vvzifbGhgbXIBwQvUDB1F+1NvYQg3+KVIxdseB87+
	IjFHoxWxRuk/rxBewCzLJudsPjS+6sSrgxH+HNrzrWKZ0jio3rlk6igXavpepBSzCxHx49G96yh2l
	cRi1xxFoOb6K/vdJHtaw85Y1Z5pi7rzOxTCMoxvL+XChnXMPI9Av7aLUhtWxnDjS2bjeTptm2F8OZ
	s9U2B/TFBwQZSfG3XKsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6ktC-0035pr-S3; Fri, 23 Jul 2021 02:26:14 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6kt8-0035oX-NZ
 for linux-phy@lists.infradead.org; Fri, 23 Jul 2021 02:26:12 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 412245808F4;
 Thu, 22 Jul 2021 22:26:08 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 22 Jul 2021 22:26:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=r3qhoAmAxV9Zf
 2wb/yIVFCBti1RuuU/Z06V8xV+UraI=; b=p5ZOJ7D+0J/Gw2/dghARH2KUv0XUm
 AFwIb4l/P3CGr6EVf2Z5jo1lOKfElwpdNZuMaWCuT/Gw3jehGPTsM/5qMPrvtM5A
 HLwliLFoeIHW5CJJe3JlKYadjdeBV6s+nDnLMi1Pu5Nx2oOwJEj204x1XBF886gO
 3XxtBFEhWfNkFOzTEZAY3cvo0jJjKkIKeOCeys091ajFHCAkz9QGpaC+tWhfvPLF
 igUn2SKET18MtYMw5GTYR+cBC7h5klENOp9IMQYc7rHyjowPQtN2S+NE9iq4Ogha
 iJMTD5NbYaJf5LDMhVaxAGE8HyoFiX5FiKW1HRnkKBPjr2tdzsR8aa/rg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=r3qhoAmAxV9Zf2wb/yIVFCBti1RuuU/Z06V8xV+UraI=; b=DLFit7QT
 Tshudkr7nOp6t1VqGyb1OZnnniS8Niq4idE6tLB3I265Zrf3gxmjAH6hvkSPy70o
 IESYRL9D1VTGit1tMFZaWzyxpcULBF3OnIR4Hhv4/GoyDKQFtS8UzZsE5Ngh4dTr
 J7sz9yNjuFtAxtSyHnrHzDy9qOXGfXO27WiYQKM/gfXatO2aCY3vKG9RLOF0Xhue
 Vmxhg9ECDMbyc3zRgN//nK0q8RC4SzdbCfq8I+VG9XIhIdAgu9UlCc0dvWYG4xPk
 oS7iy6+m40fjjSfrBSE5jLTiWdw6fTvUzXXy8YPiHu9rdqgdBMyzZ1QJHVrm7FY3
 H/vVhWRht2cvCg==
X-ME-Sender: <xms:wCj6YPsiaFesITx11GvTsXz55T_nZLsc-KKfgoCYOBAJ55_kysY1nA>
 <xme:wCj6YAeDHvguxxr2gMN6iFoLgyT3gm0GX9XzH0PfYT6xzV4e0quv0fUwQ9ucjZxm3
 AJF_jVDM9uoK42_BO4>
X-ME-Received: <xmr:wCj6YCxsiuJKBlRdlAUq7_L2UrSxdhKOzVHK52--9xAkszqc80W3HfVZ7a1HZDBZeToj7PTnW8w->
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeejgdehgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnheplefghfdtjeeftdfhtdefud
 dtleevveehteetffdvuefgtdejffegkeeigfdufeelnecuffhomhgrihhnpehithhsrdhs
 sgenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjih
 grgihunhdrhigrnhhgsehflhihghhorghtrdgtohhm
X-ME-Proxy: <xmx:wCj6YOMCk_eXM9M5_wPf5-eKQsTp5DJsMpP4iYekBFtQSm0y-ZvNaw>
 <xmx:wCj6YP_wtz0TNwSBAd_Jt9FdIn-PklcN7nDoI0SArb1UxvCSvA3X_w>
 <xmx:wCj6YOVS0VdFtbpQhuNuS1Fe0y5qhDEBP4PMw8oTPw_2uBFmdNMtxg>
 <xmx:wCj6YA3BiH8eFpbRYIJl80uaKTq159TVqNMm_Am2hEM2fxwb4Q8Rag>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 22:26:03 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v4 1/9] MIPS: generic: Allow generating FIT image for Marduk
 board
Date: Fri, 23 Jul 2021 10:25:35 +0800
Message-Id: <20210723022543.4095-2-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
References: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_192610_877065_953C3A02 
X-CRM114-Status: GOOD (  13.43  )
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

Marduk is based on IMG pistachio SoC. The platform is using
MIPS UHI booting protocol and does have a proper devicetree
implement, thus it could be a part of generic kernel.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 arch/mips/boot/dts/Makefile          |  1 +
 arch/mips/boot/dts/img/Makefile      |  2 ++
 arch/mips/generic/Kconfig            |  6 ++++++
 arch/mips/generic/Platform           |  1 +
 arch/mips/generic/board-marduk.its.S | 22 ++++++++++++++++++++++
 5 files changed, 32 insertions(+)
 create mode 100644 arch/mips/generic/board-marduk.its.S

diff --git a/arch/mips/boot/dts/Makefile b/arch/mips/boot/dts/Makefile
index 60bd7d2a9ad8..188301164d9e 100644
--- a/arch/mips/boot/dts/Makefile
+++ b/arch/mips/boot/dts/Makefile
@@ -2,6 +2,7 @@
 subdir-$(CONFIG_BMIPS_GENERIC)		+= brcm
 subdir-$(CONFIG_CAVIUM_OCTEON_SOC)	+= cavium-octeon
 subdir-$(CONFIG_MACH_PISTACHIO)		+= img
+subdir-$(CONFIG_FIT_IMAGE_FDT_MARDUK)   += img
 subdir-$(CONFIG_FIT_IMAGE_FDT_BOSTON)	+= img
 subdir-$(CONFIG_MACH_INGENIC)		+= ingenic
 subdir-$(CONFIG_LANTIQ)			+= lantiq
diff --git a/arch/mips/boot/dts/img/Makefile b/arch/mips/boot/dts/img/Makefile
index 441a3c16efb0..24f6bbeadd48 100644
--- a/arch/mips/boot/dts/img/Makefile
+++ b/arch/mips/boot/dts/img/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_FIT_IMAGE_FDT_BOSTON)	+= boston.dtb
 
+dtb-$(CONFIG_FIT_IMAGE_FDT_MARDUK)	+= pistachio_marduk.dtb
+
 dtb-$(CONFIG_MACH_PISTACHIO)	+= pistachio_marduk.dtb
 obj-$(CONFIG_MACH_PISTACHIO)	+= pistachio_marduk.dtb.o
diff --git a/arch/mips/generic/Kconfig b/arch/mips/generic/Kconfig
index 657dd93c5e76..7dc5b3821cc6 100644
--- a/arch/mips/generic/Kconfig
+++ b/arch/mips/generic/Kconfig
@@ -58,6 +58,12 @@ config FIT_IMAGE_FDT_BOSTON
 	  enable this if you wish to boot on a MIPS Boston board, as it is
 	  expected by the bootloader.
 
+config FIT_IMAGE_FDT_MARDUK
+	bool "Include FDT for IMG Pistachio Marduk (CI40) boards"
+	help
+	  Enable this to include the FDT for the IMG Pistachio Marduk (CI40)
+	  from Imagination Technologies in the FIT kernel image.
+
 config FIT_IMAGE_FDT_NI169445
 	bool "Include FDT for NI 169445"
 	help
diff --git a/arch/mips/generic/Platform b/arch/mips/generic/Platform
index b871af16b5b6..e1abc113b409 100644
--- a/arch/mips/generic/Platform
+++ b/arch/mips/generic/Platform
@@ -24,3 +24,4 @@ its-$(CONFIG_FIT_IMAGE_FDT_LUTON)	+= board-luton.its.S
 its-$(CONFIG_FIT_IMAGE_FDT_JAGUAR2)	+= board-jaguar2.its.S
 its-$(CONFIG_FIT_IMAGE_FDT_SERVAL)	+= board-serval.its.S
 its-$(CONFIG_FIT_IMAGE_FDT_XILFPGA)	+= board-xilfpga.its.S
+its-$(CONFIG_FIT_IMAGE_FDT_MARDUK)	+= board-marduk.its.S
diff --git a/arch/mips/generic/board-marduk.its.S b/arch/mips/generic/board-marduk.its.S
new file mode 100644
index 000000000000..4f633794db90
--- /dev/null
+++ b/arch/mips/generic/board-marduk.its.S
@@ -0,0 +1,22 @@
+/ {
+	images {
+		fdt-marduk {
+			description = "img,pistachio-marduk Device Tree";
+			data = /incbin/("boot/dts/img/pistachio_marduk.dtb");
+			type = "flat_dt";
+			arch = "mips";
+			compression = "none";
+			hash {
+				algo = "sha1";
+			};
+		};
+	};
+
+	configurations {
+		conf-marduk {
+			description = "Marduk Linux kernel";
+			kernel = "kernel";
+			fdt = "fdt-marduk";
+		};
+	};
+};
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
