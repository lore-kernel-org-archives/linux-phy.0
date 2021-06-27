Return-Path: <SRS0=Q81u=LV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAC4DC49EA6
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 04:57:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A18C961C23
	for <linux-phy@archiver.kernel.org>; Sun, 27 Jun 2021 04:57:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A18C961C23
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flygoat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56PK3VX+a/6pu6JUFtu/1negByfGODIcdbvhrfDtZdw=; b=KK/cSB1PXhGBCQ
	QjK2FZqqwe62denZ7L/d5HVuXMKsItaEYes2r6HiHW4wm2NYJdmvCDQytt0+zFGK6tpN/pJhpUuej
	+CANCd+OUjsgKX1XqI2HF0ZvmgrPckzMxU3rP+sHbNSu/UwBTs16yXU8w6ujaU2COFoIdnh+3A0+f
	w/qup3Q1+Tp9a4MkFHeBEXZHPDomHiuqaoHWfWkBtHf6BYay4s+FZijwC5j4EMMuCPAFGvivOi88+
	z+bJE7Lh7+vBNdqNIOSuJ4jj2jsloPOfkBAmSN0D36+GuTEBVq6efbHbmado1Y6bHmDu/8GCGXtCj
	HSn96QdeBs2un12xUzpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxMr9-0057yt-5m; Sun, 27 Jun 2021 04:57:19 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxMr6-0057yV-KA
 for linux-phy@lists.infradead.org; Sun, 27 Jun 2021 04:57:17 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailnew.nyi.internal (Postfix) with ESMTP id 083655807B0;
 Sun, 27 Jun 2021 00:57:16 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 27 Jun 2021 00:57:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flygoat.com; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=fK+K0d08qIRtz
 I5lRyrah+khLjr9G35dqtzXmEd/ZSQ=; b=q1C+VCGPHxnUMDH7Au9LpvmCWsxAS
 t22/zr5WL7pdgGAa4ntSZxSLvPMcWwpoCpgXgN4iQnxog/66vg3SK3EBbBFNFNB9
 HGqXRBRMANlsF//xeyxkNCnyFQa8yzMHx3R6P9/E6x5m21y31pIvj9ylUOcjBLbj
 dYJO9RTdJ/on72O6hoAuT85zUhPPVzIB9Kl6ttCoGkuQBc6OlBD6+PtyTkyfYeyD
 jbOeKJm64CQLlwP79g0Jb9Mv6FJMH9H544bis18QEEE8r53TxwgWBL3mOpQ1drNH
 Asf20BHnXik3XS8yZqyBvGyimUhrMOVGHCeX2MLH5ecw1swZkIcBr/ndQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=fK+K0d08qIRtzI5lRyrah+khLjr9G35dqtzXmEd/ZSQ=; b=dQbfSmaz
 MSCszFGb7Ix41sXtvwQRkEO8qv4s79xfggeDi7pz4OAiVbFfARMu78h7JoJQ7/rn
 bhGgDa0a1KQUv8ytnPlFihYJoDBLBd+2kpdLcxYyrA+lWSfN2WCgl9SMxDVxWnCO
 0sE0yZRvyEmXgP4CJZQLmLnyuQDpvRXxQwx0Xuu+7yKmX88RkSIGyrVGLRmr4rfG
 8YUJ+Me/a24fLNrfwwLyn8FqpXZ2a1ooDaGnNCjKI8srhxTNgpKK0mBnUtxF2x41
 pnDjyxRhFp0LC2aKaKWBn8hLKEmVrzVw6eQ0x//PTHmDa1B269w7OtfuRqmb7pUp
 EbcLEPGNAetRFw==
X-ME-Sender: <xms:KwXYYC-ptONTUJFqAfJK0_n7ioKefq_0AimLM_gHpW1ZeGVdsjutCA>
 <xme:KwXYYCtfNkXvN4XQlPwknRmr-i_8EZHP3lJ7-jvnHLZs8_d6QNPoOgvvtm3FQ4yIl
 nECDWx-woU39hxXyjo>
X-ME-Received: <xmr:KwXYYIB_q054hyB1A_psG8b8TcBCN52gLRoC89oLwmSdNdHLJVf0FIrPttX7wBOI6dO1oNdDBLw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeehuddgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomheplfhirgiguhhnucgjrghnghcuoehjihgrgihunhdrhigrnhhg
 sehflhihghhorghtrdgtohhmqeenucggtffrrghtthgvrhhnpeejiefhgfetleekleffud
 ektdehvedujedvgeekkeejfefhhffhtedutefgtdffueenucevlhhushhtvghrufhiiigv
 pedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehjihgrgihunhdrhigrnhhgsehflhihgh
 horghtrdgtohhm
X-ME-Proxy: <xmx:KwXYYKe1dWKs_wq-BEgmDKlqW8fT8zA3XIyxRWGafqqUMw9LB5ZY5A>
 <xmx:KwXYYHMmijFehfSlKa5cvoCai1xLUM_9vB9VDd9jK0nvuTFTcVRVkQ>
 <xmx:KwXYYElNSONRcBq_qG6W7B0yk-zMfTBRSzXixLNpfgJ_ZXKcyjJOwQ>
 <xmx:LAXYYIE748Tt9PbSZ4RjfOdL2VXPtFF1iJB-X7lJf1MhgAJz4h8m1A>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 27 Jun 2021 00:57:10 -0400 (EDT)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Cc: tsbogend@alpha.franken.de, mturquette@baylibre.com,
 daniel.lezcano@linaro.org, linus.walleij@linaro.org, vkoul@kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Jiaxun Yang <jiaxun.yang@flygoat.com>
Subject: [PATCH 5/9] phy: pistachio-usb: Depend on MIPS || COMPILE_TEST
Date: Sun, 27 Jun 2021 12:56:27 +0800
Message-Id: <20210627045631.2882-6-jiaxun.yang@flygoat.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
References: <20210627045631.2882-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210626_215716_767743_B1A9245C 
X-CRM114-Status: UNSURE (   8.95  )
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

So it will be avilable for generic MIPS kenrel.

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
