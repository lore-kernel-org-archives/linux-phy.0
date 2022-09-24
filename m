Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7234FC07E9D
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 07:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ifVZ0oSGD7SVC/TW1pr76+OBQFiMj5B8ByPnHbeUsnE=; b=uDKTP4FiDtoo1I
	1WpHR3g5svOAXvH2A38llbdT2yoC1sH1HzU9Q3mt9A+UFynj2DeN06qZ2d6JZXYjtIUZKq5rIWFL1
	g//40GMV2v70syB8yhp6NeEJZGY1r4ILq1R5ixO5CwrzN43ahEv+bVGElCVVpy4whHnB486uPh3Qx
	ZTL61pJjoUTt/dxY2ZaUkRHThSYY490BlXdTASXGBgvjBeCil5IHqKJDRUp5AYJJw72IdAs0UHa2C
	SSWVMTJUK7lE4TKstK4sfNleVh50A2dRU4IzfRghPNX5tcYYv2Njb+zluqYZO+S9Z/B1cnExKfV6e
	7JL8uo4YQYQXmVS7RzmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzEV-006XuN-S3; Sat, 24 Sep 2022 07:05:51 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzEP-006Xrh-PD
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 07:05:49 +0000
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4MZKhw3SxQzpT0j;
	Sat, 24 Sep 2022 15:02:40 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Sat, 24 Sep
 2022 15:05:31 +0800
From: Yuan Can <yuancan@huawei.com>
To: <agross@kernel.org>, <andersson@kernel.org>,
	<konrad.dybcio@somainline.org>, <kishon@ti.com>, <vkoul@kernel.org>,
	<linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <yuancan@huawei.com>
Subject: [PATCH RESEND 0/4] phy: Use dev_err_probe() to simplify code
Date: Sat, 24 Sep 2022 07:02:56 +0000
Message-ID: <20220924070300.25080-1-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_000546_031531_9A9B0FAF 
X-CRM114-Status: UNSURE (   4.16  )
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

This series simplify the error handling in probe function by
switching from dev_err() to dev_err_probe().

Yuan Can (4):
  phy: qcom-qmp-combo: Use dev_err_probe() to simplify code
  phy: qcom-qmp-pcie-msm8996: Use dev_err_probe() to simplify code
  phy: qcom-qmp-ufs: Use dev_err_probe() to simplify code
  phy: qcom-qmp-usb: Use dev_err_probe() to simplify code

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 21 +++++++------------
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |  9 +++-----
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  9 +++-----
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  9 +++-----
 4 files changed, 16 insertions(+), 32 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
