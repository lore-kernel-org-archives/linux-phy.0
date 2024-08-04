Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC78AC3DA64
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 21:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QgCMDIds2MIFzQwCigfR6DJSGOEhKMd6/yJTbDZXZGs=; b=JcVpd1ox+9gPKO
	zi5K1Bvj5mvcIZC/YMhhAZi5tckyPg2R9gimfNvLJga7UyipFD4j4JNi6C3MQsCmu5i8gnRCYXL84
	YaAhChQ4Ikgd3Jo2IzylirBPn/yyW3GrXq2JRdgPhGivrnh/9EYyLHjzHrXv0FIcDD/A4ZFt5KvPG
	jw6J2P8GPdjeeCXmOtGmQlBKIu3cP6TbE48bVLYsxAwVrMVL0SH4fLDbxzz/VbcGwekcWC9lQuZ/+
	6QBRsptK/IZdUri+K4AcjFmEIO0kK6gU270QnkObuPatpknV1wIWAJt3CkfFJ9yZxcThiTxUqW1cd
	FrNyQStdaPbwxtbtbgMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajCx-0000000DzZJ-2DQW;
	Sun, 04 Aug 2024 21:56:07 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajC6-0000000DzHE-0wgo;
	Sun, 04 Aug 2024 21:55:15 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5a10bb7bcd0so14367786a12.3;
        Sun, 04 Aug 2024 14:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808512; x=1723413312; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z5rhR3+v2dU7aRSLZ6OU5clgVv9vaFNsSw8Xkl+ANI8=;
        b=V+QHFELSs+7OsrHK+ZgDCprBcXpgxdExNV/ELc5QwET0F7onv5rDVKwXYaoLaOtdUN
         KuHk1rIGGdbt79Vs6bq87IgfuJ85j+A6WqiQ5k1dp8FQlxfhtyx4kiYSfL5qMZQUxYiM
         pXnIx8pWLYIYhuKkJW3i6Zk/pt2ASdYDMoosbkzaXnjkBv7YsvrWBPpUBVivvlqAQ1cC
         lWAEsQIqQGvSRPvSfBuZLF3R6NDsUQo5QEP7qDICXDxYxfdWVf1NWQ+qseVrZvlGVh72
         QNE26qAYVMpSWFZyNfKSC/0/9j24yR6UzMH6GzS40NMOh2yB4nqqNJGrwsahbOPEKXF6
         0YFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808512; x=1723413312;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z5rhR3+v2dU7aRSLZ6OU5clgVv9vaFNsSw8Xkl+ANI8=;
        b=LxlHTgR3gtW+zy73u4hzGFid9o8CQ2/tx+nhjnjm8JHObnztHhuH0lUGTlxtRzQQrL
         sLr2na73TDqKGcRvSOA6sTT3UG8wFnGNV+XmE6ZmtzAdt5DkFEItBnwW6GX7EXVf6bGH
         YbRVddXBD4gnsNF2BuYZt33Ljtbmqz+grFOLfvw+FlRTyLCWK9Yiun4ciuL8sKCNUjTV
         9jtZlB3tVrehyuniDLnQTtdkQlypfComkgqF2HppOdYtWdLjFWHxa5h1NAhb6MuiLGvf
         1tsdT4W+42z5gwathHznQxCUSkLqbxOcpRSKxHmJIPntNok3Az61Ti3fuTlrjz2AJZOE
         CuRw==
X-Forwarded-Encrypted: i=1; AJvYcCX61F33AaguzawoikYEwGhTT09rzSxPrWxiFJsv3hXIf810I/1r8vHtUYYBy0/wgTkdT2JYMe3VLdEBJ8YwVdFlbYF0OfzxaJijAi9NHNaJB3Tw1h8=
X-Gm-Message-State: AOJu0YxOZmEfeHhDinZDPJZEHAkfa90srHSfJzvP6mHBCOB/HFLdIcPN
	48yTFBb07gzWS18H65RQPlsSNkE34bg3YaxNwmS1pek+T9OC3kNL
X-Google-Smtp-Source: AGHT+IGzaq4YPYNj2lalwb5MlAOxdlQf/QYs24OQsJ6f2k6Wa9MSyqE9gN6Oy/V21lb4i0xGRTiEbA==
X-Received: by 2002:a17:907:3f8b:b0:a7a:a6e1:2c60 with SMTP id a640c23a62f3a-a7dc5148422mr690105766b.61.1722808512146;
        Sun, 04 Aug 2024 14:55:12 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:55:11 -0700 (PDT)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	David Virag <virag.david003@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 02/13] dt-bindings: clock: exynos7885: Add CMU_TOP PLL MUX indices
Date: Sun,  4 Aug 2024 23:53:47 +0200
Message-ID: <20240804215458.404085-3-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145514_288287_C06129F2 
X-CRM114-Status: GOOD (  10.33  )
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

Add indices for missing MUX clocks from PLLs in CMU_TOP.

Signed-off-by: David Virag <virag.david003@gmail.com>
---
 include/dt-bindings/clock/exynos7885.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/exynos7885.h b/include/dt-bindings/clock/exynos7885.h
index 54cfccff8508..4ce86810b10d 100644
--- a/include/dt-bindings/clock/exynos7885.h
+++ b/include/dt-bindings/clock/exynos7885.h
@@ -69,6 +69,8 @@
 #define CLK_GOUT_FSYS_MMC_EMBD		58
 #define CLK_GOUT_FSYS_MMC_SDIO		59
 #define CLK_GOUT_FSYS_USB30DRD		60
+#define CLK_MOUT_SHARED0_PLL		61
+#define CLK_MOUT_SHARED1_PLL		62
 
 /* CMU_CORE */
 #define CLK_MOUT_CORE_BUS_USER			1
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
