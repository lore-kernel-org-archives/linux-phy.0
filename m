Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41A9BE7717F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Dec 2024 10:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vJsAp7AIqQ7DKj7IBg4crosB0x/O9a/ldA+rbcm0ulI=; b=j3Jv4XTP3uJyn3
	cPk5cS0MzcHvG51a/NtIugL/i0xDTtf6cZ2NKUWsufoppBFdVAn3NJ3S/KSLujRo9fLapKoIAcINw
	yRacLmlC3arWLuOHeZSt5hWwhOtuoHS5jR898PIQOfnX8WG1Fdd2A7F1FRZLSHbFwv58vpLzJJTSI
	C0BUZGQircno+l1x9snhNWOgXJ9vQNcrZEqqHZp73tvNLYbFKxEAw1iTQlehCV3tTb6fm1Ns3wEw+
	mUIZkrSrJRF7bofQbU7hx99ixEdFXbxwJO2MpScYcXOv90w0yF8YcubgL0kegLVz1BqS6EqbsfXmK
	lPD2QkVUiVO488DRONKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNUSo-0000000D37v-05RF;
	Tue, 17 Dec 2024 10:06:02 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNU9v-0000000Cyut-0bLn
	for linux-phy@lists.infradead.org;
	Tue, 17 Dec 2024 09:46:32 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2166651f752so53289265ad.3
        for <linux-phy@lists.infradead.org>; Tue, 17 Dec 2024 01:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pf-is-s-u-tokyo-ac-jp.20230601.gappssmtp.com; s=20230601; t=1734428789; x=1735033589; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UZgysi3Eq/MXZ0nda2GrmLWwufoA5iL4taHvqBG4eFs=;
        b=OHEACyAi6a6H4a9IUexTy035YVfH5Tim8w1K9OAKzB1B/EpvZ65wBeqSq6vCNfE3s5
         tnaIrj0RisjgZNzUukQeI/3jsaYMk0YmXmzB5uj2+wlZCr+rcgmwTLr09RS7ZOZYZ3GR
         j5yeXwCIeG/cZ8WLaZBOGtL1OV5/w3aSOf9GY4Tf94Cm6fJwNlK3IMKEG0DMRNluIFD7
         W3+SIIB9xcFnwZJHTTui2f8R4V4MoFpDZtgikZBQ/DfNlXW3gHoZdd4VQuxOZqB9vMqr
         cwGJu7H2CT5icq5mPom5SDkEbKzgoskcMHNbkCV1BnAYrQkFhzJXgcrSeVYBifMCx3qd
         TUrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734428789; x=1735033589;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UZgysi3Eq/MXZ0nda2GrmLWwufoA5iL4taHvqBG4eFs=;
        b=Wm2P3u6VFMo4Aaz1K96bZlEopmRKbsW0sxe3XW0mxtvOPDvAerOsriNOWUnC3hXVqV
         2YdaNtizkyNidWMm6l+HRW/876Y7CjsUYh2ORd6NnwnDKA/UOepedrJlemdVYazQvk4L
         tl+1d9tUwIeop3z444zA1HeFMKLbvnaVPm07WkTzcMqsoNZ4ZEnbAwd93q3brmmFk/YV
         hAjheze+394kf6ABJqFCtDN2xUdC8git++d6/zAVfZhajTmDNU05lYGtIWxeh5cded84
         hwY5lo0RFAwPWOPd5DChXljTQALSXmsHVZxpibQj9XW0v3Ywb6gJ/YDpaF4zcu6pbxQf
         w/6w==
X-Gm-Message-State: AOJu0YwZHUfMfySFuMCkMjA3XsPilr+p8xzOqyebfXPRnLTihsS6WOA9
	xK2OkFuRxxTwHLBCXLvaAamp9ao5nYX7KyALLzVOom1melOiCzvNQORJqfMkrxk=
X-Gm-Gg: ASbGncsVgOXfMhKlyAaUXsvNp/uwbiTIl1+J7z2TW4Z9848VUb2z/iRn8YgJSwvOr3t
	rc9XGFmKsvN41YvQn7k+UJCQDd0fB7kxOd8xHfPBNOW8U6gcsKb+n8ZUXHTywffeMVb8qvvD47G
	ouZRCT9m+RCXwAm3MxKeR9cjqa3ShStOnwOOt14PjzA32W24jEmEdLwZ4STZZpvyGalJtvRly4w
	1HZ+3x5KMj33E2beLT1d1qtFkzLnKFwOjo/NlKFahun0tNqnrDL2ejjjuWElV0SLvtesfsWNxGG
	q9Hj
