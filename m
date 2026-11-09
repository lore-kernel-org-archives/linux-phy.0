Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFEFC606A321
	for <linux-phy@archiver.kernel.org>; Mon,  9 Nov 2026 17:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=e5soPloN;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=erhtflfq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=duVf5+GCA1Ffj5UgIHvK2R6ZH1rvq+t0sfaiUeGt6uU=; b=e5soPloN4SH9WK9313NzXrSNL+
	Ghy319PyA4r1L7OOmhHDiTYEAmnkTZwBr/kuMfQt0mzQYGeoNBlt3JyHYN3e5kcNjkOJlPh8gYkgj
	MaYRx0VA+q94l9paQ4wONxP1fiD8ONOpeSPlrKcLTaysI2AujPnt8BDhW9oHzbPAQbK597J57rxs8
	jDJA4quxptGj74IWn1yJN0mvBkCM9Hwi0SjD1thvpHJs92C0J/E4eC7lBwxOrRFG8cLXba+PDgp9v
	M4Ac+zoslHGrltWV4ah3PIZO0E+QNS0Uga2/5JmGSQ0iRkInaWwRHSWuoUBrg+ji8lEHgrRSjnojN
	MHwWMCfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQSla-00000001I3d-3caZ;
	Mon, 09 Nov 2026 17:02:46 +0000
