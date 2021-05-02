Return-Path: <SRS0=h+Aw=J5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A09EC43460
	for <linux-phy@archiver.kernel.org>; Sun,  2 May 2021 14:06:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EB56D611AE
	for <linux-phy@archiver.kernel.org>; Sun,  2 May 2021 14:06:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EB56D611AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bEpFOK0bXivPlqjgqse66cz+oWywKpj77coAK9HiEyE=; b=IlzMKYEoEW8zsWLV022C1hL/k
	nyRV5MO6RI8YSP6654qH6sld+2cd0ZHlR1v13omXAalQlamx0IjrfTPgXFtC8TXARNUl8ObGTcpw5
	N3YPopg1Y4NKIDejgx90oiOzbLWQjhba4+Z44IZKG+mqrZ7QWI3pQxUYesU3FwAtGiYwSYa8LssEW
	+IfS918IBM6JQoTMS6iH51Z817OhqVs9jRCVUDbODQIItD3vDAZ2FghictEpm1PX8x0dKxWCyV0gL
	zSy6eq/8nOdw0zrfoit/EAoJcs8fuhfg+a6SolUKI2sadvNLrert+J7W+rFQNXWJvlBCvEprWf89D
	v45fr7tSQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldCkJ-00BtPq-Uj; Sun, 02 May 2021 14:06:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldCjY-00BtB3-7J
 for linux-phy@desiato.infradead.org; Sun, 02 May 2021 14:06:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=xc9hzh7AGfrBz+kmtl79OrDyNzgkrG8NSjBuCb44ti4=; b=OcICPoBW/T3KhFw45jKhGNcyQf
 +IhJVP1aYztlUEaIMfA/vUFKt1dfOvcI9B/A/z9vCzD1QOwPX4kMaIMMh2pbeyU+YawmDjjAzGEqE
 r8EeXNHBdlqGKv5v/t3gcG+8D6PIlcjegw5pi8UlO9ihrKrzkR4QvBMe+CB2wxbuTvkepxUoIOeeR
 ECbxMvhdfQ0fckzvjZ9H1ff7bBibUkErCWGPHhzpbl7+3OiF7uk3egV8X485V0RmBqGJP+yQMktig
 QetndSME6zaEkALw0BNekjEMVvzk4PftpmGNV2yZkPeFaXtOM99N/VI9WDDKSSDrSn3+QHN7FzDUG
 G7mi7zPQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldCjV-002YbL-Hv
 for linux-phy@lists.infradead.org; Sun, 02 May 2021 14:06:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 59D79613AA;
 Sun,  2 May 2021 14:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619964364;
 bh=QAT7/DpyHeJMZMdN80nWXT2iJv4L2bS1nhzR0FOK+k8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q8nQkyX+QsqAqH1V5mpG6yC/uax31vrS4xE3f2znQJUz29EeG4WWIY5HC10ahobKP
 ExPlmCfSnz9xsvkLD7Bqo7g0cr0Hy7nIxyazmay7Er/Xp8Q50kEWncnoDlESLcCTGE
 xuueZdaI+Zs06sShaK+gJcAsuUyDmL5JOYB64aaoHHvqhcekM0swsIWOSpu1EDyMJX
 BBPGakd72U32D50ZVNECwxf4LstCfrjiNDSEQ52hvSLrRTFJvBLvch/qYTCuoYKkFI
 Ly8eWmpqt+VAXnS2i4L0gMFnu+MqyY19rByzYCnaTzeoCcj24+xZViix6s33i8NqkO
 c80vL4+7agPSA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Yingliang <yangyingliang@huawei.com>, Hulk Robot <hulkci@huawei.com>,
 Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>, linux-phy@lists.infradead.org
Subject: [PATCH AUTOSEL 4.14 15/16] phy: phy-twl4030-usb: Fix possible
 use-after-free in twl4030_usb_remove()
Date: Sun,  2 May 2021 10:05:43 -0400
Message-Id: <20210502140544.2720138-15-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210502140544.2720138-1-sashal@kernel.org>
References: <20210502140544.2720138-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210502_070605_617427_331C4FF7 
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
