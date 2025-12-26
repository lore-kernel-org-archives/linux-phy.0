Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B530E7AD77
	for <linux-phy@archiver.kernel.org>; Fri, 26 Dec 2025 17:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m0mg1i7gr9bKiEOFg2orFgjLz9powqXa91KlpKLMR9M=; b=2gNR9LgiOXj4Zl
	XCIppPskkoA7VjqLg+Umb10Iy3GC70f58YKMlKLFcYaqm25xl3ap+sDQU5u9Y7FcFm0dndVE6pXEF
	czF7Lt2fLawIzC14cT8DWVDnFvkY0JzJrEhf5JIQO3GJz/QHsQxwGxn97CLFR1hRHMe0YREoGi1lY
	jOoWBEGjxco43+TkV+EcJpvKWYjmDhhKE6BwKeSRK+oX9l7zzQ0O7BVuctIU6pljwlslkoig1ZVi9
	lIn5ZPA/skoe4Dp29yQ9Wf21ClWXdoluCBgY4bP3PvSSJD/pYGCc7rwCDcGWEqnlqlARCDBVXN7bh
	AjnhR2dj5nCNmxOLCNZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZBg5-00000001Kln-2oO2;
	Fri, 26 Dec 2025 17:32:37 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vZBg2-00000001Kl0-11TI
	for linux-phy@lists.infradead.org;
	Fri, 26 Dec 2025 17:32:35 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-8b2f2c5ec36so840156685a.1
        for <linux-phy@lists.infradead.org>; Fri, 26 Dec 2025 09:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766770352; x=1767375152; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ciwqItzOvTH80EkqRK45xqhfDMd2iUMF4JpBnkt+bcA=;
        b=OsmXbiyWhDSUlUabe125/5JaJhyB9dQ0/p0OYTT1mH9KJPhdgk8GcKRatzDbPkmYPA
         zy5Pv3ZHlWpdSIC+qZaGAO/FOaTmXCu5gXx2Rg5ol0HX/9LQxs/Zb3X7ma/S6sLWWnvG
         zA5uqXGYAcvlMs0aY43sejvJbdGknu5acUHw8xWcsoKSHTQUwXEwi6y35YxDdtx5QQxG
         31Ow9ujxpmmx50XGN0IgJqxQAYAQRmj1GvjhP9iE8lg5aaRUcV/QZLdU1yJxNqeyvEpq
         d4XwIuJ+sDMAZ5ja06xZLe8p4qchWnolOb2AhXaSJ1fAbUYKvXBSI5nHmMb5/yRbOYBP
         l9dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766770352; x=1767375152;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ciwqItzOvTH80EkqRK45xqhfDMd2iUMF4JpBnkt+bcA=;
        b=XG8RxP0U3lbI1eJQ2qe6m5mi7/yDn/6TnCLwYVKuv0o5qVV+Se+6BwJXhmlb5Z+Q+F
         eVttRIcubwjaKjODt01j8YxlsUAB72INxnFmy47gpPu14ak76bWRmliwoSacR8BcRFil
         Mrs4auvRZYM9UStFMp3J7AilvxnN6U49YCC3uQbVwMGqKqiI71auswwBtKjq67Pr8iJ1
         ciOlf8ou7iLv/p4reOt6LpcP1e5++9bOv7+1Sn5FKr3ve5xRWOYv0DiLVLmC3LgHO3VR
         sIOjyRVe5WHofA7Ipd0naTIrIXWX1Hqyv7M15LsEiNUz5E3PPqCpfkPHZT7m7Fai9q8N
         0/1w==
X-Forwarded-Encrypted: i=1; AJvYcCUoaIUMQCMgDR+9ptaIzAJSK2uOHHywqq31nWgURH1X7TEuswTQF1J0OkHfACyXkLc0miJkRVZGRUw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxIRBNL402uxJ7o7iVt+VL71prVzW2lGDuuHd88ymrptlOmvaDC
	DCy5UIqdGjY98j5Wbjf5TjSqjqKwqPdgeu9xMF0Ox2sJ4pVvRs21OcKxfmunFSTw5aY=
X-Gm-Gg: AY/fxX5WQx8JWTaHeVlRI9PfjMNerZX3AJa3nqUFkr0+Wg2A7YMg7FPWUvQLg5yeoj4
	MQK1JsFmgGfWCivm/lBom/TpfxBrp3uBd4yLlwsxEvcM2YnqV22nEXiY/ZtX85R53AQ9yg+8cTK
	64587+rrzkIV+CToc8JyE8XtedGXJ2GcERaCzXuTde/udynLk8zDthhgD4TXu3per3V6mhLX4bM
	5LDpy19V+XmWq0LkRI6L+zjaNaFENhuWXggR4caxWjDIed/ZozhoBQCIH7CkVO56QnYppYJ/EDe
	Pal1ZE0G3C851dmkNXj3E1zpSCgfZ7qq2EyrkRybR1BKuNr0VVNrpL0cVUgQ0PzJvoWrnsM8th1
	uD36lcHKd2XY1NCZfs/SzaDb2l1oz+Cuqlxf0p55agm3UTAuknCLn6U9VUe4SC57ZpyaER+ecVK
	qVn9a2uWChdhcc03gwcXTRQGlDq4szxOt6h70ZgbJKM41zHX2d1fqz2g==
X-Google-Smtp-Source: AGHT+IGBstnrzq5tGM78o3fmlA/RjQNKRMjqUXsz1wbOluahiwHWTwU9dUEJYN2xiG5mCT00aGrX4A==
X-Received: by 2002:a05:620a:17a8:b0:88f:ee0a:3d66 with SMTP id af79cd13be357-8c08fbbc94emr3534421585a.80.1766770352281;
        Fri, 26 Dec 2025 09:32:32 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0975ee7d5sm1751075385a.49.2025.12.26.09.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 09:32:31 -0800 (PST)
From: Alex Elder <elder@riscstar.com>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org
Cc: dlan@gentoo.org,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	guodong@riscstar.com,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] phy: Kconfig: spacemit: add COMMON_CLK dependency
Date: Fri, 26 Dec 2025 11:32:27 -0600
Message-ID: <20251226173228.2020411-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251226_093234_510599_F9C69FE1 
X-CRM114-Status: UNSURE (   7.41  )
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

The SpacemiT PCIe PHY driver depends on the common clock framework.
Not specifying that led to a failure when doing a COMPILE_TEST build
for the SPARC architecture.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202512251903.sTVZgg6c-lkp@intel.com/
Signed-off-by: Alex Elder <elder@riscstar.com>
---
Note:  This is based on phy/next, which I find doesn't currently build
       cleanly using "arch/riscv/configs/defconfig".

 drivers/phy/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index aa2d30e0e3261..3bc7378ea8658 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -104,6 +104,7 @@ config PHY_NXP_PTN3222
 config PHY_SPACEMIT_K1_PCIE
 	tristate "PCIe and combo PHY driver for the SpacemiT K1 SoC"
 	depends on ARCH_SPACEMIT || COMPILE_TEST
+	depends on COMMON_CLK
 	depends on HAS_IOMEM
 	depends on OF
 	select GENERIC_PHY

base-commit: 27287e3b52b5954b73203d32ee76ffd5f53f5074
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
