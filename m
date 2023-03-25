Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FFFEC6FD1C
	for <linux-phy@archiver.kernel.org>; Sat, 25 Mar 2023 12:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlZD+yuJuCwB0CAj3Ce9fme885JcSPFUTJkblKK1Dtg=; b=cTcYDEKsQQ1Jw8
	pCAe8fuxxE7Zh5I0xO0jV2NxXP1YZiV+gDWdE8HHcMQKQkEjYQqcIhBpLw/XlgLvrrHDg9unaeMB1
	HnZmFGV04zGo1Jcr8crid+vMKu/OETC269LEshql0DLVIiowQA68uWGR/JHuLx21TJIzbZZOUYcDU
	AM5quyYZK4Cd5irHJ6xN/U4CQaMaWw+MBFlGkj1VXWsQBEEg6xXnLVdZnW/K25dUhYLUaV39VRqfc
	Ty3I46cRAxN85K/dHFOOy01Ygb0eHhlKLSKT1OfpjJOmOL8ePk3NIWUJ7zzWP6CmabaLdojhUV0vo
	H7GznYHihY21tVqDXdXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pg2xN-006gHn-0z;
	Sat, 25 Mar 2023 12:25:13 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pg2xK-006gGd-2Q
	for linux-phy@lists.infradead.org;
	Sat, 25 Mar 2023 12:25:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4CC30B8075B;
	Sat, 25 Mar 2023 12:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B6E2C433EF;
	Sat, 25 Mar 2023 12:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679747108;
	bh=RdzOelXYvx3QrBd1xcpOZg6N+igw7RzYV0uefoNp8LM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QrEMnFWibBjZAzygarjfI5m4nhovuoNGCDAOMHa8TvroO2KulDMjLGt5B0a3Ayr+j
	 3TurMLBJsqcgepxGy1/VK1a/HCjNf/J4RY1s2SeCipqGiqmY/DVgWUrKCpSph2UPQJ
	 iELpBDWh9Kiq1R+F2JJmcgTR4eC9Kj3B5JBB+uyRkML6DlkW72Lops4VfW3S71xS4g
	 NeyvIlNeg11F55qUgE30rCpimWet+1h+A9I4O3qxVCPw9846RJbYbjW3Mb/07TWojx
	 Z497qZ5y4j6wzwBQ0I0LMtvO9pSoxpQq7fm9i20QV9MRjYm8EERnu5IvS6Vk1BrO46
	 KzA1XwSQ2c/qQ==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/12] dt-bindings: phy: qcom,qmp-pcie: fix the sc8180x regs
Date: Sat, 25 Mar 2023 17:54:35 +0530
Message-Id: <20230325122444.249507-4-vkoul@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230325122444.249507-1-vkoul@kernel.org>
References: <20230325122444.249507-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_052510_937376_F4AEF73F 
X-CRM114-Status: GOOD (  10.79  )
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

sc8180x pcie phy requires to describe six reg areas for the phy to work,
so move the description to the correct place documenting tx, rx lane 1,
2 and pcs and pcs misc.

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 .../devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
index 62045dcfb20c..3d42ee3901a1 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
@@ -203,6 +203,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sc8180x-qmp-pcie-phy
               - qcom,sm8250-qmp-gen3x2-pcie-phy
               - qcom,sm8250-qmp-modem-pcie-phy
               - qcom,sm8450-qmp-gen4x2-pcie-phy
@@ -224,7 +225,6 @@ allOf:
         compatible:
           contains:
             enum:
-              - qcom,sc8180x-qmp-pcie-phy
               - qcom,sdm845-qmp-pcie-phy
               - qcom,sdx55-qmp-pcie-phy
               - qcom,sm8250-qmp-gen3x1-pcie-phy
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
