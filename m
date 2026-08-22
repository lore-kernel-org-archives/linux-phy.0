Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 967E8C5DF8C
	for <linux-phy@archiver.kernel.org>; Sat, 22 Aug 2026 07:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmLXSklcYLzMwWu3elIRXDHM2uABPD48s2Gb2wwdPXk=; b=LOV2cdZlJIEBkg
	kDa6Sk7WQ8qArZ3IZ2dQq3upyfwrJOrJ9QuxJmBw/lsec0fUgtT3pWUI+hzU4aNC5BzTKDldZvc3T
	UEAMvopkR2prGkhOVStWeKOZsT6y6ubF5EEema6+SkEj2OG7Wg1eQSE92N7wA/aWLHlDNIUwUF0MH
	IdZfHaG2lvtYg7kg1N3o+5RNvI8IhuX4oPB9786FIBxxEFcZ6cF9yLSiF/D3JAcwO/8mWyM72Np4P
	4471j/KjjALBdh6J9wnzzI1SVW/w8HlbSW/TqwG2WNqCv42P/O7tGMSMJOkzJSykvhBir3WQ78tgf
	P5C8GjYOin5P+BUrpRiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxgTS-0000000ELsd-150p;
	Sat, 22 Aug 2026 07:49:06 +0000
Received: from mx.nabladev.com ([2a00:f820:417:0:178:251:229:89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxgTE-0000000ELlA-3dlH;
	Sat, 22 Aug 2026 07:48:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D7BF411C817;
	Sat, 22 Aug 2026 09:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1787384926; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=oSf/Qc+FVc/kqJH918JkgIf54jA4VBkL3h/ZDBCPZbQ=;
	b=hxqyHfycLXWCe1z+CA64ka4fT/oY2RmS4jJsP6+qVvd9+JuMRPLZyW8Zx88kzoGBzUCc/u
	ujUIGoJJMJBmNPXe/MJ2JyZEdqEObr/iYucJGJyYhsNOYiGPyYpug5jHBtSYxBfBIxAFvU
	PbNszxxGjbkm1woedkd0MSqK/kPKo1asNvZeDZwIx6GbzVFhn/KRbGHUJf+Xbt/No/EjyO
	ZVQAta6bn9bXUe0cYG23kIVeV590xYeULeVlhGmOI2UPZK/qxghinGmXJEv3E2mu50WKC1
	/JRmvmAQA0tCMRJ6Em7MxLX7p7i9nvFsg0V8PnAbeSxMSdvaeWyXIKB691MfJA==
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
Subject: [PATCH v3 4/9] dt-bindings: usb: generic-ohci: Document access-controllers property
Date: Sat, 22 Aug 2026 09:46:37 +0200
Message-ID: <20260822074816.548662-5-marex@nabladev.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260822074816.548662-1-marex@nabladev.com>
References: <20260822074816.548662-1-marex@nabladev.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260822_004853_050484_950BE452 
X-CRM114-Status: UNSURE (   7.98  )
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

Document the access-controllers for OHCI USB controllers in case
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
 Documentation/devicetree/bindings/usb/generic-ohci.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/generic-ohci.yaml b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
index 322808aaa2839..8e3522a3faa76 100644
--- a/Documentation/devicetree/bindings/usb/generic-ohci.yaml
+++ b/Documentation/devicetree/bindings/usb/generic-ohci.yaml
@@ -65,6 +65,9 @@ properties:
   reg:
     maxItems: 1
 
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
