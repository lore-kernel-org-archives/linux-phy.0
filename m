Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A442DC624A4
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 14:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u+fCnrFzLmWfDAf4IgoStYN+h51wYDuR9MGQbfZrRAU=; b=ar1tUqyu8K9jqA
	1gJogvFXcfTSkCiQhBzfNVxnfmhvRQCuqoCoaMirk6mkW4Ll+YKzKWR9XS3WKMGae51uialmOJRAH
	OxqnsbYUiWItUwGcn+b1rvOnTnBRnTc8xoX+dT0cxg7obXSiCCbSa/jLdeVDDbawt28ZRHPyZPHgB
	GvkgGHwA3c4UXHcoDcmma6KrmEbq57kuBlW9YEas50NsN3rt2oUpjoCFrP99umXKUF0Qs747IMKgR
	30vyom52Tu2Ygkt875h6QAAPSHeP0oSZjPerAkW5rKpHpH6HP/vUmzy2w6J0aowLDHxdysHDiCgaN
	nd5FJjtu8V+15Wvy25dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28O4-0000000HVjf-11bW;
	Thu, 03 Sep 2026 14:25:56 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28O2-0000000HVj3-1xKG
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 14:25:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EFF6D41238;
	Thu,  3 Sep 2026 14:25:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA6981F00A3D;
	Thu,  3 Sep 2026 14:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788445553;
	bh=YQ/rFL5VnLHnIzTf6yfvW/jeW8RHEfIQjY1lU726wts=;
	h=From:Subject:Date:To:Cc;
	b=MjLn2UBw4ASOlLo7rUooqyPA0pevy8UOeoUaj+1OqXNrbrH6Yr9PYnW5gatoF89Zt
	 ZKMCMR4M74/9OcReDdwZZpctvJ4POLEPmti7eJRF3bKv1eg7jYknrys0ih/aUk0Oe6
	 +K4w2tGZBKT+tV9Vt6rheJVUfh/DOdSpsK3wbhm0J1nlghDAYcZLVw1iMx9jD2fL8B
	 yFNXjgyeO1pgTmtoerG/XZ4elfbrkTvDYLV8zMdgyNnKXQ2OKH83ZEasfSvHRBaVjw
	 ChfI1KnYaXoAAomUddJArpVUKbD8G8W42Lee7ahIhBzTteXkfotF0TnTTa1VAA0tZy
	 oL2adeWtABEpg==
From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH v2 0/5] Fix up QUSB2 PHY description for MSM8996/SM61[12]5
Date: Thu, 03 Sep 2026 16:25:27 +0200
Message-Id: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/42NQQqDMBREryJZN5KkGE1X3qOIaPKtKdVovooi3
 r3RXqCbgQcz83aC4C0geUQ78bBYtK4PIG4R0W3Vv4BaE5gIJiSTnNHJDVbTTClZSr4m5ThjLYZ
 2o5VhiaiVAmWAhPngobHrdf0sfoxz/QY9nX9no7U4Ob9d7oWfvT80C6eMmpTfE5UxSLMmd4jxO
 Fcf7bouDkGK4zi+6z8mT9kAAAA=
X-Change-ID: 20260610-topic-8996_61x5_qusb2phy-ad052b99e9de
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
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788445548; l=2016;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=jqqZebTnpEQ1fljwyxW1TH1t9ES5SnJoHG3eYTPQmPE=;
 b=+qfgvYG7nUs5HfR2LfR4q4DIDp2auUMorfIwwD6//8hCcmEflj79QIeanjlzIYXpZi36V/Xbd
 e5igQezEaGcDM2mIpY5r/tTJ4VNG+ghgA1fsYP8myZgBVFjG/g1+L6s
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
Changes in v2:
- Pick up tags
- Add a code-janitory patch ("Remove _SHIFT defines")
- Link to v1: https://patch.msgid.link/20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Manivannan Sadhasivam <mani@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Wesley Cheng <quic_wcheng@quicinc.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Iskren Chernev <me@iskren.info>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Konrad Dybcio (5):
      dt-bindings: phy: qcom,qusb2: Straighten out SM6125 and MSM8996
      phy: qcom-qusb2: Fix SM6115 init sequence
      phy: qcom-qusb2: Remove _SHIFT defines
      arm64: dts: qcom: msm8996: Add VDD_MX to QUSB2 PHYs
      arm64: dts: qcom: sm6125: Fix QUSB2 compatible

 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 31 ++++++++++++++++--
 arch/arm64/boot/dts/qcom/msm8996.dtsi              | 10 ++++++
 arch/arm64/boot/dts/qcom/sm6125.dtsi               |  3 +-
 drivers/phy/qualcomm/phy-qcom-qusb2.c              | 37 ++++++++++------------
 4 files changed, 58 insertions(+), 23 deletions(-)
---
base-commit: 32b6ef9a5d0eca44f9cd91f52f4faa89f145a0de
change-id: 20260610-topic-8996_61x5_qusb2phy-ad052b99e9de

Best regards,
--  
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
