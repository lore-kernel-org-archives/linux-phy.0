Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B73C0C3DA64
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 11:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xqsOsFwhoVm6yWEZZ5BbJR2BxTqFg8/KKa0c8+p8eeU=; b=ak+/k9+5cHG1mL
	M3U3NGu/ZbRZ9R7UEMmKGq77GO/+PHpb7KOETgrhuJ9FTc2BGq9ewbJV2N+ZBRcHRzzvYQmaVTmcw
	vPtFD40/nrQ3Qd5AJ1Bfik+DEsm0cmi0g9poMtzR/pTy2RULznwmZwMG4siJ5Um+iLJ1LMQTv0PiP
	PnnJ+6HFFtNrA+4imUPwtLegyQ6ckWoJYSzGPLOQUyWkmhUyQF4cXIhbtmjaiV7ziEL2o9S42xIw2
	30kc0Khg/C3ouf0a2qEzfUcUWfa+mZ/gbI0B0D+6j7qOUcaAD+FU8rGd50pWLDyhowsl1M2vCE5uX
	v2lniwJrchRpVuX2DgqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7x0-00000000y8o-1uQc;
	Wed, 31 Jul 2024 11:57:02 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7wy-00000000y8P-0XUT
	for linux-phy@lists.infradead.org;
	Wed, 31 Jul 2024 11:57:01 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-70d199fb3dfso4768120b3a.3
        for <linux-phy@lists.infradead.org>; Wed, 31 Jul 2024 04:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722427019; x=1723031819; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dD4/LuujpP9SBy4N2qvay9vEiTkzSElUnCkU/leHG9k=;
        b=H3DapZiXFCo135RQnq8XCUrhTWujjGRIHJiRytBaSwU2QcBshuuleyJdT+W+RXD/TL
         myaciVZRz3qdavP2UzCR6qPe9WOORlHOMRZeMVgYnTwdi+yYsADnDMyuqbbuc97FtM+w
         QGmOuaZPQA1F1ZEHEaK7z6CWONNwg7pjfy6HQH54g4VWmlNbZvvRnW67fkgnCaa9OuYE
         ypSNjcp3H71hkpRuZxjoKhKfJ3xfh5YHMHB+tnM9upyP5mpfuxJQRn9MeJXvVwA6ajPy
         44OgmfFUKi0tqpqs7IMHWFYTFqYh7R4yugVdpYmpAhffuhOCTYfe3rbI1Xx+qEid9B8/
         uvrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722427019; x=1723031819;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dD4/LuujpP9SBy4N2qvay9vEiTkzSElUnCkU/leHG9k=;
        b=b2yd+bG/3Le0jJv2ETJFF+pTZuxzhpCamGuAgqPW037W9SsgcehisP6m9IK8HPwDzr
         Gr6ALQ5SERdlfy0rGEqrLNocGBMLi5hH2Gm776WHldO8vsY9CD6Lzdh7bns5T1w7sMJq
         GQS24gPQHm2ER1/jui6Pey7phWvA0wWwlR//CeCgowS6Nc5a2cc9nf4r4t1pPg9+4y7n
         ZMFGeeM2sseLqrehNsHu1CwrLfmHDWhHvAFDPozbnwM3yZ0mV9EQiGZR+ZISKpDzQmlp
         k4X87zEW8ETzKl8plcyQq8ragYGX315ZWbeqIM/HGo7DpBcOdAV7YvupKNBGBfxElpdi
         6tOA==
X-Forwarded-Encrypted: i=1; AJvYcCWuvUTXXJ8b4Q/J7QNE8rhPH+nvuAZfhqd8kYiuF367fb1IbOsvIn0eqjkHqtG2n8MlCtcTt3lv4K2AIA/SoKllcAoQuDUmmK7xhHOjmw==
X-Gm-Message-State: AOJu0YwW+n79aSJt/xCjILYGg14nJKdkd8i9ec9kEXYw3+fb+Xrmvs8t
	rYEM5oFI/kDDupWzwLS9uDk8fbLA1gnfbRRRp8RwQmAejYJHN2dKEpRBxiEaLA==
X-Google-Smtp-Source: AGHT+IHhzrMk8ZPLRuUWHt897/wD7XphiJN5ikAlVgi5bi29bcgDtMwJdyVOk9U+AKsWzI3Hh3MYYg==
X-Received: by 2002:a05:6a20:6a98:b0:1c4:23f0:9665 with SMTP id adf61e73a8af0-1c4a1321bd5mr12592532637.29.1722427018525;
        Wed, 31 Jul 2024 04:56:58 -0700 (PDT)
Received: from localhost.localdomain ([120.60.134.159])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cfdc4a94c4sm1138242a91.42.2024.07.31.04.56.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 04:56:58 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vkoul@kernel.org
Cc: kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2] phy: qcom: qmp: Add debug prints for register writes
Date: Wed, 31 Jul 2024 17:26:37 +0530
Message-Id: <20240731115637.90351-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_045700_197383_B3005D76 
X-CRM114-Status: GOOD (  10.51  )
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

These register prints are useful to validate the init sequence against the
Qcom internal documentation and also to share with the Qcom hw engineers to
debug issues related to PHY.

Sample debug prints:

QMP PHY: Writing Reg: QSERDES_V5_COM_SYSCLK_EN_SEL Offset: 0x0094 Val: 0xd9
QMP PHY: Writing Reg: QSERDES_V5_COM_HSCLK_SEL Offset: 0x0158 Val: 0x11

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---

Changes in v2:

* Modifed the debug print to include reg offset

 drivers/phy/qualcomm/phy-qcom-qmp-common.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-common.h b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
index 799384210509..40beb413328f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-common.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
@@ -9,6 +9,7 @@
 struct qmp_phy_init_tbl {
 	unsigned int offset;
 	unsigned int val;
+	char *name;
 	/*
 	 * mask of lanes for which this register is written
 	 * for cases when second lane needs different values
@@ -20,6 +21,7 @@ struct qmp_phy_init_tbl {
 	{				\
 		.offset = o,		\
 		.val = v,		\
+		.name = #o,		\
 		.lane_mask = 0xff,	\
 	}
 
@@ -27,6 +29,7 @@ struct qmp_phy_init_tbl {
 	{				\
 		.offset = o,		\
 		.val = v,		\
+		.name = #o,		\
 		.lane_mask = l,		\
 	}
 
@@ -45,6 +48,8 @@ static inline void qmp_configure_lane(void __iomem *base,
 		if (!(t->lane_mask & lane_mask))
 			continue;
 
+		pr_debug("QMP PHY: Writing Reg: %s Offset: 0x%04x Val: 0x%02x\n",
+			t->name, t->offset, t->val);
 		writel(t->val, base + t->offset);
 	}
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
