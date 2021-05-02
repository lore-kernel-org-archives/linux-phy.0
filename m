Return-Path: <SRS0=h+Aw=J5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8144FC43461
	for <linux-phy@archiver.kernel.org>; Sun,  2 May 2021 14:06:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4D9EE611AE
	for <linux-phy@archiver.kernel.org>; Sun,  2 May 2021 14:06:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4D9EE611AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bEpFOK0bXivPlqjgqse66cz+oWywKpj77coAK9HiEyE=; b=Qbe5PsDP4g0KN/7HHU88U1NHU
	lB3hsf3kyq1Wwg1n6wMFTFIq3/mqxhQYYTsZrmOpPWeKFC9GHsUzCx8sxwSyErorqKcK1hcmvksjI
	8icoSEWL8+A78gaB7lHQQLzvGmkIALc+e6aAJ7uZTHiGk8bdMLZavnhQ+AckjM6NLs2qDYksZ2Sid
	TrS1+NZzJeD7yMPZd01pC0b7Mus/a1fxvMAu1smUMhMBYKvpXerSj7e5RrnkOKeu8isweT/A0iAwg
	gTIbFyjsV91D6YeGLQISxvFMunVd+lutdAcutMMaa0tPPLSqPtFmBjWXn8zZpZp72wqqUk7sZrcFv
	fkb22Qv/g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldCk1-00BtJK-8o; Sun, 02 May 2021 14:06:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldCjA-00Bt4l-PO
 for linux-phy@desiato.infradead.org; Sun, 02 May 2021 14:05:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=xc9hzh7AGfrBz+kmtl79OrDyNzgkrG8NSjBuCb44ti4=; b=jN6QPQUrTa6dca97QdTIdG937t
 2MBwNTxtpVrB9c/513lm4gHmWOg9ipVY8Y9zKw+y0CKEYstgL++R6g9aOoca4CuSi034Ul6D1amwU
 NohFDFDZnU2hfkA3ZsTvil7nVXAWoU4jmqxBinwMSwaXNJ+vgml189ElNIoysuDI1X/FB+4qvKWzg
 o4DcE7fzVz6TDSh4llbTfc5wiKWc0y622boeD8Z/R37gTlmtbKsJYdwh/fLTuG52vIZ2/ojCZNrgt
 ttzY6QWKXvUM1Eaeelkj1bJM9MJhLq5dPHfswpuv4gBLOYznwma9c4BnmHKqfY7aUHo/D11peyG/9
 qJ7hicTQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldCj8-002YWS-8C
 for linux-phy@lists.infradead.org; Sun, 02 May 2021 14:05:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 26500613CD;
 Sun,  2 May 2021 14:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619964341;
 bh=QAT7/DpyHeJMZMdN80nWXT2iJv4L2bS1nhzR0FOK+k8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mKEVYCmjwvuDIjYCtqqO6OBnGc+/7c0TQq3PCaHhjjGSKr9ws6JTHTmAPDDE6rdBU
 7KjgDxYY2A0cNWtRHjBTIIoiirS1usVJ3VmQx6maBl5YhxDgqIiNMwPQpsQXMYY6R9
 XnsQ2tewYJhauR/LrVE6XgqgtiHG31FnqerLlPtowpfULd4bubO54NfO3MXlLAZ4Pr
 7AwUwg9ebVNncLWlzu4oncdTwhGXdZ7YZJlSiXZOGqdMMlQbQLDwaOms9y5ipN7ubJ
 fmz7VsQZmRKQA/UuFlYx0JKpAOOt3IYYyABad9LSqHzbiMJC3+smzO1Sfh6ly2KU7i
 fhQt9rsHfez7w==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Yingliang <yangyingliang@huawei.com>, Hulk Robot <hulkci@huawei.com>,
 Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>, linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 4.19 19/21] phy: phy-twl4030-usb: Fix possible
 use-after-free in twl4030_usb_remove()
Date: Sun,  2 May 2021 10:05:15 -0400
Message-Id: <20210502140517.2719912-19-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210502140517.2719912-1-sashal@kernel.org>
References: <20210502140517.2719912-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210502_070542_330446_52B96A84 
X-CRM114-Status: GOOD (  11.41  )
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

From: Yang Yingliang <yangyingliang@huawei.com>

[ Upstream commit e1723d8b87b73ab363256e7ca3af3ddb75855680 ]

This driver's remove path calls cancel_delayed_work(). However, that
function does not wait until the work function finishes. This means
that the callback function may still be running after the driver's
remove function has finished, which would result in a use-after-free.

Fix by calling cancel_delayed_work_sync(), which ensures that
the work is properly cancelled, no longer running, and unable
to re-schedule itself.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
Link: https://lore.kernel.org/r/20210407092716.3270248-1-yangyingliang@huawei.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/ti/phy-twl4030-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-twl4030-usb.c b/drivers/phy/ti/phy-twl4030-usb.c
index c267afb68f07..ea7564392108 100644
--- a/drivers/phy/ti/phy-twl4030-usb.c
+++ b/drivers/phy/ti/phy-twl4030-usb.c
@@ -801,7 +801,7 @@ static int twl4030_usb_remove(struct platform_device *pdev)
 
 	usb_remove_phy(&twl->phy);
 	pm_runtime_get_sync(twl->dev);
-	cancel_delayed_work(&twl->id_workaround_work);
+	cancel_delayed_work_sync(&twl->id_workaround_work);
 	device_remove_file(twl->dev, &dev_attr_vbus);
 
 	/* set transceiver mode to power on defaults */
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
