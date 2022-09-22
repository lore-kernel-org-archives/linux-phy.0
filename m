Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94D3DC6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 11:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yj70uYR+vdVzRUSZbfJb36/fai1KjlgB5zV0B4gxxJs=; b=wBh49vyKTyVCnQ
	lzHUlbJqhn9z3p7u7eLXnaL00JWjGKsVMMLKQ995M3VrovfLwcP9VVBMSKN/e0rbYGBUYVnoaAYE6
	KxG4wJSD8oYWnzE0zTNReUaUUWQARAo84ansgCJNewhLia7RPhDtefuoZOFlvp4tYCv3w0miW2iZr
	/yrOgtQKDD25lsgYwR2kCn9EiAagaSloZud5Tbc9D0s1o7oiMFxsQXQYST95ECSU+3oqy7hdRpxdO
	zXQRt5SeVMfb2QNRYONIri7luEtX9VueEkzli4cSmU9zYRCsoo3QmKsscXg0GjshgfBXWsdunvUf6
	JnxsNzCOMLirDjWHpgsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obKAd-00F6hN-1I; Thu, 22 Sep 2022 11:15:07 +0000
Received: from szxga08-in.huawei.com ([45.249.212.255])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obKAX-00F6ah-Je
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 11:15:03 +0000
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.54])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4MYCJ829DGz14Rq5;
	Thu, 22 Sep 2022 19:10:48 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 22 Sep
 2022 19:14:56 +0800
From: Yuan Can <yuancan@huawei.com>
To: <agross@kernel.org>, <andersson@kernel.org>,
	<konrad.dybcio@somainline.org>, <kishon@ti.com>, <vkoul@kernel.org>,
	<linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <yuancan@huawei.com>
Subject: [PATCH 0/7] Use dev_err_probe() to simplify code
Date: Thu, 22 Sep 2022 11:12:21 +0000
Message-ID: <20220922111228.36355-1-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_041501_868499_AE79ABE2 
X-CRM114-Status: UNSURE (   3.89  )
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

Yuan Can (7):
  phy: qcom-qmp-combo: Use dev_err_probe() to simplify code
  phy: qcom-qmp-pcie-msm8996: Use dev_err_probe() to simplify code
  phy: qcom-qmp-pcie: Use dev_err_probe() to simplify code
  phy: qcom-qmp-ufs: Use dev_err_probe() to simplify code
  phy: qcom-qmp-usb: Use dev_err_probe() to simplify code
  phy: qcom-qusb2: Use dev_err_probe() to simplify code
  phy: qcom-snps: Use dev_err_probe() to simplify code

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 21 +++++----------
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  |  9 +++----
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  9 +++----
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  9 +++----
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  9 +++----
 drivers/phy/qualcomm/phy-qcom-qusb2.c         | 27 +++++++------------
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 18 +++++--------
 7 files changed, 34 insertions(+), 68 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
