Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1731EC47258
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jan 2024 03:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7I/2rzPuyt7T9HxdRigvsbtL76nEFNN4Kq/5Jwl1E2E=; b=Ic4yfm4J/Q1FTj
	xsFnmrBvH13AZXDnHpx62J8+lR+UjE7d9RbOQzRt2++lfT7+UGXUTcNlpzepRwLcOHP6Rayhckyu8
	d6HXxYG2A+DkCy8thqaepDEnuNMLezliaSKZ38CZmo2JG3QnM/H/o5/J2iCZBwqNo6QGInK9MI3/r
	I990A8RcNAnTW57+Ju2QKuHUsZzBKAB+HAUvGetUYyPXFF6/Xd9qfsHYTKjCZ6MNLJr3HR9/36QpK
	cD3CN5bRYtTK4GQoncCocllJxhZwnhgkqhsnJpjy6eDECk74cexjw1pCL+IcUhf/xiwt5tPWQyvku
	ojcTNXsKaoCtEiFiiFyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PX-006ksG-2c;
	Tue, 09 Jan 2024 03:04:15 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2PT-006knj-1U
	for linux-phy@lists.infradead.org;
	Tue, 09 Jan 2024 03:04:13 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2ccea11b6bbso23421751fa.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Jan 2024 19:04:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704769447; x=1705374247; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=alovHn4hmb7hvQy6aNFD+aPuQpoI08VPnMAPPHVIIwM=;
        b=awYeMpYgRXD3gIZ/y8NJvdgUYtkJ0QZiGW6CTv/j9n58ZBrap58V1V/aHQOsV1wO5P
         x1H7NTs14yduMnbDCr7C6BO9ogFQ1sI6cYrZJw8iKQNZ6ck+gCzNTKs6kVnMBUGy+zsz
         38TLVVKpzyyUohEznh4ApEp2yWo8Dinj0hyC/6VvxCiC816FcmA8Q2ylUBBCOffc4ff8
         8ETaQBG8a8x3jIQqUuZAdoeREYl6g2qhhJQ6OzmpO3Nf7msOhx9oEHeb9QssK8AeY5ji
         E9QnOpFjJDJZcE/B38HBY3i10nfIEhkNBNoODMxFUB+JpUex5JBNlbWc1ZhbaqAiIzTz
         MdSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704769447; x=1705374247;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=alovHn4hmb7hvQy6aNFD+aPuQpoI08VPnMAPPHVIIwM=;
        b=UmbrHU3egNzReiIUuju+44JrvzymlD9x2+GNiSh4RhiF+R8iztqQFKkIzz9Qubu6SZ
         2w5wMuWBcUWjVCRVd1a1YUH4PqeOXv/XLVQU5sZyWIfN9nBUWrqG3M5B6UpZB9V8mAet
         qR9fvWUPk5fm73WU79v0Uh7Bez1VWqdrNT+YdZnXnXQHeJrj1oIMXK4In9TwR3eWG22M
         ECPJsEmy5uZfVYze5xbNRr/otj8kIh/q0SFqGRVIoFJIpsnDDlF+3J6oB+ACPfL7x8mr
         GifyKiKFJqBBdtrDX7E4PV9CYwZNxkS2CEJ2UKAIcdrR8t5Y0rxWLJwgLHmZZzzRs08/
         xzng==
X-Gm-Message-State: AOJu0YxiVfWySRHJNDt05Y4Z6FNukSBvpbWUXIKsNC6IT0kQzLOBhTPg
	GV8yrwYY2PU39Kh1t9Y8wSR1L/5eiRc/Wg==
X-Google-Smtp-Source: AGHT+IEsWDRoPSgQN1kf1KTYevfCIGvYTMbY2mAgpUaaRtApfQy2dzd6ZQdhKdncGdBX8tMAHrWfkg==
X-Received: by 2002:a2e:8e8f:0:b0:2cd:5686:e1df with SMTP id z15-20020a2e8e8f000000b002cd5686e1dfmr42636ljk.19.1704769446909;
        Mon, 08 Jan 2024 19:04:06 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id g30-20020a2e391e000000b002cd1ad3b11csm176920lja.42.2024.01.08.19.04.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jan 2024 19:04:06 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 09 Jan 2024 05:04:04 +0200
Subject: [PATCH 6/8] fixup! phy: qcom: qmp: move common functions to common
 header
MIME-Version: 1.0
Message-Id: <20240109-phy-qmp-merge-common-v1-6-572899a14318@linaro.org>
References: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
In-Reply-To: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=547;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=rcJAxtEJnmouZxii2mlKa0hu6MYFXr3EsWm72HzlcLc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlnLehfK+mKKGAY03uC9miW8I9Q850avOgEbZSh
 lPbMBrJRJ2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZZy3oQAKCRCLPIo+Aiko
 1WM+CACo4Ut90S2nh8laHY+Qpi1Y2WfVPzI1jW20T5rpqLgfcQE8YMf0BfkWx7ZjZbL5Su0372z
 gsSH30/h+P9K5tl6phESAUp38iv5KA4YvCtRJg2kb2VOSxU/Do951rwA7q8fdMWhJgHmX1FSKVi
 TswALBEdS92xtDghIsONuOZq7O7YcvImu78JehhrsMSfvzbWFBEqCKcE7hY4lcg/65vkHzIz4/Y
 iITUszuVDwxIEFz6PVZHF8ikWnDRwcPIPGmuO/MOhi25s/k10stEx5K70JFjAxmsPlIkcLUZn2A
 0sEjS0pBwJsC3ZHm6ewdBz5Cvbao+1iMZk3KO1zcuQlbl/Dv
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_190411_500781_D03D8EAE 
X-CRM114-Status: UNSURE (   7.37  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-common.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-common.h b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
index 45cc5b795f58..799384210509 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-common.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
@@ -56,5 +56,4 @@ static inline void qmp_configure(void __iomem *base,
 	qmp_configure_lane(base, tbl, num, 0xff);
 }
 
-
 #endif

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