Received: from mail-dy1-x132e.google.com ([2607:f8b0:4864:20::132e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQSlX-00000001I3G-3oWj
	for linux-phy@lists.infradead.org;
	Mon, 09 Nov 2026 17:02:45 +0000
Received: by mail-dy1-x132e.google.com with SMTP id 5a478bee46e88-3720addb068so1673607eec.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 09:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794243763; x=1794848563; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=qY0mbUZdr0ztNMcKxMffZ/lOFKEQtrLqkPhKXm8ABiA=;
        b=erhtflfquCspEweORRSqur0o99NiPtah2uRSfTtB50JGixKpAnY121nGyRClN+Kg6J
         Eos323wNyF9/4UUeJxr5vsRczCK3jzsbc6MgFZqDWo9/FNKvNFoHGlE24FWkQJfPof8F
         /2ZQ662C9fyLWv9uI0aiagTgSoQIERiXX+KOsztnv8pLEpQtSzbFHT7dSPr41MTYM7zX
         2PqDW9UVkgHODpQfPTpVp1efxVKZXsmjkONJRU1X3UsP0a2MdamP/+oBhzAYPbux9E+F
         7JJooEb0SgXXXHJjF9OV9xlFv9jeD03dE/Cn7Zej6POdfIbW27lzi20CWFf8h5H9idxY
         oNsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794243763; x=1794848563;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qY0mbUZdr0ztNMcKxMffZ/lOFKEQtrLqkPhKXm8ABiA=;
        b=vJ56zBYAXk2cYQuWIqhlY6dH/RYUMwomw+yw1gWCXgaiIpiAXyGiGUdc1RzIHoPOk1
         2swdjoMJvqUn41WAB7tov6UZoeNhuHmr5bw5Yaz+sBb21Vm43hVSRTLqS21iEkV94XVV
         Eec2EHobRCpqecGap/GMDlQDuENxDLADJk46NPygi6pZpAd4PpoefqRJrmmPuC4FklS/
         b9cMTz08ooKVWf53OBZYkaYjy52ZfGz2YMIgFP4f1yH9fJKgXMTStHrmhwTuMOfASWix
         tSoaFmWZElkimkUW+PBMY0kSb6AX6Li3Ovak6G/7711OP0FY5w53E5g89yKneWCb6g0w
         ZyHw==
X-Forwarded-Encrypted: i=1; AL+hErGfx4vcx1nRFxH6yC5yoZ7vacx023htThNcosub+l2mC51TSAjbhZ1aFrgr9CIBW6WnUTfIRHaO5hs=@lists.infradead.org
X-Gm-Message-State: APuU4Z8lrJUa7kCxJLEFQNL1QvBYcFy9rSLlL8JPlCQgkcCuPQjpHcwk
	wIPLxeUOYe56s+mB3GoyAiQeC8y/GacJEikVdJCrbOAGR4wxTuRJYnKv/RHi239G
X-Gm-Gg: AYBFou0ctC4Ff5fu5HlO6ZyZdYS9lz5MFcnalivmt5gWKlEGtohScEDxzIXmeMxiZpv
	JIviEZopmTTNw3h0QCAMIa3R4OdGhLeQWZfQBNGmZPR3aMYqkJ6tU1c2l63ywEK1gMCsZC1ENpW
	DdHl9jIHpYREdspV3xCMD03qqQq0A8hYw+8/83wkakFK8XcgtuNYNebHOt4PczC0597TAFsQYpc
	QFsDXVhrFVpSvP6UOV+fSMgadIhMlDUDno+H8w1W2zorDif5OIsOJnjD6SkgyVxTzc2dRdwNLut
	BNZXOL772a8YET2HP3ncCVRFL3w3EukTuPUSAFOReggGJ9D1vh7l6EygzOq+oZD8F73lfEEPpco
	lJb6BYAP/9cJA6Ov3o+NM5kRjTMyuciqoRoHslbjvn5MAezIBRWJ++Pbvyn4armSIsJZEV8zY/x
	rxy/tsDn9loy/pcR6+HqReTqUkRrMbhVCufLMwUm0bGklj5Q2RD5ExnSlEKzxyr+xbEvlTPdWXO
	9RSXuBPCuvWkZMst3vo+OQnhj9AxDJFld+BtEI5aIVmdVP+p1Jo/q2YCnNhJ4D3bBi6TwlPpLBF
	MtHe9jNMKxqlWvH5VzEMn7VxRS4CXAxvh0oEzPAdBHU2WKJKrWGxUwUi0ssRjEI9+vgcfw==
X-Received: by 2002:a05:7301:18a5:b0:36a:15ee:c20e with SMTP id 5a478bee46e88-37258658bc3mr7702403eec.33.1794243762677;
        Mon, 09 Nov 2026 09:02:42 -0800 (PST)
Received: from hj.. ([163.239.22.29])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-37265618e11sm13726894eec.7.2026.11.09.09.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 09:02:41 -0800 (PST)
From: hyunjungg <hj351016@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Ray Jui <ray.jui@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Raviteja Garimella <raviteja.garimella@broadcom.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	Hyunjung Ko <hj351016@gmail.com>
Subject: [PATCH v2] phy: phy-bcm-ns2-usbdrd: cancel extcon work on unbind to avoid use-after-free
Date: Tue, 10 Nov 2026 02:02:23 +0900
Message-ID: <20261109170223.1829473-1-hj351016@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_090243_951651_7BCAA930 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Hyunjung Ko <hj351016@gmail.com>

ns2_drd_phy_probe() schedules driver->wq_extcon (extcon_work), which is
also queued from the ID/VBUS GPIO interrupt handler gpio_irq_handler().
The work handler dereferences the driver data via container_of().

struct ns2_phy_driver is allocated with devm_kzalloc() and the driver has
no remove callback, so on unbind devres frees it after probe's resources
are released. The GPIO interrupts are requested with devm_request_irq(),
and so released by devres; free_irq() only stops further interrupts, it
does not cancel a delayed work that is already queued. probe() queues
wq_extcon with a debounce delay before returning, and the GPIO interrupt
can queue it too, so on unbind the pending work can run after
ns2_phy_driver has been freed, dereferencing freed memory (use-after-free).

Register the work with devm_delayed_work_autocancel() instead of
INIT_DELAYED_WORK(). It is set up before the GPIO interrupts are
requested, so on unwind devres frees the interrupts first - after which
the work can no longer be queued - and then cancels the work while the
driver data is still valid. extcon_work() does not re-queue itself, so a
single cancel drains it.

Found by static analysis and code review; not runtime-reproduced (needs
Broadcom Northstar2 USB DRD PHY hardware).

Fixes: 787f24543c4a ("phy: phy-bcm-ns2-usbdrd: Broadcom USB DRD PHY driver for Northstar2")
Cc: stable@vger.kernel.org
Signed-off-by: Hyunjung Ko <hj351016@gmail.com>
---
Changes in v2:
- Reword the commit message: the GPIO interrupts are requested with
  devm_request_irq() and released by devres (not "released with
  devm_request_irq()") (Ray Jui).
- Place the new #include <linux/devm-helpers.h> in alphabetical order,
  after <linux/delay.h> (Ray Jui).

 drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
index 171bf09..4b8930b 100644
--- a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
+++ b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
@@ -2,6 +2,7 @@
 // Copyright (C) 2017 Broadcom

 #include <linux/delay.h>
+#include <linux/devm-helpers.h>
 #include <linux/extcon-provider.h>
 #include <linux/gpio/consumer.h>
 #include <linux/init.h>
@@ -339,7 +340,9 @@ static int ns2_drd_phy_probe(struct platform_device *pdev)
 	if (ret < 0)
 		driver->debounce_jiffies = msecs_to_jiffies(GPIO_DELAY);

-	INIT_DELAYED_WORK(&driver->wq_extcon, extcon_work);
+	ret = devm_delayed_work_autocancel(dev, &driver->wq_extcon, extcon_work);
+	if (ret)
+		return ret;

 	driver->id_irq = gpiod_to_irq(driver->id_gpiod);
 	if (driver->id_irq < 0) {
--
2.43.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
