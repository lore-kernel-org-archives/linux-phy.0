Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2210C3ABCE
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 08:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgIHn8VQXTUNgY0arLLEUUCHKilaPBwRwSo0YIC7CpM=; b=mBeGhF5UGnyKww
	Cx/9RrViyDZX7I/OYkHH/uOo3u+HuDznoOFOVn/PtSZ1dETSL6Dyv0ZkzFQQl/52n4CLocu8vzKZ4
	BPnCOI/0uv+MRrN05V/72574GsQ64xIEdqu98h/8RmZayib8YYPYnVg44Um+zfLQZvIgE0ARAP147
	fVHqrjHMhUh0azAGKRJY8whIi/aleNwfPu1C11DBHOvtogVw2SzUeh0RU3huBFITgYQpY5B4cqztJ
	0gYcBWvEBaSrS/vEqxgDAxp/sR1c7rSs1mhSxQoc4DKOhZ1jOPzVGw0xaiQ7GVAlFn7IOEhxX5pBP
	7EN5IQuhZLx/cabNzE2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sq72E-00000003Q4S-14Nu;
	Mon, 16 Sep 2024 08:24:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sq729-00000003Q2N-42BF
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 08:24:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D71925C59A7;
	Mon, 16 Sep 2024 08:24:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA184C4CECE;
	Mon, 16 Sep 2024 08:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726475071;
	bh=CiFV/yKmkzt1bJ88LxVcPJA+vuPaG33Cxvu/STK3m5Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fLteK1WYiEiIJlmrqJwhR4ItTQqr2k7pNG+DVmydUbm/Mlie5h00Yj5f06DNkLQe/
	 71WlUBDRGSmGgO260iy6PryHaYG117qByw7RF4lPigqfaPuZe5LwCeeI0YfkVhvfVq
	 UxKW/Y4siJq0RTMW1mBR+QDYNecq+bisOJTapT9+btDbr6ZCohNVubWnnDZP75mc+z
	 xo/ktFqeeq9NtX5aZhRySE0VE5uENvuHQO2vbvVzBio5O404e6l0OgXO3CetN7tyB4
	 XYf/n2x0mxEB+jCJeNjqD83bFxgXLyLJ/jLactIds/BdBz/5AXxlugFLZoI3JZBPog
	 LNdoiBEpY7sXQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1sq72P-000000007hG-2FlS;
	Mon, 16 Sep 2024 10:24:49 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: add missing x1e80100 pipediv2 clocks
Date: Mon, 16 Sep 2024 10:23:05 +0200
Message-ID: <20240916082307.29393-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240916082307.29393-1-johan+linaro@kernel.org>
References: <20240916082307.29393-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_012434_070297_406484CF 
X-CRM114-Status: UNSURE (   9.12  )
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

The x1e80100 QMP PCIe PHYs all have a pipediv2 clock that needs to be
described.

Fixes: e94b29f2bd73 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHYs")
Cc: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index dcf4fa55fbba..447b379aa83d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -154,8 +154,6 @@ allOf:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen3x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
-              - qcom,x1e80100-qmp-gen3x2-pcie-phy
-              - qcom,x1e80100-qmp-gen4x2-pcie-phy
     then:
       properties:
         clocks:
@@ -171,6 +169,8 @@ allOf:
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,x1e80100-qmp-gen3x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
-- 
2.44.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
