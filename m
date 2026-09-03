Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BC9AC624A4
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 14:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=df+cc0f3YT1odZCXFfMdap5XM9dzMqNtoeVmiiStYY0=; b=sFsCx/pPlRd5fz
	wMOKoLTXRw1yVrMJHZviwqC60lIx9XO7aParA7RHp/H5WQQtIpP1VJ4d3GX2M8p+pkuh2jQFY5/vM
	nVO4omCssY8OZyugUEiYI4++XarXPcfPVqu4qMqE0+FspUR6DuhNfzwjQGuOvYPXPE78QZNy3FDNk
	F3xeMaHUG2jqujCDaP0Pg0AkZn+yPA00Hl48YqJ7iHMWETZdqzD4MxDrSMuoJkXr3LdHofbkvnjBv
	jMvxSZPYuTUsiPNhux2d+kCtO5f9CkdvCnS+hM/h4AfgUZPoA1nSWIaFoWhthvoqXWeS9bprIRIW5
	sy2FqLROFSV+6Sizyfug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28OQ-0000000HVpb-3ly1;
	Thu, 03 Sep 2026 14:26:18 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28OQ-0000000HVpC-0H67
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 14:26:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 827486057A;
	Thu,  3 Sep 2026 14:26:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B4FA1F00ADF;
	Thu,  3 Sep 2026 14:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788445577;
	bh=WaygIGESxbkqBOc3vwWakkpss1b75a3X5N+49445PGo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=Igrm45igkHdOGMPvO4+OaTjfVAV6sYEI3bFjeTP8n2nQB9s87DyYSsSB4iPBQmdQ/
	 jInV9d6gkrYappk6N9GrMasFY+W2E3cV2+0EsRlfgMfSL6BPnc9sKXpupLCTwgDCcQ
	 FbLX0Xompj6MpkAyROMIPcA5p/7gAnmeYbwOXyLVRU7KyG6l94din6xMK+x0ryjQwM
	 oq9tSXkedx7zGVzwO72n8pPvmgEt61wTqL4SnhTh7tDcTAmfiRDe7zs+InQjpGxA/o
	 +4UKhBxkIIFaxR56sEF2AmTukHnp7OzlCdAElvuBMb6z+LGVaS2Dr2WKBzjwlhWnfs
	 V7Hjsu6pFTUgw==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 03 Sep 2026 16:25:32 +0200
Subject: [PATCH v2 5/5] arm64: dts: qcom: sm6125: Fix QUSB2 compatible
MIME-Version: 1.0
Message-Id: <20260903-topic-8996_61x5_qusb2phy-v2-5-4c3f980a4560@oss.qualcomm.com>
References: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
In-Reply-To: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Iskren Chernev <me@iskren.info>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788445548; l=1140;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=ZCbvOOQuRVtifrOost8g3n2ZptQcKycIEt21/KqkJts=;
 b=SXKmiPw4PJvvw8KxbJ+LgXfaAa0M8GpfuiFjEkcKHd4p4UqYtfFQsPyOK0bNVXdsgqocLGU/y
 mkLkinr1pbFAOyL8N0BzltRUCZzsn22f+23InN4/e7wQJlHKOU/rcYg
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

There are a couple issues with the current description:

1) The msm8996 compatible is wholly reused, without a SM6125-specific
   primary compatible
2) MSM8996 has a different power setup (VDD powered through a RPMPD
   power-domain vs a regulator)
3) MSM8996 uses a different init sequence

As part of fixing all of them, use a SM6125-specific compatible with a
SM6115 fallback.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 86de1560bdef..1b2de5a01a6e 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -682,7 +682,8 @@ gcc: clock-controller@1400000 {
 		};
 
 		hsusb_phy1: phy@1613000 {
-			compatible = "qcom,msm8996-qusb2-phy";
+			compatible = "qcom,sm6125-qusb2-phy",
+				     "qcom,sm6115-qusb2-phy";
 			reg = <0x0 0x01613000 0x0 0x180>;
 			#phy-cells = <0>;
 

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
