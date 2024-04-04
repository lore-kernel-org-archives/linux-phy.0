Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9598CD1284
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 13:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnOndBeeuZLgFzhV02qhQmHn7FU259FmuvL7lMhi8nM=; b=3Ib4OxRiumI3yN
	QdSC8H0TUsa4qRbm6RU+P3Sr+3iVXnqkIEmtB+3+H/6NKe/eUbT69hGvsj2zmNrMb7btRQiZuctin
	ZYFO146XSJlkpNKR5XPmJTve27cZ8rvYlU+MKFYsK51Y8T1yPk1FMpPHLeBtfj7252nqVseWNX204
	4HEHk0xEW/lHmqzQsFPA9MmBKid0SwZ0EifJ3m76L8MxJLdwQhh1Xksl3Iwy2MNiMqbRjCyPNyqtj
	z/oA+JJnbgzM0hPiNG9+QMpxQGtJWi7+6XYYl08prkzhGCw00Vx2wZFHG2j1m/6+6cUf42szhZaOh
	iWxPVvhA2alOvh0lXXdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsNEl-00000002pLR-3Sae;
	Thu, 04 Apr 2024 13:34:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMBu-00000002bNF-1s3X
	for linux-phy@bombadil.infradead.org;
	Thu, 04 Apr 2024 12:27:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=BekuFHDEQz3MItNlFSbu6RpX09gKsg0FByp3fiEppHo=; b=ngcilmyhHsgFkFFewoxC5DvkC0
	68+p5HxvGeJqhDb40NXAzZuMCmgs8o3lLybXBCdnntABjFYiCYF2EV2rRbRyL13oWT0dSvUxDjZxX
	UL7xMdmWPm61PZc3BLhSCHYlXHddfF1HLh6KZGNMrKDdFMq8Yz8cwUnbwXHxdNJP3In7BP7AGRAmR
	zftE3oQmJWPyHt5yzA8zR72KdTym6uGmQShTwcp8xNyhoG1OJm3+VL97BTk2ZUiPLSk6Pz7uZYijn
	KlRBESTQmDoWdI1G+SEeo+kojc9eZwR8+1NIdqNqcq10P1WzhlKH0wDbanj7gdLz06SGhKgiX3/zQ
	En4AxRsg==;
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMBq-000000052K0-1c8S
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:27:36 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4162c11acf7so1654685e9.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233653; x=1712838453; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BekuFHDEQz3MItNlFSbu6RpX09gKsg0FByp3fiEppHo=;
        b=WjERnYSnBKGjX61NbHYYtRzWze/YVDKSMn2wXHm7XBN0JAk3reht2ScMA1wAK2ijHL
         4IhnFfIUU2+qNFCjEW/K0RtmLiUJrWLy9B/nqg6XnbhI2PSmgDL8OOk3vZ0tG44keTvj
         LkJQ8N9im4Hikh0BPG2B4K0nwt+C2uRIewY8a20ws9HZI84Zty1fkN68/bL+DWKGgZ2x
         F9aOAgylOUK37y/+61sHBMhrUadbuGFCZ4eo0HVGLnpbQZJ8hmTZXvKJLr+Yep5u98M5
         O6zR6l6WHz1jynWowxzYQxF4Oqj7DJreDQYVH5AlUqzhyTmwrykM44OfxcsUbRvdcXUo
         kAPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233653; x=1712838453;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BekuFHDEQz3MItNlFSbu6RpX09gKsg0FByp3fiEppHo=;
        b=Bcy4gFoTdh9jRKeeXH08cWoG+uKjdvgPKsBrBXOG+xRZ3Jw12cvBiehMOFtNQtITJH
         rEbTSvAjI1AyTdWFBYZmRHujSFvZLgQDSfk+dxlpf2941d0Qve45JHvMw8fp+H236Q/g
         rwwMJxlNW3idTYNKkqQ3NQ/Gb/Hf0MASV2SHBPqrn/Lob+IcZ+SAx7XBWkgJMVblwQTy
         KoU+fQzVo3f/u81+olutvtpYwKzzLGa3i48c7q2KN7/gLS3oepynaq4wKyfHSzdrpeOG
         aVjVsFpssKKnj73KLqU+Daf5/A034dBUvMxqtgcN1TWjLd2povkxQk2BqKkm8+MnjuQf
         GPUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXynanqFN+/iuRmVdgwjZVrnDdFVKu1nxrbYtm2H+JgN0C8wD7jdxdtePfW1vPv+rvohJMyLIuGsfz89SfKf7qvdpoJHTqKD7VhxfLxsQ==
X-Gm-Message-State: AOJu0YyZULzBmrKlQ5zw6r9tM14K77kxg8UBfbzrJkUXRQxbDpNUZ47i
	fysq+57J3ATV1dC4dalELLKH1T35bqUJ6lTJT43asqyBVRYUCRLxS+uDNkqbWgk=
X-Google-Smtp-Source: AGHT+IHo0UA4VkLq9YNMWVrdRmiVEAsMxBZeIPEoAivlBSwwv6+wNOZwB+W4FPP8qAuWikZ3EcwZ2Q==
X-Received: by 2002:a05:600c:54ef:b0:415:533b:1071 with SMTP id jb15-20020a05600c54ef00b00415533b1071mr2319673wmb.19.1712233652986;
        Thu, 04 Apr 2024 05:27:32 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:27:32 -0700 (PDT)
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
	chanho61.park@samsung.com,
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
Subject: [PATCH 14/17] scsi: ufs: host: ufs-exynos: allow max frequencies up to 267Mhz
Date: Thu,  4 Apr 2024 13:25:56 +0100
Message-ID: <20240404122559.898930-15-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_132734_822590_1B279FFA 
X-CRM114-Status: GOOD (  10.77  )
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

Platforms such as Tensor gs101 the pclk frequency is 267Mhz.
Increase PCLK_AVAIL_MAX so we don't fail the frequency check.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/ufs/host/ufs-exynos.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-exynos.h b/drivers/ufs/host/ufs-exynos.h
index acf07cc54684..7acc13914100 100644
--- a/drivers/ufs/host/ufs-exynos.h
+++ b/drivers/ufs/host/ufs-exynos.h
@@ -116,7 +116,7 @@ struct exynos_ufs;
 #define PA_HIBERN8TIME_VAL	0x20
 
 #define PCLK_AVAIL_MIN	70000000
-#define PCLK_AVAIL_MAX	167000000
+#define PCLK_AVAIL_MAX	267000000
 
 struct exynos_ufs_uic_attr {
 	/* TX Attributes */
-- 
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
