Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC6C6C54ED1
	for <linux-phy@archiver.kernel.org>; Tue, 27 May 2025 20:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ekAVTzvoq8Wn6dSIKtNFa8itzjKRNVRuKOHFagycbkY=; b=KolusSyW8QItBL
	IFr1u2G73zNicsl6OEg1mCJXir7QFKvnTdRZoCimchY6bcNXGGZPhR8hhwOSljWThYWjSSRpibFZk
	halD53sPqrtSZKFORAq07QyBEm4/M7rGKYklHQ0odGdRGZ9qw5XYhUp87ziSre+eIymTcDOw8iFdZ
	Y9BjCpJYeeSAp5HdhGVrkshmaP2aTLg7wSg57v3lkq2cmiyRP9x2o7t6/3kPgcMbGnTvPUgAjhWrR
	CsXx3dbcFTlxtqqWwrSJ2YdalGCdfrsXFTW+z4XTUaYkx0LxssmPpr0m2jsP/kjWsjwiSlnCn/41K
	vMiYFulg5SkWfmNngVSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK160-0000000BWV7-106t;
	Tue, 27 May 2025 20:40:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK15x-0000000BWUL-2mZ3
	for linux-phy@lists.infradead.org;
	Tue, 27 May 2025 20:40:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8C7AA5C1363;
	Tue, 27 May 2025 20:38:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3919BC4CEE9;
	Tue, 27 May 2025 20:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748378420;
	bh=o6RTu/fe8SVeQMQKwuTVVvMbJ9Q/EvXIvy75U5TFuUE=;
	h=From:Subject:Date:To:Cc:From;
	b=HXMPLCjw8C1sN3tCCQJuezNOcsNvNvemhyUI3VRk0aEZ2zMEphroYIA8xwR/TKWvJ
	 CyROHQz8jvb3ByIljJPbiClM3VhfOlhHNZ2WLb2SKiO/9riVzu015TpQ1XvVyi2IQB
	 /FFw9E+mOJGh5pucz156BqAPFet8Js4jTQJEZzSOKjUTO3RHSOQn3TK3BESaEtJykF
	 kez+yi850ACR072K2Dx284FrpUtoI6ITnFfzGhb+CDJFom8OZm3PBIA9dH+Fobhbia
	 gJwC+UWOwVJVfikhwcgy4nir/XJq0ctI+Ggq+LLX+YjEATxLtT/9LRBxCkS7dfo9rG
	 OkG7OgLGMBK+A==
From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Date: Tue, 27 May 2025 22:40:02 +0200
Message-Id: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACMjNmgC/x3MTQqAIBBA4avErBNi0v6uEiFiUw2EiUYE4t2Tl
 t/ivQSRAlOEqUoQ6OHIlyto6wrsYdxOgtdiwAZVo7AX9+XZCnk6vXodKHp2wnYjSjMMqCxBKX2
 gjd//Oi85f56ffJRlAAAA
X-Change-ID: 20250527-topic-4ln_dp_respin-c6924a8825ce
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748378414; l=2944;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=o6RTu/fe8SVeQMQKwuTVVvMbJ9Q/EvXIvy75U5TFuUE=;
 b=3o/7D6VeHfd7PE53Qk34RBYI/8t5seA6Wr6yKb3I6ZxMwU117qb440IPDvwf0Mdkb4DLoIcsa
 V0Xn/6kLhwGDJJ70ug3t2U9P8EjRjNrA3Y2YUDNGIgktoLvnDCFP/SC
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_134021_793579_BDB2C349 
X-CRM114-Status: GOOD (  12.08  )
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

Register a typec mux in order to change the PHY mode on the Type-C
mux events depending on the mode and the svid when in Altmode setup.

The DisplayPort phy should be left enabled if is still powered on
by the DRM DisplayPort controller, so bail out until the DisplayPort
PHY is not powered off.

The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
will be set in between of USB-Only, Combo and DisplayPort Only so
this will leave enough time to the DRM DisplayPort controller to
turn of the DisplayPort PHY.

The patchset also includes bindings changes and DT changes.

This has been successfully tested on an SM8550 board, but the
Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
PD USB Hubs and PD Altmode Dongles to make sure the switch works
as expected.

The DisplayPort 4 lanes setup can be check with:
$ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
	name = msm_dp
	drm_dp_link
		rate = 540000
		num_lanes = 4
...

This patchset depends on [1] to allow broadcasting the type-c mode
to the PHY, otherwise the PHY will keep the combo state while the
retimer would setup the 4 lanes in DP mode.

[1] https://lore.kernel.org/all/20240527-topic-sm8x50-upstream-retimer-broadcast-mode-v1-0-79ec91381aba@linaro.org/
Changes in v3:
- Take the series from Neil
- Rebase
- Rename many variables
- Test on X1E & X13s
- Apply a number of small cosmetic/codestyle changes
- Remove some unused variables
- Some smaller bugfixes
- Link to v2: https://lore.kernel.org/lkml/20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org/
Changes in v2:
- Reference usb-switch.yaml in bindings patch
- Fix switch/case indenting
- Check svid for USB_TYPEC_DP_SID
- Fix X13s patch subject
- Update SM8650 patch to enable 4 lanes on HDK aswell
- Link to v1: https://lore.kernel.org/r/20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
Konrad Dybcio (1):
      phy: qcom: qmp-combo: Rename 'mode' to 'phy_mode'

Neil Armstrong (5):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch
      phy: qcom: qmp-combo: store DP phy power state
      phy: qcom: qmp-combo: introduce QMPPHY_MODE
      phy: qcom: qmp-combo: register a typec mux to change the QMPPHY_MODE
      arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13: Set up 4-lane DP

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   7 +-
 .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |   6 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 182 +++++++++++++++++++--
 3 files changed, 173 insertions(+), 22 deletions(-)
---
base-commit: 460178e842c7a1e48a06df684c66eb5fd630bcf7
change-id: 20250527-topic-4ln_dp_respin-c6924a8825ce

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
