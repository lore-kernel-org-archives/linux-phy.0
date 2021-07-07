Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4D97C07E9C
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:16:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8255A61CAD
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 03:16:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8255A61CAD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcJVmgR6mOj1Q57PHBEfenu1On+YJGU8fak+IBfWynw=; b=H5xBtzGxjIPODz
	rM7f+Q1UEpNv+ooYxamISwiypaYfzLKNcm5kPXt2gM25kaoRY0bqyuFgseih7XeaYxGIh1fmIFi1T
	zPWyD7ITXA1Dw9o8Bvh5vDMVAed0gSlr8hRM8OVkieAzVXSOayOd1JlhIkdPC8k7oUrrUvvSBPV8f
	xcbAgQPkVV91rFyG653Z4tnIaR3KzlHYL5JVoiXq9TwVg71/Ao97kOjDhWeWYrK8hBWFDcR1iuhmw
	RjkesEbWF+1apqr5RVHMOccZ5Uk1SAdXXWdwypqJvhYqiFeZQ6vIQgxBDTT7hrQIbFOub8AIQcCyE
	DDi6B+rEMpGHJom1WvFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0y3O-00DGLX-2o; Wed, 07 Jul 2021 03:16:50 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0y3L-00DGL3-Fi
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 03:16:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id DB65B580452;
 Tue,  6 Jul 2021 23:16:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 06 Jul 2021 23:16:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=E+Q3jJXoaXwDI
 JPG6GplM8tmB+spkJC75M4I54KAlkE=; b=Pp1GjGE9deTlAQ9T+zsaKLr+NArE0
 a8w89XskEEnidVA7MezVkpaUGDpXjzilwo7dzXZtTHt9GdI373NIS1Ng74vE1mP/
 mW5h8WAWhMtSStGBEk1zx5nazYDbRzrgDExoYqUbDrS2gEDmoP6LFTzRqhpy3bV9
 LgYbwNeUlHCS8c+x/Rq8AXDSIQuoltaJUsnZiJPO21gUAq3pjhWCNKWQ3euK/8UR
 yiAP7bkTcpPEdEYXh3zBfzmnJUrxWhutyBy7lLBDSADH0BDyrTI4YMsGduEF4lzn
 c9JkzSWc/CA3d+1LD4i9ujDgRYS7qKB0KvD8qFefU3J5L+MZyhWLhF6Cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=E+Q3jJXoaXwDIJPG6GplM8tmB+spkJC75M4I54KAlkE=; b=LMLTeR4E
 RauNG7DoUaUETspSK6U+0x9hji+anbLdpjqdzZ2M5EsjT8dBMdJKQzpQF1cgkKdt
 6CBwmlIzbj3zeFuBQU30loUqINFXkxG6vgsQJ0GHXWk9V9GhTg8YB+aL4GiOeCAp
 ndBKt9JtqrMj0ClEhHtsB6T+ZWAGq6+up8+mfPHowrOlIRomThRIOAtVMfM1Hgcj
 WIR4F3dSJvvXEhWtrHIrgCF3oeM8BR343XNRwaiq1qFz/GBVDHLo2ne9LOKNJEoi
 5UEHpj+cgG9YqRjcXJ6LmboYi/O/xxHZNMTNS9rY6MRcqhvxJD5rcANea/HyY9Su
 gddapOq1JpRq7w==
X-ME-Sender: <xms:nhzlYGugFMU-WbhC0NQvNxOIN2Adj1E1Jh0WPRMAEGDzkzj80RiBdQ>
 <xme:nhzlYLeLgmYBXG-4kFPbp5V73yGMXidsDwEaURKzZUC0Yhnvu2ZsxXwen3Gl6avH8
 pNR5IkMdl8JGbntAKk>
X-ME-Received: <xmr:nhzlYBw_MGU3XRD1viC__e9GpUM2welksrCYxvIkduqGxa4RyN-rdCOZ9WIcft2FRce15jBmL7zqV_pvRQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrtddugdeghecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 udenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:nhzlYBNz8Sg5sOfDeJby6DeNBP6WVblOCVe7WA-PQjhOlYNBT4-3Ng>
 <xmx:nhzlYG_V-CehhufkYHVxKMlV_kEmIqnTaPjdzaa8TxOafCa8v7dH7Q>
 <xmx:nhzlYJU27xnqZSAvbEkcNwMmdQXu7LnzvaoCas3iJmFEXgUZVkvH8w>
 <xmx:nhzlYH2hi_5MMfxNse6FHZMQnHMlCUvsJjGZWJmusRGLv-kWXa3tew>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 6 Jul 2021 23:16:42 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v2 6/9] pinctrl: pistachio: Make it as a option
Date: Wed,  7 Jul 2021 11:15:49 +0800
Message-Id: <20210707031552.20166-7-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
References: <20210707031552.20166-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_201647_630811_035E5764 
X-CRM114-Status: UNSURE (   8.70  )
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
 drivers/pinctrl/Kconfig | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index c2c7e7963ed0..a189f1b3da5c 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -248,12 +248,15 @@ config PINCTRL_SX150X
 	  - 16 bits: sx1509q, sx1506q
 
 config PINCTRL_PISTACHIO
-	def_bool y if MACH_PISTACHIO
+	bool "IMG Pistachio SoC pinctrl driver"
+	depends on MIPS || COMPILE_TEST
 	depends on GPIOLIB
 	select PINMUX
 	select GENERIC_PINCONF
 	select GPIOLIB_IRQCHIP
 	select OF_GPIO
+    help
+	  This support pinctrl and gpio driver for IMG Pistachio SoC.
 
 config PINCTRL_ST
 	bool
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
