Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A62FA3741
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w+bKe/NvmYwsQG22MFSpdPBAhSIORu0OFi/r21qBks8=; b=jtUsONSiNqRAqs
	KDj1WkHX0MX5Pp+2XylnOQTkBkIPiI+zvpR63qwFR5y2xPYrExW7F4ViY71yv6wmH2vdthZzEE+9e
	umfJevvBb+EUSKcdPskQUnGEYVCLGk84Cyvwl+9ijv/mzGMXXQ5ZFRiji+t6wbwHuMbmGFNATEDW/
	MMEvxrdattJgMoOGlU4gQ1lWLGPF5RZV3+dBr/Zp8lkkljYTzfOi6dj9oBIZTxRs7QT41U3BkWeTl
	TzNV4REfffgNo8edzhG70fikRchiZLt3m/vdMndLt/NNY2oFKythamPqNiIq/2mlYj0tVGoa9lWng
	RnesXrniFaIfc0FYrrqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPXd-00HO6J-EK; Fri, 28 Oct 2022 13:36:57 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPXW-00HNzG-KQ
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:36:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7ADD862857;
	Fri, 28 Oct 2022 13:36:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D015AC433D7;
	Fri, 28 Oct 2022 13:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964208;
	bh=dDrwpplksqpYqEln5aDiogUs6F1adABuQ37DRFo07gQ=;
	h=From:To:Cc:Subject:Date:From;
	b=mNAlDTRHueHx3tHUCTC6VXlidLBJtW8RFehwGA09tc8msae5VRs3fiDx5bo696+V8
	 TSnbRziKjp5HDYf44ryvtlwnx4ZxLr7d9n5o7HKU1Xen6mpvnPRr47I08NBW0MCed1
	 yoLdTjk5RRe6cZYCcvmuhfD8pWiblowaQF5aHIo1fTHRPqBdjaPHg7bLtACn0jUmna
	 IIUqQbHXwni8HysX4p6Tj2xZp0r2DsXsDgYVHfDDIUDMbH6aqBPQVUph4+Xi8eoNCC
	 Cg1Q4kIDCRFR2RQLFNgS2nwIsPejo83o1pveuTwYND1JMDzQqBbncAVwbQajSq5/GB
	 kgygDewpPsaFg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooPXG-0004qt-3f; Fri, 28 Oct 2022 15:36:34 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v4 00/16] phy: qcom-qmp-pcie: add support for sc8280xp
Date: Fri, 28 Oct 2022 15:35:47 +0200
Message-Id: <20221028133603.18470-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_063650_830489_44C805A3 
X-CRM114-Status: GOOD (  14.15  )
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

This series adds support for the PCIe PHYs on SC8280XP including its
four-lane PHYs.

The first half of the series clean up the driver in preparation for
supporting SC8280XP and its new devicetree bindings that drops the
legacy child node and the (incomplete) description of register
subregions.

The other QMP bindings suffer from similar problems and follow-on series
will do corresponding changes to the UFS, USB and combo QMP bindings and
drivers.

Note that these patches depend on the linux-phy next branch of today.

Johan


Changes in v4
 - break out switch to shorter tables identifier in a preparatory patch
   (Vinod)

Changes in v3
 - use bulk clk API for pipe clocks (Dmitry)

Changes in v2
 - rename current DT schema after first SoC added to the original
   bindings (IPQ8074) and add a reference to the new SC8280XP bindings
   instead of marking the current bindings as "legacy" (Krzysztof)

 - add "sc8280xp" infix to the new DT schema filename (Krzysztof)

 - tighten description of the 'qcom,4ln-config-sel' phandle array
   (Krzysztof)


Johan Hovold (16):
  phy: qcom-qmp-pcie: sort device-id table
  phy: qcom-qmp-pcie: move device-id table
  phy: qcom-qmp-pcie: merge driver data
  phy: qcom-qmp-pcie: clean up device-tree parsing
  phy: qcom-qmp-pcie: clean up probe initialisation
  phy: qcom-qmp-pcie: rename PHY ops structure
  phy: qcom-qmp-pcie: clean up PHY lane init
  phy: qcom-qmp-pcie: use shorter tables identifier
  phy: qcom-qmp-pcie: add register init helper
  dt-bindings: phy: qcom,qmp-pcie: rename current bindings
  dt-bindings: phy: qcom,qmp-pcie: add sc8280xp bindings
  phy: qcom-qmp-pcie: restructure PHY creation
  phy: qcom-qmp-pcie: fix initialisation reset
  phy: qcom-qmp-pcie: add support for pipediv2 clock
  phy: qcom-qmp-pcie: add support for sc8280xp
  phy: qcom-qmp-pcie: add support for sc8280xp 4-lane PHYs

 ...hy.yaml => qcom,ipq8074-qmp-pcie-phy.yaml} |   7 +-
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 165 ++++
 drivers/phy/qualcomm/Kconfig                  |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 824 ++++++++++++------
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |   2 +
 5 files changed, 745 insertions(+), 254 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-pcie-phy.yaml => qcom,ipq8074-qmp-pcie-phy.yaml} (96%)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml

-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
