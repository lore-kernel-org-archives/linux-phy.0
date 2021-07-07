Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AE58C11F68
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:16:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 28FB361CB2
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:16:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 28FB361CB2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PFZZ9BtArlVLqxQm+TyEsQKBepEDD5mXzYkWV4QEKU=; b=zOtw0AqmOZ4Mx6
	So0P3mTopp/DfK60MgNiaGJeuPEZ0ZLu960MW9Ks8TKvQuyOeNsZ8NrPX4uaniToYOHuBIOK+EPc+
	a6d1il9GhiCn+/GcqobvpW+r9k8bfDMEUxxXdqHB54UUe73i+Gf4Hf7rD/GKDZPnxezHxLC/ZYH2a
	jljvL0KdWhMPfcD9n71I6pXiDFzprtJKizZzM1sL9s2EYx0W2DQRfGx35rUuq81/Hyb09hmIZKTgC
	i3BDDd5CkBoB/756Askjbd7iINFhlej3pm54dTQASm2twwF8J3gic7gfDHzxy2AtVvW9z6w9lZnrZ
	joD0CWzyfSj7VK6etuoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0y35-00DGHr-JO; Wed, 07 Jul 2021 03:16:31 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0y32-00DGH9-KL
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 03:16:30 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0C95A580452;
 Tue,  6 Jul 2021 23:16:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 06 Jul 2021 23:16:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=1LK9TbzR4mbFW
 wxa2DMjASOGjEHNStV5ARumpu+hHTQ=; b=OVGB85Btd0Kj++USGc7cMpSgcx0NF
 3DS8YUNIHeeoe5/X/H74kA7OrHlx+4aW2nLtUPXgOY54ihiE7jTqsClpqCDHMFfy
 6tFU0CyadAoHuRcdn80+Zd64zA0wdctyDlcTyhcEnevTeOzyeWIKtsNIzux4AYZO
 V7F0qe9Byuenoe8b0/Dwe2rjiBzVDeECKzXzjQpc96MtelBxwkDSbBWeeIA6OL4q
 HLU5qcH8C3eT43LPKTahFS3MQ3/o1CPZl8Aeg5IvczvHUnh7iRzcpqLOGLF12UFd
 2t4YoMzAYu7PXnupCxSWzLuPdxbkzBZXrFkd3xJxCZdWaSC4vkR+c/TUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=1LK9TbzR4mbFWwxa2DMjASOGjEHNStV5ARumpu+hHTQ=; b=dg1XonSv
 csU5WYNaGk2w6MepW7ohdutpEgBpERmdaXlr/0aCKf87SM6OaVCCNLYLQafv+MUB
 JCcUh5c4MuHe41FbPYsiprabBW4p5QZzryumTcvgSUF10BKuGNCtG0B6/kktHinp
 blc+3jDG5IvwOZ1KovcDTVZWg/naXCM3CJG/TQWQrdxp3RqQF76KSGG69T83b219
 e28tvU0sWqduJ4mfyT9Z+DYrGNzR2dbFepDQEl4lN6kE9NV3qbZQ4t3/hZYoSXGF
 oIfKHBfgW8heEd5NnUwCE1qOiv9x6CB4SlhgP2f9x2luT3oNkRmaRwdWKJn/E6lw
 OZPW7tX7tW/upQ==
X-ME-Sender: <xms:ixzlYD-GfDlqIIz-ukr41pEfGE1DiQzH1oLzXji2GLAdoFrHo5Nq6A>
 <xme:ixzlYPveqwZQ58SKa5aBOKjKHF4VvFKQLyq-mLDVEsuMxfDg9_FHskPd9N0xtvW4G
 ZYIoBRRX3cGiroT6G8>
X-ME-Received: <xmr:ixzlYBDLR3J_azJ8tLxfXvnvdp1Elac4beqcvfch0fUEOKSnUfjEAqdINlkXTskyYpt_8QfB9dByHNR1aw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrtddugdeghecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 tdenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:ixzlYPdBpYBXFJrUSaTQSlJ8ChRB3fIwKVK2AtxdG5qDw7Oi1O4QPg>
 <xmx:ixzlYIPEmH2sDoJnrVOrAgK5cklVE8O8ucPYE8rpQzCvOGo9KOVRGQ>
 <xmx:ixzlYBn6Q_6XaQLc65S6MbRqJXDQetQAuNpm9CoLcu_kllcF4DgZvg>
 <xmx:jBzlYJF9FdETNin_1xDuFZvLH6pNjoUxCWeySl0mGkhG0c52T1lpFw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 Jul 2021 23:16:23 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v2 2/9] MIPS: DTS: Pistachio add missing cpc and cdmm
Date: Wed,  7 Jul 2021 11:15:45 +0800
Message-Id: <20210707031552.20166-3-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
References: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_201628_774999_DA5CD3D2 
X-CRM114-Status: UNSURE (   8.00  )
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
