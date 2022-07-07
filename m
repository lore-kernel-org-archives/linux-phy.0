Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE148CCA486
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7vnpcNc6x6UBVS0QmT8Jkv+eePhNp1UUtiD6SrTkag=; b=CAL8dl3xohUDcL
	k7V1Hiodpmnl5nawyaah4YhLVVEWt0OrogR0LgjIln6XCyMRTP78lhNSq+m4Jd2CUh6bUed8gNdnB
	VV8zdMhhv+dM/rX+v1/kj2i2DrnTYNbfubP9FsgG/u7srMkynA/1fJa2VxpncvyOFZb+9itzw9R4b
	jJ8ZZvWPlCFG0Pi/LPmbQIpYez+7xKWCf7FH7tJp2QC+V8kSPNwRktCfbIel685QZUuEpx8DMap1P
	Fjp0Ev3hzCxycxWDcL8RC6qPGkltV6rjuehBFVLWWzFxIk2Z5Gsn3BnSqAEW5xGF/HCPZp0WHPtmh
	oQkQcZxGUDRaNyTP7v0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrH-00GKqv-IQ; Thu, 07 Jul 2022 13:47:55 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rr5-00GKcg-4T
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9FDA0B821DF;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 614DCC36AE5;
	Thu,  7 Jul 2022 13:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201659;
	bh=2V9aRAC2X1UCZ0ZViRkEIRSPpsay+FjbvSHDFWbB+HQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fLgUXgdah3nbMnvAbNWI6gZKJtBQq0YUmCQjw8V6krIbgIOKoYTE3zolh6I+M9hRH
	 RtB39r51U7dsLy0WqkzH+YbIgNp1X5wKPbXM/a3ZN6vqOeQGysjlJzUOVkjkd2/Xly
	 4Tiqctx1VY2gqhrNUzN4CVqhhtCA2z2Ryi6JYDqhbSjUazsPXuxGe8Ma0xPF0f9/Fz
	 4i1a3L4I1z48rkcutP4BbKeH15npLDwLFnnjoxWgvnSEFlFTPF55lpn/E453hxctam
	 43wDnGrEyU1vZElwepfUmLkzwPxTzKDslR2z7bSjF/0z+bFn9yjkulnyK27Qa1mlvM
	 QdkXPfs6ddRHA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr4-0000w4-58; Thu, 07 Jul 2022 15:47:42 +0200
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
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 07/30] dt-bindings: phy: qcom,qmp: drop child-node comment
Date: Thu,  7 Jul 2022 15:47:02 +0200
Message-Id: <20220707134725.3512-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064743_332444_E95419DE 
X-CRM114-Status: GOOD (  10.21  )
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

Drop the redundant comment about child nodes being required that was
copied from the old binding documentation.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 7e0f798632f4..08a84af711ce 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -96,7 +96,6 @@ properties:
 
   vddp-ref-clk-supply: true
 
-#Required nodes:
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
