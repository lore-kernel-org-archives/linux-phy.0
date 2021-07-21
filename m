Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52ADC636C8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 82F92611C1
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 82F92611C1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZC/yX3llHYLdZWxho0+L9JWmSnCZtA/g5EC+0VgoZ4=; b=H5dFS2G9WdUBxX
	BXsB2+zYw3pASYrnnxXtqOyhy8SWGvdR5j7f3UGuXt7BVgVowolyqmJE979s6Ld/6Gn3OlhPgLENV
	JHbdnNA2eEYnH35wtZyLhZQNoLGHVS5YCn4o5FFMVV/ilUf8VFoQFh4o32bjsE6UE8cUW5LIlzTM8
	92BoPoQA5pomsio661kKaq6qS81G1alWOOwa460xekGzJMHM+WXSpduNandNu1MBZ+Pw/tFgl0kAc
	yfUMvi/7/iusOWmdD0gyALpRlaVKFvY3MQ/E1+Cx/B0HeKgR/4SftlulMT2+NB9P6kSyvbuQJ34r1
	a8lQV1QWzEF/sZxMPD1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m62V4-00ENPV-2k; Wed, 21 Jul 2021 03:02:22 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m62V1-00ENOp-Ur
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 03:02:21 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.west.internal (Postfix) with ESMTP id C1FB62B004FC;
 Tue, 20 Jul 2021 23:02:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 20 Jul 2021 23:02:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=JP7wdmNFOkH8l
 L9Kd1NTkGq2wgQnz+eShdtgKZ4UvNY=; b=BFTunTblAEdjUGPqhSlP5t9FX2HRs
 u62W47k7fbQ8FD4NIuMV1yK2KhJYdcm9IAEoWzuPmcLBsKq7sP0yQPbBldj1sjy+
 zVyZVniuqUUfRD0HJ8wyfXA1K1pvZzEqlBxd8KywKDJuN/dgscFTlE/uY0bhi2U0
 EegoQZXrYB5p+n2Y2V3VvOQSckIxBadqQpH6v7i3V+faivdbCRaWObwFJAgmHiUI
 NBuaLAy7zplLyirhtsAqBM6QsEWFurKt/bGC9XTkuQXpSQNPBcDqZL4GLIkl2hea
 fgztX+WrxHNS+IZsCvbkUCRa8Kmhqm/ubH2MG5LSmvZYc0AM6DHTsDcbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=JP7wdmNFOkH8lL9Kd1NTkGq2wgQnz+eShdtgKZ4UvNY=; b=e6AUwaTr
 66Jb0v+7DTxdrjuFWtaymqrAaKzrgr8eANrwC16oJwOvPubl0yRSx4R4kDNHupDc
 xmgLkfqALFRC3NX2/B6alaZbfEOxmEIcrHGM2nzApUPvYRNPC/7lPD5hCfrYFcEN
 CCklf1TvNWacmnin+Vj8V2GveCBOn6jsK9BJJlBnST2+tx0TGkCFyEN3hRslIq58
 nND7UR1pGZ8Pm9Hyy4GxeCf1kiZNy1FKLpAe0Dlbzrweu0MB2EeL2gPeXRqvCe9W
 nl3cSM8nQS1jaXUAkGzHC7ifb7lzoiX/u0WGcOMAk7yENyhkF9RMHw4XtgvigaQc
 y79YwgcFIi/B9A==
X-ME-Sender: <xms:Oo73YJQUUwBqGRUi0scgw7IxUSk_K8tV2V6EckpPOhWgsw-RflOYIA>
 <xme:Oo73YCzXQmB5MIc3vZFT1Cf0bikXGPEIy0OXZE11tsJcHB5TUBZC0BYJtDmLt2css
 Pz-Npom2OodVZvmZFo>
X-ME-Received: <xmr:Oo73YO19t4WGkFVc_r3OVHolxA3G6dftW9a3qlLifZ4YO0RaAq4yJ_k1Xuizv8aWQEBWdKkpMfvH>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeefgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 tdenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:Oo73YBD4oqvf-IFItKLXI-EmKWHpmaboMQ40y9DCYTzvBFRkB5-VYA>
 <xmx:Oo73YCjDRUqaKBE1bNVbwFy7F9h91rwvjOVbYYfcu-3F8RQdvZhHYQ>
 <xmx:Oo73YFqk0GbwmsPTt6PY2UuoKQGjzwaeiQ1GHj_Be8SYdC8XO3_r7w>
 <xmx:Oo73YHZvw2UOpt7e8leIakrUBQXk44-C_I7xB8vBAENTCNc6olY4BRKKAeI>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Jul 2021 23:02:14 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v3 4/9] clocksource/drivers/pistachio: Make it selectable for
 MIPS
Date: Wed, 21 Jul 2021 11:01:29 +0800
Message-Id: <20210721030134.10562-5-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
References: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_200220_055985_35C9831D 
X-CRM114-Status: UNSURE (   8.53  )
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

So it will be avilable for generic MIPS kernel.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
---
 drivers/clocksource/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 39aa21d01e05..58ad7af8c673 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -234,8 +234,9 @@ config CLKSRC_LPC32XX
 	  Support for the LPC32XX clocksource.
 
 config CLKSRC_PISTACHIO
-	bool "Clocksource for Pistachio SoC" if COMPILE_TEST
+	bool "Clocksource for Pistachio SoC"
 	depends on HAS_IOMEM
+	depends on MIPS || COMPILE_TEST
 	select TIMER_OF
 	help
 	  Enables the clocksource for the Pistachio SoC.
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
