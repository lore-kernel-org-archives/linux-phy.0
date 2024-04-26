Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3489C04FFE
	for <linux-phy@archiver.kernel.org>; Fri, 26 Apr 2024 10:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNYK5n2s54o0H1v/cQ2u6w9HGsq/LP7dAfdPpjj4aSQ=; b=174jEJ+i2VJb2T
	JlyKKfwKzmN9UikxBN3m2/rjK2TfFEo7fpLXeAru/A3Lz7buRsunSzt0i34Btol870O7RHYILgRz8
	5ya0gHjELhWr8LHgSvLTgsyrOJCMXGi1cqPXpr9rmO9SRMwI6xYRR6/k1diH8K1W/+UbCWu9O40Jz
	7VECgSRwck1v3QbODzUsC7QY1/xM4MqDqT/UnxN/q6wEkbMncVtozFYZ3bhnGnP1h+MpTOOWyqZv3
	sQhQmeejlf9W6zcmZ2vNC9v8NN0s9DLl25b7VC8hrmOzH6mDIW86MO6dshGW1rZ28qERCU4opB3vE
	htRAPu0KwJ2lLuOSbzxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0J1R-0000000CBHx-1sX3;
	Fri, 26 Apr 2024 10:41:41 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0J1O-0000000CBGL-1vQW
	for linux-phy@lists.infradead.org;
	Fri, 26 Apr 2024 10:41:40 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2dd6c160eaaso24713691fa.1
        for <linux-phy@lists.infradead.org>; Fri, 26 Apr 2024 03:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714128096; x=1714732896; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rbXwx/HNBBmagZEhDQ/BaLCRVM/2fRQKE1iroB24Qwo=;
        b=o+HDwNJZ5mmJRqICjAhxW+DuzfzQnJgWhAg8e9vLutvsA+waVreVlhLKsI1OxTwWRr
         RtjVweRhuGld4jXWsxLJsHvk/kv2px8xAcMkqKH6mB9gVU1TrTLm+0CHMPfeeWiWXwv2
         qhznGKE5yxQDxovySHQNe/IPBFqx7JZgsKWL8QE7onu2VA0t+eRbvtRpcyLojFM4zGDq
         L8lbqg79J38tJGzIubY7Yk0RGwxkTTQ+EeElRyhxq2SgMA+HZY2zsp3BK5FFtkjsm0Sj
         LAJC60TeAKDgkplGzlHByMPZusOSbN/vuKEAGNHREb+l37S2EkihGGFaDcji5UdeE0Sj
         Fe2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714128096; x=1714732896;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rbXwx/HNBBmagZEhDQ/BaLCRVM/2fRQKE1iroB24Qwo=;
        b=HcdbF03aVnRUSDtjrAwB0/jL61GOzqwlX4vmIQClpqR8VtUIcXbsF0/UcAQWj5Iu2c
         5Ji6sPIUxlCQIEWBcEgRoZi26Dn0IRtqyghejuSEAcuYfVmSsgBCT6z+JQAXbwiXzNhe
         S9KXV/0RsYvKLEgYbp4i9FNSIbwQM795ivpv48AAcSnsAOWQomy21y4vyMPyrGh+w5pP
         XumGkXIRbPGJcW+8FEEpjsBAdwSMgAbhMKOf7FJJqqv6va5MSGdp/apZ+0u1MsMrindI
         HLrnHqZZnaR69Nqli+RoLu+JCXhCAlINLMV2hROgH0ZO71JMSpeiprrxP3q9lLSiSdSo
         4IYA==
X-Gm-Message-State: AOJu0YzSz6uRiCUOrro+7wmGQaEQTcHkz1LwsLyLCFXyhldJ69Vg4w2e
	YiKxkQTPVoYgpY8e1UxKhT+qbAkyB7sXbnEDwxa0ctq2VEHoxdqVSo8F4dzPLrQ=
X-Google-Smtp-Source: AGHT+IHiylD7VQWD1+ej27FAWnFwoUKQ+ZEhfuiu1lnbA/xYwpsUIFHWtBloSi6kC41eD+L1ByFyIQ==
X-Received: by 2002:a2e:a1c6:0:b0:2da:36be:1b4a with SMTP id c6-20020a2ea1c6000000b002da36be1b4amr1770332ljm.19.1714128095556;
        Fri, 26 Apr 2024 03:41:35 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:63cc:9bae:f542:50e4])
        by smtp.gmail.com with ESMTPSA id o14-20020a05600c510e00b00419f572671dsm22035335wms.20.2024.04.26.03.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:41:35 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: vkoul@kernel.org,
	kishon@kernel.org,
	krzysztof.kozlowski@linaro.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH 2/2] phy: samsung-ufs: ufs: exit on first reported error
Date: Fri, 26 Apr 2024 11:41:29 +0100
Message-ID: <20240426104129.2211949-3-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240426104129.2211949-1-peter.griffin@linaro.org>
References: <20240426104129.2211949-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240426_034138_507655_4EDFDC84 
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
