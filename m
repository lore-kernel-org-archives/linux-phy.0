Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B25C6C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 14:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VweBnxWidNm6j7dwVVulRGeHD+UvLmGpK4I6DREbCPQ=; b=AMfreZmMXAuTAR
	bcvFL7hhEWbFqtynvVWxYwcLKrt4vVZMny91JNcHYTBHHzv3MTq9w6I2PlWepakdjjT+w+o0k5cwh
	CX3NxbFP+qX6L+IuK6vY5dBQb/J58K/7kMiDBveqvWN6a6aWiHTPGdnc0/BAZF6Wtrvy5GcMccr7E
	5cvL7PPpafO9G426JORNZax+NGRkHK0Sv/N4QF/3lHZA4uSeE8pISKBexSsFUy5rJbgLD38ZI8FhE
	OkMR38T3kUAkuMp5fAL36ewohLRqq9c7WPX0g5Te0Pve3ETmRX+qOfwDUE7l/3WdIhyFzUupNltsF
	LTCM6SVIYBtyeRbq0bVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8j6n-000f6O-Vi; Tue, 05 Jul 2022 14:00:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fO5-00H219-SK
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=pylgZbPj+qP/hNyQkJ/9htAAh0zM+m0tOZZvZXqJlLs=; b=QMBFMZYAYxNJ1Z4oH5i5o2XLIk
	udZDZUleC+wZAtedxDko1fqe/ke39j+/6SdRVOn2QtaBg63TNhdaHpmdWrGFIpgSPdAok+30acrXu
	XqLAvxgAIdbgPOVLaj18gmca5jMxkTngZvrnsFSzeAbTB7VVrV/BV5CikM93K3LBTD7Gh/9pw9NT5
	HoUKPfP/+7WB0b2uLLyMl7d7gYJ2MeM0JXifCF1aJlje1k/XDuTTgFcKA+sssRPHHWMNv7xN1e4gY
	QyY5DgWl9CGY0VFuiqPqteOSn/7p1VuNwc8x5ZqrcMoDDOMVyOKR166l88g+Lob6zNYaWZp/HB3Kv
	evxGIk8g==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBE-00HV6V-6x
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 36F5D6194A;
	Tue,  5 Jul 2022 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D617CC5831C;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014543;
	bh=j0qtr/Xaydd2eOG004qp/hks1Cdng+e5jtPGk71O+6U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TSsVyuXPio1/0k4red7oBCNyopZN4Vojhb+GGJ0puPV3snUDKbnndLDX0nePqqPod
	 TU12HS+2tCVpDVS9utJWbyaGIvWW8WkmGlLhjzGqTPa7qqagh6SLOdrKEBZ1u+blZe
	 7kmgJR2lLIB6fjBqqJCKGZ2+++84697W214yopz6s+pf/2PbffCvsFUTLem2uhFsVG
	 7AtEm8yWgb3ws1VZ2u9uQtImbHpbjCWsreTRB4GelTQkaaXQzZ6di7qHihr3rFWW/e
	 ICJUfK/9t5l90GkL8GpeSXlSBM5NwngGsxI+2vyHXOSOqC9GOWi270axCy6ynJDlVw
	 S6pywKDp4P5Mw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB2-0004Y8-U6; Tue, 05 Jul 2022 11:49:04 +0200
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
Subject: [PATCH 27/43] dt-bindings: phy: qcom,qmp-ufs: add missing child node schema
Date: Tue,  5 Jul 2022 11:42:23 +0200
Message-Id: <20220705094239.17174-28-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104916_875613_E5A92A60 
X-CRM114-Status: GOOD (  11.06  )
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

Add the missing the description of the PHY-provider child node which was
ignored when converting to DT schema.

Also fix up the incorrect description that claimed that one child node
per lane was required.

Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-ufs-phy.yaml        | 72 ++++++++++++++++++-
 1 file changed, 69 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index f1e3d70eb73d..9124b60eb9a7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -75,9 +75,20 @@ properties:
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
-    description:
-      Each device node of QMP PHY is required to have as many child nodes as
-      the number of lanes the PHY has.
+    description: Single PHY-provider child node.
+    properties:
+      reg:
+        minItems: 3
+        maxItems: 6
+
+      "#phy-cells":
+        const: 0
+
+    required:
+      - reg
+      - "#phy-cells"
+
+    additionalProperties: false
 
 required:
   - compatible
@@ -151,3 +162,58 @@ allOf:
             - const: ref
             - const: ref_aux
             - const: qref
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc8280xp-qmp-ufs-phy
+              - qcom,sdm845-qmp-ufs-phy
+              - qcom,sm6350-qmp-ufs-phy
+              - qcom,sm8150-qmp-ufs-phy
+              - qcom,sm8250-qmp-ufs-phy
+              - qcom,sm8350-qmp-ufs-phy
+              - qcom,sm8450-qmp-ufs-phy
+    then:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            reg:
+              items:
+                - description: TX lane 1
+                - description: RX lane 1
+                - description: PCS
+                - description: TX lane 2
+                - description: RX lane 2
+    else:
+      patternProperties:
+        "^phy@[0-9a-f]+$":
+          properties:
+            reg:
+              minItems: 3
+              maxItems: 4
+              items:
+                - description: TX
+                - description: RX
+                - description: PCS
+                - description: PCS_MISC
+      if:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,msm8996-qmp-ufs-phy
+      then:
+        patternProperties:
+          "^phy@[0-9a-f]+$":
+            properties:
+              reg:
+                maxItems: 3
+      else:
+        patternProperties:
+          "^phy@[0-9a-f]+$":
+            properties:
+              reg:
+                minItems: 4
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
