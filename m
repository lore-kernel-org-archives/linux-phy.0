Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59A03C5B56A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLdvAOMlMJi+7Ko6Y1XPWO4b+fbQW1flrMHVHaR0jss=; b=2fz4CSo6wXM5ad
	Z1qzECLyHFd8CXvJNAhJu77Ol3dVjKalNQ5ilORLucl29Cu7x3/UtPWWvOIDH1q4XlQEJlznNK1AY
	kGbDOkIHyOKT4s/1pvJZydNN4He1uz1x+JP8UZdKbZ53R/l9CJFdoCOjKTpdkbzXgLYIxbsrUhK7d
	vqGCr5X1+hJtqq0TXpI5Wr59l8ZEVbp5wxnA9I0Ya0+AmdDf0j3l0eEBbsyp/kgSuEUtij99VP19g
	mNiQ9Wi+m+2GC7LYRk60b/iqiHajlRHyHz0mCYPyW5W/kBcvYy7J3ULVecO26j471x53POVN52fIe
	R6KUt9lfdjXUpjNsDVHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ML-0000000FljS-0M9l;
	Wed, 12 Aug 2026 09:34:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ME-0000000Flez-0PS8
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:34:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 47F2E44FFC;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F06DAC4AF4D;
	Wed, 12 Aug 2026 09:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527285;
	bh=aRSE+94+ryw4vz/c9r7KLtfF+Twu0O41LCXAUzIQvo0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=rTf4fiAUCG4nLnToqhzROEZNiMaVcnDdkWDidxu/Ej/bUQie13eYfY0qxmrY0XqDb
	 orBaC4JbhnOOUGoijyMSFW1YQeRl/v5KgMowU7QDDKePnN84QdPzzVNQP2cspWjadB
	 /likiKsNrkZiOmZo12Hl0ZGJ7QV7fV8jcKbz1jAbIBSvQs9gH8M3P7mQb+ne561T+1
	 MDZA82tCMZ3Nw1dkIuH4kiNS4oxHWkyey/W7hoabp2UTjCDO2+WFSF7OzzJO3ItxEF
	 DFkQC4G7Fs966fK+kV/cSkxDhckky05wcCeKsdRww+ssZA2nXaWIY1mj3Cqnt8nqJS
	 cU5TX/02NyCeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB51DC5B56A;
	Wed, 12 Aug 2026 09:34:44 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 12 Aug 2026 13:34:43 +0400
Subject: [PATCH v2 08/14] arm64: dts: qcom: ipq5332: Add clocks required
 for USB3 support
MIME-Version: 1.0
Message-Id: <20260812-ipq5018-usb3-v2-8-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <quic_ipkumar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786527282; l=984;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=ahJs4DPyNLGX7SXzT58shCgWpJw7k4x2FzR8MZ0ny3A=;
 b=82/coOkgY6ouZWe9JkwUpLQLqRtEKxKuPfBSkHsCW6eCDPNKBPWUnE+Mk33E0s3h76cguttEL
 9vSwe7n1lf5C7V/e2dH2O988bbTC4MvaUAwgRcW1dQbgJqau0W4l9V0
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Praveenkumar I <quic_ipkumar@quicinc.com>

Add aux and lfps clocks to USB controller node for Super-Speed support.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5332.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index 83d0377455da..664586979ec4 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -499,10 +499,14 @@ usb: usb@8a00000 {
 
 			clocks = <&gcc GCC_USB0_MASTER_CLK>,
 				 <&gcc GCC_USB0_SLEEP_CLK>,
-				 <&gcc GCC_USB0_MOCK_UTMI_CLK>;
+				 <&gcc GCC_USB0_MOCK_UTMI_CLK>,
+				 <&gcc GCC_USB0_AUX_CLK>,
+				 <&gcc GCC_USB0_LFPS_CLK>;
 			clock-names = "core",
 				      "sleep",
-				      "mock_utmi";
+				      "mock_utmi",
+				      "aux",
+				      "lfps";
 
 			resets = <&gcc GCC_USB_BCR>;
 

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
