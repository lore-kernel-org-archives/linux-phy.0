Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EC6FC07E96
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:17:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D509761CAD
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:17:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D509761CAD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2uToxhi/uwpiz99kgVgib9cnL88Mht3V4NrCzl5xSQ=; b=ku+qXEjnyl+9VM
	QVExG2arkUJ5uOSejUmzevpIzEIlrbpo4R41cftvUeSS0lUva6D0+ReYg920ZMShiOjcbYtD7IO04
	H5R5tGuR7/kQFhg0aPm5VW8l+QOHkz5xObeniT53GdCuecK/cs8WaBk4MLKcDzqYjSKMqzVC49WvV
	MyIw/BYtJCZJ/uSNmwVL0xoPEQgf6Fuj1qGCPacpeXOCm1Xpj1smAC1/AKLmjqnegYAxKpIpSx2fw
	9zgKR4oy2MUaLLI8Obx5rLD/vaGyiReAN8tnEuU7ZalBzu6hbaUd9LdL68iKIe2yv2ye6Jd69UhqB
	orEN74gVNqdIe5PMQKIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0y3e-00DGOL-DT; Wed, 07 Jul 2021 03:17:06 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0y3b-00DGNs-Ex
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 03:17:04 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id D9455580452;
 Tue,  6 Jul 2021 23:17:02 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Tue, 06 Jul 2021 23:17:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=juuqFtaoRobQQ
 sYNJO/H9QK58gSnRD3PdI9BHJOIPdI=; b=UnNTlUns4nF4Sm60H29+2nOnMa8aB
 ujFlja4gyim5mdIgthZtrVM82T/Au2CQGWApBlNEJVxeJ6fOzwXnN/6j6vbpmlF0
 ZjrGCn9+gF7Jq6NdIDxwb+nvOdd40FVi7m30DcsX30oFeSxz45iBSVR6n8HRFU5b
 1xGL7oCXmc9eZDFRRStJ4Jlu1yTeVt7mnUFHuW4RibHH6iMX4QYR3emKcor1szaV
 UJjNvHdxsQqV3C2I6CC+wFS0ABxabPUDm20q3N8mXFbmT1bZrSP4YVQ55Gjm0dH2
 Y9w79boLX2LGoOzN2RejXiHE9IpkNqdH7O27iG++RbYoMNTXK7AVDj5pQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=juuqFtaoRobQQsYNJO/H9QK58gSnRD3PdI9BHJOIPdI=; b=V38zsJJk
 r17GENdNywIXRqq2tpIgAqydXMi3A1dalLoYL+q3/D9XTiGF7phRMZu3nPK4O9Bm
 dADjTgDFvjFXTPO2LfJ/qWCdmwq5FQNFFqny1zGc3Sz1YzrgFLMiQ/9TLKKqfxIW
 NPQeufoGPgpZOEoNhhAQx0pDENrFiiLu3OhUWSqvUeyFNR+y4n3mM9imQBKzvcCs
 caUHsm3InkJ50si+LjQh5BONpwJEBCHRj8xBGhXHdKyNeHnEg5E9RBaGKM58AWnN
 /795qgBpvWvUNrvvuQR5gxJOYrk20CYIV569hxInMYqUksaL6FUOPJGptoClTSi+
 dQGXyOQeGHnlQw==
X-ME-Sender: <xms:rhzlYKP4kZqMi1sJLhFXdbLCnlsiqjR_6ZVWtXEljDOV-3o4Rvfi0A>
 <xme:rhzlYI9rw83llC2Aft_wTEPlzFJ-P7ahORIqn8JZVwF1j0Y1OpmuA8Eanzdij0YKH
 QnA9nOuKeNBNiNvObw>
X-ME-Received: <xmr:rhzlYBSeC1D_MwovPp0paPrzJZYBxs1x_t8ho0b54tVD1Vt6uABeHkLYFSWBIvOGyc9ZnRPmi6s8BiuxSA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrtddugdeghecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 tdenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:rhzlYKuyS9yzXybC25Igtk2NRv6mq3ybw5gXSjsY98ye9rrKshsO7g>
 <xmx:rhzlYCd5qArvZXvXDWQK64Csb3kIowmGzoY9sGGM9FZG8Ke0Bp9Ueg>
 <xmx:rhzlYO07b-mMZBqWpaVUQufe0W_jAoO0eean7kCdMXQeP083eNB40Q>
 <xmx:rhzlYDWjyxu7iGsnrcLm2X2vvnZG61DrFKFOQQMlGFACDPEcIEM4jQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 Jul 2021 23:16:57 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v2 9/9] MIPS: Make a alias for pistachio_defconfig
Date: Wed,  7 Jul 2021 11:15:52 +0800
Message-Id: <20210707031552.20166-10-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
References: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_201703_606977_C0382227 
X-CRM114-Status: UNSURE (   5.79  )
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
