Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CB42C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 12:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BM5gFSfO4lzGD7zNklZD5BpcB8EE3J/rVV5XA77iEU=; b=mGF3/EaTfTR1xi
	Dw9ZHlWiHTbCQAM0Axq+FDOwUn0/VR3q+28U1Fdt0qBQqL9PsrIw2TInLfHZxaGRPn6+bz5ATXYY1
	O+q2ASlMqv/ZYBLyuOyM1HBenYvEWxRJXiLvMvc1z2URLipe+aSVhdrBnV4x+s8akNArleXiw4RVn
	NKX8UPbGnmqOOgRyUT18xReEbSNVnGA1at0V3uuB4Ha2R7ljM2WOM8Eyvc0E5ojjHDdbfwr2KRa8m
	eQzXQ6fHpwcP2PQvApLeuJ79SJZ6x4nfiL5RLbjZot+l6H3dmjHs3rp59U5IsJ6tUQGa4Gvv0Zpf0
	IRK+0oJcvqEDpdgORbpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8i71-000J3w-OW; Tue, 05 Jul 2022 12:57:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fNy-00H219-Sg
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8bPGYyznxR5dxLmZboIeCoWv+N72gOVGkDXQai0uE+w=; b=dcUMbTyy9TSTEpdQ7LFA8Atv6L
	pvebfQRVxMXzvr4ZottS/PfphGvfSJ1vZkbmhhy1xUssV3n/5N1vw8TrZTeEUPYUBNEJng5mHLLkl
	yFTq4iqCuoxGl929NlQ5owXRw1D58DrZtWYSEAnf6PhK/1eTkMNPLuO3viBARGYC1od3jYgGVpwEw
	t0oN4HqaqLRhRaDilHuHQ1NbrVB2T7BK6om/c3yYab6N3Shkx9V7Yt5YPQPeS6diYeiqG+U4Dtdyc
	pOUEw+r0drcho8p/XhzYzdpvcFIgBGgtWxur9jzpCu1nL+jGo+w74mpll1ztCDf2A1DCHK8zlgY2D
	oMEPPmPw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBF-00HV7D-8U
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DD3A66191C;
	Tue,  5 Jul 2022 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3CC0C341D5;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014544;
	bh=u94lrqzZCL2U43fE56CPQFg5fcc+j1jnnHfeDdjY1bQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sEcPHR1fafaGuuSHPAN8Q9f/p7OizsdAqSQRUHErXbjMdDUbelggFIZseBwPhyNQd
	 kzD11j9q4fV73chYFoGfYEKWj0Kjd9e77T4K/SHlX8B8Vm0OLSYnX1KzuaftSDL9eC
	 O0AQQYKg2vvkFyut0RZitBMkPpPDNDoxPtRJT9J3MkIWe/F/ElsZH/lfzjkAoTrdhD
	 CnGqEQdgd9ZHqtCnOTXgCoz7VEZDdiZNqj08FA3cjt+jODyK7fLGK/eocEBmAC2k3U
	 oO4AByecJW4mi+WTyQs8pHFDraelyiQ9KvUm2XWbhbssp9EPngEifmPBb29WNXhB0h
	 a9Ve4urwdLXTg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB3-0004YY-NT; Tue, 05 Jul 2022 11:49:05 +0200
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
Subject: [PATCH 36/43] dt-bindings: phy: qcom,qmp-usb3-dp: fix bogus clock-cells property
Date: Tue,  5 Jul 2022 11:42:32 +0200
Message-Id: <20220705094239.17174-37-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104918_155056_06E2681D 
X-CRM114-Status: UNSURE (   9.67  )
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

The QMP PHY wrapper node is not a clock provider so drop the bogus
'#clock-cells' property that was added when converting to DT schema.

Fixes: 59351049ad15 ("dt-bindings: phy: qcom,qmp-usb3-dp: Add dt bindings for USB3 DP PHY")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml        | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index 60dc27834e1d..86d64c61bca3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -30,9 +30,6 @@ properties:
       - const: dp_com
       - const: dp
 
-  "#clock-cells":
-    enum: [ 1, 2 ]
-
   "#address-cells":
     enum: [ 1, 2 ]
 
@@ -147,7 +144,6 @@ patternProperties:
 required:
   - compatible
   - reg
-  - "#clock-cells"
   - "#address-cells"
   - "#size-cells"
   - ranges
@@ -169,7 +165,6 @@ examples:
               <0x088e8000 0x10>,
               <0x088ea000 0x40>;
         reg-names = "usb", "dp_com", "dp";
-        #clock-cells = <1>;
         #address-cells = <1>;
         #size-cells = <1>;
         ranges = <0x0 0x088e9000 0x2000>;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
