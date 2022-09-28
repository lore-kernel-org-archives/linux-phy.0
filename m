Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA2A3C6FA90
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 15:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X3EJm/UZqI9Bw3j8tjxC0ZzVVp3gwJMnw0NVWqApfVw=; b=dbIsSjdFKRcP2G
	GFzZDYX4jZG7bypb/KE5O/SFzn/eyu6LLotsIV7iFeKKeapucwfvlLSCFHFYSt0NO4yrKOCvoJspm
	Yhv9FTCtu64FvnlWma6blUFuWRgM3iF+Daqtq8tcAttdinIuD+F3sSFnj12BU1VdXJu8HZtlKloh2
	tyz/1Ci4m59aLrEM/pPkt5XABp2iqoYf0Lf758ZixVqJVzgWTiD1FDe43fjPe6B8Alg/srntjbY/J
	mSoCr8pGc0qFac7GSuZ8SGXK2qGx30/8bBNq4HlRYnLegH6wNh/8s+h52sgdHydB6p0Bl8YkpvUuH
	j8EG5B3J9I/VlHh+jIfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYzL-00GtxE-83; Wed, 28 Sep 2022 15:28:43 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYzG-00GtsT-Do
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 15:28:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1FEB3B820F7;
	Wed, 28 Sep 2022 15:28:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAE8DC433B5;
	Wed, 28 Sep 2022 15:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664378915;
	bh=mpt7Wt62/XLXSTtuLqLCkWtnDTklKqxsrGIGesPgzSY=;
	h=From:To:Cc:Subject:Date:From;
	b=gEyEUeBoQ+YktZsRsh1aS8RD+DjXy0gp5UoLVdGiwHhIYvLtTKEUuB4eddwBr+KK8
	 O20Pqe1REMdRTYwZirSOParDIJvXUc+537WqWMOYjfyR14WY/Ey1MJY7gdGEYUMlWh
	 JhmGwWF2/IpsII2OQTUP1mCNANT3QeIniMEWd3MKZHitVjfhddaayaYaVflOnn/k52
	 ancsg2A70qx9lfwUvFmPOSnBgBd+Zs4QkvhLw1FmqFbSEKDM4zn1GW+ARQ9AmnOOMU
	 LEqXHFxY3toOfZLcoayM+0hoVNX7kS5/w3Fqmu4tzj8xuYoH9PFB+RSbDgBOg7fm2b
	 4jguI9lfBAqdA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1odYzJ-0007zY-EF; Wed, 28 Sep 2022 17:28:42 +0200
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
Subject: [PATCH 00/13] phy: qcom-qmp: more fixes and cleanups
Date: Wed, 28 Sep 2022 17:28:09 +0200
Message-Id: <20220928152822.30687-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_082838_665235_C5670863 
X-CRM114-Status: UNSURE (   7.33  )
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

Here's the next batch of QMP driver fixes and cleanups.

Johan


Johan Hovold (13):
  phy: qcom-qmp: fix obsolete lane comments
  phy: qcom-qmp-combo: drop unused UFS reset
  phy: qcom-qmp-pcie: drop unused common-block registers
  phy: qcom-qmp-pcie: unify ipq registers
  phy: qcom-qmp-pcie: unify sdm845 registers
  phy: qcom-qmp-pcie: drop bogus register update
  phy: qcom-qmp-pcie: clean up power-down handling
  phy: qcom-qmp-pcie: move power-down update
  phy: qcom-qmp-pcie-msm8996: clean up power-down handling
  phy: qcom-qmp-combo: clean up power-down handling
  phy: qcom-qmp-ufs: clean up power-down handling
  phy: qcom-qmp-usb: clean up power-down handling
  phy: qcom-qmp-pcie: clean up clock lists

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 30 ++-------
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 12 +---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 67 +++++--------------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 24 +++----
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 22 ++----
 5 files changed, 40 insertions(+), 115 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
