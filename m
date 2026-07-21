Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE40BC44529
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 06:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zGCaU+DLR0fVdEMCZp4Pm4IcRbvCPQrHc0HLRjIgel4=; b=c+LwPM+XUufpU2
	n/6zs+0GndFw86FvHTimhciPAIcb6qBATu00zeeEyX8byAv+980DzSAFj5odSxUoAybAS6SHKTbsC
	o7Sdny+aCc6uXkjYbdJh9Ql/mJSubF/e86B1csXOSiPCyCe7+9RBX8HUu36pyUIi8LIewpVKA4LLf
	9w9KqLtCXCqoRK0CJnrM6wn1jFuDyRy0TS57+v8xoNfRw+JV/bhzyqvME6JrZBmsddPcWYWS9N08e
	iAsvR70CtFIMfCBKuGGBVd5+FZW6DkVwUWD90MKat9xajYTQobpunatEUXKA9IoLfKxz9AaSLm8/2
	rNCbRXQSmQyQlOybel0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4H1-00000008Z8B-1Vwp;
	Tue, 21 Jul 2026 06:48:15 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4Gx-00000008Z7O-364K
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 06:48:14 +0000
X-UUID: 1bda329484d011f1aa26b74ffac11d73-20260721
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:79241616-d8f3-431a-9d1d-e96ccbbd3f12,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:d34577e4aad10c4d3fd9ccf493db8a4e,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102|865|898,TC:nil,Content:0|15|50,EDM:-
	3,IP:nil,URL:99|1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:
	0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_ULS,TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 1bda329484d011f1aa26b74ffac11d73-20260721
X-User: pengcan@kylinos.cn
Received: from lenovo [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <pengcan@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 62137364; Tue, 21 Jul 2026 14:47:58 +0800
From: Can Peng <pengcan@kylinos.cn>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	bmasney@redhat.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Can Peng <pengcan@kylinos.cn>
Subject: [PATCH v2 0/4] phy: freescale: fsl-samsung-hdmi: Fix runtime PM issues
Date: Tue, 21 Jul 2026 14:47:48 +0800
Message-ID: <20260721064752.153338-1-pengcan@kylinos.cn>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_234812_116553_204AD776 
X-CRM114-Status: UNSURE (   9.36  )
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

Hi,

v1 fixed runtime PM cleanup when PHY clock registration fails. During
review, additional runtime PM and clock lifetime issues were pointed out
in the same driver:

- the APB clock can be disabled twice on remove if the device is runtime
  suspended;
- the PHY clock .set_rate() path can access registers after the provider
  device has been runtime suspended;
- runtime resume can leak the APB clock enable count if PHY
  reconfiguration fails.

This v2 keeps the original cleanup fix and adds targeted fixes for the
other cases.

The PHY clock is registered after runtime PM is enabled, so the common
clock framework takes a runtime PM reference on the provider device
before invoking the rate callbacks. Patch 3 keeps the APB clock prepared
for the lifetime of the device and only gates it in runtime PM callbacks,
which makes the provider resume path safe while rate callbacks access
PHY registers.

Changes in v2:
- Expand the original single patch into a four-patch series.
- Add fixes for the remove-time APB clock underflow, CCF .set_rate()
  runtime PM path and runtime-resume error unwind reported during
  review.
- Link to v1: 
  https://lore.kernel.org/all/20260718071816.437047-1-pengcan@kylinos.cn/

Can Peng (4):
  phy: freescale: fsl-samsung-hdmi: Fix runtime PM cleanup
  phy: freescale: fsl-samsung-hdmi: Resume device on remove
  phy: freescale: fsl-samsung-hdmi: Only gate APB clock in runtime PM
  phy: freescale: fsl-samsung-hdmi: Disable APB clock on resume failure

 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 32 +++++++++++++++-----
 1 file changed, 25 insertions(+), 7 deletions(-)

-- 
2.53.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
