Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C14D5C38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 09:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sr6V8UOuKEzAfNL4xj+OvsoQMXZeo+bE/cjuCyx9sSo=; b=UYc29vWO+RT+gw
	RW4norlcNPvqyvyzLIclLumsuHCQ44NVJB8H/1t+SUqinLyP6Jdr8R2gUPJuLHszVgbc4RVAI2Z7C
	sZ/06T3wbYIPgMq77XkBXYM3TtptoCr6jh12E7aQxa9+t0HNbPhADcjrIc2RiIOfqCCgGkZr63dZc
	Ivlydwx9h2kjFMsSKVBeH2h87U6zrxFseCKT4W/udvn016qprpVbv29h1rDn2XU3Q17/x7MIRvp6z
	PlZU4h/eTbNc/N4dB6VAU748ySQlCH66LTg5hnEthr93iHkZpnmSTNEOfiTYGdq5f+YE+g12wlQIe
	ORcjmNR6i9M7ry0pwIkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtLC-000GlA-3r; Mon, 24 Oct 2022 09:01:50 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omtL3-000Gdx-TZ
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 09:01:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9DEBFB80FED;
	Mon, 24 Oct 2022 09:01:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCF56C43470;
	Mon, 24 Oct 2022 09:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666602097;
	bh=SLoNuE0wOlAn/sJQ6E07BFsAXMng8qt1Wiq6RyuB1MM=;
	h=From:To:Cc:Subject:Date:From;
	b=FMawn2Mi0AT5p/8QuvcGgd/YzYtdDQZPjTLr6yGd8153qHmn343LfNOTLwJPZxe5L
	 qF3+Eo0CITPjdi3k9xfW2T6I3k26x2EBA7BKjZqvdwo6GCHVNlsXgJl95yKzOgMaoc
	 TVWpo9BjLq4k8alB8Kp+Ydrz5kQtLO/lUamJpIaD8aMR6mPOAD1IiWVwpIlwOBrwiw
	 iTRrLzPyO6OoulmERZX54MH8cvFbD7MqR6NwU+HNkptR+gBH3Qc2NALal5pWHh3qfZ
	 vU/xWGz7ayQ/CHlQ6ANoftG/qHsaYmCvuJhAK7eZ7X+zIfVDrV+5Rr2qpC5llyae5g
	 jr/43JdXKel7A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omtKi-00056L-TD; Mon, 24 Oct 2022 11:01:20 +0200
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
Subject: [PATCH 00/10] phy: qcom-qmp-ufs: fix sc8280xp binding
Date: Mon, 24 Oct 2022 11:00:31 +0200
Message-Id: <20221024090041.19574-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_020142_110687_7F3B22FF 
X-CRM114-Status: GOOD (  13.19  )
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

This series fixes the UFS PHY devicetree binding for SC8280XP and adds
support for the new updated binding to the driver.

The first half of the series clean up the driver in preparation for
supporting SC8280XP and its new binding that drops the legacy child node
and the (incomplete) description of register subregions.

The other QMP bindings suffer from similar problems and the PCIe driver
is being fixed here:

	https://lore.kernel.org/lkml/20221021110947.28103-1-johan+linaro@kernel.org/

and follow-on series will do corresponding changes to the USB and combo
QMP bindings and drivers.

Note that these patches depend on the linux-phy next branch of today and
the following two series:

 1. [PATCH v2 00/14] phy: qcom-qmp: further prep cleanups

    https://lore.kernel.org/lkml/20221012081241.18273-1-johan+linaro@kernel.org

 2. [PATCH 00/20] phy: qcom-qmp: further prep fixes and cleanups (set 3)

    https://lore.kernel.org/lkml/20221012084846.24003-1-johan+linaro@kernel.org

Johan


Johan Hovold (10):
  phy: qcom-qmp-ufs: move device-id table
  phy: qcom-qmp-ufs: merge driver data
  phy: qcom-qmp-ufs: clean up device-tree parsing
  phy: qcom-qmp-ufs: clean up probe initialisation
  phy: qcom-qmp-ufs: rename PHY ops structure
  phy: qcom-qmp-ufs: clean up PHY init
  dt-bindings: phy: qcom,qmp-ufs: rename current bindings
  dt-bindings: phy: qcom,qmp-ufs: fix sc8280xp binding
  phy: qcom-qmp-ufs: restructure PHY creation
  phy: qcom-qmp-ufs: add support for updated sc8280xp binding

 ...phy.yaml => qcom,msm8996-qmp-ufs-phy.yaml} |  17 +-
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |  83 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 381 +++++++++---------
 3 files changed, 287 insertions(+), 194 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-ufs-phy.yaml => qcom,msm8996-qmp-ufs-phy.yaml} (93%)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml

-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
