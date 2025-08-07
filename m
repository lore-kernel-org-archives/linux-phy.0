Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1FDEC87FCF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 16:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QNtiJnMyIATOZHaZhIigoAqoNjX1iqxorBUA4Jc/GMg=; b=UuKHPn3GDowzav
	0obKeudAEjGumTq73Avs0YHDgw1QdL9k2nVeioTwWfJnXSuaFX18prEwDrxtHi/A6wGUNCnWkhPPg
	kZs618/DjcgPTBwC/RmLkjRuPOW/A0eWjFOk3SYci7fp7y4RnEmEDsmUJZHGsCEkF12WYF+GoBsPG
	GOOTCHFM21ed1v7Q+xlPQpt/pRLrHCpIgS+jNFwuSGJH9TzSjEkloZEW83GVle4iyARI+C4G4oxB5
	I33jCRSz7tA/vnIjRupVXZQaEVYYbPpMYLG2lt21Rn9CUfVWJpUxBqHCIzRMSLMNTEKwcza/vRsv7
	X/+f0eQvN1w4sxiuuaCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk3YX-000000019tQ-1Zww;
	Thu, 07 Aug 2025 16:33:29 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uk3YW-000000019sz-3Fjk
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 16:33:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E7428600AA;
	Thu,  7 Aug 2025 16:33:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D9ABC4CEEB;
	Thu,  7 Aug 2025 16:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754584407;
	bh=ntY80xGs44MCWDEx+rS2FTKDH2ewj/KkXkqdRUEQtzA=;
	h=From:Subject:Date:To:Cc:From;
	b=pcsVTv95AOk4GT3TZuN4VwAiJqk79yawyISf+hInmdCSlZHO5/sKwxv78Xz8bQ2QT
	 evUt12uO/XPjIO/NGeA3xFrwP6Ut+GB4PL7Gg++cAfozdY+2MTrm1ZPGD3jgvsilR8
	 r6P8KpKWB+edaYXIuOuvKgdP6mczOmeP0/fFw+niCjPfw8XviQ+vTVAi3kX5FTaZ70
	 WMyPDaBryo/Nc+xBIKY039ZKwzsxbRaoBbTp8bcV2IBL/qlPtc6QoGiGgMVrFyWdeq
	 cZkg1/1p+jqkiMpJCFrB/JsELnTrTo+eftqONC0OxiuoOOn1mOnGMhZFOBxkmorpJO
	 8Db5yFy9/aiTw==
From: Konrad Dybcio <konradybcio@kernel.org>
Subject: [PATCH v4 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
Date: Thu, 07 Aug 2025 18:33:18 +0200
Message-Id: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAE7VlGgC/32NXQqDMBCEryL73EhI/O1T71FEQlzrgiZp1kqLe
 PemHqAvA9/AfLMDYyRkuGY7RNyIybsExSUDOxn3QEFDYlBSlbJUtVh9ICuK2fVD6CNyICds1ar
 CNI0qLUJahogjvU/rvUs8Ea8+fs6TTf/a/75NCynG1si60mhV0948c/58mdn6ZclTQHccxxdnu
 9LGvQAAAA==
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
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754584403; l=3376;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=ntY80xGs44MCWDEx+rS2FTKDH2ewj/KkXkqdRUEQtzA=;
 b=4Mu66jGvNs15b1lFXrxpIhZlawB5x17VH9OKrXMcilTSwqjhazeYSPsduJrAIASFh8lZZltay
 RU2DVsVtXF6DNT4J5qp1XgIgxhYsY+axrqiauvthRbjKrpU0zM5hHIR
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

Changes in v4:
- Default to USB3_ONLY if there's no DP SVID (Dmitry)
- Pick up tags, dropped T-bys due to the above change
- Add missing submitter's sign-off on some patches
- The odd 4-lane-DP + USB2 case remains unhandled for now, but it's
  not a huge deal, see:
  <c2f2ba36-1a25-450e-99b9-79aa4fd4913d@linaro.org>
- Link to v3: https://lore.kernel.org/r/20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com
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
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 179 +++++++++++++++++++--
 3 files changed, 170 insertions(+), 22 deletions(-)
---
base-commit: 442d93313caebc8ccd6d53f4572c50732a95bc48
change-id: 20250527-topic-4ln_dp_respin-c6924a8825ce

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
