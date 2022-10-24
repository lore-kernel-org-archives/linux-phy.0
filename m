Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79BC0ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 10:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GKVbq9IMsHQG8aw65IxxHniI7qHhA75Yf1ki1xD4NM0=; b=jdHvTGT4sWgro1
	nlOrAZS8ztV8NvV1Bul37vXYs5RMYzw42wmCPxSEvT+ZYQ0hS6CbSBXxhjbDh+aUcT/p44byGJOcv
	uhSpm25TUz7i9e+iXCJ+dshnGcZw5OcLHPjupk41/GDbcQgMNB41V9DyhAF9SjeythEjFpoM1QQ8f
	DjJwyPPuoeojY8KEDVLzEbiS4gAzer/pIreqw0eei6BJHjptdXC15uVtD+dGNh/Xy2UwZFqWDfzuL
	fJR43n3Dti/uJezGpyMEiErZZvRm5ki7bQ2tU7KjXKmIXzNCrBfWbl4DzL+0Rdlem95XinnwugxoG
	y0FOLS0UFV2HZbuQYYbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMO-000c9o-H1; Mon, 24 Oct 2022 10:07:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuML-000c61-TX
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 10:07:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 415AD611BD;
	Mon, 24 Oct 2022 10:07:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47F56C433D7;
	Mon, 24 Oct 2022 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666606023;
	bh=tayFJ0zIpPNVGZUS4cmjEbiTrP4owsq5Yv1fDhHyyaw=;
	h=From:To:Cc:Subject:Date:From;
	b=P27ZWaZc7pD/HNh+mXLuYd+iczelBbxiLYrr5IUhsIficy7b9a872+jD9L/bpvs/9
	 piRKbdlTvxXII2s5JRjJIdWMrZV6rQ/x5ijtAkgZjK2lXplPGnkqhhCyFWW6t8lsqQ
	 vSpnx79dTcJTebFCzWkdavI2oCK4HrPDKrqGRK+I2isw6GP9Yq/0UPeV9IShCB0b7y
	 r826F5thtFSdAGG/k3j6fcS1KnKUoQQaouGmB+oi1lTUUYGvujbO3UaT33KQaHc/dM
	 MeliJ9GXdfbN2UYM7icHdxs5XN9rl9Chlx/5Et1nEyitqPFEdyD1FGMKke50KHJRLX
	 KsyIrGtc4N/0g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omuM2-0005M4-KK; Mon, 24 Oct 2022 12:06:46 +0200
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
Subject: [PATCH 00/13] phy: qcom-qmp-usb: fix sc8280xp binding
Date: Mon, 24 Oct 2022 12:06:19 +0200
Message-Id: <20221024100632.20549-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_030706_010012_6B306EC5 
X-CRM114-Status: GOOD (  13.21  )
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

This series fixes the USB PHY devicetree binding for SC8280XP and adds
support for the new updated binding to the driver.

The first half of the series clean up the driver in preparation for
supporting SC8280XP and its new binding that drops the legacy child node
and the (incomplete) description of register subregions.

The other QMP bindings suffer from similar problems and the PCIe and UFS
drivers are being fixed here:

        https://lore.kernel.org/lkml/20221021110947.28103-1-johan+linaro@kernel.org/
	https://lore.kernel.org/lkml/20221024090041.19574-1-johan+linaro@kernel.org/

and a follow-on series will do corresponding changes to the combo QMP
bindings and driver.

Note that these patches depend on the linux-phy next branch of today and
the following two series:

 1. [PATCH v2 00/14] phy: qcom-qmp: further prep cleanups

    https://lore.kernel.org/lkml/20221012081241.18273-1-johan+linaro@kernel.org

 2. [PATCH 00/20] phy: qcom-qmp: further prep fixes and cleanups (set 3)

    https://lore.kernel.org/lkml/20221012084846.24003-1-johan+linaro@kernel.org

Johan


Johan Hovold (13):
  phy: qcom-qmp-usb: fix sc8280xp PCS_USB offset
  phy: qcom-qmp-usb: sort device-id table
  phy: qcom-qmp-usb: move device-id table
  phy: qcom-qmp-usb: move pm ops
  phy: qcom-qmp-usb: merge driver data
  phy: qcom-qmp-usb: clean up device-tree parsing
  phy: qcom-qmp-usb: clean up probe initialisation
  phy: qcom-qmp-usb: rename PHY ops structure
  phy: qcom-qmp-usb: clean up PHY init
  dt-bindings: phy: qcom,qmp-usb: rename current bindings
  dt-bindings: phy: qcom,qmp-usb: fix sc8280xp binding
  phy: qcom-qmp-usb: restructure PHY creation
  phy: qcom-qmp-usb: add support for updated sc8280xp binding

 ...phy.yaml => qcom,msm8996-qmp-usb-phy.yaml} |  20 +-
 .../phy/qcom,sc8280xp-qmp-usb-phy.yaml        | 105 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 532 +++++++++---------
 3 files changed, 368 insertions(+), 289 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-usb-phy.yaml => qcom,msm8996-qmp-usb-phy.yaml} (95%)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb-phy.yaml

-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
