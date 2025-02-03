Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01BCEC02192
	for <linux-phy@archiver.kernel.org>; Mon,  3 Feb 2025 14:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xYmg91v6yzgzdVIksCaXrm8dbvh0sjeI6MzLEaRVIM=; b=cH60Ugq25dVNYx
	y8wz0aBIqiyKlCn+y4x1FsmB1KkdFFrxYxAHv7bP3XgclxDQWHINwkwKwuwH6OZCt3VAvhYQ63VP4
	qVYkjNMxgnAxj+1SWqEB8fLmscGXLbbCXJPlKm0/BDjY/soML3mSiLCtOcLhBuZmQjDopLv0UDOOb
	QM0dtRg1UMaKrP5pd37jKL02uWpnUjH5Ettyjsn79bkuI/VAO7H8GvIqeF7nImatu+R5F57k2c/QW
	5oXMqy7wJ6KQWBcypLhAudSAvmbUnPLYGTvTubXbbhVHY5E/uyqJDjmE11gv6nlCCwdu6TwcF7NuX
	V1k8gRXed6qimJkd6t8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1texfz-0000000FjBO-3AF7;
	Mon, 03 Feb 2025 14:43:51 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1texfx-0000000FjAE-320N
	for linux-phy@lists.infradead.org;
	Mon, 03 Feb 2025 14:43:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B4C8BA40BC0;
	Mon,  3 Feb 2025 14:42:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 789E9C4CEE0;
	Mon,  3 Feb 2025 14:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738593828;
	bh=UHYEfUn2qhmIXT18tYacKBPDofusSIz5M5HE7dAuWYY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Jf5e8gaVTVs6LEwHHEKTUUuzVmA6lKbbJK+sR/+R9HRN6CmCLepeNg3J4c+EBLUj5
	 AbXTc++Ofl5Cm+AjryT8OF25y6cd0DHbEF5YZgjRvNGQCTw7ZGHcVYhzYWEbngz007
	 BjWF7zbY+svUsnVFhSw5ZBX2X67IdRnZC3WjKSAXGPqvL/opddoFrtNZjaXAc1u4BD
	 FUWIpGqlN7ECGC/jGqNHGzvpsQPavg5K0iqSwgZdQrZAaMPUjtDn3ADaSrNuwm2dxA
	 Wekqaom987nyjfXK13xEPZWllRDuuR/owb3zqxsxYbd32/IGZLXEyWjZPNNSxNIBcd
	 Jjm4zn7dLPsIw==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Mon, 03 Feb 2025 15:43:23 +0100
Subject: [PATCH v2 4/6] arm64: dts: qcom: x1e80100: Wire up PCIe PHY NOCSR
 resets
MIME-Version: 1.0
Message-Id: <20250203-topic-x1p4_dts-v2-4-72cd4cdc767b@oss.qualcomm.com>
References: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
In-Reply-To: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738593805; l=1565;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=J3M8FRjRLnkmaJdQ5qdzAR5tqB/PHYVIRwtTFuq9kkA=;
 b=gIITl1WzVXDqoxOQByahHKG/DcaRtgfr4KndYBfPbExOlgsxu1UIJKa+eMwjt58y43wUFgTZB
 lVMpYpIs8oSBOsf8CqTyhPCt/3anl27nhug0ZAllG+mnsFuFb5S/CHU
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_064349_839523_CB90E3CD 
X-CRM114-Status: UNSURE (   8.75  )
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Asserting the NOCSR reset line keeps the PHY registers in tact.
This allows us to avoid programming long tables of magic values in the
operating system.

Wire up these resets to PCIe PHY4 and 5 (it's there on the others).

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 9d38436763432892ceef95daf0335d4cf446357c..a244cbb84aecc23ce11414c41f2e5d0905f455ee 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3558,8 +3558,10 @@ pcie5_phy: phy@1c06000 {
 				      "pipe",
 				      "pipediv2";
 
-			resets = <&gcc GCC_PCIE_5_PHY_BCR>;
-			reset-names = "phy";
+			resets = <&gcc GCC_PCIE_5_PHY_BCR>,
+				 <&gcc GCC_PCIE_5_NOCSR_COM_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_nocsr";
 
 			assigned-clocks = <&gcc GCC_PCIE_5_PHY_RCHNG_CLK>;
 			assigned-clock-rates = <100000000>;
@@ -3692,8 +3694,10 @@ pcie4_phy: phy@1c0e000 {
 				      "pipe",
 				      "pipediv2";
 
-			resets = <&gcc GCC_PCIE_4_PHY_BCR>;
-			reset-names = "phy";
+			resets = <&gcc GCC_PCIE_4_PHY_BCR>,
+				 <&gcc GCC_PCIE_4_NOCSR_COM_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_nocsr";
 
 			assigned-clocks = <&gcc GCC_PCIE_4_PHY_RCHNG_CLK>;
 			assigned-clock-rates = <100000000>;

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
