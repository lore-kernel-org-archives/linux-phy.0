Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CED06C43458
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jul 2026 21:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k6/KJXI9cL8XsKX7pP++sSWAjnqzOP7Ggu9Qa/AX9aA=; b=4W+7N4GXuJMwm1
	mwb3csMc2/vChb/zRvNZFqtzhIroRPkqvKQ62yqUY12+zv0QIeZeN8YzeChbnD34G6rj8iZACn2Zx
	lbB2S2U+vcZpTpmo6+70gtRvtYfjyX5niFps/af4KZMcQcftRhp0Zq+EYwsCtlUJ/yw9m/QFnoCrD
	zE1hbdPBf88tSnZM6ZUwWAkrZx61thYVHb1H8H/E6qo4ECfvv8cQAeHxInECeW9sJVpmQmOM8tRUf
	13dCEc5SacvmyR6CLVqd2o90PQaYn33JhehrJjdu0/A6Q6ZJcgBs72B1fg7QtTxwSSdD2j0WZkwwf
	Qy8lnEcsogT1byCHVJsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whZrP-00000000Rle-2QE0;
	Wed, 08 Jul 2026 21:31:15 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whZrN-00000000Rl2-1jdz
	for linux-phy@lists.infradead.org;
	Wed, 08 Jul 2026 21:31:14 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-80e24970f1dso10837077b3.0
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 14:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783546271; x=1784151071; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=rD8Rdbcyzr5wgb5d/wOITySr9kXKkBnyqKEUP/l+nWk=;
        b=YC2O38bMoRVt9G/a5sARoUzvMB6wCQrs3pDDHJg9Ur4f3Uy1Xpl9UCEt7pt49nOteU
         RO7XQyJNPOtnBKCM8Jxu6j9oKxUwUtU24QQfyM/lPkQtLnfCsLTbkYJH8wy5YmzwhxZi
         gDvWFfzTEdigPW4p3moQ8wqg3moyESVoogueIzIyy3xbKQlBeeUzkMjjmMdvBrd6UhOi
         RRkU/nNdKNtJTLZ8Nl58ADK4dHo5R+kRR/pvSQANQrFo+luFJnOQraIC4+8kN3HGeNs/
         kTav3jL8CGB9Pj4+in3OPspTfTrEMmqP7J1qrzs39YzLonbVimkMCJ9wderkRF15vgxp
         70Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783546271; x=1784151071;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=rD8Rdbcyzr5wgb5d/wOITySr9kXKkBnyqKEUP/l+nWk=;
        b=c0z87wKds11vp6TwNrxpB/nW8Ndmo1dEItC4kGXgGZJq6CsaPMu3uBUkc8rWHW62MY
         ay0FaQN73usrImMv5BeZwCxLGB4k0s1yQXw+2Ip6CkvoOfI9Tez2qwCCqKQRLpkwtiFJ
         qnHZ5LX4/UUHXB2woGPhgJbfn7uX7yHt71T3VbahaKZPwGoBv+Rdx9dfSFEblPSHrL50
         Qic/WXyO4h0PKKkxK4e7kCGJHZ3qVDkVfy3tS1qpzhl/Oi3/1NwapnyE4nzGxyy3tea9
         QmuZt2LOslZ6dNDSGHP/m9fiLcE8nOcwPF9OzPgw8H5Y3ZZy1FSizYz2VlPxBjh1igq0
         hP5Q==
X-Gm-Message-State: AOJu0YwDn54kGnTVu46rw6yCSE52ifV5YC7Ub5ZIzWtV+yV57QQ/s4E9
	1ceRKpiEdPg0yhuD+qFS/mm2Gy4wrn9qpe7xWV9zoWDjyzzjErDWQYUI
X-Gm-Gg: AfdE7cnDRIL1YmJz0DAF8rL0kNUquCT7x6lidb5zBJKN6cnl5xigf+9ZKfbKJ3M8BAo
	mk8awoW6EGybv2l+nl4/HN1Trt2Ku4U0qPwjXQTAkKv+y5DYOE1HU2eWROPuXGbAunMRJh6+3iw
	z+f/ppYncwUuEjjn0yNJg5y0SPr2qHE8eBIYzorx04M9Tp+Axa7+f99hQir81jdQtyRa2QNTnTs
	6sUshBL1FHTngYqa+82vR/Zb3MBU2w7CP1rB00JgoHGcNxVC5PDwaURXMFMaK+7ZylOX9HeuVMW
	z35AX6WCSIAdNR50oCGQ2AU2mO934BecoHhEjGbV76TnxpHgJpCKblZLX8RgFuHvv/mZXWfl5oC
	JxitJGFRYzqg3z6EZOOlwYhB0V+TB3MFxr0raFOemn+4udEUXvs3ADvFuQUnUj3UxyJ8ynzg0Np
	/0/v0O4aU=
X-Received: by 2002:a05:690c:e0d2:10b0:81e:2b86:d75a with SMTP id 00721157ae682-81e2b86f500mr19581337b3.55.1783546271513;
        Wed, 08 Jul 2026 14:31:11 -0700 (PDT)
Received: from [192.168.1.71] ([2600:1702:56e9:4b40::20])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81e6bf37397sm2197197b3.16.2026.07.08.14.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 14:31:11 -0700 (PDT)
From: Akash Sukhavasi <akash.sukhavasi@gmail.com>
Date: Wed, 08 Jul 2026 16:31:00 -0500
Subject: [PATCH] phy: HiSilicon: Fix error handling in
 hi3670_pcie_allclk_ctrl()
MIME-Version: 1.0
Message-Id: <20260708-b4-hi3670-v1-1-f9236f3e585c@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDcwML3SQT3YxMYzNzA900A+MUQ3OLNAsLy0QloPqCotS0zAqwWdGxtbU
 Amn6IgVsAAAA=
X-Change-ID: 20260708-b4-hi3670-f03d178f889a
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Akash Sukhavasi <akash.sukhavasi@gmail.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_143113_468068_8E932CFE 
X-CRM114-Status: GOOD (  10.98  )
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

When hi3670_pcie_pll_ctrl() fails, hi3670_pcie_allclk_ctrl() returns
-EINVAL directly, skipping the close_clocks cleanup path. This leaves
the PLL with its power-down bit cleared.

Use goto close_clocks instead, which disables the PLL and propagates
the original error code from hi3670_pcie_pll_ctrl().

Found while investigating a Smatch warning.

Fixes: 73075011ffff ("phy: HiSilicon: Add driver for Kirin 970 PCIe PHY")
Signed-off-by: Akash Sukhavasi <akash.sukhavasi@gmail.com>
---
Compile tested only (x86_64 and arm64 cross-compilation).
No access to Kirin 970 hardware.
---
 drivers/phy/hisilicon/phy-hi3670-pcie.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
index 7396c601d874..e909d0e5be0a 100644
--- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
+++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
@@ -480,7 +480,7 @@ static int hi3670_pcie_allclk_ctrl(struct hi3670_pcie_phy *phy, bool clk_on)
 	ret = hi3670_pcie_pll_ctrl(phy, true);
 	if (ret) {
 		dev_err(dev, "Failed to enable pll\n");
-		return -EINVAL;
+		goto close_clocks;
 	}
 	hi3670_pcie_hp_debounce_gt(phy, true);
 	hi3670_pcie_phyref_gt(phy, true);

---
base-commit: 0e35b9b6ec0ffcc5e23cbdec09f5c622ad532b53
change-id: 20260708-b4-hi3670-f03d178f889a

Best regards,
-- 
Akash Sukhavasi <akash.sukhavasi@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
