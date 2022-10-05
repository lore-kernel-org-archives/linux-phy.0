Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F0C1C43217
	for <linux-phy@archiver.kernel.org>; Wed,  5 Oct 2022 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqwUYPNBYkiO/CCsdbUPU3ibBwWI852ZVINBJMhZ6GE=; b=1+PAdOdq3gQYC/
	5RV74BWekDOPiHnhZYhJ9zXhF46BL+YcJCUED7A1Lw/f4Ze/KTk/UyHh2kU8OxS34U/cXUiuiWAJ6
	6pSMjhyZfSYxoTgEMto2tuzpKEfNnQfCXbNm0ldUzATtvIpCsuuZMxXykNCyBwoN0VaVBVDhGXtWp
	9Wdt4ijB5EnQmRDsFs/2nDrXvjlFijPvYzgDXYuQbssEdgE5FwW4fR/EjK3MdA25Em4T6188lrXdh
	pO0tRhcwmy68h42kIauWu4fC4uIOirjZRV5y6uDrTO2Fou6jk+fmyq4JIjoAUswyqudr1UukKxaDQ
	QvxNZ0vACiLTTmKe8zSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogByK-00G9DP-Je; Wed, 05 Oct 2022 21:30:32 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ogByH-00G9Bs-Nh
	for linux-phy@lists.infradead.org; Wed, 05 Oct 2022 21:30:31 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id h10so66648qvq.7
        for <linux-phy@lists.infradead.org>; Wed, 05 Oct 2022 14:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date;
        bh=5O3jIVr64CiQseI05tQ1L9JTmyGQdfGurfwQZxipgug=;
        b=YZjqFIYRm86r88eet+RHegWc516nit5XY2Kvkl5gHgki3N1vL+ITbzkyOFd6Qc7frr
         rkIOXSlM3r/tWEJvurcmIFzU9I0R0yvZ23TR9GVTcSbRwzaajXULVkgftfdNF7yoZAPG
         +Xs6OL2AZhFphrmmnNMRY4zSl2k5kURdCafE8ZECN9y0jOxsGbIdR+y23b4cn67ae7Cg
         fcvV9XxsA0VGdYw1jfty3HrLVFn1Wb7xo4vZpwAynJJWPVRCLC0pxGzt5ejaI6sjnIB1
         tCSzN67IlK0aJDapKwKl1UBZxV9D/8GtMCuzzgDu9wflQJjwdTZaSwxa6DEkNSiB1Yh0
         Gb+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=5O3jIVr64CiQseI05tQ1L9JTmyGQdfGurfwQZxipgug=;
        b=7NJrd+JjyZPVBL3Wqsq3XHFjGHoSIMk7C+TK3a8p5Vr+o3g1NKYUtqgL9JuD02sCgg
         EdXIhqPxSQSIbuuIzy1yLq9NwFpoU2SSbA2dijIJt5/fNABiLc4rlIVONQTqzjmURzSW
         4mGnSabdCIk5Z9bEqqi6GTBHeYzE2WTAsVDt8nWmBiqGugFp+x6i27xbJkBtBCwURCW5
         lhd3BbNpFZnS9UBZCb/MLxzwhnYok+4IENu0W7BlBD5RX+JP0JcOGRoM8P3u6txqQqmL
         CNy5pigIR+sXeqPsRYrc5luICCQKBgRDapb4sbnSJpzW+qqH+23CTLVAVDxKjew4JtXb
         qt8g==
X-Gm-Message-State: ACrzQf0xzhygxUhagEPmeIz6vO85VgraazsgpibptrYdaHYvZyIY9kzz
	CFLZg8Uu6dg/6HxmjCXBJug=
X-Google-Smtp-Source: AMsMyM5kZeauboCPZed7iPEVN88q/fKgdIhWoaBA+Osd+L7E0yJamlnOBDk2GsnuG6HEiFAi8efw3w==
X-Received: by 2002:a05:6214:d06:b0:4ad:1fe1:9b49 with SMTP id 6-20020a0562140d0600b004ad1fe19b49mr1377386qvh.57.1665005428187;
        Wed, 05 Oct 2022 14:30:28 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s22-20020a05620a255600b006b929a56a2bsm20058566qko.3.2022.10.05.14.30.26
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2022 14:30:27 -0700 (PDT)
From: justinpopo6@gmail.com
To: alcooperx@gmail.com,
	kishon@ti.com,
	vkoul@kernel.org,
	f.fainelli@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justinpopo6@gmail.com>
Subject: [PATCH 2/6] phy: usb: s2 WoL wakeup_count not incremented for USB->Eth devices
Date: Wed,  5 Oct 2022 14:30:14 -0700
Message-Id: <1665005418-15807-3-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
References: <1665005418-15807-1-git-send-email-justinpopo6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221005_143029_795071_18C9E4A6 
X-CRM114-Status: GOOD (  14.95  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Al Cooper <alcooperx@gmail.com>

The PHY's "wakeup_count" is not incrementing when waking from
WoL. The wakeup count can be found in sysfs at:
/sys/bus/platform/devices/rdb/*.usb-phy/power/wakeup_count.
The problem is that the system wakup event handler was being passed
the wrong "device" by the PHY driver.

Fixes: f1c0db40a3ad ("usb: Add "wake on" functionality")
Signed-off-by: Al Cooper <alcooperx@gmail.com>
Signed-off-by: Justin Chen <justinpopo6@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 99d4dea..d97fa58 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -102,9 +102,9 @@ static int brcm_pm_notifier(struct notifier_block *notifier,
 
 static irqreturn_t brcm_usb_phy_wake_isr(int irq, void *dev_id)
 {
-	struct phy *gphy = dev_id;
+	struct device *dev = dev_id;
 
-	pm_wakeup_event(&gphy->dev, 0);
+	pm_wakeup_event(dev, 0);
 
 	return IRQ_HANDLED;
 }
@@ -452,7 +452,7 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 	if (priv->wake_irq >= 0) {
 		err = devm_request_irq(dev, priv->wake_irq,
 				       brcm_usb_phy_wake_isr, 0,
-				       dev_name(dev), gphy);
+				       dev_name(dev), dev);
 		if (err < 0)
 			return err;
 		device_set_wakeup_capable(dev, 1);
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
