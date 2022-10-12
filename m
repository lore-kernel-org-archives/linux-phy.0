Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B20F4C4167E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hDD1lpTd15dudRTOhN/jJmh7zr+ZuDY7Qj2qNktUwgg=; b=l+GKga7RfU5sJ5
	XrQm47OoKBa1CHMeqM2D+U5rxna0hxrNl5xHoL79V8oHWxEJvlSxpP8Dn/lsH2V52UGT0nK3Uj1Ba
	MvIdJQPnzWLDJMAM5gmH+jm3HR0C9YJXx4fZKgWJpx6t3BHH9tKG9DUg6+jscM13IfBw78JjSDBwG
	ZGmOjFNs1/FMxhHvzt1WOjv+iNwzCbRuO7SIgbPk+uqBiCXYwpJ20D+PTYf21Luy6MOs8nVHjUei/
	rBa5QLBw8Ptd7KDoLHVQmPhKlTcKXHBMpJkHBKVjLgM+9tClMahVNw4MfqKeEWfSpuIBIYt9k5EA9
	Q/D21f4MBuF4sF0+HbKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuN-007IYt-49; Wed, 12 Oct 2022 08:16:07 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiWuH-007ITR-TM
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:16:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6012DB819B6;
	Wed, 12 Oct 2022 08:15:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13322C433D6;
	Wed, 12 Oct 2022 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665562555;
	bh=Wvipar655653CcKkXzaYMDKLi1DlZcbfAXHSTb3rkMA=;
	h=From:To:Cc:Subject:Date:From;
	b=R9CKHVfAdz8ESb0YVEYS9BdppS+lexLZBMsFRc4ZdJ0mimPxL2FGs2zKP1ncOhKij
	 4NsjRnylW+CA413LJwyzGsmYyuNmTG2Zkpnu5/N2lgVroAQO55+9bWCyynnKfOPW/1
	 zHf6g/fCw6fdh1CiLVUvt+0Crw2X/ED9oeII/r7BvrEskNkUtFEU48rejkmiG6ZpcG
	 oGFF8AglS74WYelsOAkK8BxjohqscflsikxWVH+fC6SR9h416dyIscdqU4UYfM5RO5
	 tGq25csFvXfxwNCKAqVtJHKTZ4pCWXf53abfD2Sdm5K5CAV3nc9315S5Bty+CBJRMw
	 bCA/pt4I/WtVQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiWu2-0004oK-4h; Wed, 12 Oct 2022 10:15:46 +0200
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
Subject: [PATCH v2 00/14] phy: qcom-qmp: further prep cleanups
Date: Wed, 12 Oct 2022 10:12:27 +0200
Message-Id: <20221012081241.18273-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_011602_406486_9A20B904 
X-CRM114-Status: UNSURE (   9.99  )
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

Here's the next batch of QMP cleanups in preparation for adding support
for SC8280XP and its four-lane PCIe PHYs.

Note that these apply on top of the following two series that have been
reviewed and should be ready to be merged when the PHY tree opens:

	https://lore.kernel.org/linux-arm-msm/20220929092916.23068-1-johan+linaro@kernel.org/
	https://lore.kernel.org/all/20220927092207.161501-1-dmitry.baryshkov@linaro.org/

After this I have one more series of related cleanups before posting the
SC8280XP support.

Johan


Changes in v2
 - move the 1 ms PCIe "power-down" delay to after starting the PHY which
   was probably the intention all along. This is done in a separate new
   patch 9/14. (Dmitry)


Johan Hovold (14):
  phy: qcom-qmp: drop regulator error message
  phy: qcom-qmp: drop superfluous comments
  phy: qcom-qmp-combo: drop unused in-layout configuration
  phy: qcom-qmp-pcie: drop redundant ipq8074 power on
  phy: qcom-qmp-pcie-msm8996: drop unused in-layout configuration
  phy: qcom-qmp-ufs: drop unused in-layout configuration
  phy: qcom-qmp-usb: drop unused in-layout configuration
  phy: qcom-qmp-pcie: drop power-down delay config
  phy: qcom-qmp-pcie: replace power-down delay
  phy: qcom-qmp-pcie-msm8996: drop power-down delay config
  phy: qcom-qmp-combo: drop sc8280xp power-down delay
  phy: qcom-qmp-combo: drop power-down delay config
  phy: qcom-qmp-usb: drop sc8280xp power-down delay
  phy: qcom-qmp-usb: drop power-down delay config

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  81 +++----------
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |  55 ++-------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 106 +++---------------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  48 ++------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  89 ++-------------
 5 files changed, 64 insertions(+), 315 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
