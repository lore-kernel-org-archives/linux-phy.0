Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 023D5C25B78
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 17:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AvNiqro+vJjQBeyKQpvGY01eIpVcrla5/14cnVEIX04=; b=R1rozk9dc29NEU
	4oEWLtcdB2E+RSs9+K/KUiDPbHP3ORf3ZQziZHmR6e4SQJNixohiUrXJy9oMkgIA0P4+F0rIektL1
	q0BlEFTQ4F2AB0RJoV3vWitwCdaamGP6wjJ/HDTt8Eaj4ImkTzd62UpNNnKofzbzkLRe6JHKZL+lU
	mN5yQS3ROqV6S82flvdbzi+WgwZXA56B8yo7bA/sleCbsB9SSZXLIptvNVIVOOGv+U6imf/frTjQR
	UJ4h15AgisarvoUpS/dGWy03wkQ0Ga8EB/SFFXPmHXJtSI9nsqZT4z4BkfuaSsK6mjDy93jSJ6FhH
	A5xA46SBFbzwtDPIsPQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfn-0000000BSmx-2MkF;
	Sat, 25 May 2024 17:59:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfj-0000000BSlr-2218
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 17:59:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4F3F163515;
	Sat, 25 May 2024 17:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9CC9C2BD11;
	Sat, 25 May 2024 17:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716659948;
	bh=D+M5uC/gLzRtwYP8kRKD2zieRkaDxcHiXzI6VKM923E=;
	h=From:Subject:Date:To:Cc:From;
	b=QBmneknLLtl4Pb9C54CyKSYirsSIUkfWLTaivAUcgoKnCROBDNg1dJV6qTnb3GJJG
	 SnROZcHiP4KWR/7zgp+01Lq5ftBjJFmEfbmcJorQUdQRwDVdCdiGqrkTQsyN5aynkF
	 l5a7gOCCCmn4BRDnVoOqf9tG7BrIWSgyJJG0ogKYTQkGyQodQGDmxnEoKQZJlR7RY9
	 EXJRiLeXIKL/XamFQGW2GF2ZDg+1yMRiiPMt7SP9LFeiQ5GjgLLAHllfJc4UJh8C8f
	 YB99eKZGKnQyZRgSRHTtfzS8WxRQ1q9H8vCJ3Wc9XrMNoeNJNmGx1grJPQYw3qR/Ym
	 v4KG3hRSHe0nw==
From: Bjorn Andersson <andersson@kernel.org>
Subject: [PATCH 00/10] arm64: dts: qcom: sc8180x: Enable the USB multiport
 controller
Date: Sat, 25 May 2024 11:03:53 -0700
Message-Id: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAkoUmYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDUyMT3eJkC0MLgwrd0uIk3dwCXZPUJCNzi5Q089Q0QyWgpoKi1LTMCrC
 B0bG1tQD35vd1YAAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org, 
 Bjorn Andersson <quic_bjorande@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1715;
 i=quic_bjorande@quicinc.com; h=from:subject:message-id;
 bh=D+M5uC/gLzRtwYP8kRKD2zieRkaDxcHiXzI6VKM923E=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBmUigMuXpF5bHXK2P2/HJqaYU/pcjYTCVfnLLc8
 1gUlADCE2SJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZlIoDBUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcWE1BAAipMBeEOeI+AJ7au7JeaOu0DBn7s4jXiS84x5qzv
 CPSqza4RbM3FtKrwSQs23BfOJFV9S/ZLrjO+zW4daRJJ5XOAKRCywrgcuhct2Arf/ZzNnd29kvz
 4e2LJAmPSh6oyESHvPHNz+MO9ZVvARzysIdk0JUvMmkyUJdryS+yxD17Y/1QCwUQQeful+fWV3f
 WJNw1s4qDi+9zaKnuOG54Gx1Ead/QdOko02hME3OONx9iicRjXMHA64Hy9RKn+TWBpTwC3B52Jb
 qL8+R0ku/W43FDuM3VHyidN2i3hKSZlOiMOc9fZa5AHZRRYzVr6hZLX/EgrMHmfoAtW+P03fDAY
 ub3chdOWDzHt8OAbyujHu+6e6dYJ49FpiEb2h8sMWC3xaWHBbmrgSQhblXpCw88jRSG5yfBMen3
 rpZWhZNs3j06tD+R7GnqyFmSBd9McbGbmY7dzRCNGwXmEnZi9qp6SjWC4GCjHLEbJzCydyA+ugy
 dMC2NtNU1oLwa3znMUp+P8/GyOzKp6dc9IT9NyWrODwr3XF1ej8TtzE4LwBwRM0mK8KSU1LH/12
 Iw+8e3DPp6yOOUPdwq4CCn3/30LDbz5oCGTO6ef2z1orwIhsDSU6y00Ub3+pmGFhG0rBFIN6XqU
 uqX9+hycBFYnLrUYkCAG/dZb9bcg+NY9yH8Bm17094KM=
X-Developer-Key: i=quic_bjorande@quicinc.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_105911_655734_B2751BA1 
X-CRM114-Status: UNSURE (   8.59  )
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

The USB multiport controller found in SC8180X is used to driver the
camera in the Lenovo Flex 5G, and a couple of additional USB ports on
the Primus AUX board.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---
Bjorn Andersson (10):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add sc8180x USB3 compatible
      phy: qcom-qmp-usb: Add sc8180x USB UNIPHY
      dt-bindings: clock: qcom: Add missing USB MP resets
      clk: qcom: gcc-sc8180x: Add missing USB MP resets
      dt-bindings: usb: qcom,dwc3: Add SC8180X compatibles
      arm64: dts: qcom: sc8180x-pmics: Add second PMC8180 GPIO
      arm64: dts: qcom: sc8180x: Align USB nodes with binding
      arm64: dts: qcom: sc8180x: Add USB MP controller and phys
      arm64: dts: qcom: sc8180x-primus: Enable the two MP USB ports
      arm64: dts: qcom: sc8180x-lenovo-flex-5g: Enable USB multiport controller

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   3 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml         |  29 ++++
 .../arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts |  32 ++++
 arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi        |  16 +-
 arch/arm64/boot/dts/qcom/sc8180x-primus.dts        |  60 +++++++
 arch/arm64/boot/dts/qcom/sc8180x.dtsi              | 175 +++++++++++++++++++--
 drivers/clk/qcom/gcc-sc8180x.c                     |   4 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            |   3 +
 include/dt-bindings/clock/qcom,gcc-sc8180x.h       |   4 +
 9 files changed, 312 insertions(+), 14 deletions(-)
---
base-commit: 3689b0ef08b70e4e03b82ebd37730a03a672853a
change-id: 20240524-sc8180x-usb-mp-4eb278df7ef1

Best regards,
-- 
Bjorn Andersson <quic_bjorande@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
