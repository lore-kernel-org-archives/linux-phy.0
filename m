Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47A8EC6FA8F
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fErfJLHbXUnDI2LqmWLtRXoMjjzM20BZNiuFA3Z9/Rk=; b=m+Ivtl5rQmeo0G
	+riW8LMKHZqmDZFPkrH3dOzHQQYKMqOYWfHD7aN5lMZCPafbNE71TxlQLd3gsOZO7TeJ2JjUZ+ECd
	9V1PnT85N8Q0hox/aqLySpp5vKXhmYe74njjpSbNNHTnmtimbo4Qz55//R1qu4DuBwLPkh+5aussk
	JMuQMVGOGfWn7/V4UuVV08L6EcCK++XEPMrZNOC9PcDfcHhT4E1+u/3sMJwWrrWoIfyc5G/B2VCp3
	ejXvqAeawc8/5VDVyxrsuUyGaMGsQwE4IZo3OZ3oze+6+tFp24hMB+dAjlHXVi88hY2+OeGprMc6h
	Bh7RHT25acCbhrYP18Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRo-00GZke-Jk; Tue, 30 Aug 2022 11:30:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRW-00GZWo-3R
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 71B676154C;
	Tue, 30 Aug 2022 11:30:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CEA3C4FF86;
	Tue, 30 Aug 2022 11:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859001;
	bh=Pv8Z5nFehfkYoWXpSKjausYgRFbe7Dy5KlCi2l4pu0M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YDIpwEQXpU77+4zVabPJ0+ZbOss1edC7/3iVDntN+h9tLX955hIBMIx7CMx2SfiHS
	 Tcj8sCdJ6tSnRDjOI4cWhlMJ+Whx34h6SeegKCl2VWlS1INaRHqZmgpzqlX0Us3d0k
	 MSeXy8t/e0J7x7IAJ2v2YkN0c3xcQQjG4xsXtC5xYUIQ3Nyulu8hoHqSrEq0q8/UbO
	 d/jqxtzCcEr9l+7EUvayabrX+hxZcH1VZ3WJDg0F86npuDXqoH2Ezkekn/lqS8mdU8
	 fVR80IRnPrQt1G0J+QUrIICfx/m58CCkLaqpPu1cabwNKEOXWLXJSZjXvt6LIpNLm9
	 cZ9rmcR1M+cEw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRO-00010y-WB; Tue, 30 Aug 2022 13:29:59 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 24/30] dt-bindings: phy: qcom,qmp-usb3-dp: deprecate USB PIPE clock name
Date: Tue, 30 Aug 2022 13:29:17 +0200
Message-Id: <20220830112923.3725-25-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043006_293238_80BE5336 
X-CRM114-Status: GOOD (  10.60  )
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

Deprecate the USB PHY node 'clock-names' property which specified that
the PIPE clock name should have a bogus "lane" suffix.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml          | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index da7d8dfc631c..abc29686dff6 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -98,6 +98,7 @@ patternProperties:
           - description: pipe clock
 
       clock-names:
+        deprecated: true
         items:
           - const: pipe0
 
@@ -114,7 +115,6 @@ patternProperties:
     required:
       - reg
       - clocks
-      - clock-names
       - '#clock-cells'
       - '#phy-cells'
 
@@ -195,7 +195,6 @@ examples:
             #clock-cells = <0>;
             #phy-cells = <0>;
             clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
-            clock-names = "pipe0";
             clock-output-names = "usb3_phy_pipe_clk_src";
         };
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
