Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E17CC79FB5
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 09:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVsV/hFL54lFWHdR5ocDFrRnJfJc/ZWLu2M7TTjdADs=; b=Phq5azR5frIBrq
	h8BJ9/5jGUBe/G/wJ2eyQZPBaGa7arU3F3qrxTlf08UkplkALr0F6DbCuYhJubH4ae96y4M8dmrhT
	iWAzpf9iVFvEBRs2MO4pCni8khXLdC5qbgIqQ1fUrdhySuAV7uZHURFUzCsQLv7VKdDH/fyB1ruV+
	/kPVAoU157/UpiAk6l1CSyPZtdTI8XnCcF2plytH3tmPX1Ta1QyouxjdyGKWtTXqvVwfM+GbRqF9P
	F4++CYvVM1IamhlZdGRo210kkl5MjdKrxfBxwXwr85cHqbY3hyaoASDm8hUqm3DBSQaYQa3yxsjd0
	35tz5avpquo351ZYYzdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sL0-00000008dtz-0GyK;
	Tue, 08 Sep 2026 09:41:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKy-00000008drG-3bGM
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 09:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BDBB043FF1;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E50BC2BCFD;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788860516;
	bh=6Pg056yYXzBCy1r8gHAQMUILwrcGvqIRlccK+SCvndM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Tk+5k8vcVCw/8/CAosGKP0PXphlCID9czKlNE8GXPQonMX+qTb816S3FjXyNaQyZS
	 rsL3OYq8F4QijFIb2RzTemb5Jp3Wp6iT92ZvT3QCRpKSR7OKvduTkdsoEEYQqJEFTS
	 peSsaltaM50sBjpkzWCyyU2yEfjx84VFZCLq30Qhx8p4VpDEYr0/WqX+Nj/je1BySE
	 sq82Ja4RO77dA2748IgfmT3yKRz/DgePGOv44Le3+nigOqgE5ai5JyZ8KkC2DVL2Db
	 eZJO4UpWbrD40bPdTsiKO5dFkL3U+x6VE0E96t5/zJEtF5e2N1DHSEctHs9Lqwdic6
	 G83lMKbNyfPug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CC02C79FAE;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 08 Sep 2026 13:41:05 +0400
Subject: [PATCH v4 12/13] arm64: dts: qcom: ipq5018: Add Super-Speed UNIPHY
 to USB node
MIME-Version: 1.0
Message-Id: <20260908-ipq5018-usb3-v4-12-b789702f0695@outlook.com>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
In-Reply-To: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Stanislaw Pal <kuncy7@gmail.com>, 
 George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788860513; l=983;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=EHNPdJoLDki9kvFwibHMHsxbeTT5//UH8U5tcciCAP0=;
 b=6NyqUCjIxQxnKqMl2ofSls4YZVVMbqAgjueSnu2r/2cx+kbOLXCQK/4xF/NN33eQlbp3atfQR
 MU9WnGocuL1BZ7lyxLPkM9kCncekhaIrCNQXtJ6Ydukx44xLJAvUXm2
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

From: George Moussalem <george.moussalem@outlook.com>

Add the USB3 UNIPHY to the USB controller node for USB3 support.
In addition, switch to the pipe clock supplied by the USB3 UNIPHY
instead of the UTMI clock.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Stanislaw Pal <kuncy7@gmail.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index a6e337e137c8..8e5d45a214a5 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -627,10 +627,8 @@ usb: usb@8a00000 {
 
 			resets = <&gcc GCC_USB0_BCR>;
 
-			phys = <&usbphy0>;
-			phy-names = "usb2-phy";
-
-			qcom,select-utmi-as-pipe-clk;
+			phys = <&usbphy0>, <&usbphy1>;
+			phy-names = "usb2-phy", "usb3-phy";
 
 			tx-fifo-resize;
 			snps,is-utmi-l1-suspend;

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
