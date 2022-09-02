Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FF68C6FA81
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 08:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZ1ksJH2KDRPNM0fR+wv+yBue7zuhWIGg0ogx7qtq8I=; b=WblSnhOTkta7pZ
	GBhmSi5PADexiJ8V2FV5GKkZlH0/IJKwxrXWdFTsTjH6QbwrKmNWseUaZEHAthJy97ClWDzf3AmiM
	hs2gDwpkh1YZ2/wA+Aadb02wewcaTQyDnzrIqHgVU7phyHlhqCkaugG8gXw4XekTmf0qgxCpu4VRG
	/4aM+wq+GcelNWYvYnPd7gPaX4BhmgY1UZpN3Ix8yk9AJSV8hArTpHinwKQedRwGZOxhXw5PUiP4T
	E0jHnYsupxyqF7dxvHqwBc0B6wLillQbCzBL7kKWIyQR1MVpGUa2vV5F9Nh3oxUWpXsjIYF8v+56p
	GYTd4DVtzumdpodhpb8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU1iu-001eDb-Id; Fri, 02 Sep 2022 08:08:20 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU1iq-001e9k-Fz
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 08:08:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8BE20B82A0C;
	Fri,  2 Sep 2022 08:08:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46A0AC433C1;
	Fri,  2 Sep 2022 08:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662106093;
	bh=khqeET1+0nkt6ch7LpgBOBM9lI7y0AVI0urjOk7+sQ0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ikl6okLZWqKD2GB03i24PeKzFeqIRmVElCRsdaa6Nldot7w0A90Toox91tCce+rKS
	 UJruhGvAPC54RQIW5kDKwaJAhilarrJw7tSdtq0FazqQ+i0vaq26/ZPt8E5OVAcjsk
	 v7lk5HXIuzTiHYeNwMDLEhf0Mf4c345sUig5a8WJMNQ9Uccq4EbQUvagvjjTNi6MjS
	 CmsnNIYLji4HV89yDfW6ltnek9PAVpZ3xf43VondzFn+YDvucwo7GAFKI5/jHfKrML
	 o/RzwXIi17ymijT2b9TbS3je1SxuxYKsamCzeBmeFM3byvj4dZqMiE+LvppbhT0E6C
	 4s86kofUu3E0w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oU1iq-000399-NV; Fri, 02 Sep 2022 10:08:16 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qmp-usb: add missing power-domains property
Date: Fri,  2 Sep 2022 10:07:04 +0200
Message-Id: <20220902080705.12050-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220902080705.12050-1-johan+linaro@kernel.org>
References: <20220902080705.12050-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_010816_699197_0325473F 
X-CRM114-Status: GOOD (  10.75  )
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

At least the "sc8280xp-qmp-usb3-uni-phy" binding requires a power domain
to be specified.

Fixes: aa27597e594c ("dt-bindings: phy: qcom,qmp: Add compatible for SC8280XP USB phys")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-usb-phy.yaml   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
index 25e01ec4799d..7acb4b7de7f9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
@@ -58,6 +58,9 @@ properties:
     minItems: 3
     maxItems: 4
 
+  power-domains:
+    maxItems: 1
+
   resets:
     maxItems: 2
 
@@ -265,6 +268,16 @@ allOf:
             - const: phy_phy
             - const: phy
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-qmp-usb3-uni-phy
+    then:
+      required:
+        - power-domains
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
