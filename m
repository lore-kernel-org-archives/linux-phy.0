Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59EA3C02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 21:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9e0/5bjiFWY4WPcaNPkb5OJv0HbZO+1ZD2pxRhHFsws=; b=Q/rFdcs+9J9Iiz
	saf77zAPZzxOls+lNKvhZ4LlHfsGHhTBNwqDqmaHcfN3zBQgjR1+ithEr6ZhooyjlckIqugw6d0up
	WY00cFAug75Szfq9eL2rGSQT221gkF1Y8aIrByWxkPtXYGzzQ/gGQ5WvotqDRDWLexz2beLX/wcCk
	TXrGXsTlECMA8mDl70+iBi7IvCF/cF3b3i7SQH7ywB165H9KM5d8DhZTCX9dumeJpTWy+LEG0P27p
	NkkQuINIVZEYuXg5yNF6zWZqLxkLdfdkCS+2s42w0dM6PAsEBItkwZHcR1WzLmZRtTiH/FcuP9gTl
	Ec/pXb9mNNPrOkAkcXOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf3kL-0000000Gcyq-41Ys;
	Mon, 03 Feb 2025 21:12:45 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf3Fg-0000000GYzG-2QSu;
	Mon, 03 Feb 2025 20:41:05 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 65EA925888;
	Mon,  3 Feb 2025 21:41:03 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UT50sK67Dgox; Mon,  3 Feb 2025 21:41:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1738615262; bh=21d+Jc9d+gADlgNHYfQOcBVdXDZGzdPTgv991qDeWLc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=Iy8uyQW2ecHHSezrfBWohAKMPT86crMNu0Wy2hsDziRO4MYK1C4vhlcm2kAEIrhce
	 dvvWMf6lL1mySTW1vlp0mfZDvKnA1pEfT7Dk9aHyGonSC2fdX5Ut9UcKhc0f8GLLWC
	 i8zl6GhkP/GTJxt8ELePkZ5Yxpet8RQ3zAU5+2YC/eIwxGYjqs4WDmbU/kxBd9R/hZ
	 XaQM1ND8tbrTyz7Sq9qcJg2jGnb9Pz9mrtM/9EgqYlDaIyWhaQJDIj4qehy631JBLF
	 4Fr83K3v1PBBLec58jGCpFXOMeJDXoSo8l59BpSm9vPKDUegkX48ksNFBpm8VS9JlY
	 qaQyl4CM+9C6A==
From: Kaustabh Chakraborty <kauschluss@disroot.org>
Date: Tue, 04 Feb 2025 02:10:14 +0530
Subject: [PATCH 3/4] dt-bindings: phy: samsung,usb3-drd-phy: add
 exynos7870-usbdrd-phy compatible
MIME-Version: 1.0
Message-Id: <20250204-exynos7870-usbphy-v1-3-f30a9857efeb@disroot.org>
References: <20250204-exynos7870-usbphy-v1-0-f30a9857efeb@disroot.org>
In-Reply-To: <20250204-exynos7870-usbphy-v1-0-f30a9857efeb@disroot.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Vivek Gautam <gautam.vivek@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Sergey Lisov <sleirsgoevy@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738615219; l=1273;
 i=kauschluss@disroot.org; s=20250202; h=from:subject:message-id;
 bh=21d+Jc9d+gADlgNHYfQOcBVdXDZGzdPTgv991qDeWLc=;
 b=Ty//xTV9hK1qCqbudwOVKRV+hkVzgreRn07PhMeBrKHhifOKk26G39SAXIQPadp3oylN34uVK
 6I+R+Cbr2wrAdrZ7n8ozLoMOFKmgwwegCkUVMWtBALQF24h8lhyb/9D
X-Developer-Key: i=kauschluss@disroot.org; a=ed25519;
 pk=h2xeR+V2I1+GrfDPAhZa3M+NWA0Cnbdkkq1bH3ct1hE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_124104_751430_055F2C15 
X-CRM114-Status: UNSURE (   7.30  )
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

Add the compatible string "samsung,exynos7870-usbdrd-phy" to the
documentation. The devicetree node requires two clocks, named "phy" and
"ref" (same as clocks required by Exynos5).

Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 16321cdd4919cd00228c35e3c1676e7954077591..3b5881e7e5bc403ef2b379668584a8379effc256 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -30,6 +30,7 @@ properties:
       - samsung,exynos5420-usbdrd-phy
       - samsung,exynos5433-usbdrd-phy
       - samsung,exynos7-usbdrd-phy
+      - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
 
   clocks:
@@ -168,6 +169,7 @@ allOf:
             enum:
               - samsung,exynos5250-usbdrd-phy
               - samsung,exynos5420-usbdrd-phy
+              - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
     then:
       properties:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
