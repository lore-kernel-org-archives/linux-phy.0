Return-Path: <SRS0=Vlgz=MP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B7A2C4338F
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 02:26:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 57FE760EC0
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jul 2021 02:26:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 57FE760EC0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2uToxhi/uwpiz99kgVgib9cnL88Mht3V4NrCzl5xSQ=; b=FCL0L8tg8TrBLK
	LD5GGT6NA7G9+a+0WQO37enSuuQ2LyrOdW6wV0Q/l3Fn/y09kNwSknCzumU6Dgj37B4/knVRuNdgd
	HnWWBmNUt8l/pISBAX5US3cz6XZOLVqUvSUjX0sOjZfqO7kmXCYhy83sSgSt+wB2sGfl4n6krXAu8
	dqUFL/R2ltf4BVaKIq6HWYqxhM+2um+nS0/wgKaQ3fv82RoMVOcW0bUT6+IKoakXurbNk/qYVo6lf
	4EMpfHeRnG6Quwi7f1yY4vljQY6e8kIOeJIULPNnt5Iv+iEIkVLt0e6W2veXqUqdLDe+pQ5J7s/1h
	PfA+lv+nX47CLUMpM8qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6ktp-0035wY-Ss; Fri, 23 Jul 2021 02:26:53 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6ktn-0035w0-96
 for linux-phy@lists.infradead.org; Fri, 23 Jul 2021 02:26:52 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9DE765808F8;
 Thu, 22 Jul 2021 22:26:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Thu, 22 Jul 2021 22:26:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=juuqFtaoRobQQ
 sYNJO/H9QK58gSnRD3PdI9BHJOIPdI=; b=WD+/CNOL4Tj8cOY3rCwkLPprvpwv4
 F9/jhl/8RPxwuwKMp/9H0q6TktLhnvIpc0OG+QNrImnB2m+4LqdphOcqwqHZOYqm
 URtcHzbSlTPqDpTOpXW+19LUFB21rT/akKPIGxYew/U5jrSb+pwXluhoHSobSzsL
 lH/9bP+cEBGO1aWNbrpPY/ATq/sKLCrtXfKlpGurolQryuWxZb+jWQ5UhcSxyNZJ
 6C6Egtmdfr9mMPN4QidCTGjjk7TBwg/g6QBZwVRaMYu8I00XgAt8WdqFfDLvRx02
 7aayw95iT2xs7MMHvQtFxGrTALTiUfBDkLG/NNMnXvHB6QXFShKiPqN3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=juuqFtaoRobQQsYNJO/H9QK58gSnRD3PdI9BHJOIPdI=; b=Q29a+WcP
 OJavTcyfz8HR53GEm2PkFci2iTe+umbHt0JGc2C1rjlM/A85jW04/t2I4Uia7kPe
 s1fwGuGh7pFlFT8sgp3mp8awZUp1KsHsT6tmycdIW0s7+mn79YEIRW2qPNjdTJzI
 OI1z6iLaHJz8ugcMBPYx+2hSojn90cN92abYoW+/CELcg2eQhguYToVCUNtt6nQp
 Nt+rFTQGZwbfLJrqzucVWkLDKp9wgBKpdgwnT6JN+eJUeL8WCcowREFrhj+rjB0g
 tmuX9tHR8+nBPB4XmOepIbUrva4X+26nW5kNAi3G/VKZdA8Hh+umUpV4hUoWxUrE
 hJ5ajzGvF6Copg==
X-ME-Sender: <xms:6ij6YGnecj1OGVZ3-n-Du0Qjip82Ux-uSRW2trFzgv3PIO8XkdgmSw>
 <xme:6ij6YN0kfbziA9gshifFLPm2GLyo99ptn554BHL_2b8I2ORjeekAOce7zXD0MsrUt
 F-BPgv0IOnOegCnG5Q>
X-ME-Received: <xmr:6ij6YEqYg0k1TLefHX0abE2Py6kQyJwNdz6igHrgjiaJapGz79UOVBQaCfYAwEi1dkHy5ZVZQHdB>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeejgdehgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 geenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:6ij6YKm_9Vz8zS1GGm46TE-5-XwnhZTiS7YKbkr13i6gOGGlihKHEA>
 <xmx:6ij6YE015Nht7OrqP2JinJtlKz9KAgfEGy2KN_Xcj0B1fSAh8Uim1w>
 <xmx:6ij6YBt88MpoEZZ52gVIZRBumkYca8Il7zBhnzPno-Ew0Rbia-qf1Q>
 <xmx:6ij6YNu0pnF_JshIOUkh1KYwS27jVY1yExIIGCwM0LeyrGkVq8rqLw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 22:26:45 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v4 9/9] MIPS: Make a alias for pistachio_defconfig
Date: Fri, 23 Jul 2021 10:25:43 +0800
Message-Id: <20210723022543.4095-10-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
References: <20210723022543.4095-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_192651_443332_8B1E22F4 
X-CRM114-Status: UNSURE (   5.41  )
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
