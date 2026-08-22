Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36E10C5DF97
	for <linux-phy@archiver.kernel.org>; Sat, 22 Aug 2026 07:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+/+DoGGhFUa7SsLJ8aMYPjpf+MbqRzRjhCUvOLDMvQ=; b=nP2CB9EO6FrfI5
	WykWXfww79/9lIwJvBs8Jd6NYbjhcPngbSMJbXFhTxADtlYCGbkdIpTCcLWZ7IqkRBb59hOeWx831
	3Fy4YmsWkAfSPgkIqYBihwpi3FGCyH/rogmJWnRhzCgtcqNHsuGR/ZDlTZkAc6QJYklqMECYNA5bd
	egxGKIG/qIiGLBIXjQrBYle0oiP21obH36KI6hk3un1hvgAVB1PoPeDtWkJWqaaOs+6xdU43qC4NW
	Kl9ohtBKbtvFq6raG+qjn1yK2WeYFRwmpJ9BMyHLNwTrHVIxKNGg134i8HO/fkhqjrO0fYb69yB9u
	d5P6ADjB+BF79p0SqQFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxgTN-0000000ELpg-3mTV;
	Sat, 22 Aug 2026 07:49:01 +0000
Received: from mx.nabladev.com ([2a00:f820:417:0:178:251:229:89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxgT9-0000000ELjL-0Z5Y;
	Sat, 22 Aug 2026 07:48:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4BCD111C814;
	Sat, 22 Aug 2026 09:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1787384921; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=dHGNNdjbX2tcoPtYPHkVrNbZLNhLOGaAgeIztRF8jLc=;
	b=bT1KYw9mntE9tY1XNkNwqA1habI1lUnirgFsZeHcc8peXSwITWlHphNPPELgwwR5OI6BEd
	g2aBHRmLKWs8gce7qanmB4Vnyo2iglC5rjCROWX1QH48Mr4kfAC7T8MqfD5aFRw8ZC/LCd
	H2yDRbMpvQtrC0C/IWkZIAW4fvNyf6lskcRV9VFYMGUtR5nDr5LAwdSvJ7NYKZaeS3zNB0
	d+RwyxFYw+KV2k/e7NXHfJJQJWqgh32HPpTwNjKjEVENKGwT5KYJjZt5yDph2Tn11pjEe9
	uyPMEdgLmXORXTTZ0vo3+KDKgJgRnKOh+0h5fj2bU5QfwmMg2lpcw0LFeelmVA==
From: Marek Vasut <marex@nabladev.com>
To: linux-usb@vger.kernel.org
Cc: fabrice.gasnier@foss.st.com,
	Marek Vasut <marex@nabladev.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Christian Bruel <christian.bruel@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Pankaj Dev <pankaj.dev@st.com>,
	Rahul Kumar <rahul.kumar05@st.com>,
	Rob Herring <robh@kernel.org>,
	Rosen Penev <rosenp@gmail.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v3 3/9] dt-bindings: usb: generic-ehci: Document access-controllers property
Date: Sat, 22 Aug 2026 09:46:36 +0200
Message-ID: <20260822074816.548662-4-marex@nabladev.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260822074816.548662-1-marex@nabladev.com>
References: <20260822074816.548662-1-marex@nabladev.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_004847_340649_DC0648DE 
X-CRM114-Status: UNSURE (   8.50  )
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

Document the access-controllers for EHCI USB controllers in case
access checks need to be performed to use them.

Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Christian Bruel <christian.bruel@foss.st.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Pankaj Dev <pankaj.dev@st.com>
Cc: Rahul Kumar <rahul.kumar05@st.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Rosen Penev <rosenp@gmail.com>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: kernel@dh-electronics.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-usb@vger.kernel.org
---
V2: No change
V3: No change
---
 Documentation/devicetree/bindings/usb/generic-ehci.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/generic-ehci.yaml b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
index ae9fb70d0212c..6bca56681cdfe 100644
--- a/Documentation/devicetree/bindings/usb/generic-ehci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ehci.yaml
@@ -80,6 +80,9 @@ properties:
     minItems: 1
     maxItems: 2
 
+  access-controllers:
+    maxItems: 1
+
   dma-coherent: true
 
   interrupts:
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
