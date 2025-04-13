Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21A96C3601E
	for <linux-phy@archiver.kernel.org>; Sun, 13 Apr 2025 21:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ThyUQ1900dvZ3nsxMWAWWQujIgK/9CxrEiPVdAGLYxY=; b=uF6cqMWy/8/RDt
	v+rFpp3MiOJ5T+3u9kGmuFGs21TrMD/zm+MdXA4cN+D/2ijBNJ96yXF9gXyifWaBFn6TeoM0/NNbs
	uJzmmmSOriYjrgIXvNTSxv++XFFFhJ6snjM5qRC5FOiDmsUI1LuJMQCiSrYMvc2DZ/QEQM7GKLHiq
	Q1ZeqnHg4d0raw9TuXn706sv7S1BqP89JIwBn6fcZa8ArIyXj4JQ7sD0x4njIOoNvnW4mCvrFVnPD
	Wh/Y0hqI9cy2P5lRtnOW4IWtVi5kKEmDaAi9fsxybiS5u0lp1ES1Tp2KJAeY8tI3hAVIKA22pd2eH
	us6QNlIpmaaktY9n3eqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u44pQ-00000000B4F-2sG2;
	Sun, 13 Apr 2025 21:25:24 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u44pO-00000000B3a-1dkT
	for linux-phy@lists.infradead.org;
	Sun, 13 Apr 2025 21:25:23 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-7c549d9ecc6so80453985a.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Apr 2025 14:25:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744579521; x=1745184321; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kXyN5mEROq0KuHSWhrvVBB3AlRAW0b2iMUNC6ySyoYU=;
        b=Yuv19UYESdnqERnUrTtvX8Lxyyu10z3uR9T+jbxDJUtlutPLfLJ5PG0MTrUiPxzSFO
         UX8Ylq2sKl2fPN3cHMIzJR2geDCef2u58VJXb73m6eoDrSCQztHL3IGAsRQNgAOx9IX9
         4jWmM7Zmp+MPzKDDrtYCOSdKR/KM7ocedtwg7Ukh8xlXhDZXyBrqOlMLq4GY/TaiMPb7
         yrsKpaxLVKPCwkK5KcIkLaQCGdleSxI8A7fqjRKG6dR2ofrcETG/f7lA+qv3ubINuyHK
         gt/XdSX8MD+TrdvmSnA96GiwMy6CQyd4R11OagVqVlZdlpP8Wu3oUixMSWTATJTx+Gxr
         O53Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744579521; x=1745184321;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kXyN5mEROq0KuHSWhrvVBB3AlRAW0b2iMUNC6ySyoYU=;
        b=P5okTjqfQNB0i2QbjzutHG0aYz85Yow2OF17SQfWHFJ/TIzP1n0/kjj2/ap+lgS/5H
         zw5B3M2cWAPsCCi94prfgOq+HNtKyWuQhjRDAv1Ds/2eGuZOF8Un5HtNB7dBDdHMi2Kb
         6udTa+pWUTM0kTpZNJ+3acmKCF7wxf9iKvQCR5M8hRWcskC/E0tr70kej0h51Vwq695x
         DIjKkT4ZgcHUz5h/WOv6BSR5eRGCw7seQCIyYqmQI/Ng/3LCf4ZJxr/HQoxFRZyoZ0+e
         BAFDYzXRC85qLMeDlwKPz/0XSaZlngZXateXzUhBCNwPNOnzSs+rFI5Umhv3mIHhsP7n
         J+QQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNHOgKZEFj5r/0S7mv4ZiEbqsFPX39X5FakafttlclgFXiN9EnAS5UpH4ktN4cYk/VvLEXOPIEdLk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxodWcoPKOLNUEdAdv00/Fn5Mmj517MmvKNIMFDni4gE9YFtVSM
	iqyfh4pdAwlyA1MQX3UuPKRjR3f8QQSPxXUmqkgXjeBh4vvlt0I=
X-Gm-Gg: ASbGncuDjgdhFadsS7Cfu4aUFIvSI6t/4evQ/sBCSdU20rhyniLLU9rS8wg6groHTFv
	G2e02MUTR+UFhlDQLQmFXArwyJohoXV5WgZIHsROs1Y5AZbN6E9CIt+kbU3p9GPRT28zPUHJb88
	H3i4515JtFTgm+pA+z5V9h1CScN2U+N0eEZCKHacf3L/AsDkmd731R2U2Ti/LkqboH017McydyS
	if+1/Q3HoK8xfN1sXRTjNYcHgM8QkMD7KOhk3WPzu4YunEarmVHGy/Ln/3Aaf8ECXaevRZW5GtW
	swPIhRbfpXjX9F1O9TpfqTEJ2Vp06WTdvnnOMOkjHtG70sZY
X-Google-Smtp-Source: AGHT+IGUIDGZx4RDYLf+e3q1ZO105YaHd6G9mo/y7DfLqWwk/GMZ2JANXYRz6vCw4fGNfiNCP/X/qg==
X-Received: by 2002:a05:620a:29c8:b0:7c7:a574:94e8 with SMTP id af79cd13be357-7c7af0e51e8mr437622685a.9.1744579520559;
        Sun, 13 Apr 2025 14:25:20 -0700 (PDT)
Received: from ise-alpha.. ([2620:0:e00:550a:642:1aff:fee8:511b])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c7a8a0c9aesm609585285a.90.2025.04.13.14.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 14:25:20 -0700 (PDT)
From: Chenyuan Yang <chenyuan0y@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	lumag@kernel.org,
	quic_kriskura@quicinc.com,
	manivannan.sadhasivam@linaro.org,
	konrad.dybcio@oss.qualcomm.com,
	quic_varada@quicinc.com,
	quic_kbajaj@quicinc.com,
	johan+linaro@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chenyuan Yang <chenyuan0y@gmail.com>
Subject: [PATCH] phy: qcom-qmp-usb: Fix an NULL vs IS_ERR() bug
Date: Sun, 13 Apr 2025 16:25:18 -0500
Message-Id: <20250413212518.2625540-1-chenyuan0y@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_142522_432216_85022672 
X-CRM114-Status: UNSURE (   8.05  )
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

In qmp_usb_iomap(), one branch returns the result of devm_ioremap(), which
can be NULL. Since IS_ERR() does not catch a NULL pointer,
add an explicit NULL check in qmp_usb_parse_dt_legacy() to prevent
potential dereference issues.

Signed-off-by: Chenyuan Yang <chenyuan0y@gmail.com>
Fixes: 2a55ec4f0a04 ("phy: qcom-qmp-usb: merge driver data")
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 787721570457..8dab20b0c11c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2152,6 +2152,8 @@ static int qmp_usb_parse_dt_legacy(struct qmp_usb *qmp, struct device_node *np)
 		return PTR_ERR(qmp->rx);
 
 	qmp->pcs = qmp_usb_iomap(dev, np, 2, exclusive);
+	if (!qmp->pcs)
+		return -ENOMEM;
 	if (IS_ERR(qmp->pcs))
 		return PTR_ERR(qmp->pcs);
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
