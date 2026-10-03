Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C918ECA5FC1
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 03:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6hC5MPEuBg8qyxJeU6TNQn+ZKg/zI1PEkhOElP/UMH4=; b=k6wD0KauwhdZ1I
	kj0dpzezlIbt6c332r+7P7a0SaCHGdCXmfnXQ1Ay9f4+99y+Ti0emVBCqG7Sas2rI6XXYPGsYuOqV
	oD/iMT6+9sAmojp/w9bf61AUgesQ0uu4jxGWq4bzujFvwLHU8dhj2sn3YdhUM45aHTwxK2qFowPv/
	PGV517G9yzb1LifGpcE+GYmuni+sVC9LO6KEccipZmUUjaNrKOY3bZluhSd2eVc7Ac2taIuE1ncqd
	pCDqfQOjVkCr6D/6d+OrNM3m5GkV3POIbyHf/u1acOzIOAmFgZfYf2X2aJ0a2QNDlRcdDEJqipm+P
	1RBWh7r7ShvxJMS1oxZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCqmN-0000000D0NT-2Rke;
	Sat, 03 Oct 2026 03:51:19 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCqmK-0000000D0N5-12eD
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 03:51:17 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-93e441e14a1so14548385a.2
        for <linux-phy@lists.infradead.org>; Fri, 02 Oct 2026 20:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790999475; x=1791604275; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=rSMgkrHgKMhAn63kmMLC4e7ZpQOwQj9HhDjCLOUzBMU=;
        b=WAO6XUXXcqYlV90gCaGRv3wYBd5SbbjqKmNR+AAmstU7niNBk5wQTads1sdptfmw1S
         TQvOkMCt+i5NMI3Rbw2mLxVVVQDls2oc8FHh94H8+njIVNKmQjCJ7R+DRzwAAdnfE4i7
         0pJ/NHq9VS+H2Fv4a6ZB0Hs0DeByjsXB2qQguj+iCWfU44Ny+7wYw3GWVsfJCbpCvIxy
         TjJf/DLijcenLIdmXqI9uVUqc7BiDhJO4bCLD3rpnkJQaWPm4sRFAHScC2XPL98qU8gt
         +fSQNdy5UVVVrEApHr9LDvWIghT3Ce8/AY3VZPGK+9U6X90v0FCfXnu4UbTcg5EdNwtA
         QG3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790999475; x=1791604275;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rSMgkrHgKMhAn63kmMLC4e7ZpQOwQj9HhDjCLOUzBMU=;
        b=Oz74S27tZuWWsJhcUMwaXW4WBGR7xoJUSMu8/3zvGBof39NmsiyfoPL2LVS57kT6PE
         5FApy36V25ayJ83O/LWYqQkyjnoNx/Tw02rl9c+DB5HxESQ5W0RZrkJ/ELuLTE7kz6oJ
         Z89NgqQpV3+pNEpV+mqyXDk9VSiveaT87H+g0OC5wlFxpLclqcJ4804gFpaewtO07Qr1
         NltztYgEOVxBtD8YuaXWjsujM0AFJlsFQj9fZGQot9mHs93usNX5zS4UvQAausJZk9MR
         aVs9/wuKlBHdrR0yoUAVtg4DXa5niurMsoncPRnM2AFLDDi1yLQ+zoz4Ge3S+1eGhWBH
         Ox8A==
X-Forwarded-Encrypted: i=1; AKwUvBztf7CcExoSVropIdy1S7epiGGmIvtCYuw4665iPITkSlcroZZv6wIwgMyC48ls/YMY/xj3F1qyfC8=@lists.infradead.org
X-Gm-Message-State: AFuF++lYHzicT7WglNoL5JJFlzWUsoSKqbRd9oA8HXutJ5pUaeBbrKm4
	M48JBEqyUGGMuWBdIwDpPTFd++N4XCyWFjtqF6OR0aEmjur6pA71Fvg=
