Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA678C636CE
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 850C4610A0
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 850C4610A0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2uToxhi/uwpiz99kgVgib9cnL88Mht3V4NrCzl5xSQ=; b=nQJGrIh4rBBzoU
	3RviH3DiXS/fIlpyF0mdzZT41I0SvMZqvz+DSvHcBiEhAy3qWjd3PVvz0HIq/QxgdpmpMYhckt1t7
	WpAda5+oqOhJ3m9VIR7Zzg4eWkZP08YjBq1ZVz2SPnLbiDeWYQGXrQNpCKPrygryprA9tOEb6XpqQ
	IKk3Q/dt2pxXUFdmiGGlfxFCwCk0KJxUd+t3o8hgKRPNuAfrsiuGFFo4SXqu252Yta8NbW+S9/YIa
	wctuHkAFDpfcAyS8r4k+zZFxpdwWroIRw+7e45YT/3y8AtV/v4n6w8KG2mCBMHQjx6I5km4RuWKe7
	oIllGtwKKV3KOWEz/Gkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m62VZ-00ENUM-38; Wed, 21 Jul 2021 03:02:53 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m62VW-00ENTo-JO
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 03:02:51 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 722CE2B004FC;
 Tue, 20 Jul 2021 23:02:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 20 Jul 2021 23:02:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=juuqFtaoRobQQ
 sYNJO/H9QK58gSnRD3PdI9BHJOIPdI=; b=N3V4TmMuagRkUZ8V5vQ0mdpd46Zzb
 yYWMtJKFJoojLwgSATkjuDZ3ekBCPfMH23gt2FqRXDuimT8sqBjuG6jPvovxKurG
 W/QB5TNCNX+X88P5piqPckJn6UaZNHo81jj/8dbjO3ExyrB5h3p0uO9Qluic9Vag
 2qjNoD3as4UMqbRRjwxiDcpbJBudomKkx4CyvQkteS03oTjzeY4adVxdXm67Q0r9
 c71xuF5lGGz+AVBdIjoB1Yy14UcrrbWafJ9tZd3sRx6pE6NiebZADfrjE76yy6M+
 mKee7YoF3afZSv+vy48SLb+YBoDIp3i5M71tTvohoN4EEWUKUZVL9QuIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=juuqFtaoRobQQsYNJO/H9QK58gSnRD3PdI9BHJOIPdI=; b=Ah7eMR7f
 DbcWHT/5QGSJCGVe1cyzMPCMLZTDS5DmJhrIvemBcakIffHvaVy1HNpFztTzntjr
 rouvpfgk9k7R4ONIoD7luqJbyqD+eY8FKjDilm9RTGi4A96wH8kYG1sWSQ2xNBmp
 Pd6zDis4D+xEzjMTzF4ZispFlSSukqVJDX/ShQGmwqHcUqTvTSVOZW4ueHahfy7N
 u+FS8bC20Y5Un5ddX8M552NXwbojEgrRBuNuUv9zhjEEY26Di+jRBM2nKppKg0sD
 N6KVuwV+o3FXPoagtXDsY499iV1pLQmZPknDq81rgjuCJiLHJRWzYdXxypcJ1hav
 Cl593vFSkoHnuA==
X-ME-Sender: <xms:WI73YH5un-vJVw7sFD3QrpHhSSXmo6ySkWnZsZneFaPyr0LRHJnkbQ>
 <xme:WI73YM5bRfjwcMO7Il36rlfv2iDSEfaJ9yG7L9ceVLjzGH90gbvHHPjFP8HEIcdtG
 a2jDukyv7rKrMau8t0>
X-ME-Received: <xmr:WI73YOeCS0MAQkpxpW6wePjHoE0hj4BEZvjOwQ69UmHXuL8B3O23c_sVPGSmRkJY-S40PGeRgS4S>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeefgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 udenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:WY73YIKymcKrByOFVQ7T_4Wvr_LvzbI6A6GGjEGmuzOWltq85wJuag>
 <xmx:WY73YLKR7XlsU12E0BojPWj_pmWnyQ5o8zKpNsZPENpaQ9Gh-f9wag>
 <xmx:WY73YByRC4jhYajC3l3coqO_dzeMrAwI-RM2IBqN2Kx3a5I6cra_ZQ>
 <xmx:WY73YID0gyUfaSUGCoo1JT5tohEig7qivS52czNkXCJaVmyIdl5dZogTyl0>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Jul 2021 23:02:44 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v3 9/9] MIPS: Make a alias for pistachio_defconfig
Date: Wed, 21 Jul 2021 11:01:34 +0800
Message-Id: <20210721030134.10562-10-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
References: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_200250_697278_2497E35C 
X-CRM114-Status: UNSURE (   5.76  )
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

For those who miss the old defconfig, make a alias to generic
kernel.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
v2: Fix typo 'xilfpga
---
 arch/mips/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 258234c35a09..c299c6ae91af 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -563,6 +563,9 @@ sead3micro_defconfig-y		:= micro32r2el_defconfig BOARDS=sead-3
 legacy_defconfigs		+= xilfpga_defconfig
 xilfpga_defconfig-y		:= 32r2el_defconfig BOARDS=xilfpga
 
+legacy_defconfigs		+= pistachio_defconfig
+pistachio_defconfig-y		:= 32r2el_defconfig BOARDS=marduk
+
 .PHONY: $(legacy_defconfigs)
 $(legacy_defconfigs):
 	$(Q)$(MAKE) -f $(srctree)/Makefile $($@-y)
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
