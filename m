Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64209C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7joAGsDy3MButB9AY90nXVyvHKW+km+L8kcIQDvVZvM=; b=uZbW9+l8i/DTzo
	cVxrc6vyFtXxlvRLFQ5Kdf96r07GLA35HxlMvxat5+1VYxMqSeENYCajaUCwcvnFV3r6teKGuGceC
	KcEj8Ri9NmwrlX+XuVKUATPY8xFxMGKjdAz2j9OYVXdzYifOOULF9rM54raG38XWjFCLzmmqlDYh2
	T8KHLXZRIuhlRN7lYYAkG9bvxZzw/1bFvG4riqz2Sk2t4SNIAvStLHJ2K+V9zYAdOIcTv39xKQrzn
	YkbAXSqBoBSny0HZkb+gSIZuUpupa2O9fWw7bU4p0XAOnBy/VhJqrqG3xk8Af1IYqJ8V0gQ444EQQ
	WaeS/6FVNXyG/WQpsROg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDg-00GwYv-7v; Tue, 05 Jul 2022 09:51:48 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBB-00GuZc-0k
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4AF3FB81719;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE814C341F8;
	Tue,  5 Jul 2022 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014542;
	bh=VVkT3WcSuYWVhQCR5RYlLLnDzsESZO8fObMK2FSVjIw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n1j6b08PGs9riVz6Uho/gf8VDJURhfQhgNoAt0IC24NPR6pPpOg76DjNhuZj87gqP
	 fPkA9kLDgD0vwqcjfHy0A5E/jDIthd99ZcpbR9uXxbNhV9gtcVNS6DTq+qb3nScIP2
	 +2ba23ZN72lqJ8fsjOaQTotNkQ9RMvlmiX/ZH6O09bkcWueFd41HqOENr3JrAujrF2
	 oKCMZBzy1GoZeH8mIIAy7oPhXXluEx361bTP/INi+66L5ZCQHbeBDUgqs2bpO7I3vb
	 +getCMVp853N34x/DAA4ge3l4vZb1cx/AQyYA+hV7YCVeW0dpn6p0ImP+2wtWoJhZM
	 B1hOHRC2ofQlw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB1-0004XU-P4; Tue, 05 Jul 2022 11:49:03 +0200
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
Subject: [PATCH 14/43] dt-bindings: phy: qcom,qmp-pcie: clean up clock constraints
Date: Tue,  5 Jul 2022 11:42:10 +0200
Message-Id: <20220705094239.17174-15-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024913_284359_E0A43338 
X-CRM114-Status: GOOD (  10.64  )
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

The PCIe PHY binding requires two, three or four clocks.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
index 7cdc1cce06cf..0486b2b48d72 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
@@ -43,11 +43,11 @@ properties:
   ranges: true
 
   clocks:
-    minItems: 1
+    minItems: 2
     maxItems: 4
 
   clock-names:
-    minItems: 1
+    minItems: 2
     maxItems: 4
 
   resets:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
