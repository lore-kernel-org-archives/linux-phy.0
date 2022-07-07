Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5058CCCA480
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=agSAg/XiTck/VS0SrTNKly9Oc7LqZf44bTll03yjFXk=; b=nxm06Jmlvv3wnV
	h4+S2trdxRGltY1pMc9XnBMqoFwncGBzccn57nU0JVTjaDiWreAwE1KlU6f15vZpO80zo6U/SvpGQ
	pZijoYPiGoGwlHczp1dqkN0kLxkUWn68Ra6G/ZYAlgYcc4/uvjhP+UG8WXrSnO+ABVXFfMoF9op/g
	TJQtMwTLqHeKst9ihdhwTcJlSPkWk/agGzLJqevOFw6YSddGYtdRrWUJXCQ9bWOXE+8HJV1zfdgcO
	Fc3wI+KguqQvAS37EvQnAxgnry2KxntV9M3NuFiQFdVRuGwdG1/SJnvh2GITu3Yga+r1YjjTKb78v
	xDigbykoaeVS6Norvdsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrS-00GL3A-HT; Thu, 07 Jul 2022 13:48:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrD-00GKlH-59
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 67C1F62206;
	Thu,  7 Jul 2022 13:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EB47C53FC7;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201660;
	bh=boTqnhrrai2ijoY0lbc9OfpsU2lJU7ALSG8HtXGg5yE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JmNCa/fSfvhSeZVOUTo5MoKIebcREIeYOd+oDUy9vg9RHsHlMD/sSLjQCJuPQji2B
	 xJS+nsm0kHAVsnENRX9fkMa66NmCEeTYFWj/FdB3SMN0giT0WAZTiAwcZNQvHXFykR
	 iMeW86Ch1YcjiVEFyy9K/p+IosNG8A1zq+HMrQP2eH/ErKaTGRy50ObvDn6XG5e/vw
	 aFnL2wi+xWx89v52VXQFf0eNGrLhJ5bFfagllm69vywEy2WDvLpAV6iXyJ04qPKy+0
	 T4h/WO2N8QMWC2yXI9+9/rWAyC6B79oQhwfB83DCbvv97WaUQ/D3nKBea3z+4DR9bc
	 3ZLF0xhJuVrsw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr5-0000yD-Ie; Thu, 07 Jul 2022 15:47:43 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 22/30] dt-bindings: phy: qcom,qmp-usb: add missing qcom,sc7180-qmp-usb3-phy schema
Date: Thu,  7 Jul 2022 15:47:17 +0200
Message-Id: <20220707134725.3512-23-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064751_289283_C18F04CD 
X-CRM114-Status: GOOD (  10.70  )
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

The "qcom,sc7180-qmp-usb3-phy" compatible is apparently used to describe
a combo PHY where only the USB part is used. Specifically, only a single
reset is used.

4ad7d7eeed3a ("dt-bindings: phy: qcom,qmp-usb3-dp: Add support for SC7180")
94c34600b617 ("dt-bindings: phy: qcom,qmp-usb3-dp-phy: move usb3 compatibles back to qcom,qmp-phy.yaml")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-usb-phy.yaml        | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
index 174f96d53d6b..65e8e4ec656b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
@@ -123,6 +123,28 @@ required:
 additionalProperties: false
 
 allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc7180-qmp-usb3-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: com_aux
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: phy
+
   - if:
       properties:
         compatible:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
