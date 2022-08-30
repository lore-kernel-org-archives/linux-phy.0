Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5A71C6FA98
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FA2c3W8i0BFyF93bDVOXZtOJazkiCwLWUO8KBDZnL6E=; b=fv6MB5NG2b2vpb
	R0wBvIeprj1deh7ip89dfjzAOjqXgYOOLobdjEk0wxD26cCSIGJZzOuvCFsS1nY5xDVUFVNx9AtJ2
	DLHdZIdql2iXVGe/ggLJcRbLcuU0VTl6O7wNzQ9/3Y/LwnZfjk6/Tq1b6E99EGQYWxrbX6OlShSNo
	TjsqW1wwNRdG+b2rqkT7QBXJmMBw5/11K1mtnb8PPKKENVeEcH2OyssrGWcGKjf55+V3hnm7zJoTK
	xe5PlPgmisHvoUa/5ORToti3EmZjsXGCFS6TT/LVFJWussF4MUQmeEmP+bx8qOLeeTlvJZTqfJdbQ
	7dcsk3S5a6kmdGREr/yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRr-00GZnE-47; Tue, 30 Aug 2022 11:30:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRf-00GZgE-Bg
	for linux-phy@bombadil.infradead.org; Tue, 30 Aug 2022 11:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=clyCrwY0LDZF/abGCz5pGxqU/8gba1+0v8QzJrGom+o=; b=FdBNDGkQ+X8/YkzOsVppKE5Suv
	a9NDT15ZXkgqN8BXsVDMeX29KqJmumeMdBCt2LB+yhAsruehvMFouRxlFEh+pDd3NxjmdazjBfENt
	oMC2Vsw2ifNjuiVoTEvm4rDoz1Fxr9K3P8dCPLhory1S44+FfZ57L6dmRV876WRBAY/sUp6lCVzoI
	otN3FVXLB9jZRDj0E9OwyZ6YazD3far9WgVOyzIXzhWLGWtVdhWvteW1/F0GRa8kyGPfWws/pOTbw
	luXxam6ga/i/14vWOTYrS6+BFhSVGGrxHsr4eqAEhBQs0R2Qq0iJbea7QpXJhnwEnRQ15TXu64OI7
	CTCzZkJA==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRa-007ozj-GG
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EA7CB61585;
	Tue, 30 Aug 2022 11:30:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6BA2C4FF7A;
	Tue, 30 Aug 2022 11:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859001;
	bh=vcL//u9CSuTV0TySG42WR+LqfqgG8yykMY1NC+lI/UA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HhHBpka0vypQuSReoLE9XM9y+yi0Rcx29KkpBEXTyRfP2J4yDTnG5rsLGL8ex8YOp
	 SeswKLpAQ0Zq5dKb8B4+xx0hBOvtZQBDP/tS9IdVYBid/u2efcy97UBxnt4nLgLMlT
	 2ncTFoiNzQOur6zFeVZ6la7qiNnAzyeGC9bsg2jRia9HNSX8AE+JLK1xpq2C961con
	 intUZVVOua7n+cqnJXM1YhiFpSJX1mBFe+Nx5kNB1ZxomjDpjQ4495Y3YW6EUU696b
	 gcm79NLHyVrVP5PxiC4osokiYC2jesYDF9xlxPccMaxKMN5vlaekW8bq/Fluk3w8HL
	 ta7vAeGGxItFA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRO-00010p-Md; Tue, 30 Aug 2022 13:29:58 +0200
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
Subject: [PATCH v4 21/30] dt-bindings: phy: qcom,qmp-usb: deprecate PIPE clock name
Date: Tue, 30 Aug 2022 13:29:14 +0200
Message-Id: <20220830112923.3725-22-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_123010_863861_E2174AB8 
X-CRM114-Status: GOOD (  10.43  )
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

Deprecate the PHY node 'clock-names' property which specified that the
PIPE clock name should have a bogus "lane" suffix.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
index c8c7483f3f48..17af049e65a9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
@@ -84,6 +84,7 @@ patternProperties:
           - description: PIPE clock
 
       clock-names:
+        deprecated: true
         items:
           - const: pipe0
 
@@ -99,7 +100,6 @@ patternProperties:
     required:
       - reg
       - clocks
-      - clock-names
       - "#clock-cells"
       - clock-output-names
       - "#phy-cells"
@@ -357,7 +357,6 @@ examples:
                       <0x600 0x70>;
 
                 clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-                clock-names = "pipe0";
 
                 #clock-cells = <0>;
                 clock-output-names = "usb3_uni_phy_pipe_clk_src";
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
