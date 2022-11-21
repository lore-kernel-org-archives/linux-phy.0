Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C4C4C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 08:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HdYh2lnhT0r6gZ2E1mxZ1H70+a7C5LYkUYO/NGWtRH4=; b=RyrWVbsi3yVG1V
	hC2hCwWooeLTMGgef3kHYWr914sKjzahx0IbHHrAnZZWTca6KmISDFl35C8MWmxwNLX9cySSAvfAe
	XQP/vuPFsFwr948ZJbDCmi0lu6q8tuJ0ZgU74UCq+dCDWrFNMFIOxVmuzzrCrV5oXXpsEuKM25FLI
	fl4zanSTFOheGEWAwU/Z3OQznsHzIo3utDjNRGyIXIxHlu5iyrMkHT0i0XWjfpMuVx3Q5eX5Is2v6
	f03e38zJjdu+QcE7ko5Fw6N+kraAgJFMpVEs1wokiEGTFrudat03cLqOPSZ+WC/b/hqnASu4ZyLMx
	aRfpJcyLLZlXldyO4HSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2X3-00BUdf-CI; Mon, 21 Nov 2022 08:52:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox2Wz-00BUYg-3b
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 08:51:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 62CC060F46;
	Mon, 21 Nov 2022 08:51:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BAD7C43145;
	Mon, 21 Nov 2022 08:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669020714;
	bh=0/FEbAx1GFTzClwrya9NO6G7aq+zFSmoJtaI7TVM8P4=;
	h=From:To:Cc:Subject:Date:From;
	b=l2b+nQa9h0fZOMYnjcesQxnSVrSglrMo5ieYBrmWlCEj6v+hgw4yaXo8IUrYeErMU
	 lWaFMOY2DDRV+XC+9X/DxbLcvcqQR+H0uKNLuQQGi8Xbp+c3kvoTQVpo7ww7gHT3Uk
	 5xLY1WyJpzcotx/RfJi5B6FFrwORJzz7JwzxdmShx/9uXHcUxPKSY6eu8POPaPEkP3
	 PYlO8l05UZ+U/qhV24tJncq+/fSedRWqrRD+m0MUkab2xL5i1nt0KWdF0ashaAFnr/
	 vB/oHFPI0L9T3bC0bmQFD25qjYxk+uHwh/Es2/8x04DhV0nKDiJHszhscOq96P8iVf
	 gHW0bqxffLnAg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ox2WS-00088D-CY; Mon, 21 Nov 2022 09:51:24 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v3 00/15] phy: qcom-qmp-combo: fix sc8280xp binding (set 3/3)
Date: Mon, 21 Nov 2022 09:50:43 +0100
Message-Id: <20221121085058.31213-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_005157_247226_132CC989 
X-CRM114-Status: GOOD (  18.15  )
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

This series fixes the USB-DP PHY devicetree binding for SC8280XP and
adds support for the new updated binding to the driver.

As the full series including the preparatory parts is over forty patches
and I've been posting this in three parts of which this is the last one.
In an effort to get all of these into 6.2, I've also submitted all three
series before waiting for the previous ones to be applied. Parts one and
two can be found here:

  https://lore.kernel.org/lkml/20221114081346.5116-1-johan+linaro@kernel.org/
  https://lore.kernel.org/lkml/20221114110621.4639-1-johan+linaro@kernel.org/

This last series adds a new binding for SC8280XP that drops the legacy
child node and the (incomplete) description of register subregions.

As the current bindings are both incomplete and incorrect it may be
a good idea to update also the other platforms currently supported by
this driver to the new binding scheme. The driver can support both
schemes during a transition period before removing the corresponding
code (dt parsing and clock-provider registration).

Johan


Changes in v3
 - make new QMP header dual licensed (Rob)

Changes in v2:
 - drop quotes from old DT schema $id and $schema (Krzysztof)
 - drop clock-output-names from new binding (Krzysztof)
 - add QMP clock and PHY index constants in a new header
 - drop patch moving clock registration before runtime PM enable (Dmitry)
 - include also the corresponding dts changes


Johan Hovold (15):
  dt-bindings: phy: qcom,qmp-usb3-dp: rename current bindings
  dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp binding
  phy: qcom-qmp-combo: drop v4 reference-clock source
  phy: qcom-qmp-combo: restructure PHY creation
  phy: qcom-qmp-combo: generate pipe clock name
  phy: qcom-qmp-combo: drop redundant clock structure
  phy: qcom-qmp-combo: drop redundant clock allocation
  phy: qcom-qmp-combo: add clock registration helper
  phy: qcom-qmp-combo: separate clock and provider registration
  phy: qcom-qmp-combo: clean up DP clock callbacks
  phy: qcom-qmp-combo: rename common-register pointers
  phy: qcom-qmp-combo: rename DP_PHY register pointer
  phy: qcom-qmp-combo: add support for updated sc8280xp binding
  arm64: dts: qcom: sc8280xp: fix primary USB-DP PHY reset
  arm64: dts: qcom: sc8280xp: fix USB-DP PHY nodes

 ....yaml => qcom,sc7180-qmp-usb3-dp-phy.yaml} |  25 +-
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  99 ++++
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        |  79 +--
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 530 +++++++++++-------
 include/dt-bindings/phy/phy-qcom-qmp.h        |  20 +
 5 files changed, 473 insertions(+), 280 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-usb3-dp-phy.yaml => qcom,sc7180-qmp-usb3-dp-phy.yaml} (91%)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
 create mode 100644 include/dt-bindings/phy/phy-qcom-qmp.h

-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
