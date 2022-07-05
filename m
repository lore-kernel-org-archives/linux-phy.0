Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53337CCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FGOpAGaCmt4lPCdupNGpL6cww82M6/a/7xtRvV64mI=; b=t60t2/G43WeGRq
	2rKSpLPvGDsyftPrBukUvQ/PyEi4SVk7tPKWHAtw5CJC5riYm5GVGePJaejiwf7jR3wkjMYywcUqz
	w0Cku70hNPaNQsfB2w0ZWcDpaEXSVBuvHm4UWGzGfebV6bLnIuBi87qoWcvmIZxd6VZz4/tBpdgIG
	StXIoeyThpEos+BR8bGkZum+N96qS4c99gl+MdC4jqB4yEHT88ifGtUjhVq6ckYE+NIkSl1s3DeMp
	kDebAb43t8rKhuL/zxtQWp9taNuTFdK7MvPc1dClZ0g13F8O9VkxTSlhXH1/+2bmaxWpeQFT9C+Gp
	b4KT1kB7pNYQzV0CjVIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDa-00GwTB-HK; Tue, 05 Jul 2022 09:51:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB6-00GuVn-VI
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 083DF6194D;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B49D7C341F2;
	Tue,  5 Jul 2022 09:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014542;
	bh=p1mQzE9YzRv1TmEiNJ1vRrzITwgEKyTWEASrGpAbf38=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=FcZVI/NKW1xpx6eoaa2h5/Kg581nkinvgRRpK7KTcwi5ZWXnVMHTnzpFUkhUdyijh
	 p0AtYLlq8w3qk+1putIzjB0JYIdWBsmKLgc+hGQBddK4OYhLPq6WeYvojwhaWV/Ch9
	 5Y9LgtM15ED7bpRyXv9W03wFrJCNdrhqonO1VZdEsiU1/SeRfIweLcYVxQWi1xh7pN
	 IbYYcZz0XaMmfr2/EzjYGz6oVDWD/MwlhONQ9PpLQXq07CnkFdvB/lRb+w1x+T95+E
	 HahedK+l5eE2FhN/eDt1RvhsYcyr0kN2pJ/S6ogDYjZK9Ig1k7GgvliJfJhU8Ce/k1
	 e4jUqpZvr7FXQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB1-0004XR-MX; Tue, 05 Jul 2022 11:49:03 +0200
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
Subject: [PATCH 13/43] dt-bindings: phy: qcom,qmp-pcie: clean up register constraints
Date: Tue,  5 Jul 2022 11:42:09 +0200
Message-Id: <20220705094239.17174-14-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024909_145009_BF2B9DEC 
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
 Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
index d1d4a468acc3..7cdc1cce06cf 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
@@ -31,10 +31,8 @@ properties:
       - qcom,sm8450-qmp-gen4x2-pcie-phy
 
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
