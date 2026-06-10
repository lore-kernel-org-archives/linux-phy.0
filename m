Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A554CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 12:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LI5BaprflVCcaZhx4OB3pnFd0IZl2gUnQzyUh+8+nbA=; b=yH01nPdkPCbv4T
	N+U3EQeyKxcRrz1PShm0ay3WpAqEaREivFOJoIlwLHXz42Czp04eFXt531eHTyWRyNRF3t6Mjjksj
	eeHM83nKIyM+4F6BK6FGElHybpRFLavbmyExYOf0yTsBhV7GfGziWmVF5iOz5ndgE6G0oRYEMj7Ol
	tLB0SHTYRWhxPheWpbuAN5iCKbVWkO7INttwH7p/I5LCEilovZbg8N79A2pSWbm+elw4K28mamzeG
	DC/DYIw6z67eowy8zTMch8y+KMSU2Da7LjJM6fAKLWFWUVGD3Q71AgG894nDoyuIEoM4IDD8zOsdT
	Exl3XIdby+seoGcl2Sdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHfd-00000007c8G-0leU;
	Wed, 10 Jun 2026 12:04:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHfc-00000007c86-2Dle
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 12:04:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 04AE66020A;
	Wed, 10 Jun 2026 12:04:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BE961F00893;
	Wed, 10 Jun 2026 12:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781093069;
	bh=S4ACn8G1qS/jxxSppQTORw0fclxZxMlqldRqBXSGWms=;
	h=From:Subject:Date:To:Cc;
	b=jWlP5gEi4x/Hph6kQmh+OQS//Qbt9cMqqiKUdamgTpTr53nisXQMpgp2wLuQQi8me
	 zJyl5nCjxl8SaePyo6NpxMrBNrxL8wQsBtQ4VeauHYc8CFdPN5aIzi3wsRTBxILwUb
	 F5MhdM2Jto7+7x+VgUdzqLijx85tJmzt0wOgrT0iZA/Zw/sEig/ryZYMDVYBTL/eNR
	 3QT290e/BJzKedY1i/cCFkTLj6mesTqcWgcbIZh+dR+XgpB0gBHAUZfIz7NudZF545
	 Gj2K1SZd3hU06wdLLP5CZ7eC8XikwlZF5+lL+XH4hStQ6TSEpFWPco+gKqLmiPPTgA
	 hUfREgsGO2/7Q==
From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH 0/4] Fix up QUSB2 PHY description for MSM8996/SM61[12]5
Date: Wed, 10 Jun 2026 14:04:13 +0200
Message-Id: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQqDMBBA0avIrA0kAUOnVykiJpnW6ULTjIoi3
 t20Xb7F/wcIZSaBe3VAppWFp7HA1BWEoR9fpDgWg9XWaWe0mqfEQd0QXefM1nSfRbxNw676qBv
 rEQkjQclTpidvv/Wj/VsW/6Ywf39wnhehaurafAAAAA==
X-Change-ID: 20260610-topic-8996_61x5_qusb2phy-ad052b99e9de
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Iskren Chernev <me@iskren.info>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781093064; l=1144;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=bOB0AGGYszRk8rdclHAm2uGM6gHRVDNyn12YRlDVLfU=;
 b=E0PII49h2C/XxqCZEJsN1/iwnwdlzXHu/G6Au1rVCEZlwL5sjiHsYzRSk+H6rLRHlyT0DJZJD
 MEXTCWlIPU5AgLxj88cJKbPpe/44IGWUpeUGxamPCQOcm2k3lldzYVO
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

The MSM8996 QUSB2PHY was not being guaranteed a power source.
The SM6125's QUSB2PHY was believed to be idential as the 96 one. It
wasn't. This series tackles that, freeing us of some dt checker
errors about vdd-supply not found on MSM8996 boards.

Compile-tested only, but docs confirm my findings..

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
Konrad Dybcio (4):
      dt-bindings: phy: qcom,qusb2: Straighten out SM6125 and MSM8996
      phy: qcom-qusb2: Fix SM6115 init sequence
      arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
      arm64: dts: qcom: sm6125: Fix QUSB2 compatible

 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 31 ++++++++++++++++++++--
 arch/arm64/boot/dts/qcom/msm8996.dtsi              | 10 +++++++
 arch/arm64/boot/dts/qcom/sm6125.dtsi               |  3 ++-
 drivers/phy/qualcomm/phy-qcom-qusb2.c              |  4 +--
 4 files changed, 43 insertions(+), 5 deletions(-)
---
base-commit: 49e02880ec0a8c378e811bc9d85da188d7c6204c
change-id: 20260610-topic-8996_61x5_qusb2phy-ad052b99e9de

Best regards,
--  
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
