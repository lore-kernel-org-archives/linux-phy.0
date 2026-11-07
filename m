Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308A2606A331
	for <linux-phy@archiver.kernel.org>; Sat,  7 Nov 2026 10:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KQzIj4YG;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=tb3+6P3q
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=/4+Gx1QvSdQqDUuBrNznmN6GxhvykCWbgu/+8uNU/JQ=; b=KQzIj4YGKtTsDwSLakrzVpefDk
	VOLvL5JmvqaiEv2GGNiWbQWQZtuJXHUCEOhKzoMHWz4QVtjvB0BGnJPqUmPSrpxWjc5PCQPtyAnno
	s2bw2tABEf+aHzNHkLGx2lpOPpnDo1+W9QSYYODH0CEgJaboRUgaSmTXNgXiGD56VT+QxYzv3Y/GD
	Thl5OtGm1e2DpBC4bOpFHKGr6PBBy4Rs6+uXAf1BzzXpJ+hK8xtuOHGBkNj87HLj94gjMpMC03Qt+
	l4u9nkruepE4kgLSHE527lMN2BjOFePcKP9AgBwOYcHBrQZySNswvo+zL7t0exXLzEGtuYONt+LRo
	quVMSvJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPdGO-0000000ES8o-355p;
	Sat, 07 Nov 2026 10:03:08 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPdGL-0000000ES8J-2nUz
	for linux-phy@lists.infradead.org;
	Sat, 07 Nov 2026 10:03:07 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-3acb11973c3so1221366a91.3
        for <linux-phy@lists.infradead.org>; Sat, 07 Nov 2026 02:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794045785; x=1794650585; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Hjw8ufxY1uqj/hElRvoiFVTy1rX/3DfCiEVnshIZW2A=;
        b=tb3+6P3qb8DyMVtQGpp3tkQmeauK99zVDLmXXcI8cx0jTWK9nhdEjmgul8FjwPAzvK
         CWqdRhJnIi7PC8/AYkQB8kZZ+PB1WDSyF2+AVWaWk/PEj6b8KAmfXxZLxvesLlaXm5V+
         L8yFxztz1UeH8CznKi28HfKxLt8ktI7whbZjQbhAeO7OjyXs9zo7fwfMcg4NNyOi8QEl
         m4NFn7/piO05pFk7fmoqFou7qKJp5QJFwSnmzrhS7I+vissAAKYM2KT35IvQTR3Wf4ZH
         xqwbGZJPv5gyGMoCo+rdAHG4+YEzcoHb3C8G6YlKzCUYTlOuIOG29FyPyr2bQb+xshR4
         H8Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794045785; x=1794650585;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Hjw8ufxY1uqj/hElRvoiFVTy1rX/3DfCiEVnshIZW2A=;
        b=jq7cCR29dhtOsK6E8XqiEC3jGNyKqg1eQGxP3UwV+t0lp87nEKasdUuz25dDeLJaKL
         Vv4wFRy/WWgrfqXWggg7Zc3OtEJABcyw50YIEjje2etiGZQU0mZ/baJwTNGv7Q/2zoF8
         10EmxHfOF/2Gh/+6S9kfWZGQGEPGCCZY8ly7U1WnjyUdQIrY2vNA/aCj925LLahczKUp
         qET8MFkAtTlIxdSeNgkuQ0nd4Pb2pYp5bpYJOfMzMDqSBPXWi4o7AazUajWVwJxv/cGA
         LGBIUrAd+AVsNUzVaHNE4VVCkoZSAKG5S2tgg8tbZRLyNwSpsdQ8vvfvstR4ANNn5zZH
         1jFw==
X-Forwarded-Encrypted: i=1; AL+hErEzOezMwa8lXfoNE0m55nCqyyPAq4jOEC84On7qLCVqQqf4VmIr/d3ZZBWEirnXUI5u5qQbmkzKNew=@lists.infradead.org
X-Gm-Message-State: APuU4Z+WkwCD5M9pnPV3Fo6pPONmEE6dSPb+eVQz5eJSw+Yig9KmMN0Q
	q5XCsXJ8Pqtg16Sj59kboHcsdWMizZZ3lWTAOBvKjFl94g9ELZaq5Xoy
X-Gm-Gg: AYBFou3mVYzh+u0M8L4IolxkcghnX3ufKhvNsiDAJtK63TdZ1HYZNkPggLSn7OLrcK6
	gdg+ex4ua0sww0/tqHZZSHX4R6RrabMo0C4ZIa2JO7Zl5RmLXBnK+MBRrchreFq1dcJWtwerwxT
	HN8skZrPJ0p6KBsOlXRnzunilfDGibQL93PpMtQLEHvnVr3Fp14dAKPcABYQk9hWddORopCWmmH
	N8/Bw2n8fwVamWPXxY44iAoTAIjFJz9ONm5nkPH0t3BGqiFzwQCIJQapSXiG2JEgYHYjtPgA8L8
	kAqD2xoDcpj02jRoaLrNz5B/JkhuJV6S+ZIr5IWnELRQ8qizgn5j34kCjHRPYkz2SRzdywz3SbT
	o9g9r5P+X3mNXEFfLghJ1O2d7sfmXbfhLmXf4Q/iHNnef6HIK1J8b9z2ninnkmV6kMbwdTFtYJw
	KLiNaQKeFKVpy/VobmQ+oY/+8X+Q+BfcBOcsEtCQjtac22JPwUsSbjwoe4gleUId6YnVwcjDDwo
	HmJCWTlLUEfFwhZw1l+EUNOJC9rcbtApKpSnasz/itZQrAneHRSvZj+U9/L9MqHGwiuFRz0jFwA
	pvTmRSU1BafTuglL9oSRHjrey9MpL/6x9yL68aXBnnt80sVU
X-Received: by 2002:a17:90a:c10f:b0:3b0:a3eb:759e with SMTP id 98e67ed59e1d1-3b0db6a8de8mr4788271a91.17.1794045784240;
        Sat, 07 Nov 2026 02:03:04 -0800 (PST)
Received: from hj.. ([163.239.22.29])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b1057c2bbcsm2857110a91.1.2026.11.07.02.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Nov 2026 02:03:03 -0800 (PST)
From: hyunjungg <hj351016@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	linux-phy@lists.infradead.org
Cc: Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-kernel@vger.kernel.org,
	Hyunjung Ko <hj351016@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] phy: phy-bcm-ns2-usbdrd: cancel extcon work on unbind to avoid use-after-free
Date: Sat,  7 Nov 2026 19:02:53 +0900
Message-ID: <20261107100253.3543022-1-hj351016@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261107_020305_714228_1E90CBAB 
X-CRM114-Status: GOOD (  14.72  )
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
are released. The GPIO interrupts are released with devm_request_irq(),
but free_irq() only stops further interrupts; it does not cancel a delayed
work that is already queued. probe() queues wq_extcon with a debounce
delay before returning, and the GPIO interrupt can queue it too, so on
unbind the pending work can run after ns2_phy_driver has been freed,
dereferencing freed memory (use-after-free).

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
 drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
index 171bf09..4b8930b 100644
--- a/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
+++ b/drivers/phy/broadcom/phy-bcm-ns2-usbdrd.c
@@ -6,6 +6,7 @@
 #include <linux/gpio/consumer.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
+#include <linux/devm-helpers.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/irq.h>
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
