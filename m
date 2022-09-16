Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E114EC6FA90
	for <linux-phy@archiver.kernel.org>; Fri, 16 Sep 2022 10:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SlFkinlotwWiSHgIvA/m9MMvEdHGhkOM5Eet74NpdQE=; b=iehdHeoM3fAIpC
	IgjvJmCzvZY+5hl4jTxGq1POWwZPzKJx8/VAWRmXGwAKML5gY7b/e54wEyAnYbPIxgkOzivFZWL/j
	XKlM9qpurUbGK+wBkIdPgYAmrsZVE0KmVnh0eLsyUkT0TTSjxv/83MpSvHcuNQ5QR3N/cKsuEnPKO
	somEfncwKbzqE5s5lrFLlzy5Jf8DBXoDzHjrzPc68d88fob621Rlriprm9YOmuEs1j/m6uvaDJoxf
	reJf97YcLTRk8LQ9KcvVz9OgL1pulRRDyRz25/P79BswYe+7fhtvTCHB0dxz37HgNOWeYCTVIhFhb
	yuOSU4XIxhTrsa7wpNUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ8Y5-00C9mj-Ma; Fri, 16 Sep 2022 10:26:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ8Vf-00C8Pe-IK
	for linux-phy@lists.infradead.org; Fri, 16 Sep 2022 10:23:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 434BD62A8B;
	Fri, 16 Sep 2022 10:23:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B59AC433B5;
	Fri, 16 Sep 2022 10:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663323825;
	bh=ir7H0gZFvFgZNHyj7dRRRxwrCHWMLr07c5X1mE03c7s=;
	h=From:To:Cc:Subject:Date:From;
	b=IZzcj5R12OziQR5GgV4ebTz73/lF+Z55vsEIp8ULDxt5DMv7uDGMOGYKsQgZ2Gh3+
	 ZTQOCzuW6k/uSMmlUDiicWmXQ43xsxvPSu7xlmME6xMSNlZexJ+/CJGxZjAqwpqqST
	 yZna0gdrctLO2T4z0mVfcMrmDc5b+eSSlbgU+lSkGFcTo7wO+vZLC8LcWSs4oAeiu0
	 W8gSFoB8cLeNKdm/dsuNbMEILcLG03Xf3GmxSAt9TlDTSWGzSxO83MsNAohG9H6yo+
	 vRJC8rzIn49F5gGY4838MH6y37BdXUO20MSQ5Eu7wZzTXHLnx42ghMuEK86VFUyKpD
	 WqvDVWm16NBYQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oZ8Vh-00030L-EZ; Fri, 16 Sep 2022 12:23:50 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 00/11] phy: qcom-qmp: more fixes and cleanups
Date: Fri, 16 Sep 2022 12:23:29 +0200
Message-Id: <20220916102340.11520-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_032347_776060_CA4739FC 
X-CRM114-Status: GOOD (  16.04  )
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

Here's the next set of QMP PHY cleanups including some non-critical
fixes of tiny memory leaks on probe deferral (I didn't add a stable tag
for any of them on purpose).

Note that the UFS PHY driver does not use the pcs_misc region either
currently, but I decided to leave the register mapping code in as,
unlike for msm8996, the bindings do include this region.

These apply on top of the previous clean up series, which has been
reviewed by Dmitry and is ready to be merged (apart from possibly a tiny
fixup of the last patch):

	https://lore.kernel.org/all/20220907110728.19092-1-johan+linaro@kernel.org/

As mentioned in the individual commit messages, the memleak fixes
switches to using exclusive mappings for the device registers. When
reviewing the mainline devicetree I found four instances of incorrect
serdes region sizes which I've now fixed up. I don't think we need to
add workarounds for booting older malformed dtbs in this case, at least
not until someone complains.

As I also reported in a reply to v1:

	https://lore.kernel.org/lkml/YyRJuCnuUE+bF7RP@hovoldconsulting.com/

we do however have two USB PHY bindings that currently rely on
overlapping regions which would require some more work to be fixed up.

Specifically, the USB PHY driver uses two separate PCS regions but the
binding treats them as one and the driver ends up mapping everything in
between. This sort of works on all platforms but two where the TX and RX
regions lie in between.

The binding and driver should probably be fixed up to define this
PCS_USB region explicitly, but that work is left for another day.

Meanwhile, I've implemented a workaround that fall back to using
non-exclusive mappings for these platforms.

Johan


Changes in v2
 - fallback to non-exclusive mappings for the two USB bindings that
   currently rely on it (patch 6/11)


Johan Hovold (11):
  phy: qcom-qmp-pcie: add pcs_misc sanity check
  phy: qcom-qmp-pcie: fix memleak on probe deferral
  phy: qcom-qmp-pcie-msm8996: fix memleak on probe deferral
  phy: qcom-qmp-combo: fix memleak on probe deferral
  phy: qcom-qmp-ufs: fix memleak on probe deferral
  phy: qcom-qmp-usb: fix memleak on probe deferral
  phy: qcom-qmp-pcie-msm8996: drop unused pcs_misc handling
  phy: qcom-qmp-pcie: drop unused legacy DT workaround
  phy: qcom-qmp-combo: drop unused legacy DT workaround
  phy: qcom-qmp-ufs: drop legacy DT workaround
  phy: qcom-qmp-usb: drop legacy DT workaround

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 53 +++++-------
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 33 +++-----
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 59 ++++++--------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 53 +++++-------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 80 +++++++++++--------
 5 files changed, 117 insertions(+), 161 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
