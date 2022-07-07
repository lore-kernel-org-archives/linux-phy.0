Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32104C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EC73P4Pt0Epzh1LCICB/6aEGm78bRQ1VDVRpaMhVn6U=; b=0mdaXbgPC8ybvd
	svSHDD3Z7OP/SN9sew0BIauPr9rLrvMijk04KxrtJG7ziLFw5SMdWBxs4HtFXetqubY3LZc6JaOO5
	aixgjlC35GDPAnHuIksAc6PwsdW9ykI8JLt61BL8obICjkmvJ+ERdKXymd5k8mLrFW828oZx5a8r5
	3tUrDnr/+WSIr1zZS/tKXTxiwKlGeuZy/7iyQfYKHzp+pKF4BnmxcwFXoVfVM27Aph3RIgCpxALdj
	EHUzQOIypwGg+Ya8q4wXa9Y8mpjJim5ztnH4JUNGA0YniiUA4azD1OnB1x7S2K0pP10R9lND0mLCi
	SzfhqaIXb791Er9mLCRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rr9-00GKhi-2C; Thu, 07 Jul 2022 13:47:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rr4-00GKca-I6
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5E56F6216A;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C7DDC36AE3;
	Thu,  7 Jul 2022 13:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201659;
	bh=L091Lwo2vL0s0fAkT/tkbwRyMpVuvwvBsfviDWQ21ys=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=H0/KbZ9S4BDzwYcbJweszSEEOmiC8sFWJi9fN9SS7ScegTRl0f4M3oE6GuaAkmtUW
	 xkEhi7eYlTlLqkv+o3KkDEgjXEDTJ9eD/W2DIfinEH/7EmDY7tshrAw1X1SK1b1eFA
	 KKhs3z3jQvraUrjaoE/Tt5fS10KxKpItEdzqG9yVYx71t45b17/LaRyhgHk9WnTs1R
	 khmQt+TePtLuSBh5efF4yzfzisHmtoS3zlOD+Co4KrcdxXI4pYXzSWbqXcNXZERnAs
	 W24T+PRVmPPJHF2Scr3+j9D/QlGVvAmiAljt37T1w9fPEQ8QEZAVYhj342pturTxZ+
	 yUNBjBFGShOSQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr3-0000vz-Vw; Thu, 07 Jul 2022 15:47:42 +0200
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
Subject: [PATCH v2 05/30] dt-bindings: phy: qcom,qmp: clean up descriptions
Date: Thu,  7 Jul 2022 15:47:00 +0200
Message-Id: <20220707134725.3512-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064742_654233_7203F4BF 
X-CRM114-Status: GOOD (  10.95  )
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

Clean up the remaining descriptions by using uppercase "PHY"
consistently and dropping redundant information from the register
descriptions.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index f7b8898fd95d..bcffabf04566 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -11,7 +11,7 @@ maintainers:
   - Vinod Koul <vkoul@kernel.org>
 
 description:
-  QMP phy controller supports physical layer functionality for a number of
+  QMP PHY controller supports physical layer functionality for a number of
   controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
 
 properties:
@@ -63,8 +63,8 @@ properties:
   reg:
     minItems: 1
     items:
-      - description: Address and length of PHY's common serdes block.
-      - description: Address and length of PHY's DP_COM control block.
+      - description: serdes
+      - description: DP_COM
 
   "#address-cells":
     enum: [ 1, 2 ]
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
