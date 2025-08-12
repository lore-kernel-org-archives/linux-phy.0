Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D376CA0EDC
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 14:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LY9tR0B1SPgrPj95+OqFysLR2qpyJsWpqm6OYP5ayXU=; b=RNqfLWrBI/zX6S
	5QhMCYWhplOhTyV+nTMExYGeT1GBefZOEumsWElH16iwl3zSiP9tuByXt4VQQ9hp0oNNiXsNSaLsz
	FGOhbq4JwcLmdkrlVh0KepyQqQ99744ulk/ObpXoE6xRuxQt8lW/cid5DwUAZ4U5llDZ9fPjsbNvh
	lwxqkpYxkR6SVovpmkmo0/3RQtFbdbbPfujSloAR1U4Ura+LiWvOy9+r6rGsFMDJSOF01i8s2dBa+
	BwuRdgDLL8u6ykHuwwK9slBf8odQxBUUk+bBSp/ejHvULpOvjoTFFBSc4Xhle5nXQl65eMLwATIiH
	8xHCbZgurt6ka7aKTFrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulqMs-0000000B73r-0RMQ;
	Tue, 12 Aug 2025 14:52:50 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ullVE-0000000APKx-1AN2
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 09:41:09 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-31ecd1f0e71so6162551a91.3
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 02:41:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754991667; x=1755596467; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AEPfsLZTWTVMFk6wTWa0w6a0o68+CFAgBUbGVWWCf4o=;
        b=ShbxksQxgiJjZQeo5Lhe1TorwBex2UbAw4ZwZ/9Ra7pOIMItHC++WVsYgq5SGxH3IC
         frXh/NIp8hSERVcFd18SCMkGKbJrWrDI+Wj4VoP1wg77v9UbD7g4CRz6jDFgiJFKD9jL
         9/AHGM8mh/vqFFob8aRzlpRFU50RRANa0IsEQtYW/m7GHbnIuww9dXrjzkX5jolCPdlf
         pGM/peNpqwGPYxgdKGm6wLtNIqJhjDcYS6vlVj2TXvrejJsOnsTZmm9LuCDfXNRwyg5k
         SlJBLZSVeOiyGs0OgylaQq7JkC0RoZAmeT6a01bKN801NO6xeL0hhNM8TyTgx//92L/w
         7KRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754991667; x=1755596467;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AEPfsLZTWTVMFk6wTWa0w6a0o68+CFAgBUbGVWWCf4o=;
        b=cnv3Vw5tMqcTwsvMPcIkh5GKbJhtHiX1Q4u5XUkBsprcOXC8Wsuf17Y+3vtn8vHf4V
         l9XrRdlGBWs7zBLWI+elsrXBJci2h/X8FTBFOTiRUpRBj8KvwltWnlfNDXxV1qtqPCDk
         dTInNoKScKFET5puM8d9rN/kfnRytYuDbcyU7DrPXvcZsARzWPSWn/3hRJLjmbqVuR3G
         aJIhboAKYoVq58Qak/YGjPJcRk1xDPjA/dow5+y5Sh1rdlfa3lDwXiX2yZm1mMJaT4M6
         kr/KvZrjd3qf30EDkuu4VIjNuxShcHPzlfy8OoR1L9NHtNEYxxMM8Hs0M05GzJ264u8q
         dG6A==
X-Forwarded-Encrypted: i=1; AJvYcCWDp6Ge3e+gRS7dgEJK4/O1t+Jdby8AuYx2HstG6GOkK5TXAdiGbEtTAyfsdW/+dPbFvuA8+Qr2nGk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxeWPoJANoENZh/3ZnN5nw6y+jFlfHC2+J6wUlbqDnKZXZuWWZZ
	dvZgmfjRWXHhT4S51m/H4o/Sfi3uB4+Q9rR2QxPBXQJHpjdbeYu42QGJ
X-Gm-Gg: ASbGncvuhuozQOODurSHLgveXrflGqjjc5QvWafNbeL/sFC/DzCGE3/qTXjIC+ceC6H
	sJHYu6lX3v3nuMskCQCNUBDsFpcXMp6fogpM0lrNhuDneU95rNUMlZEJ/yfYPFzWaykZdW0H+K5
	DCTlrz5QTAknt2oD6hVJF+zYpLLrnCZ3XK8HeYB5LA9dsvD1yUbMuhWvunBsIPQI+D1UQcRpjVT
	4iHrh7aUrpx+Wwd/iWGTGRhkTTH4vlt8DTUrwNXoho6BgnbvrO8WI6U9qwzHE+V5Tp93Aid/+na
	7GediF490SzUMRPE8cy/2Rj4Z8D25DLu4azw4Jwi/K7bQhcdjNLgq5imU678U9QbkjyJiVx0vPN
	8zdg=
X-Google-Smtp-Source: AGHT+IFSam8qs8pH0AAmub/ZWPtzxlhPbSC5fqyUJI00dbs7zUjUF9TJpH/6wZBtpVOwDTzu5UMgcw==
X-Received: by 2002:a17:90b:2ecc:b0:312:639:a064 with SMTP id 98e67ed59e1d1-32183c460a2mr20130870a91.28.1754991667076;
        Tue, 12 Aug 2025 02:41:07 -0700 (PDT)
Received: from nuvole.lan ([2408:824c:a17:3f0::c83])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3218c3c2d58sm9676063a91.16.2025.08.12.02.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 02:41:06 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Abel Vesa <abel.vesa@linaro.org>
Cc: Pengyu Luo <mitltlatltl@gmail.com>,
	Luca Weiss <luca.weiss@fairphone.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: fix override properties
Date: Tue, 12 Aug 2025 17:39:56 +0800
Message-ID: <20250812093957.32235-1-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_024108_318720_995B80D5 
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

property "qcom,tune-usb2-preem" is for EUSB2_TUNE_USB2_PREEM
property "qcom,tune-usb2-amplitude" is for EUSB2_TUNE_IUSB2

The downstream correspondence is as follows:
EUSB2_TUNE_USB2_PREEM: Tx pre-emphasis tuning
EUSB2_TUNE_IUSB2: HS trasmit amplitude
EUSB2_TUNE_SQUELCH_U: Squelch detection threshold
EUSB2_TUNE_HSDISC: HS disconnect threshold
EUSB2_TUNE_EUSB_SLEW: slew rate

Fixes: 31bc94de7602 ("phy: qualcomm: phy-qcom-eusb2-repeater: Don't zero-out registers")
Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index d7493c229..3709fba42 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -127,13 +127,13 @@ static int eusb2_repeater_init(struct phy *phy)
 			     rptr->cfg->init_tbl[i].value);
 
 	/* Override registers from devicetree values */
-	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
+	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
 		regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, val);
 
 	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &val))
 		regmap_write(regmap, base + EUSB2_TUNE_HSDISC, val);
 
-	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
+	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
 		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
 
 	/* Wait for status OK */
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
