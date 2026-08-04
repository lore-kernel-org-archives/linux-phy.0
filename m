Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C225C5518F
	for <linux-phy@archiver.kernel.org>; Tue,  4 Aug 2026 08:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fYnuFFKOuizI8gEHmgRGb/wibjY0gcS6xT3lvU0uzew=; b=3cl+q7knbsbBb4
	q3vNhAqDb/nXLBYFQNHEvBUIonQs+bOPj6WUlQp2wlFli3/SWRzkiGMZNzMQHy3wVa9zsxqrZ+djS
	xMxH7Y81E1gJebQFZ/t6AP2vmCD3iegEd1rFbsjcOwj0G+TseKNiX2MWQr1mqmGiKAJrNqn32z98R
	KD/+M/RRdYZUin55eKUArRC4NG9u0yYhp4vwpkVyNhiouIzvIE1OO5vlMV/GUXBoAaM0HIgcOvmBU
	SvipyDQb2PLeB2KIPH7jgbVHWyLrRBzzvako8PF7OuweMPDkMfhC5aaRtuQYAYYsnSA1XuTH3K7Nh
	uQ4o/pd++kPjokzBhDRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrA5u-00000001Hgi-2wCV;
	Tue, 04 Aug 2026 08:01:50 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrA5r-00000001HgG-3CxB
	for linux-phy@lists.infradead.org;
	Tue, 04 Aug 2026 08:01:49 +0000
X-UUID: b97856108fda11f1aa26b74ffac11d73-20260804
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:06757633-1992-4a87-b94c-4273af87387e,IP:0,U
	RL:0,TC:0,Content:0,EDM:25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:e7bac3a,CLOUDID:9857d5b3b115e6258089169eafab1f3b,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102|850|865|898,TC:nil,Content:0|15|50,E
	DM:5,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:
	0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: b97856108fda11f1aa26b74ffac11d73-20260804
X-User: xiaopei01@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 743126441; Tue, 04 Aug 2026 16:01:40 +0800
From: Pei Xiao <xiaopei01@kylinos.cn>
To: yoshihiro.shimoda.uh@renesas.com,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Pei Xiao <xiaopei01@kylinos.cn>
Subject: [PATCH] phy: renesas: rcar-gen3-usb2: Fix use-after-free in rcar_gen3_phy_usb2_remove due to race condition
Date: Tue,  4 Aug 2026 16:01:36 +0800
Message-Id: <d265021fb7fe432e32eedbe9e075fb041c15cbe6.1785830417.git.xiaopei01@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_010148_113400_858F06E8 
X-CRM114-Status: GOOD (  11.88  )
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

In rcar_gen3_phy_usb2_probe, &channel->work is bound with
rcar_gen3_phy_usb2_work. rcar_gen3_phy_usb2_irq can schedule this work
on system_wq via rcar_gen3_device_recognition(), and the role sysfs
store can also schedule it via rcar_gen3_init_for_host() /
rcar_gen3_init_for_peri().

If we remove the device, rcar_gen3_phy_usb2_remove makes cleanup and
the memory allocated for channel with devm_kzalloc() is released by
the devm cleanup after the remove callback returns, while the work
mentioned above may still be pending or running. The sequence of
operations that may lead to a UAF bug is as follows:

CPU0                                      CPU1

                                          | rcar_gen3_phy_usb2_irq
                                          | rcar_gen3_device_recognition
                                          | rcar_gen3_init_for_host
                                          | schedule_work(&ch->work)
rcar_gen3_phy_usb2_remove                 |
device_remove_file(&pdev->dev,            |
                   &dev_attr_role)        |
// remove returns                         |
// devm cleanup: free_irq,                |
// kfree(channel)                         |
                                          | rcar_gen3_phy_usb2_work
                                          | // use ch (use-after-free)

Fix it by disabling the OTG interrupts, so the IRQ handler cannot
schedule new work, and canceling the work before the remaining cleanup
in rcar_gen3_phy_usb2_remove and the devm release of channel.

Fixes: c14f8a4032ef ("phy: rcar-gen3-usb2: fix mutex_lock calling in interrupt")
Assisted-by: Codex:deepseek-v4-flash
Signed-off-by: Pei Xiao <xiaopei01@kylinos.cn>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index 9a45d840efeb..fa0e680a4b91 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -1067,8 +1067,16 @@ static void rcar_gen3_phy_usb2_remove(struct platform_device *pdev)
 {
 	struct rcar_gen3_chan *channel = platform_get_drvdata(pdev);
 
-	if (channel->is_otg_channel)
+	if (channel->is_otg_channel) {
+		/* Disable OTG interrupts so the IRQ handler cannot
+		 * schedule new work.
+		 */
+		rcar_gen3_control_otg_irq(channel, 0);
+
 		device_remove_file(&pdev->dev, &dev_attr_role);
+
+		cancel_work_sync(&channel->work);
+	}
 }
 
 static int rcar_gen3_phy_usb2_suspend(struct device *dev)
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
