Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EA01C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90qJREzJwHy0XPhdsObRLleowX0Mj7i3oEv9xye1VDE=; b=vLgD6gSIg9ltWv
	UE1/pDzWLCYQkgCf56po4fCu7ctON46Hi9nbGZ3bbmIvJ9NIfXqy+754XG7LBf5WTgLOcrowp78fa
	e9KUVx1dAVL/2vr6xj5iTjyodDJp9ciDYoiewmcUrM7AlE4H0duD/khkYvr4tpGN4s9+XOxL4U4tC
	R5GInaLJs6pifhOazl5oE6MMTXwjdKgN8s4sPXg0gxRYX/D+ATOHt3V0y9MDneVAYWKArfZcVJh2/
	Le45rZGMbPqvF858UuHO8GuDuqSe5rkP3MCC5KYltyB7Q5+GIHjWwwN9gb/7TMFw8HXZ6AFiFWnTw
	IRfSfeynvf2tJda8L3Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrO-00GKxm-M7; Thu, 07 Jul 2022 13:48:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rr9-00GKhq-FK
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 269BE621EC;
	Thu,  7 Jul 2022 13:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50F0BC341D7;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201660;
	bh=Mvv8Aqi+95oauNmn8C15c2rWwBpuwdIMgo3pQP+PeBU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oNDBpVqd4/vp8ImVTlFjCTirk5d6ClOLCN63tyFurOxMZy0CTjNiSHBLeHI1ULBvW
	 LU3Qkgv1oaMPsoSb+fgQzF2TYPLCe3WL9v9cMCVRVEsNR8EG7EO7tLG5hOjDitvZ+q
	 ZqNu2O3W5I/mDrHaUFhxfvkGdA9H59+bZMlCayoAcV6AG8GAhGu394iai08zBP5ptP
	 8UHDVF1suM3W8kgYMR8EJa9k8daVeHG1WPz9X95GLHHbDHd676XcNwl+jNkzicxEQj
	 H9BW8+6kGagVE3iv7PdyKCAh++Lt2HOzXFqTJz0/odIaafYIyhdNzO3gj/wOIvw84o
	 QoiNkQO/XIR9Q==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr5-0000xW-FR; Thu, 07 Jul 2022 15:47:43 +0200
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
Subject: [PATCH v2 21/30] dt-bindings: phy: qcom,qmp-usb: deprecate PIPE clock name
Date: Thu,  7 Jul 2022 15:47:16 +0200
Message-Id: <20220707134725.3512-22-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064747_632002_DF7618F9 
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

Deprecate the PHY node 'clock-names' property which specified that the
PIPE clock name should have a bogus "lane" suffix.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
index 0e9f909ccb82..174f96d53d6b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
@@ -85,6 +85,7 @@ patternProperties:
           - description: PIPE clock
 
       clock-names:
+        deprecated: true
         items:
           - const: pipe0
 
@@ -100,7 +101,6 @@ patternProperties:
     required:
       - reg
       - clocks
-      - clock-names
       - "#clock-cells"
       - clock-output-names
       - "#phy-cells"
@@ -356,7 +356,6 @@ examples:
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
