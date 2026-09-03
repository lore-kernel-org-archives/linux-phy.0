Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E56AC624A4
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 14:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6AMBhAjRl/7xEkHGC01OknhTIf+ZRRMAkcH9bS3Qc+A=; b=QMu9+5gcWmSOxE
	K4i3zKsoEsOxDDjM3JUQAqAupMQZJ7Gav7o1ERWxGYSEk0NKXIUKZ+J3LTF5tCzys0GYe7gv9og0a
	YK7opQyaVrOrqCVfSuATG1KdTQwHqnn7DEKPM1G02n8V71eg34uYVHKKaUH+BVPKlXtbORmLPZKSa
	viPoUja6vzWxIqBquNWlvj5U1ZM2dcYUkHhyl+2/0LcDIvJcZCfTte6HitlGQ6ZGHf6W/ulBNeEYC
	VxTaVUauntoC5I8Ie6BynYSIekpbM6PDfb6bB/egfFcWrZoiulDtGKbQVK10uE8ZWaNczk8bh4QPh
	ZBChCPHRUE0tIluIBV2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28OD-0000000HVm5-1UJ7;
	Thu, 03 Sep 2026 14:26:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28OC-0000000HVlY-1AvF
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 14:26:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E05ED4055F;
	Thu,  3 Sep 2026 14:26:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51FE31F00A3E;
	Thu,  3 Sep 2026 14:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788445563;
	bh=szTE7oxjGO1q0rDmbrRjqpRbvKMsDFT7DQcrAnd6QNQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=KuJtjeEEOlzYTgPSKVUD9cITXoLC/kHOzgDmFXLtvgFC9kqXJTgUnRozc/P6q3GrC
	 cMVosR6V4RiqibwbpJKw1Xyogh24VDSFb8UlWPb6G1L6tkKCF/JaBEuxSwD69WKxsV
	 L0W369drdGWfsd82xBlJXvDYgRLTZy72bR8nE/YQ22ulCDNLky5z1KMSjRX6ZFFGcy
	 xvkw7u3JZU1bJOUKRnQz89JTC0eR5eBt6pxH7JMDQQ5rANoo4/rvgBiGQerHE0524N
	 pVT1Fm8Lcv5sU2lM5CV1M8ulrbsIB15XdgLXVnDEP/sMQy0BPK4MX6fHmcK/VtkVMb
	 wOlv71hY5r1ow==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Thu, 03 Sep 2026 16:25:29 +0200
Subject: [PATCH v2 2/5] phy: qcom-qusb2: Fix SM6115 init sequence
MIME-Version: 1.0
Message-Id: <20260903-topic-8996_61x5_qusb2phy-v2-2-4c3f980a4560@oss.qualcomm.com>
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
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788445548; l=1555;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=oMc/6LTLND3zy+WxNttgbZvp9ei0vRh1b3QcNq5NL/c=;
 b=4ZFXEsoiNSU0xzEQW8oLZXSeyApctJcdq0Crakry0Yte6twMCFztCYYtIGfyD497Aj8lJylrb
 VBQGvqJBhKXAkSD0WjT05dJCIcJ00kGpF1gwGJMuGpeGq2U3HOQ8yKd
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

I don't know where the existing one came from, but it's apparently
wrong, according to both docs and a downstream DT [1]. Fix it up.

The updated values also happen to match SM6125, which will allow us
to fix that platform too.

[1] https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/heads/android-msm-bramble-4.19-android11-qpr1/qcom/bengal-usb.dtsi#145

Fixes: 7756f1d6369e ("phy: qcom-qusb2: Add configuration for SM4250 and SM6115")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 2e5fdb620cb2..aac36ed994b1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -233,9 +233,9 @@ static const struct qusb2_phy_init_tbl msm8998_init_tbl[] = {
 
 static const struct qusb2_phy_init_tbl sm6115_init_tbl[] = {
 	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0xf8),
-	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0x53),
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0xb3),
 	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE3, 0x81),
-	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0x17),
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0xc0),
 
 	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TUNE, 0x30),
 	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL1, 0x79),

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
