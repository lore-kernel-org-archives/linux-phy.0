Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87DF4C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTpxDMwEUduSnAETw4e0EOlFVpISBxk6hiR9QT6wUTQ=; b=gp568IOoSi0FIb
	pJOUe+vZq74HL2OC0pkannv1CUPlaZtWCvbveTyVH1g1Hznp3jI2g8f67KpynBs+GoJK9o01oBQ2c
	q4r4YYIGqoHiFccUUUdHYvKzERwZCzSw4wBpvOjboFcbHlK0guzVTvGDoK9CnhozrfqmHAuOOI6W1
	ubrkQ2yUYjbwzbIXXVUrIhPenLVTzFBYqwUADjkwlcqdnz8iYPaU89/ox7raurHXVyfEAF89XwWoI
	hwkTe0Q1SKfIkEwC4ZwO10fMQiu/hkdrxjBXv5NZmTZ+M442kzBlNdEkdxtZ5FhmBEa1PKItIm2tF
	bWQsROx6vWN71ZvAhlfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN7G-00000001TgB-3WN7;
	Tue, 23 Apr 2024 20:51:50 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN67-00000001StK-2Spk
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:41 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-41ac4cd7a1cso7777645e9.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905438; x=1714510238; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=InFnIY+p533KdBP4NACQo0sZ0V7hrv1Ldx+BeIELt2w=;
        b=YidVVfW+W/0xvMR757Wb/FiBuVlbkP3awakFzuAvEPKQpIDJ32uHEobnlP9/v+lCsc
         x1LVNJAq29KjjQSWhjWUprczWqXzUkE+I36IInC66cVxV+fDlsRqgJeSbzFXjeP+OPef
         xAQR380DWsQwowCsEXSQlNE+ucVnnOh+Jndy1RsyMsY0gFQfwX3P7EkJHcX5Rg5qpoxe
         3nFV0R0LouGma9I2rda/37PgkWsj/CCNcCSsQKP96mGdBDYXna/zLhskV33WThRXOdp0
         TxfC/KO1HRwNFsiMK+MtjyI8UPimWFphY5jVsKfnnWIvbihSnFd8jZljeDsCP/+ViFhr
         k9aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905438; x=1714510238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=InFnIY+p533KdBP4NACQo0sZ0V7hrv1Ldx+BeIELt2w=;
        b=SujItZtPHPeKXJidIukC3jiZUZ/3u9T6El3NHE2X9M3nQvoPxrKOk+VenBzDRa+8O1
         cQpEWnWffMIgv3iFx6Y1VlxTsU1ESwLJeyPNiUA4nLldPjlWyE6/i/ee4PnGyJl3IVyD
         Ad+AsippwxqOmk7swd8oI8T4j7oAh6xrf8VMqSyO6QQTEIhBoocA7LOXi2P1q2oHLhTJ
         HppiNOxMU423CyFgkW5P08oPqzMpD0co/4ubojh/UECzHXdwQr3uXcwZaxI60EBQUG4W
         SyIvnDgbmOnoH5mkHamkO1/2vOXDXmUxyrRg+Rmk2zv7deDBEICm9C0JLWuE0cvjqI0e
         bY9g==
X-Forwarded-Encrypted: i=1; AJvYcCVHAnTqSVVz6EsI8Dv0j1CXzIeZZp/HtWPRqwfqwNA2IXlf1OrAebiwPIUGy8xBAnWaAxdyhjxycUwIUn+CKcLjFWElZiR3ckyOn5sH+g==
X-Gm-Message-State: AOJu0YxJ6wplvcKVes/TtBJKL6PlYvN22rewYjKKLB2qXxdGRhX4OdFZ
	NOnGWiWndstJlIrZr/FXiRSbvPFGTVnr+5HbDXOp746RvJBIhRfcsp+z1N9bfgM=
X-Google-Smtp-Source: AGHT+IFwW0Qe2OJNFDAP49c6EJtw+kAQOSHqygzMmmEvDFQ3fb8+GmSzGKcIdG4RXGhib6lwlZrI8Q==
X-Received: by 2002:a05:600c:5405:b0:41a:a08f:2696 with SMTP id he5-20020a05600c540500b0041aa08f2696mr310906wmb.12.1713905438258;
        Tue, 23 Apr 2024 13:50:38 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:37 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	James.Bottomley@HansenPartnership.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 13/14] phy: samsung-ufs: ufs: remove superfluous mfd/syscon.h header
Date: Tue, 23 Apr 2024 21:50:05 +0100
Message-ID: <20240423205006.1785138-14-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135040_001886_93D9D05D 
X-CRM114-Status: UNSURE (   8.24  )
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

mfd/syscon.h header is no longer required since the update to
exynos_get_pmu_regmap_by_phandle() api.

Fixes: f2c6d0fa197a ("phy: samsung-ufs: use exynos_get_pmu_regmap_by_phandle() to obtain PMU regmap")
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/phy/samsung/phy-samsung-ufs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index 813bce47121d..ffc46c953ed6 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -13,7 +13,6 @@
 #include <linux/of.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
-#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
-- 
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
