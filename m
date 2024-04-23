Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53EFBC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K13RNAYPzsi/siIzxX3Y4huddPaYqc7vSo9fZH8QzvM=; b=kg5/qmH/cLC0Hm
	QYQF3kFpoawkC7/0Kgt2Qt5LjGxIL88jg76XK8ZpsgEENxQbnIPbkJaYkiRbR8BZmPJiBXXE42GX0
	P+KRH92TUDTsa27n9NcI9FJO/zh6GZqAbMRAkwXSlikDrmyjGM1baT6YRPCcW1IW/mdjFLxosjsIb
	hIimTdaNRdbNqJqGwadnxEu36vM2AzkSARbylloTuaM1cmPLAR0eqVb9gx95Zv4G3SgjoSQEYjPFZ
	Jsrpg95eBKrcJqwMSjudloRJd4zKYtgN7wabmNnx4CWyt9pjFsUsQlZhz0lkOmV3fDc6xuzqI2XoE
	g8XIPAW/EubFAy0v+e8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN6s-00000001TMZ-27PU;
	Tue, 23 Apr 2024 20:51:27 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN62-00000001SoA-0XWr
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:38 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-41aa45251eeso13713145e9.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905432; x=1714510232; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s/GoVzExBpe8QxX9A9OVe1Uavi5SgYLv/AxKVNUl0KE=;
        b=Enewye5gTkfsv8oyXGqfH37zv3RdXdLRmFfypd74eyjL/G4k6FfRjXiVX8gVFzN473
         nYmR0O108bztt7m/+KEUu8CTd0ZzlwT8Fi5bEWlGyULuVPAwvXYTXHThIs/N9O2UVC9w
         hll9qekF8ujjDbk2/z9M06eA1pNKvx6k8PGSFTRjUdWkddA2pByh8DqiDeITY2QhwqZ5
         tmeIy5IKUA2ImSY7+JDDubBoxnABx6yAQhuVRioFtTaW6i8wtH8ua14iJapDz2PunsHi
         +cLkH2ubqGVNtjH9EYP+nxnxOfdiRP+iTXlFse/ZO+YoEbcMxlz3E1HZsTqPLxuWikOo
         WeMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905432; x=1714510232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s/GoVzExBpe8QxX9A9OVe1Uavi5SgYLv/AxKVNUl0KE=;
        b=BjE/LBlujq+c3o3GghD/ZKaevWzDQ9gJt4O63oYJZ3VAedpC8U1wsnJeOWE8IoJNlW
         HjKT9SP0b2a+6k/6+B92bjNheQT2gC77vzSuvDZNpCwl9BYDi2SMBUKi3pnbg/sFqmiU
         kxS7o3LuSts7IuiJMOdvnEZZRwnnhjhsaIHWf1/iIX24TaI4vCsKqto5MvcBIfr3+vju
         6ofwh/LzsaWGRIKDrnGQPxuisHU2pKVEmrrO2BlFs8rQwrTpZCJ1LZCcVbjT0Z+pvox5
         PHgCmAH5kkjjyTz8LIMLTlh+qOTn4+YnhmggeGEN30WFuhuLIUy9Td+n8e1Kswww5L7z
         4DGw==
X-Forwarded-Encrypted: i=1; AJvYcCWNHEB5V7QavrW1epsjmZuKcenV74cWheSc22IQG8ppWQhfRX3ugXDA08nWpNOXBSCQyzBaaNI5FbiP+t/kPMIPA6mumy6gwxLMOueoUw==
X-Gm-Message-State: AOJu0Yy58Da5iKeLyZM25cQw3fW+TzgME4TY7bba7G2vpJsrUhhh1lFT
	5wZYP1YU+ClQShf7VxIwYgSgDVp1u23bhy1Vl0YExLSaWfIZkfhGEKqIdlHwGaI=
X-Google-Smtp-Source: AGHT+IH6z+0zlU25050wMvD0vuxotNnh43coyHQIMqF5YmCpBQNXBCfzRnt18Ll4b9pvC+KY+bIGQA==
X-Received: by 2002:a05:600c:4590:b0:418:f991:713f with SMTP id r16-20020a05600c459000b00418f991713fmr263623wmo.23.1713905431899;
        Tue, 23 Apr 2024 13:50:31 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:31 -0700 (PDT)
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
	Peter Griffin <peter.griffin@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 10/14] scsi: ufs: host: ufs-exynos: allow max frequencies up to 267Mhz
Date: Tue, 23 Apr 2024 21:50:02 +0100
Message-ID: <20240423205006.1785138-11-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135034_269232_155AFD7F 
X-CRM114-Status: GOOD (  10.88  )
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
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Tested-by: Will McVicker <willmcvicker@google.com>
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
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
