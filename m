Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03690CCA481
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxxGTe1EZ0/Rhc/8+eYAB8a3aTBN/c9fseAdxu5xpL8=; b=OfUWTdydPzk1yo
	aNvard2KfCONn03ME0ppo+L38L/OCN1tC+i94hXod/I/ofvQeZhwtD/emDk3bZMlc+Jj4db+bhN1M
	JbUMmqTGDM0tuagCUdomXwevAm29UCdq37q+aU7nnpIgPipD4BAEPYbExNGrczeA8DXUug9OR7do7
	BUj9wTZQfcui1qrHZBsa6hglXF6EoUBFZEufmYE0W/Pn42ZDneMA676pKdyaqJZJ1hmoKCezS57N6
	DHCWfxb6qHYbVaVNWI1znRIF7+kxzAOkofdl1CVHFEu5qK3H49RaQfi2+9MO+erHsmxzjVoJfTzvf
	e4ddmP+K7RMN+tuKl4tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDj-00GwcE-2U; Tue, 05 Jul 2022 09:51:51 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBC-00Guae-0p
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0D77CB8172B;
	Tue,  5 Jul 2022 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DEF3C53FCE;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014543;
	bh=/6wfFPBZsyDjbG2stokCCa2g61srZC+CXkOdBy6Lgrk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EQR+Gyk9opEzwg4ZZYmy27jhxZJ6nr7RIdVL+uo6lp/JDy0bE7JvlB4GzMEeWCCpp
	 g4juIBz6pbprEMP7dgK8T9zwnVo3jqYygIcGkGS8/rZ5MHb/DNmgF2L5uSQO+fXqZS
	 GqeHhHQ1P+/CSRgGygJcWnUieH/zjLuhha8ZNAcbJy8bmsy8qV+Qge2PYytvTYu98Y
	 PZ+Ho4X/AI5rIC8ZgTYBf3y1d4LxeXBd3rdvfEkeYHm+/pMRSxOZp0tywFQglC1vuG
	 QX2ePknrntnrQjbgPzIJ6Xg3eedQoSvnS7/N3TOs8iIFt/OHQOQfJtZ23u061xLIEy
	 InZBAa+BwIA5A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB2-0004Xz-Li; Tue, 05 Jul 2022 11:49:04 +0200
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
Subject: [PATCH 24/43] dt-bindings: phy: qcom,qmp-ufs: clean up register constraints
Date: Tue,  5 Jul 2022 11:42:20 +0200
Message-Id: <20220705094239.17174-25-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024914_327424_8F6CEBD5 
X-CRM114-Status: UNSURE (   9.78  )
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

Only some USB and combo PHYs have a second dp_com control block.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index 732518d0427c..af3ed5601d21 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -30,10 +30,8 @@ properties:
       - qcom,sm8450-qmp-ufs-phy
 
   reg:
-    minItems: 1
     items:
       - description: Address and length of PHY's common serdes block.
-      - description: Address and length of PHY's DP_COM control block.
 
   "#address-cells":
     enum: [ 1, 2 ]
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
