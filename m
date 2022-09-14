Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CE0DC6FA8B
	for <linux-phy@archiver.kernel.org>; Wed, 14 Sep 2022 16:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e6123jw324SHMOZ4ujBHqdxtQibZ1enO4F1rrN9ca2o=; b=S1B+Wtn6WCRJc3
	EqrKeoalCgxzYecZSk1gmSG2Wppwm/5i9gh3xbTmbuYkMEXHR1YQgwcijRH7rLioHrgDvPDgYa+Aj
	Qec+8MRareKVhJH9EgQ0Xt9rsXpGcTr9+sSKnyHHH/URKlkx4VOamNn1xnI7D6y/IdzkDyyTEb/3R
	52gUEROoNVMxoCg8rLgQHdYFa+3+ROqtCYffSQch3knEaIyiFxQ0vjGxhcnBlwPFw0kcCGtHUXog4
	VMM18zQFt87OrEp1Cpg2Amqnfjxou/T1B8F85cBma6TTcARihlSROEEkR27/cXIlBXCZ+iomgdqX+
	cbMVj3fVZZLRufubs4ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVDs-0054bs-Kt; Wed, 14 Sep 2022 16:26:48 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVDm-0054Sy-F5
	for linux-phy@lists.infradead.org; Wed, 14 Sep 2022 16:26:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7578BB816DA;
	Wed, 14 Sep 2022 16:26:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19A3CC433D7;
	Wed, 14 Sep 2022 16:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663172798;
	bh=vDveHZQ9xciJivnArL5NqFVvDcH1WaihkYv/yDHtspw=;
	h=From:To:Cc:Subject:Date:From;
	b=cxJtKKgZ7Tq91I9mGFjtvk0iCBB10AXUcdPEQ564g6z+g09SoIszh2AffDjroIjRh
	 qoFk48Bl5Ie7l4i7roAASl7s92OAyZFgrhD/YY84YYKF40dN2/ai4f0ESkuUjGlVNa
	 gjJXHDJn3KeRzPqwgg1J7Vu7S8Y7Spy0nHGgN6MOLUia7FmqNWROCtZhCSmgZKKfq+
	 yE5m2mypgTFf5jm2wjD7RCPa4iJNjRycTxj0sANickGJLFBlIlE/t13vaYP/ASxsop
	 Gtm0b9tYe0CYkjLc3ErqWCifL2kccgOSvP6YkdyyxHOoBYzuk5uPSXXmu6ZJpi7I7+
	 lJzvLA+o9FONQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oYVDj-0001eX-Cs; Wed, 14 Sep 2022 18:26:39 +0200
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
Subject: [PATCH 00/11] phy: qcom-qmp: more fixes and cleanups
Date: Wed, 14 Sep 2022 18:25:34 +0200
Message-Id: <20220914162545.6289-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_092642_730973_40399D5E 
X-CRM114-Status: UNSURE (   9.57  )
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

Johan


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

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 53 +++++++----------
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 33 +++--------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 59 ++++++++-----------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 53 ++++++-----------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 55 +++++++----------
 5 files changed, 92 insertions(+), 161 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
