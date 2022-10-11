Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DCC3C43219
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yQK3FKhQwjobeXb/2dKPg/HQEPJaOs/NIZxZwX72YIc=; b=I3we3WkM781xhs
	aJxL53Ie8fcjApRSV1XXOB46CERjuBontODtvz925H7LwAHeDrRO0+YVE4Q9VACmKLJUx0HQ4V9DR
	+C6U3+EPZZZJ4pySZ8Jf3VLfZvl5CRyGM1QFYOAYZFPYxv9KsegW7/wcn0B9Qs4XbPT3NM5lRXyQK
	MV99uNjGzD1/TtU/5DGOJDKEdX1uGTDtNvCT7k9BQk1WCrHuIVHQEDnzI6mE6o1QY6/dAw1K/qNj4
	4K5DDK19cSzPCOlrrRgki3oorcfwsZ2P+1aQ71H1Q2IPolUklxMdFqyYF64doSEwiYlBGXznlhXR7
	4/B3Gm9tt9eWSpUv2J7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiF5z-004JDe-V9; Tue, 11 Oct 2022 13:14:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiF5v-004J9N-Ak
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:14:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 410FE611A7;
	Tue, 11 Oct 2022 13:14:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EA3AC43143;
	Tue, 11 Oct 2022 13:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665494087;
	bh=9HRhRdXIRmiU7I2WSz0xoKSZxg0uzVikdH/YtorN4yM=;
	h=From:To:Cc:Subject:Date:From;
	b=mhw3n7Hnu7eop78YWn7znE/ZTii6xmAZCInojvRQ00txMa77ZiKaEthLXZkRUMouV
	 XsjbiQPdX7iK4P5wKAY801gVVXigBRuyri1qlwTbwyX8JEUqIdLHcLh0McPVLrMoyD
	 xagWd0Vekp5UwjZHplXTCoLFuLl1YIHtZoblKhJkALlOkku3F34dn/tB4RQ805eqpn
	 gu/xGaP4xBAJ2zrSleCy/LNfTxfReU4LVYfVuh1jQ0mmfXwTZJjcNw3ydn9B2d2Uhe
	 YysQF0YW1VHlWEUheYa8vzQbk0yXd+7gurXQWk+S/OO6hkjknXsIe3jtpd7BDeRfya
	 UKKUKDVM6VCgw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiF5i-0000eb-4B; Tue, 11 Oct 2022 15:14:38 +0200
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
Subject: [PATCH 00/13] phy: qcom-qmp: further prep cleanups
Date: Tue, 11 Oct 2022 15:14:03 +0200
Message-Id: <20221011131416.2478-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_061451_460142_B1CE4292 
X-CRM114-Status: UNSURE (   8.71  )
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


Johan Hovold (13):
  phy: qcom-qmp: drop regulator error message
  phy: qcom-qmp: drop superfluous comments
  phy: qcom-qmp-combo: drop unused in-layout configuration
  phy: qcom-qmp-pcie: drop redundant ipq8074 power on
  phy: qcom-qmp-pcie-msm8996: drop unused in-layout configuration
  phy: qcom-qmp-ufs: drop unused in-layout configuration
  phy: qcom-qmp-usb: drop unused in-layout configuration
  phy: qcom-qmp-pcie: drop power-down delay config
  phy: qcom-qmp-pcie-msm8996: drop power-down delay config
  phy: qcom-qmp-combo: drop sc8280xp power-down delay
  phy: qcom-qmp-combo: drop power-down delay config
  phy: qcom-qmp-usb: drop sc8280xp power-down delay
  phy: qcom-qmp-usb: drop power-down delay config

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 81 ++++-------------
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 55 ++----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 75 +++-------------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 48 +++-------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 89 +++----------------
 5 files changed, 59 insertions(+), 289 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
