Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0740D3B7EA
	for <linux-phy@archiver.kernel.org>; Tue,  9 Dec 2025 06:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ld44TaAAraMW657Qxf6z+BP5eExXUSU/bVxGbYkOvi0=; b=oAJByv4dJuVF9P
	OUuLGyN5ZUQ0KhalppSEIy5uJ3ycF46IK+LGg0AgNbffGfSosUAD1SWvE44E1tgKEQut6Gyq2yeU1
	HIu6aGZxHBQ0fE+8BQqeOg8UoVeh3WKcd7yCADt/6peYB1IYu3aZx//q1tseA5dEqQn3VAofeqgcQ
	9WBGa+gutNxU1Jgv9rJlhlyXyUXf+lZOxPZJ3PkVSQF2w/8lHC6fWedtMFw5ZD7KxFZM2XkAr+D2D
	oYJlMF7DwsLN8pSx0TV3sCUZvEMwOAo0ZsbeTrqqvSI9zGXHuTcaLF8EcQ/1iuFEKTY5j/+wYCuiy
	0tJyjhKQh7XDjBvRC7EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSrbW-0000000DueZ-22sZ;
	Tue, 09 Dec 2025 06:53:46 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSrbT-0000000Dudg-1v6t
	for linux-phy@lists.infradead.org;
	Tue, 09 Dec 2025 06:53:45 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4777771ed1aso43203165e9.2
        for <linux-phy@lists.infradead.org>; Mon, 08 Dec 2025 22:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765263221; x=1765868021; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qpimlZdEDtuP7WR2mZA0+z1H7nFjtx/bFty3v8hsXUU=;
        b=A3t8X2xwWFG2Ah40rYlB4M8GTk5Tt1DDi+RZVuPAPWEb44RRVVXbiNQqpBnNmH0Rz4
         osAYU31xSHI6NhHzv9aUT4osLkYnZ0Hhn1GeWx0wynQTOxl9QhKV4gzjHcZusr4FscM3
         tk+nclOz+prIOq6+qUWZXRzl/RNltexVJeuTb9lGFoHYr9xKTzJnelXQBoYYTmx7INO4
         Z0h/osUaQMlG8DAgCocngBmdODf46rflSxpMMo4SQQhpmnFZichV/lmZr414sjjGGoSX
         Uxy1lCOazWS5Qfv/NDv7XHGE6TRVp1LKRSrcG3F1L4kTf0/0AJTvy0gVv/gjqxMZSk4m
         tYuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765263221; x=1765868021;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qpimlZdEDtuP7WR2mZA0+z1H7nFjtx/bFty3v8hsXUU=;
        b=aNSOHE3ftWEYLzGyj84waWg7Y2Vim2/bQ+Rn7dTa17rvFLJkwMe61ACNOIL5sPw//T
         jQ4nOcpBxzY+ABk84QcU7eJF7bPwtFy+XLda66j+E3c3CKU7gz7h3/g4obh26x40yiBf
         fjvqv+Zlep4HA1dL2ws4O2ZFS92bLv0xguhH9Wlt691OTyu5StZRVpG41NrMh8dFaOJQ
         ej1SIhZCxzNxn8icOG9DfwL5giV4z8JHwaESF7Zz3p3FaHRE5WQwnTqhEOR2bQX7C0uS
         ke5JR6gbM7MF0rDNS/W+qaHiFJjJxX31X7o1qhBP2fQCPJofV2PZTZxgP+9XumtA7FfE
         C/Zg==
X-Forwarded-Encrypted: i=1; AJvYcCUIjQWCFmR4k3lXESJ1awnhDBBLfR9A6zhN/cyjlCkzWdS6AmMpIO3bu1BDEoPN6gpid2H+YkNlVrI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxl/WDAnCxGC92MLT+6273fpIYJVQRu/WKlUmstWFSDXKxLDsU5
	9e6Yn3axFlpc0JxGUEZTYF8YngCsMvxOLd6nsj5I6apBJlShpouuGgGmCXYnbCWBTEk=
X-Gm-Gg: ASbGncu31yEmA1lXiaJ+mYbrhn6ppC/PSy1B2mUHBT0XBDUfje4en2XtUNtun50jpqG
	YcFUgPugEByxPUyDWulvJSpKs5UelmobhMWBdSR4jQO90c+CY9JMAFk6YqWLVNRFdk+jn5MgKHz
	C4wog3WGX/cBlrvtxe6fkWO5FFTn15kTsJekc1E4R9tjgRQJdTBoesGKJwVKTlU2N+KKQNJXqyo
	0Ry1w7Z29DkPMxA447PgEp3bjo78gzb/4QtBYdUfPXgTqGkJQgPdz5bk68GkVQ4Oazuo1c4TVjd
	ucjcejiyHOUqEwKQCuS68+Skto6ZciOeI31giKhWWENF8v2X0cQMCOpolTRCWdxinT4IMk8811M
	3UBg8R05fZ5HAj4LYTSs+0+9WfYAsYE4SVrbXHPRuBYpo/wKechCjhYsViyxGQoen2C1o3ufzx3
	vqQUmxvra8WsxAnWPc
X-Google-Smtp-Source: AGHT+IGaTnV6DUM6NZ8B996sUpARBrir70sGaGW5NyYdRK9/TvpgGM9K+ozidhKmYpB4+XkFZ3zK7g==
X-Received: by 2002:a05:600c:1990:b0:477:73e9:dbe7 with SMTP id 5b1f17b1804b1-47939e4d013mr112666895e9.35.1765263220857;
        Mon, 08 Dec 2025 22:53:40 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a7d35713asm11916255e9.1.2025.12.08.22.53.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 22:53:40 -0800 (PST)
Date: Tue, 9 Dec 2025 09:53:36 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	Fengguang Wu <fengguang.wu@intel.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH] phy: stm32-usphyc: Fix off by one in probe()
Message-ID: <aTfHcMJK1wFVnvEe@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_225343_526916_12186EDF 
X-CRM114-Status: GOOD (  13.70  )
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

The "index" variable is used as an index into the usbphyc->phys[] array
which has usbphyc->nphys elements.  So if it is equal to usbphyc->nphys
then it is one element out of bounds.  The "index" comes from the
device tree so it's data that we trust and it's unlikely to be wrong,
however it's obviously still worth fixing the bug.  Change the > to >=.

Fixes: 94c358da3a05 ("phy: stm32: add support for STM32 USB PHY Controller (USBPHYC)")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/phy/st/phy-stm32-usbphyc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
index 27fe92f73f33..b44afbff8616 100644
--- a/drivers/phy/st/phy-stm32-usbphyc.c
+++ b/drivers/phy/st/phy-stm32-usbphyc.c
@@ -712,7 +712,7 @@ static int stm32_usbphyc_probe(struct platform_device *pdev)
 		}
 
 		ret = of_property_read_u32(child, "reg", &index);
-		if (ret || index > usbphyc->nphys) {
+		if (ret || index >= usbphyc->nphys) {
 			dev_err(&phy->dev, "invalid reg property: %d\n", ret);
 			if (!ret)
 				ret = -EINVAL;
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
