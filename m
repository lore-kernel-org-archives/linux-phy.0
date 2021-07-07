Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37C73C07E96
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:16:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F08D361CB3
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:16:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F08D361CB3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YhrnEixDxON57aAxa5sBe+uv78XMEQVbyxaGemPmU5I=; b=l/xk0miivzTnJg
	78cAwCaBll+3rs9JGNQ7QpoWpEHHYZO3WecAEpd3bBqfndyia8yNQmKLmgZ8/R5CtKpOlXs1rmb12
	o6SoOkzOjwjIIz3ePTN1t/72+gR8fRsqshYmDU0/DNNYn7DEpwg9m3NWDptmj13BM/CoCXSh3sZM9
	tW2w2XNv3Cb1yJVOA5sM+oW3GHwuwGszxO/OffrOT+lMlhozoWbqG7rLpq1YnOkvxabF2pNxSdbaA
	9n3QhOkwObtdc6MkV4NZ1lay25OqXi+814z/jKc6JwL2jws5xaQmo+O8SWCG4MXjlMmw8RyET99O8
	02OVl3ztAFFUpbQk2zpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0y32-00DGHA-G6; Wed, 07 Jul 2021 03:16:28 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0y2z-00DGG9-Tg
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 03:16:27 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0C080580454;
 Tue,  6 Jul 2021 23:16:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 06 Jul 2021 23:16:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=r3qhoAmAxV9Zf
 2wb/yIVFCBti1RuuU/Z06V8xV+UraI=; b=BQ09BsKOkHhURf4xeyt304WUtZ28b
 gFsKRh1BlIYYrtI81YVr7VdpZpHz9rLdzKFdM2ufz5bJ8gEv5JHqE+pjMpGvPx/z
 a+JBw7SW2BrXXpl0YaZyhjjG7fMzWRI+vPe9oKpXVi6Lq81JzJSuoO21JQu5lGOb
 QNu81RddzchVfX4BNyp3aOYHlELD+zJ05lpWlZ5ls7pK9cuA51mgmOorO5el5b+3
 N+MOuqmE9TG96aqqWzZXDRsC9XWuFD6Z7dMw07roMILFH6cgUVWgT+STTRgKqNud
 UIbvCF+/omKOpJWc0/n/xb8kLDiEpiJToj78g8PKPeoRixaQX4n65dpfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=r3qhoAmAxV9Zf2wb/yIVFCBti1RuuU/Z06V8xV+UraI=; b=FL/c61rD
 29pJKQL3HoHkRB7VO6WBE5srTkqVSNO+IBI3Ya0VAT8Ke+Est5iz4BOZRsJ7UFsb
 DoQ2DP/6qT/7CzGn2pAMpgHJS7SZybjYdArtTJe5BkKEv6Gsmf8RVMqGKlg7TmFo
 sJj4rt1MDBaVf9j/06Ooh7k4w0jK2m/Ehd8TcxVSaYC5MuHKyH/+W/8lA1TPdc5U
 NChuWq+oB/7kTfxdsokJ9CWbxeF6WNUVEiTkbrOSn4XQibvVGL2WT9FNH4T3CaKV
 cULTXcr13iHvNPIUMM0xQQ4pe0wlKn40vr1VGi2YNQ/iGmAHAAwP7WLNidVRYLXo
 qOSAGJrD1C9XTA==
X-ME-Sender: <xms:hhzlYGlfSXsUcXzHuCC0LN115N8Hhxpic9ne9SVsy-1qmiTnsyNb_g>
 <xme:hhzlYN0RuLSO_9pXLZISUIieebI1mX5O_TDDsq1OtIS-8kMmIILSIM6fxZHNkhMvZ
 O2R-W0aMK2GP9fvzBE>
X-ME-Received: <xmr:hhzlYEqBiGdv4b8Vl5o_0bVewBKclwgi6ZnRRZFPDLN0lElH-13kVe6Pup79u5uHAbTYEFT1Y6E5EYa68A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrtddugdeghecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnheplefghfdtjeeftdfhtdefud
 dtleevveehteetffdvuefgtdejffegkeeigfdufeelnecuffhomhgrihhnpehithhsrdhs
 sgenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjih
 grgihunhdrhigrnhhgsehflhihghhorghtrdgtohhm
X-ME-Proxy: <xmx:hhzlYKn0Ylq0pzKnhO06ZQE5Hhgln98lFHUvhfUIonxEmENb1rV3Sw>
 <xmx:hhzlYE3GAbrABoLgHJUHhX8d9FoX0LrkrAt1R7x9EMp3i9bvPH2r6A>
 <xmx:hhzlYBs5zeCuTcYNKehHT6LDLmjOKOJI4St9znd-0fI3a01AL2plMg>
 <xmx:hxzlYNuFSomQ4Eldo0TBzTbWN_F-8Y_F3y6eHApCISr1d5H1JB6E0w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 Jul 2021 23:16:17 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v2 1/9] MIPS: generic: Allow generating FIT image for Marduk
 board
Date: Wed,  7 Jul 2021 11:15:44 +0800
Message-Id: <20210707031552.20166-2-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
References: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_201626_068339_C97B5560 
X-CRM114-Status: GOOD (  13.84  )
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
