Return-Path: <SRS0=xi9z=MN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2DEBC636C8
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A3B2061029
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jul 2021 03:02:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A3B2061029
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Po/9dEjeO/++9ZAHDt+MOXYPZnoL0VsUqDPZJHBQK3o=; b=1vN8I76FrZ8FAu
	ktOaJOVJyQ3oE9bipJvZFN1w2282LMKKDzT7SVqkHageQNft6dfRFiEgTZ0VVtdhHc4ZPXfMLr9V3
	EBkQZqZozcy8WB/Sto+dFkxEVEeYt9FhN/eWRoTwL9niGDC2V3Uy4uEueJ50U5DwoIDwlr5Et/fPl
	InD4EhwX7nIKmqC2cP7UojP1ljsrfwYJJ65VnEH5cfSut3WVMZxkI7YTdBORYrVL5VOWeJ3dPflJh
	A2FBMUGUcUpymu3kCZcFzWXQQYDI6+S3xXE2/V86N9yqz+LEb6z1b/8mk5ZSk97HcImfkcpPDEpXv
	9OkEk2a1q19RtId2vdtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m62VA-00ENQC-6G; Wed, 21 Jul 2021 03:02:28 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m62V7-00ENPp-Jm
 for linux-phy@lists.infradead.org; Wed, 21 Jul 2021 03:02:26 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.west.internal (Postfix) with ESMTP id 779282B0050A;
 Tue, 20 Jul 2021 23:02:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 20 Jul 2021 23:02:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=NmMGZALgUPfiC
 ccQxTOVbNtmDLubEwgB51Zr56BaCn0=; b=PcEaaYDu52lvwFxg5OyLeD/V10jvi
 RDRHWOI0ewk2d9okT13W8mOIpTSDMS4M/+IfY3ppQ3zqFDaDW4SNiuZ2IXQoZU5m
 FQGA+31XVxYRBK8ppPIEfWTR6n7jTCT1wNSJfNn47okps5LWnlGJMHa7YuRYjNrn
 KKdiCVboIkMRlnADvxN8zj9FHqdUdJxdlpVjpi8Z+tFi/036Q3Yx2nixo9po5ue0
 nZEpuZzCvLGBRcCzAxUVIkBWL7tN11laZcS25qUTsNie9xhI8lduMJ2Kmc/gDl0r
 n3QeX6Qowcb5FtAaP9mrvXfg64QocqwQHhzevzfvxGquTT5iestbsr5Mg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=NmMGZALgUPfiCccQxTOVbNtmDLubEwgB51Zr56BaCn0=; b=Px378Bsg
 GWj8+NsXIduf199Dd+W51fFOuAcWpskFNbUeNVuDwN2iTMnb8/7tvq6Ptw3Ytpr8
 0s1DeetpJpX0SLTGSA3sLY2E89584v2kSaSeowJiTBntkJnqz6GIKZJel9PPTqoK
 fuaIwuK/KuAfl+PJW4sEpJBQUA9YLUaoUwTq6Dz8V3G8AjQEmsvwuUIUlcOgi6Hy
 RUxDDjXGeOYakNZvZJEJ0ixNMl37O1DdwsJBgQoZid6lWwrBJC4/GyPN31Z9pkdI
 +Z+XbCI9zzRxbDVUcY5WjkLWpv2CNjmQfpCD1Bnzthp/sotOAd6vNzgmZ2o0yNVw
 Nj+RIYOgoWi/ug==
X-ME-Sender: <xms:QI73YHP3wcek5iGG1S7B1sAVo8MB7rAmSJiokaKdEd3ymig630QKGw>
 <xme:QI73YB_K4XGihIZDxcarNfgda9ByDxnHsAhEjmQWQImwPPBTrGDjro2Vpz4F4fQDS
 V6Hgs9jgVsznYjGenA>
X-ME-Received: <xmr:QI73YGRBr4Y6QhY1b_7aQ9aTfq7IyAsaBOpckG16VmXbTsqCBZK_Lc9grK8vjwCesbcuBYWPC7ym>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeefgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeflihgrgihunhcujggrnhhguceojhhirgiguhhnrdihrghnghes
 fhhlhihgohgrthdrtghomheqnecuggftrfgrthhtvghrnhepjeeihffgteelkeelffduke
 dtheevudejvdegkeekjeefhffhhfetudetgfdtffeunecuvehluhhsthgvrhfuihiivgep
 udenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhlhihgoh
 grthdrtghomh
X-ME-Proxy: <xmx:QI73YLsbchLa6d1rxTFxqJxF5omI4W3eo-bi5KgXStnaiaIRpqjcCA>
 <xmx:QI73YPeUJ1Y9yigbY-NyxW9Y4IM26TtCqGSrfQ_FPUDuWWJk4TZADg>
 <xmx:QI73YH3zSkVjTGfmCUzFnOklV6WmPIgWbhUUstxmHyOpFgU4VzSjwg>
 <xmx:QI73YAVTid84vKVRvSblxq9crjVv3T0W9qh2cl3dX7rZ1SdfsonRwNAkigc>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 20 Jul 2021 23:02:19 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH v3 5/9] phy: pistachio-usb: Depend on MIPS || COMPILE_TEST
Date: Wed, 21 Jul 2021 11:01:30 +0800
Message-Id: <20210721030134.10562-6-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
References: <20210721030134.10562-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_200225_711078_E7625DF9 
X-CRM114-Status: UNSURE (   9.09  )
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
 drivers/phy/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 54c1f2f0985f..f3b08722261d 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -37,7 +37,7 @@ config PHY_LPC18XX_USB_OTG
 
 config PHY_PISTACHIO_USB
 	tristate "IMG Pistachio USB2.0 PHY driver"
-	depends on MACH_PISTACHIO
+	depends on MIPS || COMPILE_TEST
 	select GENERIC_PHY
 	help
 	  Enable this to support the USB2.0 PHY on the IMG Pistachio SoC.
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
