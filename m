Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20D71C43219
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 11:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QQGuqqpqLOjlh2nXQyI6aCSK9kwC2az8gt+ocbsaJaE=; b=U2BF2eMy6RbD05
	vJsafRDiNN6/QkD3gYHJ68l/vwBL7Byc9g2P5LsHr8FjYglbu8nStBrob5O769H1x0LYFcuVDLJLC
	zITxtcjU/Q3paKuXwQyltl5aNCVoiECuCO3y/rvxPMe9fpVcq9v1+u3Hbeoq/ymIL5se7vIKVKrHv
	MbhSbaXUxdNDLRpjJ/FvkWaet3acdhcO4CCD/pVptxk0YMeghm0EhLaMzBiBO95zqxw7qAGKi5lHM
	Y/txmJ+ryI9eYM9CMtwAixJswQo37+fY2bzmgl+zPMhJtRfXK++K5Z/BbbjoW48gtFfyAx2rbPQ04
	HO9lrRe31zvFWGnZfIcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol7N5-000vBN-Aj; Wed, 19 Oct 2022 11:36:27 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol7N0-000v5r-SX
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 11:36:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3F51AB821E9;
	Wed, 19 Oct 2022 11:36:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02470C433D7;
	Wed, 19 Oct 2022 11:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666179379;
	bh=ZDAOuS5C83+/fdYkNIXCq0jaPLmGbIho2viLplRjK9k=;
	h=From:To:Cc:Subject:Date:From;
	b=flZ91CiFKOgKglnEEhgvI/txXQb40ugXF5bzIK6bynUXQf1fSQwoa0o01sfG5Ohnr
	 6eIfHfT9uxrZ+Ih9a8z3R233u8omPklWoEMl0PSBL9sABbOV8ayE4PG7EsNWtOFdxD
	 poMyPGgZd99+dHy8rLlLe0nhj3Rs2svSjwfmH2zY9TedX+GOiD82JFsrpMDi9XE+h/
	 PTLGfZiK1YFVUGJsGHNG6XeeQB5S1hdDRn+oJ1sso5m0cmuNs1YSV8dRt5ggcigPFw
	 12jRi0u4oZAVb53vK0/t8/K+BhA0HayRcogHQbiD/Qm8qA9yW6zoJH41hWX792LyGd
	 JCI90Ul041TAw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ol7Ml-0005pE-60; Wed, 19 Oct 2022 13:36:07 +0200
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
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 00/15] phy: qcom-qmp-pcie: add support for sc8280xp
Date: Wed, 19 Oct 2022 13:35:37 +0200
Message-Id: <20221019113552.22353-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_043623_248206_0A757BE4 
X-CRM114-Status: GOOD (  14.52  )
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

Note that these patches depend on the linux-phy next branch of today and
the following two series:

 1. [PATCH v2 00/14] phy: qcom-qmp: further prep cleanups

    https://lore.kernel.org/lkml/20221012081241.18273-1-johan+linaro@kernel.org

 2. [PATCH 00/20] phy: qcom-qmp: further prep fixes and cleanups (set 3)

    https://lore.kernel.org/lkml/20221012084846.24003-1-johan+linaro@kernel.org

Johan


Changes in v2
 - rename current DT schema after first SoC added to the original
   bindings (IPQ8074) and add a reference to the new SC8280XP bindings
   instead of marking the current bindings as "legacy" (Krzysztof)

 - add "sc8280xp" infix to the new DT schema filename (Krzysztof)

 - tighten description of the 'qcom,4ln-config-sel' phandle array
   (Krzysztof)


Johan Hovold (15):
  phy: qcom-qmp-pcie: sort device-id table
  phy: qcom-qmp-pcie: move device-id table
  phy: qcom-qmp-pcie: merge driver data
  phy: qcom-qmp-pcie: clean up device-tree parsing
  phy: qcom-qmp-pcie: clean up probe initialisation
  phy: qcom-qmp-pcie: rename PHY ops structure
  phy: qcom-qmp-pcie: clean up PHY lane init
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 853 ++++++++++++------
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |   2 +
 5 files changed, 774 insertions(+), 254 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-pcie-phy.yaml => qcom,ipq8074-qmp-pcie-phy.yaml} (96%)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml

-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
