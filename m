Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9E2EECAAD5
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 01:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qaG5P9fsdyZZTCEPFKwqzMk5g44g1JWAg9J59HENVbY=; b=wz8ytH+bNT4JYw
	74wFmKrwifbZFxsGyYHHUWTKttf8pkaDMSAxkPW0WEMHkFKa8pyTZoxiLgLUFdtzWM/dCe31T6L9E
	20qqNxzD66CYOpwZN2/Pogi4++Sds0e3QEYEFbWjGvlgYNP8gHv+sObB+mH5fzk1eazatvcgnhl8D
	Q1ER0mq7Rr2o/MG0Td+nSryP2LdgucDQqUXHb4vPXzwBquK1nwzmRs9Ki9FrgpQh4fIhnNh8hPfCu
	jWMJZajOUBfalGk4rOTFRWp1kpreUYDQS+mD7IpX4JZKF0IRr5UbtOTliH/8BSrjbrhACzDVySH2y
	PluXTShAW+QFqJVQJHSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWSlL-00Ajez-Rq; Fri, 09 Sep 2022 01:24:55 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWSlJ-00AjQq-Ia
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 01:24:55 +0000
Received: from dggemv711-chm.china.huawei.com (unknown [172.30.72.54])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4MNyph6MTyzZcFc;
	Fri,  9 Sep 2022 09:20:12 +0800 (CST)
Received: from kwepemm600010.china.huawei.com (7.193.23.86) by
 dggemv711-chm.china.huawei.com (10.1.198.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 9 Sep 2022 09:24:44 +0800
Received: from huawei.com (10.175.127.227) by kwepemm600010.china.huawei.com
 (7.193.23.86) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Fri, 9 Sep
 2022 09:24:43 +0800
From: Sun Ke <sunke32@huawei.com>
To: <vincent.sunplus@gmail.com>, <kishon@ti.com>, <vkoul@kernel.org>,
	<p.zabel@pengutronix.de>
CC: <linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kernel-janitors@vger.kernel.org>, <sunke32@huawei.com>
Subject: [PATCH 0/2] two fixes for phy usb
Date: Fri, 9 Sep 2022 09:35:44 +0800
Message-ID: <20220909013546.2259545-1-sunke32@huawei.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemm600010.china.huawei.com (7.193.23.86)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_182453_820159_7E9F8061 
X-CRM114-Status: UNSURE (   3.92  )
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

two fixes for phy usb 

Sun Ke (2):
  phy: usb: Fix potential NULL dereference in sp_usb_phy_probe()
  phy: usb: Fix return value check in sp_usb_phy_probe()

 drivers/phy/sunplus/phy-sunplus-usb2.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
