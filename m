Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E673C43334
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgXNTg7dNx9Gh2aiRFSrejmf91Ag0KsJN58hX/jSzwU=; b=fMjdTRY1xTv+OY
	i96phaCQpertJGptsrd7f/RmsmrCt5Ev2kOFQaOkagVUpzV+LH2A+QtTuzpR8jTwSDQEyGLPsOimd
	cVzz9qDV4yP8iMLmyjW8/h1fo/RwpO7DTKnaANL4rzP85ywnOg/v083Myl9Nd4UhmldWHj5Pc6iDr
	sbOv5SEKT4IwpVDN8CF31y/06SjEbKf3K0BfukcMUjlkBVULpJ1OY3oTN9tEDZinqexJ5rdoBfqEo
	dnyWiR32mIPXP3Qx7fmZ0/5pYyPuV9YB+dyG2bfEFDNqPcWhQTpTUH7cgvsi9tdw0Z7+sH++x5RqX
	indhJmsDmmKVv13znD9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rr8-00GKhK-Kp; Thu, 07 Jul 2022 13:47:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rr4-00GKcb-G5
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 83F9F621A4;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31927C341CE;
	Thu,  7 Jul 2022 13:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201659;
	bh=t37NNwLh8MwSux7U3ureG58oP/xr5nX9uYzRDQ0W8Dw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ipp8H3Cz2npmAH3g3htm83GAkhbejAdjQdZlM++d9T00FQGCgVj+U5t26ntJSwVJF
	 aYIDCMfv7RnKuVU9rwQGrpQ7XxcJad+0SwwnJ0YCJuFpmv53ePaFmiCiV5lS5PAATB
	 9ShS0QFk44sY+wSkFNxxVQ6v7kVXZkhbHYaftn+RtS/5REH4dfJAOMv/SOKM4NePrd
	 lz7p4zhAi2U+nW4mH9/REyavTxbxdND+G0Jtn06btjA3panEnRfw5DXHBmWq6Bftkr
	 zuF+kdtScya0QepF5Zf9Modudjaoe4llx+dKhPvdtulAB1va0S2d9PqcQQCM1tgzM0
	 q3KR0tkiBVrQA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr3-0000vx-TR; Thu, 07 Jul 2022 15:47:41 +0200
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
Subject: [PATCH v2 04/30] dt-bindings: phy: qcom,qmp: fix child node description
Date: Thu,  7 Jul 2022 15:46:59 +0200
Message-Id: <20220707134725.3512-5-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064742_596195_7D96A57B 
X-CRM114-Status: GOOD (  10.74  )
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

Fix the incorrect description of the child nodes which claimed that one
node is required per lane rather than per PHY.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index ea028bad961d..f7b8898fd95d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -100,9 +100,7 @@ properties:
 patternProperties:
   "^phy@[0-9a-f]+$":
     type: object
-    description:
-      Each device node of QMP phy is required to have as many child nodes as
-      the number of lanes the PHY has.
+    description: one child node per PHY provided by this block
 
 required:
   - compatible
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
