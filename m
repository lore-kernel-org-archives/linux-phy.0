Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55631C6FA91
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 07:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d30x0XU32OoDXauHwWW8cgeEz/6Zz63ocqsJgvGRxg0=; b=Zi8xh64wpBcUGx
	kc7+trrK/S3GOvS8cFIFYF9N7UsKx9D0eKar3w29aJ08qMa/33KViLeeGqie1XqRE5IOU3yGSTAyM
	FFKaKPVHVF1WI5IxNAbV34xIvSFzi5UM+w/EZeodgRT7h3OMmVT+LWVDZsy4uo2mHEuvDVJcPV2b7
	I6d3BzU6mfe7S/PJbzyG7VT3ZY95QZiT81NodfJVOz9sJIpss9Gi5EuHuJQa4ueVFF4LVs2Wfzz7m
	fs6vrMoo8XTLrP70+4JFTLNhpjyPPYiMdLn+Ka+0yt/QeMcsK04Sms3Xgg+8pUrfLiC28TR99KPLa
	cqUZGqkShfwLoE24X99g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqW-001Qcr-J9; Tue, 20 Sep 2022 07:39:08 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXqQ-001QU6-Mb
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 07:39:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 64AC5B82563;
	Tue, 20 Sep 2022 07:39:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23281C43141;
	Tue, 20 Sep 2022 07:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663659539;
	bh=eMzRMOuITtXlZDAcCmKMPvOjEHytU8mCI4T2I/LUy8Y=;
	h=From:To:Cc:Subject:Date:From;
	b=l/lrpngFflAzqTa/76oLoQ0FmopYCDJfwjEiNJY0kakl8JbMMM5a/AU1TptxXb3w9
	 rAdgGARNHfi5tPVbOUL2TGeCjTf4iSuMHfCDk/t6mHUZ+YsRSZMPJw+yH5GqWlYRWt
	 SZQf0+XZCCqKjIZvCMsb6Khn/0EvPxLzfL1ODpS5gp5DwKm5Uj9XoqqCuofKrKh+s7
	 44NKMui20J5gRQIlBxMjmTDVQhJRcI/7Z65qHl7uZUXQWG8eQuiIlUhNBPeS/DToIZ
	 NYBjs2uVvPCKU1Ksyp21e8NGoZZYCGISdK1F0wk+iazqzLnsmbhcAI6p+r4Lsm0wnI
	 9dN2bkv7Xp/Ow==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oaXqO-0005Qc-Hg; Tue, 20 Sep 2022 09:39:01 +0200
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
Subject: [PATCH 00/17] phy: qcom-qmp: config and misc clean ups
Date: Tue, 20 Sep 2022 09:38:09 +0200
Message-Id: <20220920073826.20811-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_003902_917744_4035AD4B 
X-CRM114-Status: UNSURE (   7.56  )
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

Here's the next and hopefully last set of QMP driver cleanups for a
while.

These patches drops further configuration parameters that are unused or
redundant since the QMP driver split.

This notably includes consolidating the lane configuration, which for
legacy reasons was inconsistent.

Johan


Johan Hovold (17):
  phy: qcom-qmp-pcie: drop unused type from config
  phy: qcom-qmp-pcie-msm8996: drop unused type from config
  phy: qcom-qmp-ufs: drop unused type from config
  phy: qcom-qmp-usb: drop unused type from config
  phy: qcom-qmp-pcie: drop init and exit wrappers
  phy: qcom-qmp-usb: drop init and exit wrappers
  phy: qcom-qmp: drop unused forward declarations
  phy: qcom-qmp-pcie-msm8996: drop unused kernel doc
  phy: qcom-qmp-pcie: drop unused mode field
  phy: qcom-qmp-pcie: drop unused config field
  phy: qcom-qmp: drop unused index field
  phy: qcom-qmp-pcie: consolidate lane config
  phy: qcom-qmp-pcie-msm8996: rename nlanes config
  phy: qcom-qmp-combo: consolidate lane config
  phy: qcom-qmp-ufs: consolidate lane config
  phy: qcom-qmp-usb: consolidate lane config
  phy: qcom-qmp-combo: drop redundant DP config flag

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 104 +++++-----------
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |  14 +--
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  90 ++++----------
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  44 ++-----
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 112 ++++--------------
 5 files changed, 89 insertions(+), 275 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
