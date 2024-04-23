Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7106BC04FFE
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNYK5n2s54o0H1v/cQ2u6w9HGsq/LP7dAfdPpjj4aSQ=; b=PqRQ7oetjXTpa1
	BHrqDBv/uAsJgdblE5oPAR5F5UyUZ0T6/yY54R866iBr8RR37YfsrzG4MJ8U87hEF1OK5j9vq13st
	dcQVgoc5PvsMApoDZNLVjvC7vrtJn0uKDs4TnJHst+hxD/sCKE2tbBX5BJYnkp+oZjT0km+ODexu5
	nabn8pBl5VdisK0pQVOAeTkpxlRZjYBpQ9SHf0UJr8eXEWarhL1u8+qKjgrFrMOMKJ11YrThG6o+1
	BB84YY8F4fGrj2pRNjMRjPwwRbhbUvbkWBRqMWJwen8G5oeY2J7iZtDu7dZYzoMCmCsxdZibTrTE1
	cxap0iGDmnn0UBhmq3Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN7H-00000001Tga-1sv5;
	Tue, 23 Apr 2024 20:51:51 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN69-00000001SuX-1JyI
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:43 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-41af6701806so865565e9.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905440; x=1714510240; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rbXwx/HNBBmagZEhDQ/BaLCRVM/2fRQKE1iroB24Qwo=;
        b=uFCZqiLN7k+cDXuJBGOqpyJuQyqL6s3t4+o0lpPt1ixQFsJNHB56BdW/I4hKCOGVki
         toG0waJoXE3jJ2MJCmuMFlpbo1vtGeK71ZmEzcVtgeYwzb4IejCooYEUgzl9Y97Gp/IW
         MUM6qsjlj0cg0ohdgKztpeLvwI983fWBIaeiauIUZmzaNswKOF8b8CTlXiCj0MwptgEP
         sL/P5Nbew7zuhrBMRMAK5E4C0t8cU6FVcTTnPUMHRU0jyGkRD8m1lKyxCtXjQrVbZ9Wi
         Ia5cUZUzAvD47Tp2P1mV29VX3tCGs2Cs+EGvYuPqY2ZUewbwfcuMnX+qaq1l+Psbf3Cz
         Eobw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905440; x=1714510240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rbXwx/HNBBmagZEhDQ/BaLCRVM/2fRQKE1iroB24Qwo=;
        b=vfd381CN+fhfv1a4RmZeOMrStTvWIz0GQq8YJxwRAOzMABPX9Kuop8oXb97z8BiyGu
         ViObc56dkrHcdgDs8CAyF7GKsMHUkY82ukr4V9fw2yBDmzBRRfyyPqllWLJ7AwKbZ+QU
         kyzzRWzBj3TabIXNC19tA1d5KptcTLuKlljNrhnectqNOIcFnBf+1h0fMsZk4tVdMWOK
         dhu/r+QKUv+Dtkll1lzrTCC/fHEqs7I3wS+e+rxnhXRWE8iZmBH9Xhxe4qPv/nqNgb8R
         LOKtN1uwDPoZdq/K1F1pjY8oy1SbBO3sBpHwqUM/vtcYJkdlFUtTVBFF0lQKxsCQbZ5+
         JnVg==
X-Forwarded-Encrypted: i=1; AJvYcCVXPFxho2AvHzqEcr9wYvBf5mkyedcp32d+uYxHFofJtt+L6MSa+T/so0xctD8B06x0nnw7PIJ634pxNmYBBY1/QLq92KMC9LZ1AFyZTQ==
X-Gm-Message-State: AOJu0YwxMY8Quxaa5RiyhaVHfuXka5nakQRgq5FxakEpA6veaQvW5xW4
	p77ED81O1/hEVXUPgrC+kd1pwyhf6QdA0NDJFx9oWSXarfSAFa/v3ee3Tavccx0=
X-Google-Smtp-Source: AGHT+IHSIqtxInKq6iiYNFNJ3kqmhV16rsXVp7brkjqIWHMJnipiSbohaGIAsxP3Imlg1RbkqgCLdA==
X-Received: by 2002:a05:600c:35c4:b0:417:ee98:dfac with SMTP id r4-20020a05600c35c400b00417ee98dfacmr271852wmq.34.1713905440049;
        Tue, 23 Apr 2024 13:50:40 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:39 -0700 (PDT)
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
Subject: [PATCH v2 14/14] phy: samsung-ufs: ufs: exit on first reported error
Date: Tue, 23 Apr 2024 21:50:06 +0100
Message-ID: <20240423205006.1785138-15-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135042_374462_D4EDE381 
X-CRM114-Status: GOOD (  10.28  )
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

To preserve the err value, exit the loop immediately if an error
is returned.

Fixes: f2c6d0fa197a ("phy: samsung-ufs: use exynos_get_pmu_regmap_by_phandle() to obtain PMU regmap")
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/phy/samsung/phy-samsung-ufs.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index ffc46c953ed6..6c5d41552649 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -99,12 +99,18 @@ static int samsung_ufs_phy_calibrate(struct phy *phy)
 
 	for_each_phy_lane(ufs_phy, i) {
 		if (ufs_phy->ufs_phy_state == CFG_PRE_INIT &&
-		    ufs_phy->drvdata->wait_for_cal)
+		    ufs_phy->drvdata->wait_for_cal) {
 			err = ufs_phy->drvdata->wait_for_cal(phy, i);
+			if (err)
+				goto out;
+		}
 
 		if (ufs_phy->ufs_phy_state == CFG_POST_PWR_HS &&
-		    ufs_phy->drvdata->wait_for_cdr)
+		    ufs_phy->drvdata->wait_for_cdr) {
 			err = ufs_phy->drvdata->wait_for_cdr(phy, i);
+			if (err)
+				goto out;
+		}
 	}
 
 	/**
-- 
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
