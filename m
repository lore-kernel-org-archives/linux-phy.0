Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5C3FCA0FF2
	for <linux-phy@archiver.kernel.org>; Wed,  3 Sep 2025 04:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=owIOWy/gksf3T0p0DkQqPqVFGQYgkvWkBhQ4a2JbQ+0=; b=hLnQ8t+UdASSJt
	vHx5BbSZosYKVgd0KFegtqc8bOVi0+JV2wtfe+dFTA5lxtFkyoMTAG828DczOxGmZPgng1wZIXplO
	FtY+CfE59j82IzjGlg4vnoLt4+uBGwwzTrryuDHVoPbYGfcxWssnBDuGOqCB3MqA57TfxmabgkniB
	zChqmYNFPMBlPnD/5fl8PRSjeVahdbaa5B+A4n274X7s3uCxIPXjC5GuCA9w8grAAqLEvuUxrkmUb
	z06RJkaDHFBh+UqpA0TNnsB8+9kk3rCIYRwvSw3pglyWHze0Xu2tl94MsgG0YCtCdEZvYu0n9vfEh
	tDuSUW8pe/kaGdnsaSrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utfUJ-00000003yL5-1YFF;
	Wed, 03 Sep 2025 04:52:51 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utfUG-00000003yJU-3Lw1
	for linux-phy@lists.infradead.org;
	Wed, 03 Sep 2025 04:52:49 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-323266d6f57so6689827a91.0
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 21:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756875168; x=1757479968; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q7R3UA6dJinJ0I/6N9AH4Q+v9BW5iCYGVoJtMMc/Y28=;
        b=R4ej0nogUA9zghO/yDLG/b5YbYz6DbbyYWU04CXNaKRZ71BhLCJUI5k3c/ocC61Ys0
         yXCFzYry5qZNXbKLz8D8lc1L3GsNb1UIHqMHSHGTQQIaMdVkGyQFNtNh40jjmwHlIb17
         GR87oxR+3GMjiltnkAXkZZsltdHoUQ6L9KQYY4lm0AL9p4gvS98KJVhGV9Qy9kdhnTj9
         ZsQpdU8CuY2W2zUhlOhJFFfSyg6Wbry4DIvsxOnNS7Z9bJPRiVmWIW5e6sd/b+SUbAid
         jOFwzeVyE8zpqn1gyqdja9gxHioPJyeyHiuMA96C/SzVSDvwy1kTmgCVd2B8Bom4yXAJ
         zKAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756875168; x=1757479968;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q7R3UA6dJinJ0I/6N9AH4Q+v9BW5iCYGVoJtMMc/Y28=;
        b=puFghiWKJwQhbAUSEwPV8WkJsnL7w7Q1vsLiTOBb6a4v/CDP/q8xZbSjOIxN5RKLs9
         IcwyNveh4mbtT9BoRsP/PIZAYFbPv7Qo4nna9FBjcCuuLnNr2H/B3BkzozeJjbS6QG8y
         WQWamkB5WY+4FBerrq/iw1SZI3+qhGEqQX6LQF6jCVJgVl4DT0wH55/0yFEPZEOy3Dm8
         h04D3rlycx54gP2cJ9+AyskyyXusl3/EA9UnT8xnC9GPr3jmMND6dvkzvFiHVEt/ZIGI
         QAriLzV9YUTunR+I4DQD9GC6lnoa6+1Tco6aiJvo4q3tMFdjYdsOXT7OWq09+ztlzAWk
         YeZw==
X-Forwarded-Encrypted: i=1; AJvYcCWcC2lqb33rQWSjLJX8f/ybAt2tztSml+DsHdvJURtQ0SWnDMjXjznQhdi/EpI42XeTPApZdhEQ+Is=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0WvNHETGx+7OCjFsOkapPrt5Nn80P1vHehcKE6mJ/JUQYSPHK
	4AI+cXCGlrCwMq6ZlyMpKZtZX/NmaUdeKnyMh8zPXg8frAvSU48beSBssBa83kHedjAtBA==
