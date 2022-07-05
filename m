Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2F93CCA47F
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwXeflb8BEwe8YCeuBhJiDWzmRecWZhGQWbvstuZHGQ=; b=Z6pcUYKkAMp8JD
	zt9KR9cSK6J/5wrYmS/hIXRMVYf6enDijdxg3oslrhjvo5GJppZ0Q9/RD2pcZR++ijiuDu9n5yEsD
	gz/LfggEQZPJy4oOWNi8L1Qj8alX+Jg5QVdkfVIyfC9PSyM4OfPEqDswPvOYMN/0N2XTyc69UGi6I
	CucvtaG6ROZ+C+3dbNIucPR3vqoY+bthStmAUsV/J2Dcd8FhzaeYcF3yDgvV3u/RkPpo9Vh971mNH
	uBjO7h5msVRuy4MGJ2Oa7ylJeL7UBhefAzgLypjT7zL+iWU3eVmQcQZRUM82unTdA6JcEhlVGfUX+
	uMBKgEVrzst4FX1Xwj7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDh-00GwaV-Mp; Tue, 05 Jul 2022 09:51:49 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBB-00GuZd-1v
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 82AD5B81731;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E9FEC36B0B;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014543;
	bh=CJy5PzmZIQMxdMJt0IU3pXmVjYFdTGTu/yQaUEBydtQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PEmUxLO+b3acnmVdDrzz9Ev/hWQM7iR2l+/7/N5/8TmmTJe+nbuccKEIpKPP47Zz2
	 pc6OdY5JpGEYy3kBE+ocsvP8wa5Chv6hykibwJ+iVmLpu7YfGrelUZ5MGUlXc2uGLX
	 TGwjWO55j/6eY8hebMFSLXoagzwfUL9BkYuk+nohBW9LXoWoQjci0G3ELN4H56I1Zo
	 AG0emK+fTQkBmVQlAPbogS53Z18yR+mdOJTeB1WbxKmXcLEmEom7NZ27M/jEwpkn2/
	 OIyfd1gw5KLGhpuIYw2kXMlOouTXY2fSjdfBdHmK6SVWv+ZZkcUb6GPpwE5NlXDgnX
	 rNa+GRhceJcWw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB1-0004Xa-Ur; Tue, 05 Jul 2022 11:49:03 +0200
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
Subject: [PATCH 16/43] dt-bindings: phy: qcom,qmp-pcie: drop unused vddp-ref-clk supply
Date: Tue,  5 Jul 2022 11:42:12 +0200
Message-Id: <20220705094239.17174-17-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024913_377881_5077D25E 
X-CRM114-Status: UNSURE (   9.73  )
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

Only UFS PHY nodes in mainline have a vddp-ref-clk supply. Drop it from
the PCIe PHY binding.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
index 557cccc8f4dd..ff1577f68a00 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
@@ -66,10 +66,6 @@ properties:
     description:
       Phandle to 1.8V regulator supply to PHY refclk pll block.
 
-  vddp-ref-clk-supply:
-    description:
-      Phandle to a regulator supply to any specific refclk pll block.
-
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
