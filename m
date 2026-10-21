Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDB9606A319
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 02:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Fd9f9y8Y;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=kOtmRIrP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jDeIAHXFI1vjqVcjQseoplNTL7S+WmXswcuahcHfmkE=; b=Fd9f9y8YyB/QQi
	RyjMXd9zmAu7tKLzpekocDU0aIqb0LaKrJTB2VkAC3OB4tTkSTVzU4+bCJ9hOnewAQMNY7mbEfh4w
	folo4To75m03aq7MIF/qSEKKniK9AY0ZOqK/DTYzmiFBzFjfnsAu/4YEJqW+9K5sCSbrJRgd1snpH
	oucyayld9xdyjDMUbd7MWjK1LxOyGN/K0KplELEOhyX9ae4YNtLkhAtVlrF4aTOTopfiXvZ5Q/mTg
	513cePi4sCSBWJx8I+f2gwaPypNIITbd5u4dASglALgmmgaNc2g6u3pnMCAInUbL+Ljvh5OuNyHL9
	vF8jNkoLr4byzvpYwXWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJM0d-0000000AwUP-0Azh;
	Wed, 21 Oct 2026 02:24:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJM0c-0000000AwUH-01yY
	for linux-phy@lists.infradead.org;
	Wed, 21 Oct 2026 02:24:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6B5B46022A;
	Wed, 21 Oct 2026 02:24:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB1151F000C9;
	Wed, 21 Oct 2026 02:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792549493;
	bh=M/h5z/1XLiWED7ITGA/5bLuoTUupLcN8WsM8xHCsE1o=;
	h=From:To:Cc:Subject:Date;
	b=kOtmRIrPsSuGVcUASJmkD1jltCKq0avYh3mPh5Z7KhU4BXzJLsLFrMy1rudq4k4IM
	 WxWPIOIsmk9BbbWKtD7KWHEvMn00Nc7xmcIEoHlkYF2uMxUjz9nNumpAtbhaiy1MLW
	 sG6d5SybM6kUxpr0S8woqRRKQ02pAg2TTKpQI1R3OITitXIqwGl25ULgOEddjiE6nA
	 Dyah7ktVJiBKfQ+yO/IPvjw7qEfU/5wWHr1n65HVBSUIZoFkJZrtrq9/YCx+dCCq3g
	 zVE9zNxYGfuzEhZLOAPp2ohUyf/ny5rNfob47iK/rtmWi6ABg1y42D/ZIu+fbJ5hxl
	 uK4/qdPBSHVkA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: phy: qcom: Relax required supplies
Date: Tue, 20 Oct 2026 21:24:46 -0500
Message-ID: <20261021022446.3619435-1-robh@kernel.org>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

For the QUSB2 PHY binding, keep the three regulator supplies required
except for legacy IPQ6018 nodes that do not describe the board rails.

This relaxes the requirements for the IPQ5210 as well as if it is
compatible with IPQ6018, then it shouldn't have more required
properties either.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
v2:
 - Fix trailing whitespace
 - Add blurb to commit msg (for sashiko)
---
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 001fd0ccc985..1245b174b0ab 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -165,12 +165,23 @@ required:
   - "#phy-cells"
   - clocks
   - clock-names
-  - vdd-supply
-  - vdda-pll-supply
-  - vdda-phy-dpdm-supply
   - resets
 
 allOf:
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,ipq6018-qusb2-phy
+                - qcom,ipq8074-qusb2-phy
+    then:
+      required:
+        - vdd-supply
+        - vdda-pll-supply
+        - vdda-phy-dpdm-supply
+
   - if:
       not:
         properties:
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
