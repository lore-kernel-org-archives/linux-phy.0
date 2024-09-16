Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DF2DC3ABD1
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 08:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHcIJ91pde14SrL2tDY+dgg575Ki/H2xgoJRa6BNQ8g=; b=CXKk5kryD9MIic
	WzRCd33YViu+LVpuaJ5+Kxz/MsrckyB/Ed+CcWkN71ZMpmk9jIA3eKFSOyr1xTReYt76S2Epm7STq
	y/A6viPV3uoUvpsVCwsJ9o4wLyw8CN9EWPsozm6eTqMLnFhKa24Kl5HSM2XyBU9OBBfpiyRp/RaYP
	WylboM9ADixopJih67T5cuzGgSpwbLE7K92W9iIGzVCho1Y3wAcsLtswFcWUwiZpDqlqqf7LkjM0n
	+ZYLDRU7UIEuIP0ujO54h2cbeWOG5dgi5OJyN5fNxEU4dVfNaTMlluAeNhHU7B2D1XKrYt7P9+LoN
	el2rU7wr4kKyVWP+3ZFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sq72D-00000003Q4C-43l8;
	Mon, 16 Sep 2024 08:24:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sq729-00000003Q2M-3F4T
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 08:24:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C70F65C592A;
	Mon, 16 Sep 2024 08:24:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B81ABC4CECD;
	Mon, 16 Sep 2024 08:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726475071;
	bh=qNC9nohuFQyf8/jZzl+dtiD1n7yHdvsfgeZDKj6e9gM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qse42nONZfRJKQPEiY3O+iQjcHQeFQL/4tZt8OhrHf7N7BuraOkon2mSXwWf5U/1W
	 BIxtV7X+3fMj1ZfmWxNKzeHdQayvv/sPWSE/UGKfzSk0bfr8LCS5DG0H3aYNqK/F7b
	 c2XmnPBVjFnS6HF6fkupoDb378vsmm5vtiV4W9rsz6qfglq+bYyGRYnq2Hz2sbILfM
	 bgBq1UEjLAEFCFel0Tgs46pnUQ1JdW+N51wLa1hxGfjZ125RDQC6UTiCoCCwN51Jzw
	 FSHozKhKpr7O/Yh7ofoXmdNkDnr8uVEwaBYiTKn5q9+uOEoA3rWSyLqTiIYnuP46z6
	 hq66d93Ze6XlA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan+linaro@kernel.org>)
	id 1sq72P-000000007hK-30Eh;
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
Subject: [PATCH 3/3] arm64: dts: qcom: x1e80100: fix PCIe5 PHY clocks
Date: Mon, 16 Sep 2024 10:23:07 +0200
Message-ID: <20240916082307.29393-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240916082307.29393-1-johan+linaro@kernel.org>
References: <20240916082307.29393-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_012433_899381_AC22F790 
X-CRM114-Status: UNSURE (   8.56  )
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

Add the missing clkref enable and pipediv2 clocks to the PCIe5 PHY.

Fixes: 62ab23e15508 ("arm64: dts: qcom: x1e80100: add PCIe5 nodes")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 53e7d1e603cb..d1bb14a375c3 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3104,14 +3104,16 @@ pcie5_phy: phy@1c06000 {
 
 			clocks = <&gcc GCC_PCIE_5_AUX_CLK>,
 				 <&gcc GCC_PCIE_5_CFG_AHB_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&tcsr TCSR_PCIE_2L_5_CLKREF_EN>,
 				 <&gcc GCC_PCIE_5_PHY_RCHNG_CLK>,
-				 <&gcc GCC_PCIE_5_PIPE_CLK>;
+				 <&gcc GCC_PCIE_5_PIPE_CLK>,
+				 <&gcc GCC_PCIE_5_PIPEDIV2_CLK>;
 			clock-names = "aux",
 				      "cfg_ahb",
 				      "ref",
 				      "rchng",
-				      "pipe";
+				      "pipe",
+				      "pipediv2";
 
 			resets = <&gcc GCC_PCIE_5_PHY_BCR>;
 			reset-names = "phy";
-- 
2.44.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