X-Gm-Gg: AYBFou0a3chqEucvSYZ07PloreOMTCDCPkw3CQdBNGDdxpQ68IjkYsVcOYwj//KsX8D
	Z3MGqeMOOtPVdt3iUrkpwVePleLn1NBqI3lZm6EcNytYtX+u4SuCEmOzt2CmPn2InT8nIjCNGXq
	bj2t19mVtaTyeEoTStBWuk/dR/P8BXsv7VQKOUX7SISbqSZ9SQy3TQ8T+DP9loKNP1iUNRTiW+n
	Zpe88QUc1jS35aVI0iWEwfNjsjIQS4hRmzu6FV2Qgxt7pQfzdBjxJqwQQYgsk1yXKDvYgearaOO
	8pmPZAsud7zpzXeJ9FcELEngxUo49xhqpSN17etsb5Gd7Awb11sSsiO+aLJ6n/CWszz00MwLADP
	Yxcz/QQX0kVBhSjFL4NE76NHDJoxQcXWVBFHycUde28V2vF9/kUEKyTVfQn2b2/JdEoKYxZIbdV
	LbMWpWZfYiq3dS4XRePgElC4Jq5+C2NJiUnLH25hQXRhUhmxK+ido2mFn2ZWAojcVPIQfRQ7GVi
	ssprRm/AQqV1XCMokCj5Th5MDTAZz7bhmCLogo0tSViyj/Jo/2Y1bZze/FvLQ+0q1A1at23pcIB
	Ovddbn/ZuMyFrBbnu//uz4/ei71r
X-Received: by 2002:a05:620a:bd5:b0:939:feee:630 with SMTP id af79cd13be357-93e50ffc710mr247623185a.30.1790999474877;
        Fri, 02 Oct 2026 20:51:14 -0700 (PDT)
Received: from i4-gl-tmk5904-1.ad.psu.edu ([130.203.156.90])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-93e472b24e1sm240755085a.24.2026.10.02.20.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2026 20:51:13 -0700 (PDT)
From: Myeonghun Pak <mhun512@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	Ijae Kim <ae878000@gmail.com>
Subject: [PATCH] phy: ti: twl4030-usb: free the IRQ before canceling work
Date: Fri,  2 Oct 2026 23:51:11 -0400
Message-ID: <20261003035111.623790-1-mhun512@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_205116_330830_ABC76D0E 
X-CRM114-Status: GOOD (  11.49  )
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

The threaded IRQ handler can schedule id_workaround_work while the PHY
is runtime active. The remove callback cancels that work, but leaves
the managed IRQ registered until devres cleanup after remove returns.
An interrupt after the cancellation can therefore queue work that
accesses the freed twl4030_usb allocation.

The same work can be queued after IRQ registration if phy_create_lookup()
fails during probe. Failed probe cleanup releases the managed IRQ and
allocation without canceling the delayed work, and does not call remove.

Free the managed IRQ before canceling the delayed work on remove and on
the post-IRQ probe failure path. This waits for the threaded IRQ producer
to finish before canceling any work it queued. The synchronous work
cancellation also handles the worker's own requeueing. Generic PHY
consumer callbacks have separate lifetime requirements.

This issue was identified during our ongoing static-analysis research
while reviewing kernel code.

Fixes: 85601b8d81e2 ("usb: phy: twl4030-usb: Fix lost interrupts after ID pin goes down")
Cc: stable@vger.kernel.org
Assisted-by: LLM
Co-developed-by: Ijae Kim <ae878000@gmail.com>
Signed-off-by: Ijae Kim <ae878000@gmail.com>
Signed-off-by: Myeonghun Pak <mhun512@gmail.com>
---
 drivers/phy/ti/phy-twl4030-usb.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-twl4030-usb.c b/drivers/phy/ti/phy-twl4030-usb.c
index a26aec3ab29e..37c326cd1d85 100644
--- a/drivers/phy/ti/phy-twl4030-usb.c
+++ b/drivers/phy/ti/phy-twl4030-usb.c
@@ -779,12 +779,17 @@ static int twl4030_usb_probe(struct platform_device *pdev)
 	if (pdata)
 		err = phy_create_lookup(phy, "usb", "musb-hdrc.0");
 	if (err)
-		return err;
+		goto err_free_irq;
 
 	pm_runtime_mark_last_busy(&pdev->dev);
 	pm_runtime_put_autosuspend(twl->dev);
 
 	return 0;
+
+err_free_irq:
+	devm_free_irq(twl->dev, twl->irq, twl);
+	cancel_delayed_work_sync(&twl->id_workaround_work);
+	return err;
 }
 
 static void twl4030_usb_remove(struct platform_device *pdev)
@@ -794,6 +799,7 @@ static void twl4030_usb_remove(struct platform_device *pdev)
 
 	usb_remove_phy(&twl->phy);
 	pm_runtime_get_sync(twl->dev);
+	devm_free_irq(twl->dev, twl->irq, twl);
 	cancel_delayed_work_sync(&twl->id_workaround_work);
 	device_remove_file(twl->dev, &dev_attr_vbus);
 
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
