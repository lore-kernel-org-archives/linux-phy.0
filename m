Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F41BCCCA481
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qln2LxwihACt36tMoMy9gjsXlID2D6XHrGmXjKdVejc=; b=B4XXXmMpPhdOm/
	0o96DBIyQYTScJyRHv+rxCSjeyWTBenQe67LNKgoGHaXDKvRd3r59OJbxzrMwNOj7OB3k3AKQ65hM
	PsrkNYKo7L45/EURR8mp82xRV2p9WJjQrFemJpCQ00Neo/DtzHsVNTiuEylMSiF7whjDCU0Ult7qu
	KsRn5vp9ykSaaUKUy6QYDCWt+Hcd+ir5dJBLIx9XSecfhKBe6NPcqGZ/IHeA9K5n2RsXScJOMlDNE
	VcLU6PMI1idmPXgI9eqLMe4l8CoZn31TT+9X4+bShEgsIC6p9gLVFRSapMB8L6+DP07dcBmg+q31v
	aptLou3sHQYHDPSLePfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDl-00GwfU-6A; Tue, 05 Jul 2022 09:51:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBE-00GuYW-0j
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AD5FF61931;
	Tue,  5 Jul 2022 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BC3BC341D6;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014544;
	bh=PhRApFCiLUdWRFq6zUYswP6+UOMNazeUw4UHcVq05YM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HLwEVNJP1YH32Op6UM5LA7QVD/1K8gi/npvChWyrRU+Q6M0M7w6IXB9Wcio30yEmh
	 GLinPMlSpraNXLGgXPf6Ti5c0F54Pi8kCaqZxzKgkSO5/MLdb/ygjmh6X/+MMgfka7
	 YoxZPPnFUS3QQDzsTwXml+Z20aXxvMMZ18tgOJDfBucKOjVgZD1eeG6uabadqiiW8j
	 +V/H+csGowyTiIJSRlNTAhYDHG6ARI7Vy9u3twow3+VVbtx4L2dEnOvnT1l+WJTzlw
	 c3TFzvHpJUXMkwtK2tIFgtVgTPvD98n2A/sV7guHlVuqDSDUbUPSh26+l9eKQoVL8L
	 eScQfCXoO4Knw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB3-0004YQ-F8; Tue, 05 Jul 2022 11:49:05 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 33/43] dt-bindings: phy: qcom,qmp-usb: clean up reset providers
Date: Tue,  5 Jul 2022 11:42:29 +0200
Message-Id: <20220705094239.17174-34-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024916_192826_729982A6 
X-CRM114-Status: GOOD (  10.05  )
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

The USB PHY binding requires two resets.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-usb-phy.yaml         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
index 76979aff086f..21744bbe1764 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
@@ -59,12 +59,12 @@ properties:
     maxItems: 4
 
   resets:
-    minItems: 1
-    maxItems: 3
+    minItems: 2
+    maxItems: 2
 
   reset-names:
-    minItems: 1
-    maxItems: 3
+    minItems: 2
+    maxItems: 2
 
   vdda-phy-supply:
     description:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
