Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A4B7C43334
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64CiSxrCGug7oDvvFzz6kPQZojv1JrsgDuPADpnBYkQ=; b=slcR4nASN6knb1
	om30zTjkAsmAU3gieTxVLmBsnV6Luyeoo2UcqqsFTllqx1244aOwkeKolBi4kl6FqDQWdASEqIqki
	ytYbANI11uP2+uA+EJpQ81gTZjmYAwSu7Lc0qk0kJNIK9SqpEXX0eXi7EwH3mzQ5Qx1YHZ1Xj6NG1
	e8npgyMJMLCzY3PgEXaypKkAsvv2UBeQaVLzKMtDKMYwzGTF39HayBioDCYGaCqEPvz0QsJzvHbg2
	R0NkL9DBGe5xcJOQXjjqtmkRt7gvKz99hA8yPRVMnDytoaVqlSZSNfY2PZuBJYRLfuvDQV/JTAtc9
	l2ZOZU2KyoctuD7lV50g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrB-00GKk9-Kx; Thu, 07 Jul 2022 13:47:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rr4-00GKcc-Qy
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 838CB621A3;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B86CC341E0;
	Thu,  7 Jul 2022 13:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201659;
	bh=xrYlZ4EhExYzNVTwlk2mL1RpUUVk9Eoy00LvYTfjQYQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ppi1e1/pexMFYli93Wu2P2uKPa9/bFtEmV8i+cLMV8EBSKYPky/xkdl5zGfRdOYn/
	 REjp5a9vjTWJzNRb/0GwDyz+XzGNy4rvcsrjpP6sUy1AaGqS0tm6YyCxVytOZ3yMnA
	 6/9cP+khbeh4Tu/VN2g0SU8ID+OEBAXkq863rkNYbtAFS1W6H52+TIvurMhvC5WVXV
	 Wi+Mfx6NSvSUnYeSuf1lfAFWOmTwssfW//DJs01UNZLs+BKHVDSQYbm+0vWmo51Cto
	 IUIi6QOU6F4own20vxmAtCVEM+c2keBunXqz/y3ECOuT6liTrTUMN3H/uULWiPfCM4
	 jsju4DRKjxfXw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr4-0000w2-2Y; Thu, 07 Jul 2022 15:47:42 +0200
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
Subject: [PATCH v2 06/30] dt-bindings: phy: qcom,qmp: clean up example
Date: Thu,  7 Jul 2022 15:47:01 +0200
Message-Id: <20220707134725.3512-7-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064742_976524_8AE93E33 
X-CRM114-Status: GOOD (  10.55  )
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

Clean up the example node somewhat by grouping consumer and provider
properties in the child node.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index bcffabf04566..7e0f798632f4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -426,10 +426,13 @@ examples:
                       <0x400 0x1fc>,
                       <0x800 0x218>,
                       <0x600 0x70>;
-                #clock-cells = <0>;
-                #phy-cells = <0>;
+
                 clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
                 clock-names = "pipe0";
+
+                #clock-cells = <0>;
                 clock-output-names = "usb3_uni_phy_pipe_clk_src";
+
+                #phy-cells = <0>;
             };
         };
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
