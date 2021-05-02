Return-Path: <SRS0=h+Aw=J5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27026C433ED
	for <linux-phy@archiver.kernel.org>; Sun,  2 May 2021 14:05:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C3F5061462
	for <linux-phy@archiver.kernel.org>; Sun,  2 May 2021 14:05:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C3F5061462
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0o2BkTayM5hI7sDaUSBiSPTJfr2etJ8zjJD1egvzdew=; b=EGKNQgYqFs6oPHlGrzWIFWaUk
	D2d/P/THJbEuKyd+DKr1iVVm4Y7a+5VynVrKQHRor2F+dBUCpm04i+LbInylTrBG5n/sivjKfjkuh
	wo4QMHdWaqRK1GdvkHs2CACzV35nqjUETc01HFFzaBP2TaPCPitp3pnfGpkYDYs1MMa6PFOW1pMLc
	OOHEGnVguUHYjK9DP7wgPkhc3mddcVuHyM9Whqk1VrRYXa1UpJlekZmQxfMG//B2q/4d9hMgVQ82w
	jeb921Fpypfv+DiIk+H9cS3N/0dPzewtsQg9Kr07csYEfbU5yj38rVLT/4d7qVOLYJKRJpKwBEQHW
	OkCAQMb7w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldCiu-00Bszn-Q5; Sun, 02 May 2021 14:05:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldCif-00BswR-Kz
 for linux-phy@desiato.infradead.org; Sun, 02 May 2021 14:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=UXcw+8uvwwDQbbmp4s0aBQ7W9CCY28cu+33GSnbABXU=; b=Mh3jihX+lXJBlf6XYiZPHeNxmr
 uRQjVUhtT+VsoKnuRRairc4MRnrvTfScvCiwe4nPo+1xYVupE8AwDivqorrjH61EtnpBx8KkBP6Jc
 tWtd74Pal9IsXQjQ8Tf8k7HTcv/fokTVV2HIcmQ2kd7YPwlWY+2fqg+roIegJGckYF7WvrePuMJdu
 mLiU/IuQyTf+vDEzoM82kaSUxgMLNzzxWcQguAWahtW/U1PeC4BJvx0IUilBW7IzPOEo9II7lF5Gp
 RDUzyfb3DJTVmhTyK9v/fI2QaLOfjEMy3nckF802lVMcpClZhLqx6d8exY7f6d6N7wefrjI4xvhTE
 ku47Z8+Q==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldCid-002YTd-3u
 for linux-phy@lists.infradead.org; Sun, 02 May 2021 14:05:12 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E4ADF613D8;
 Sun,  2 May 2021 14:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619964310;
 bh=s++pOuEuj5uVGNpgdbWGjOD4K3Kud/91J//OAfiA/aw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QrBZK327T7bTeu3CRgojME+D3kFHTItuTDfbIFcNk2w8cuP6KL31AknQmNgx99Sac
 2UhNhA7Vr1aSnaCebTbw9Y4CuqjzRaCpSH3vevuwtynrioXgJ6uxVo//5L674lDhs5
 z8CRWHWmh/FML/Wp2bD/HWQL+ys0LlwnXeqOzhz9HWae7g+Fx/PzAP8XBXYRq2/49K
 PihmA3Y2JUptveK368+bh8w48TNbragt4A/P50Xs9M/mQgsG9M933/iSlQ8l3h5orD
 QjD94DSGbHuwNAj4Kfg+KV0ZX6gIPrcJoRMfdacKDlstt6HgQRgc1kDJ5T/zR8MHQG
 9g7zt9M8YoXWw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Yingliang <yangyingliang@huawei.com>, Hulk Robot <hulkci@huawei.com>,
 Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>, linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 29/34] phy: phy-twl4030-usb: Fix possible
 use-after-free in twl4030_usb_remove()
Date: Sun,  2 May 2021 10:04:29 -0400
Message-Id: <20210502140434.2719553-29-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210502140434.2719553-1-sashal@kernel.org>
References: <20210502140434.2719553-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210502_070511_199577_04328201 
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
index 9887f908f540..812e5409d359 100644
--- a/drivers/phy/ti/phy-twl4030-usb.c
+++ b/drivers/phy/ti/phy-twl4030-usb.c
@@ -779,7 +779,7 @@ static int twl4030_usb_remove(struct platform_device *pdev)
 
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
