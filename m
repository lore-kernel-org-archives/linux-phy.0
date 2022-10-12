Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DC4FC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pKoCSz9IHEzz4184/LE2JWeLi5fFqRG9wDOYd0qt5+Y=; b=JxOSKXCbmMf5Rr
	3D6CYSKSEzXFcjPD7ZizfS9c/ypq24m++8Q+G3XqMREPZl3PcsCLh3DG01RAtECkqQQJJhNYWeYzl
	Dun/m4UcNSPcU1OPdg3n6JWCwjU0SUQ5TvxZN3Pe/SkT/6oEsU0CVepmWlHW5gz7j4k1txXub5nMR
	Pb1aZ8g/tYJ8h1eLW/Dl/jo5qYCKV5M2UnHRr1GkgezAUo9EBJ/nsgxLDGzX3OjROw8AlYHclq7dS
	fDTpVUF4ai+mLhNmes5amiaqNWMSXZrPIK+6cNmxaZg5eL/B1hiFiIVktUIP99W1+vufkKLyQrfRA
	MaxpZInfFpa6VqbD6opw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXQX-007PoY-N5; Wed, 12 Oct 2022 08:49:21 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXQU-007PnC-MZ
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:49:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E90BCB819D9;
	Wed, 12 Oct 2022 08:49:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B15CC433D7;
	Wed, 12 Oct 2022 08:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564555;
	bh=xX5IVlc2R/KkmJrk54vJKvxJp0nawmXPvcm/+1PLy84=;
	h=From:To:Cc:Subject:Date:From;
	b=A7UpJexEM00HtjWf9H3Kub1GaCfU/eEw7juC8cPpgInLbEU4LRIkSmq0clCDZIwGV
	 hQKGUElMySmxhwWHdtyQklvrxymE7TIOkzVPbkOdUZxeOliJZAqs8iRQqfdgyzbtCG
	 9R4A7Q7hkh12O88YodyQuGztmmF1efs4AtH01hrmLQ4jA4NS0kkZVLuYYOl1U0J4AW
	 KmRd8wc7837BN2zUisfPZMKzU7jtQKQBCjEkmbTIPGCK8K23c+2jCBogwIhq5mSdtL
	 0A181nyJSzuX3cKRGQefuD9IW0hHF4f9JUzQNGPeTICU14mwtBAa9WNptLcLUEYse1
	 BuSD4flefK/HA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXQH-0006Fe-4S; Wed, 12 Oct 2022 10:49:05 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 00/20] phy: qcom-qmp: further prep fixes and cleanups (set 3)
Date: Wed, 12 Oct 2022 10:48:46 +0200
Message-Id: <20221012084846.24003-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_014919_033105_1A7F3D5D 
X-CRM114-Status: GOOD (  10.14  )
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

Here's the next batch of QMP fixes and cleanups in preparation for
adding support for SC8280XP and its four-lane PCIe PHYs.

Note that these apply on top of the following three series that have
been reviewed and should be ready to be merged when the PHY tree opens:

	https://lore.kernel.org/lkml/20220929092916.23068-1-johan+linaro@kernel.org/
	https://lore.kernel.org/linux-phy/20220927092207.161501-1-dmitry.baryshkov@linaro.org/
	https://lore.kernel.org/lkml/20221012081241.18273-1-johan+linaro@kernel.org/

Note that I did not add stable tags to the initialisation fixes as these
drivers obviously work to some degree also without waiting for the PHY
to become ready during power on. After they have been tested on the
corresponding platforms, any interested party can ask the stable team to
backport them.

Johan


Johan Hovold (20):
  phy: qcom-qmp-pcie: fix sc8180x initialisation
  phy: qcom-qmp-pcie: fix ipq8074-gen3 initialisation
  phy: qcom-qmp-pcie: fix ipq6018 initialisation
  phy: qcom-qmp-pcie: clean up status polling
  phy: qcom-qmp-pcie: increase status polling period
  phy: qcom-qmp-pcie-msm8996: clean up ready and status polling
  phy: qcom-qmp-pcie-msm8996: increase status polling period
  phy: qcom-qmp-combo: clean up status polling
  phy: qcom-qmp-combo: increase status polling period
  phy: qcom-qmp-ufs: drop unused phy-status config
  phy: qcom-qmp-ufs: clean up ready polling
  phy: qcom-qmp-ufs: increase ready polling period
  phy: qcom-qmp-usb: clean up status polling
  phy: qcom-qmp-usb: increase status polling period
  phy: qcom-qmp-combo: drop start and pwrdn-ctrl abstraction
  phy: qcom-qmp-pcie: drop start-ctrl abstraction
  phy: qcom-qmp-pcie: add config sanity checks
  phy: qcom-qmp-pcie-msm8996: drop start and pwrdn-ctrl abstraction
  phy: qcom-qmp-ufs: drop start and pwrdn-ctrl abstraction
  phy: qcom-qmp-usb: drop start and pwrdn-ctrl abstraction

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 43 ++--------
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 36 +++-----
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 30 +++----
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 51 ++---------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 86 ++-----------------
 5 files changed, 46 insertions(+), 200 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
