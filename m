Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB3CAC36010
	for <linux-phy@archiver.kernel.org>; Tue,  1 Apr 2025 11:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iI4CiSDRH8gRoAceDYpvR/POs2jpP3fYc2CcqxlLqyM=; b=pMD
	jVVa77+gSbn4JT0zntFNDOpAtgSivAK3oj2gDnsP5Z2ittk6d8CeNYUz4zKBhKBOdQtKrFVqxcryO
	efarxCq0vJiMG4FAPAnlylp8psGAkZEOKl8JRyH4xRKYHMYI2yFBNkQk+sudui0B2Xq2aoFJT7nW8
	Q0h0ePeyFh4mKfVMHTFudv5UWFmdVutptd/K9k4eIRKyj68Defl+azjfL8rgUyXsVtMC0pvjyo54e
	198rh4nFnK0WAKha6ufJ5z8YKbRiEH7+8lSgRbberTHFwf+meEDWXv9FaCZEcHJ8JImVVxv3QbIqr
	06OwObek19cuRGsmgtQQ4AuWio259nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZqH-00000002mfo-1cRJ;
	Tue, 01 Apr 2025 11:31:41 +0000
Received: from mxhk.zte.com.cn ([63.216.63.35])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZqF-00000002met-14wO
	for linux-phy@lists.infradead.org;
	Tue, 01 Apr 2025 11:31:40 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4ZRm6c2Mymz5B1Jb;
	Tue,  1 Apr 2025 19:31:36 +0800 (CST)
Received: from xaxapp02.zte.com.cn ([10.88.97.241])
	by mse-fl2.zte.com.cn with SMTP id 531BVV0t089841;
	Tue, 1 Apr 2025 19:31:31 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp04[null])
	by mapi (Zmail) with MAPI id mid32;
	Tue, 1 Apr 2025 19:31:34 +0800 (CST)
Date: Tue, 1 Apr 2025 19:31:34 +0800 (CST)
X-Zmail-TransId: 2afb67ebce96ffffffffe45-8edc6
X-Mailer: Zmail v1.0
Message-ID: <20250401193134281Nbc40spYmxjVmftwF0KTZ@zte.com.cn>
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <miquel.raynal@bootlin.com>, <jckuo@nvidia.com>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <thierry.reding@gmail.com>,
        <jonathanh@nvidia.com>, <linux-tegra@vger.kernel.org>,
        <shao.mingyin@zte.com.cn>, <yang.yang29@zte.com.cn>,
        <xu.xin16@zte.com.cn>, <ye.xingchen@zte.com.cn>,
        <xie.ludan@zte.com.cn>
Subject: =?UTF-8?B?W1BBVENIIDAvMl0gVXNlIGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUgaW4gcGh5?=
X-MAIL: mse-fl2.zte.com.cn 531BVV0t089841
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 67EBCE98.002/4ZRm6c2Mymz5B1Jb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_043139_445703_0E925F8A 
X-CRM114-Status: UNSURE (   5.23  )
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

From: Xie Ludan <xie.ludan@zte.com.cn>

Introduce devm_platform_ioremap_resource_byname() to simplify resource
retrieval and mapping.This new function consolidates
platform_get_resource_byname() and devm_ioremap_resource() into
a single call, improving code readability and reducing API call overhead.

Xie Ludan (2):
  phy: marvell: a3700-comphy: Use devm_platform_ioremap_resource_byname
  phy: tegra: xusb: Use devm_platform_ioremap_resource_byname

 drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 16 +++++-----------
 drivers/phy/tegra/xusb-tegra186.c            |  4 +---
 2 files changed, 6 insertions(+), 14 deletions(-)

-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
