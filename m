Return-Path: <SRS0=h+Aw=J5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A702AC43461
	for <linux-phy@archiver.kernel.org>; Sun,  2 May 2021 14:07:02 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 700C56157F
	for <linux-phy@archiver.kernel.org>; Sun,  2 May 2021 14:07:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 700C56157F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YJv2n5glLpXAm/gfUp/HNfZM/xSRcsvKaVO1MVTfdT8=; b=BolOYAZBh43VRZ8vje2xf9MK6
	dpGkuK+k+zkY1n3yy7hzQH2AwOc8g5BdgmH6VTWInJZeCmSs7py0c6gEU7z9cYIetui0lu50inRfW
	9pUWzCIDqRKIcp+bXIysYE0vZ0TWvYSeTMd0yu/g1auZFbUllw2vUbhD/O6ntFKjlFRMkgEsZ6TC5
	6wZtJmQo+s7ud9RW82L8cf1MP8BaSnUYy4cwCbuFaOSdkZWw0g28XaIKRjBNofIey4Ml+0NjnkI6l
	074+PEO4/d6XgqUqMyoZU8bDM2/soKi9R4lFxe2WsVuUatrRD3gq/EhjUzBzLgj+crfAKT3TWrbUn
	S4gJgIGlQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldCkO-00BtS2-UC; Sun, 02 May 2021 14:07:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldCjo-00BtFQ-Ad
 for linux-phy@desiato.infradead.org; Sun, 02 May 2021 14:06:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=zOUqH+1nzQM1doOKRtreNxw/jnDp6cGaE831zuAbWEw=; b=Mj/8+MRxGkzbfJ9yKS/hoeH675
 cQ8BMGuWsLfpuV5sjEJcQe29Fwln3ppu6xmzRD8XU6FgZPtwO4Y8yJ6Y50v7dqTV7pXlu6Yl5dsl4
 9IZOcTysqKZc+vRFAIsj6fw+f0cv3ZY/2t1En7OkHRBny2v8VpbxsQEVoinpuFtqnFYKYvfTPlJq+
 4jJgqYUJ2Y7tzPgwq3Wd4NEV8QsSlIhvQF704g3eTFdyxFcFWAA/JIDnND49HAIiqvW3P49IilAIP
 wKpiUjMAz+mLIEzlscd6fpLPY8ADCg7hLgU1pQYVrMcrcn1kMJbKYXC7WnL8e/yXWFFW3rEIlsEgm
 RR2KrjqA==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldCjl-002YdL-N9
 for linux-phy@lists.infradead.org; Sun, 02 May 2021 14:06:23 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 17993613E1;
 Sun,  2 May 2021 14:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619964380;
 bh=XXiP8hIl8j9SfARZKtshWyoRYEFRCqGySqGCWLow8yU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=h2p83LnFoBHJanBcS96OC2EirFnXccHj1U9JYfyaQU+Gw7Xm/003QfpbZlbcH3/DQ
 yYS4l5vD1xWNIIbHeulVLe+lfndSGmLwXshQTdqCq5RkkKnQBcNnW6bjxLRKCJhK2Y
 nfyOB744daGJVIQy5w25Skrdbb5nzV7BZm0aI+ydybZShTN7nMtBR3Dzyjm2eWucHk
 un4QQFHw6YaCFvEpek9hMXu/nRqNAjZdLPLC1hty1v1+LVBdg/H5POA3ptFfh1VVnI
 taA14cpvICMuLELgSEAuBC97ZujdrSdaazqMkSqXO6d/085Z6VZhaFFpscrIUEcSHf
 /sRfIiC4oygLg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Yingliang <yangyingliang@huawei.com>, Hulk Robot <hulkci@huawei.com>,
 Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>, linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 4.9 11/12] phy: phy-twl4030-usb: Fix possible
 use-after-free in twl4030_usb_remove()
Date: Sun,  2 May 2021 10:06:05 -0400
Message-Id: <20210502140606.2720323-11-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210502140606.2720323-1-sashal@kernel.org>
References: <20210502140606.2720323-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210502_070621_793591_8B6DFA06 
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
 drivers/phy/phy-twl4030-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-twl4030-usb.c b/drivers/phy/phy-twl4030-usb.c
index ddb530ee2255..9d57695e1f21 100644
--- a/drivers/phy/phy-twl4030-usb.c
+++ b/drivers/phy/phy-twl4030-usb.c
@@ -798,7 +798,7 @@ static int twl4030_usb_remove(struct platform_device *pdev)
 
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
