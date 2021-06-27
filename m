Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F04DC49EB7
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 04:57:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 487B461C47
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 04:57:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 487B461C47
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PFZZ9BtArlVLqxQm+TyEsQKBepEDD5mXzYkWV4QEKU=; b=OP3sy3rntqkNMc
	o41iRIIDnMtBhiZTrerBS1A5BdSOvcW/yAPSeIGRtBXfsREM7CjSb7T1JZMbDRm9+xbsNWrDHq+uB
	JYdticRuukEvGnIV1uiekppDJ/TCvh4K7XjHww/2XEsEU+B5hcAAvrFxVAmJ4zK50SE8ocyqEzOTo
	CbUY82h/ogp2iiUb3q/EE/jjL/CHzynGX+KPD35PWv6XlTFe/12/1Lfai+7p4ZD1LhMOrK09xkLj8
	JgbLKdjgZTMnh1MA0XsSegkWIIiXjcxmIMJg1ZurxMvEmv5YmfMv67ZsIsoSllyCQITNL5szqPWt4
	QnxG9H8ZHdrKVxIctU8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxMqt-0057wF-K8; Sun, 27 Jun 2021 04:57:03 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxMqq-0057vd-Gm
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 04:57:01 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E5D4C5807B0;
 Sun, 27 Jun 2021 00:56:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Sun, 27 Jun 2021 00:56:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=1LK9TbzR4mbFW
 wxa2DMjASOGjEHNStV5ARumpu+hHTQ=; b=c7OYYcw14+8aj+BL4UHqnK1GLyHT4
 DKHkGed2O4yKcp2q1t+BK44w0CCXb0rkdcMUug5JL7OeiFCHVbnDuA+SMlPKvZtJ
 7XdrJRQGW1LR0N1TBmNd7DJfQlmyl+oROF6X4pyy0YpvfS8G6LN13Y2w3sgkTqBv
 6GpS0YQw2kff7N3SBG6RZrrQw6fk1CUx4xXEtgG0G8JO2/Teh6RyZky8pJqXWJM+
 xEPqZP4MLe/MxmU0iIyzOf1JXyRCFweDjvFGTcq4azBgGTa3LmbDIFUafl7fAX/m
 s0konHJRpSp8WocrHJqdud9rl+1JB9n7N+pIOkEjU3hC4qIcXUl4hA+/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=1LK9TbzR4mbFWwxa2DMjASOGjEHNStV5ARumpu+hHTQ=; b=EvmWXRrL
 XDCwztrd58xOPXzY+1DkSW18tdlUqiMD3Mr5tAtZjB1/vFNX/hvMW6N93+2UOVLV
 oekJQtWnWleCZQypUIYV8Mr7jgpSx6oGC0oV3igqn0T8zEqmbBRcDONQCXNKOyyl
 UtQvLpqCbgJ6Ujuf782JZOU8afAwnFuk8PkToV8GLat+3fJ8vZkaUWxC996vMR6c
 6Z49oa5RHqXKvYbmjDT2G3qWGgdzXbITnsGobFgqspC+D8hz60oL1BvedM3XC3rU
 DxIC5u6485meCtk9Kh5DFqQ1TBfjnZL6Undch9F4nOQ9cOc6w3CIXyqRw7pCikSJ
 p0rrB5PphsmpfQ==
X-ME-Sender: <xms:GwXYYGSyjGMXjwzrh4a-JNGwn46crLuKpvXVFSPjyxgCW31zvDPM8g>
 <xme:GwXYYLzoUz8Q2h8BST9mf7UrCMeHaaghVN2j6s7nzwF1Q3JGUG4u2T9q2nI8UuzpN
 QryMKIxrMwRBwpM5Og>
X-ME-Received: <xmr:GwXYYD1Yg-aRG3qIn0PZHmeQZ_8nbw2HwjpQQpC6jN9LaE-poPusDGziboDVIvoIqi2bfAqK4Oo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeehuddgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheplfhirgiguhhnucgjrghnghcuoehjihgrgihunhdrhigrnhhg
 sehflhihghhorghtrdgtohhmqeenucggtffrrghtthgvrhhnpeejiefhgfetleekleffud
 ektdehvedujedvgeekkeejfefhhffhtedutefgtdffueenucevlhhushhtvghrufhiiigv
 pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjihgrgihunhdrhigrnhhgsehflhihgh
 horghtrdgtohhm
X-ME-Proxy: <xmx:GwXYYCDMUqolgxV28VQXn6eilaXxS7vt6eG5oI-466tqc_TXHq05YA>
 <xmx:GwXYYPhtaRJ_so5iuxXA0eYF84PlfnY7X9JJYJa93aY0E8gOR9oqOQ>
 <xmx:GwXYYOo-N4Fu61MHyihDbMTU8sA8oIWhKOXQzPC1Iwt-hHpxYfvVcw>
 <xmx:GwXYYEZuZ-QP8w0veIXWYdE3tdUaM3y_Kx2ZcH398AWlMAgBtU3anQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Jun 2021 00:56:54 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH 2/9] MIPS: DTS: Pistachio add missing cpc and cdmm
Date: Sun, 27 Jun 2021 12:56:24 +0800
Message-Id: <20210627045631.2882-3-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
References: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210626_215700_646747_9097B776 
X-CRM114-Status: UNSURE (   7.34  )
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