X-Google-Smtp-Source: AGHT+IHJP8yxckoVdPc+Ode0RZ6YV0v0V/jN3bbS1RL53VBPm8JDaiiVWWu5NYNZjKQbrPw4G9+TaA==
X-Received: by 2002:a17:902:d484:b0:215:431f:268f with SMTP id d9443c01a7336-21892999536mr241802285ad.10.1734428789635;
        Tue, 17 Dec 2024 01:46:29 -0800 (PST)
Received: from localhost.localdomain ([2001:f70:39c0:3a00:fdbb:f275:7572:b1a3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-218a1db8683sm55913515ad.17.2024.12.17.01.46.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 01:46:29 -0800 (PST)
From: Joe Hattori <joe@pf.is.s.u-tokyo.ac.jp>
To: vkoul@kernel.org,
	kishon@kernel.org,
	u.kleine-koenig@baylibre.com
Cc: linux-phy@lists.infradead.org,
	Joe Hattori <joe@pf.is.s.u-tokyo.ac.jp>
Subject: [PATCH] phy: ti: phy-ti-pipe3: fix a device reference leak in ti_pipe3_get_sysctrl()
Date: Tue, 17 Dec 2024 18:46:20 +0900
Message-Id: <20241217094620.3779518-1-joe@pf.is.s.u-tokyo.ac.jp>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_014631_444711_FC4AB724 
X-CRM114-Status: GOOD (  12.45  )
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

ti_pipe3_get_sysctrl() calls of_find_device_by_node() to obtain an OF
node reference, but does not release it on error or on removal. Call
put_device() in the error path of ti_pipe3_get_sysctrl() and .probe(),
and in .remove() to fix this.

This bug was found by an experimental verification tool that I am
developing.

Fixes: 73bbc78e57c9 ("phy: ti-pipe3: move sysctrl initialization to a separate function")
Signed-off-by: Joe Hattori <joe@pf.is.s.u-tokyo.ac.jp>
---
 drivers/phy/ti/phy-ti-pipe3.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index da2cbacb982c..ab3614d169ec 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -719,6 +719,7 @@ static int ti_pipe3_get_sysctrl(struct ti_pipe3 *phy)
 						       &phy->pcie_pcs_reg)) {
 				dev_err(dev,
 					"couldn't get pcie pcs reg. offset\n");
+				put_device(phy->control_dev);
 				return -EINVAL;
 			}
 		}
@@ -737,6 +738,7 @@ static int ti_pipe3_get_sysctrl(struct ti_pipe3 *phy)
 						       &phy->dpll_reset_reg)) {
 				dev_err(dev,
 					"couldn't get pllreset reg. offset\n");
+				put_device(phy->control_dev);
 				return -EINVAL;
 			}
 		}
@@ -808,7 +810,7 @@ static int ti_pipe3_probe(struct platform_device *pdev)
 
 	ret = ti_pipe3_get_clk(phy);
 	if (ret)
-		return ret;
+		goto err;
 
 	platform_set_drvdata(pdev, phy);
 	pm_runtime_enable(dev);
@@ -824,15 +826,25 @@ static int ti_pipe3_probe(struct platform_device *pdev)
 	}
 
 	generic_phy = devm_phy_create(dev, NULL, &ops);
-	if (IS_ERR(generic_phy))
-		return PTR_ERR(generic_phy);
+	if (IS_ERR(generic_phy)) {
+		ret = PTR_ERR(generic_phy);
+		goto err;
+	}
 
 	phy_set_drvdata(generic_phy, phy);
 
 	ti_pipe3_power_off(generic_phy);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	return PTR_ERR_OR_ZERO(phy_provider);
+	if (IS_ERR(phy_provider)) {
+		ret = PTR_ERR(phy_provider);
+		goto err;
+	}
+	return 0;
+
+err:
+	put_device(phy->control_dev);
+	return ret;
 }
 
 static void ti_pipe3_remove(struct platform_device *pdev)
@@ -844,6 +856,7 @@ static void ti_pipe3_remove(struct platform_device *pdev)
 		phy->sata_refclk_enabled = false;
 	}
 	pm_runtime_disable(&pdev->dev);
+	put_device(phy->control_dev);
 }
 
 static int ti_pipe3_enable_clocks(struct ti_pipe3 *phy)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
