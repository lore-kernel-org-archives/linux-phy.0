Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7AF2C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 01:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c2/rz4bpZgr3KJHjP5Hb9uefpoiVjBqTGqLnKmoFx+s=; b=2/GpustQLVZuKd
	RwWmFm1mc6RTa61Kq3Hl99BpkdE9iOrMk+7qFHWE0AmmWrxyRjo4ZvzVIYUg0Rz6V4XQHHKNLeuo2
	8aRXMJCIaST4OR0xW4UMBHR/CE+6NOQLJBOLdRp1XhVqoAnnpXamIy6mBYFLUFISyTC9vwJRW2nz8
	Q/vNSBxzaI+EjLZicGGIc05ekzrXjrEuvIzdF/y0FJb2c/ZV05Sgp7xO7rCpdXuIGrncjOuGiStOG
	zGvDj4UUOYCpV1UDgSuNZ0itISv4pQvcSkQR4tIf/lPtBbYWNJCqfclwC/2nt8EcXsCREb53hSyXz
	/+HCa5YwE1egVEgcuAoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFR2j-00HJW3-Cn; Thu, 03 Feb 2022 01:36:13 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFR2X-00HJRp-Gc; Thu, 03 Feb 2022 01:36:02 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 02F75580154;
 Wed,  2 Feb 2022 20:36:00 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 02 Feb 2022 20:36:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :message-id:mime-version:reply-to:sender:subject:subject:to:to;
 s=fm1; bh=Qg+6QTBkQeTFg6Q74FfxB2eWEkNPeUaZvFHDYsYpOA8=; b=mP52N
 t/jnmr68xzmfUO1scROUNiQH3QFkPlRgUt4G9Hi1DDLrJHTBRvWmYdVGD5Zue87N
 PCP7E/Zf1eA9hD2BF61czHJ/QeGpNHbNuSPev4XRUAkGXKdNcUIbHNK5KF0KqPRD
 vOouQzyXDpK89Y4JKgMDMxrimsaUf4RDedpMmlvk81b5+NRotm3Ci1RpJqRvKuxl
 QHAZcHj2RCfl4HxQyeIXxen6yaqxWFA9g0s4Waevk/wMacDnH/9jfToR7BqB3c9u
 nl0pTHWq1M0CMkOjluIheasrMQ4CdahuQq8VSbIQccZf2d+RQxRQ29Zgt9sqo519
 lasjDCrxcRSpjfUKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:message-id:mime-version:reply-to:sender
 :subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=Qg+6QTBkQeTFg6Q74FfxB2eWEkNPe
 UaZvFHDYsYpOA8=; b=NIu90/v4jVboGtH60eMoXpGmXybfEvPMjYru1LmQX6MO0
 fb4Q3lP4FEjIYt0rmq3nx+azVIIt8XGf1qHrfzyS/CBde8ukhOT2CzIyjYwQfyiV
 FC+vLZrbz/XlZFilaGLkJ40GovUmho7gQt3vah1Sfuv9vRCsdtgwdg98jbMJvs1O
 yQXxi++1yKP5RgeHclto5gzhKVk/wuGrRUyBAnxEEJwz68lZgExch0LPrVxp5Fyo
 BOOjE84dccSsjlIwCojd/e2wSbKRcSkj9PWojTsu7n/f8rmOrZGquq6fDxj3dyAp
 73wuxzC+LaNH36pzwHp9USCdHG/5zpOgZGSzzzP2A==
X-ME-Sender: <xms:fzH7YWF9NufSY-fEn5MJ3oVbqJOsdVfXnL9mtpI9VF6qW3fTSEKquA>
 <xme:fzH7YXWkOmIGnwAYFwihYaYwxPzIm32fvNbHMVhFyCxj13XoWy6dCK7vKDhVyQlD4
 FZaumVYKXsGcVIvKA>
X-ME-Received: <xmr:fzH7YQJ89YuB-uQx_Iwly8k7kG0WdpwEyKpD-am9tQsy87oPjrfA-qzFpACVXIjDPj4eFewnnQEMt262znM6bO8YerkgB5SbDl3O0TELiK91_qcVxma0LneMuxNYzUYJmnIprA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrgeeigdefiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghlucfj
 ohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecuggftrfgrth
 htvghrnhepieetkefhheduudfgledtudefjeejfeegveehkeeufffhhfejkeehiefftdev
 tdevnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsh
 grmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:fzH7YQEFq3d8oJKJJG15aNiFD5TlP4Bp0E0DdtNzgqur1YfjIYmi2w>
 <xmx:fzH7YcXLf1GIDECDr36G2KW07qHsZjBzdrndlTcRCYdyAEpHEDAgkQ>
 <xmx:fzH7YTNd_7TcXmR3xzlRqa8ipjGbOtAXSLBOOx8oaW7D6UwaIsDNkg>
 <xmx:fzH7YbMiQ42IvO24h935gxQkQqGNpON-2E3pXsDeuaKNl6vsVfBHPQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 2 Feb 2022 20:35:58 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Samuel Holland <samuel@sholland.org>
Subject: [PATCH 1/4] dt-bindings: phy: Add compatible for D1 USB PHY
Date: Wed,  2 Feb 2022 19:35:54 -0600
Message-Id: <20220203013558.11490-1-samuel@sholland.org>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_173601_644373_7A3327AC 
X-CRM114-Status: UNSURE (   9.51  )
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

D1 features one OTG port and one host port, like the A64 SoC, so its
USB PHY supports the same set of properties. Add the new compatible to
the existing binding.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 .../devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
index 078af52b16ed..0fa4b32b097e 100644
--- a/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/allwinner,sun50i-a64-usb-phy.yaml
@@ -15,7 +15,9 @@ properties:
     const: 1
 
   compatible:
-    const: allwinner,sun50i-a64-usb-phy
+    enum:
+      - allwinner,sun20i-d1-usb-phy
+      - allwinner,sun50i-a64-usb-phy
 
   reg:
     items:
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