X-Gm-Gg: ASbGncvglYd0pqeSYvNwnn8hjxN08W8kAXhzkOrD6DJ3IIP0WkM8iVC7GvFQoyPNKkv
	4q4+kqn0bfUAs/GIJJpe0sBaiJG4SBbZLYfk1KBvQcfPPyWr4spfBm4wx4r3KSzg6UA3MsI4/Ki
	8FvuQnaRYOwmbn43ChMMTzL/MzP0a9XemZsG1f42qvaV8LMcIGxhaxheIhQVG+Q4LUxFobP+NQ/
	LoFjL1V2MZkL+7v/ERUOO0mvgvgCmL2X8TNH/GkKYoYGI46t8AFl36YTrXYgPPbqamF3Bt2rehF
	h1pjaFJrWcMS/6ztCATAl3+ouLUUs0CrXFVnsYMkJmMuQUCHP6xfxDwC6pWUdi32qp8qxSpGUHe
	piafW0ahoELhwwD2eflxzRQ9pjYCzsL6bEf/6306mL2CG1/U+wEga6/jc7O9q10J1UnhPMflmvm
	ijIGhzd9UC4NlIXEpDouiQTQBbADRaYBQArCqDxSYp5W3utDAPMFfcrjUg
X-Google-Smtp-Source: AGHT+IG/noxDbJ2ua4C+CLSewBamCxkllBE3NpGs19mktDiXa50Eu+evBczxnqDV+nDB2Up/ZpTxbA==
X-Received: by 2002:a17:90b:2751:b0:312:e731:5a66 with SMTP id 98e67ed59e1d1-32815412c9emr18183834a91.3.1756875167828;
        Tue, 02 Sep 2025 21:52:47 -0700 (PDT)
Received: from vickymqlin-1vvu545oca.codev-2.svc.cluster.local ([14.116.239.34])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-3276fce1160sm21537553a91.22.2025.09.02.21.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 21:52:47 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: JC Kuo <jckuo@nvidia.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: linmq006@gmail.com,
	stable@vger.kernel.org
Subject: [PATCH] phy: tegra: xusb-tegra210: Fix reference leaks in tegra210_xusb_padctl_probe
Date: Wed,  3 Sep 2025 12:52:40 +0800
Message-Id: <20250903045241.2489993-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_215248_835639_65CFA92F 
X-CRM114-Status: GOOD (  10.29  )
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

Add missing of_node_put() and put_device() calls to release references.

The function calls of_parse_phandle() and of_find_device_by_node()
but fails to release the references.
Both functions' documentation mentions that
the returned references must be dropped after use.

Found through static analysis by reviewing the documentation and
cross-checking their usage patterns.

Fixes: 2d1021487273 ("phy: tegra: xusb: Add wake/sleepwalk for Tegra210")
Cc: stable@vger.kernel.org
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/tegra/xusb-tegra210.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/tegra/xusb-tegra210.c b/drivers/phy/tegra/xusb-tegra210.c
index ebc8a7e21a31..cbfca51a53bc 100644
--- a/drivers/phy/tegra/xusb-tegra210.c
+++ b/drivers/phy/tegra/xusb-tegra210.c
@@ -3164,18 +3164,23 @@ tegra210_xusb_padctl_probe(struct device *dev,
 	}
 
 	pdev = of_find_device_by_node(np);
+	of_node_put(np);
 	if (!pdev) {
 		dev_warn(dev, "PMC device is not available\n");
 		goto out;
 	}
 
-	if (!platform_get_drvdata(pdev))
+	if (!platform_get_drvdata(pdev)) {
+		put_device(&pdev->dev);
 		return ERR_PTR(-EPROBE_DEFER);
+	}
 
 	padctl->regmap = dev_get_regmap(&pdev->dev, "usb_sleepwalk");
 	if (!padctl->regmap)
 		dev_info(dev, "failed to find PMC regmap\n");
 
+	put_device(&pdev->dev);
+
 out:
 	return &padctl->base;
 }
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
