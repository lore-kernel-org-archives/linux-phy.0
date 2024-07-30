Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7098C3DA61
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jul 2024 10:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lCl0Q5O4D3EjNRoBKwzGlzTMHP1m4ogUx0iOe8RURws=; b=2dM21g4x8shSan
	I12iNPz0PLikf12lhDSNGTWuEgfpHoaXzbAfVaeidWPTp5dzUJChf2ITSsHYG86hxFtFmqCDSQNMu
	Mo7Q3VV3R/6S0339JkhN3gliq8tvbS3/p8rZcefFjhstZyfkMSOiRwQhp7Hn9Rr0hL8cSCiagy2Od
	iS9KIDFW/by67iQUI6djNFGWE3kX3IONrNrhTIxYEr1UANpcVFJhT+XDFSs0COWdP3Jccoyv6vc0U
	T7rEd+qmdkqQzV0pG0aRBlhNIuimOEFnx6wu40uma8ZvDLdMt+hoZVql0Ef4RkNsJuosTeI22yfX8
	xteJ3dO9nh3Uiy/lWFhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjiA-0000000Eecz-1u7X;
	Tue, 30 Jul 2024 10:04:06 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYji7-0000000Eec3-075Q
	for linux-phy@lists.infradead.org;
	Tue, 30 Jul 2024 10:04:04 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3db22c02a42so2346426b6e.3
        for <linux-phy@lists.infradead.org>; Tue, 30 Jul 2024 03:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722333841; x=1722938641; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SEXs4wZ+PjPw13Ex2O8ZWhqoz1ln80vOYHcSDptS8gY=;
        b=jXbc1zbbvBsEr5hs8OeehCkUfktnBF/09/h6b2jaEUwH1gAtMuKawtWVpeO996N9Pa
         zaKQGttepe2Yj3uklSe2qKnuFJMvBCLWyAMErAEEL4lXL16v6qYMqDLeIphg+IXK+8TV
         Bkvpb6m5/KXUjhsNGI3O+lG0kXhK7AZjfHz47a9zcAAPiw3ZppGXxi1r+3F/Rme2Khrl
         UGaIXRGJbqDIwigB1jhYEQ4HsURHbK2rphsNYEIMNFBt1LqwyevY2A2jTIRNCemfbfY0
         i3qse+9OSmhO55eVW4EOiy4cAhks0/bpvWf+8YJIaOMdvCnjnCa5QQGmeE6NMA+ux77u
         M7DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722333841; x=1722938641;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SEXs4wZ+PjPw13Ex2O8ZWhqoz1ln80vOYHcSDptS8gY=;
        b=Y5lroWjYHp16OKZyrd2VsmVENVffrcZquxphiT1Hovk287UXOUDkqHmLPRVmjCHq+o
         vDYr/gEdcUhylVzs5xYIBC2F10XRvLbdw/kZVduryCR59GXnx7ZoK6Y62YE+5kaF2OOP
         aBloMTGRgp/9TzCZgwoyPkT+cFex5arb4R3KrBeNm5GaUXZWLCTI7ByFmNGNJDKyndju
         13FVpKbwryxzo+5pM0iKyIIqeZiLjq+1zQiRaRcHZpdLDPNSSC2qG8aPOtx8n/Cdc4b5
         4CLGtJ101a4CFeRpXaG9Y/c0PoAK71XPGFOMmDwxQ/jyTCVgTnQem6TbuIHYcBACP7IV
         NmoA==
X-Forwarded-Encrypted: i=1; AJvYcCXlXuwxM07KUvITTxnuRtbiczEGHpHNkllC5JMEUIRWZkU3DPXJG7KZ77dpUuTqZYbz5/7/V1AC0tETiEa8eQzjtfFUf44YveWraQgPUw==
X-Gm-Message-State: AOJu0YxbQXSmsJwncTCPunf9lne5USVoK+KnzUBesbQ6G5K6wenczo4H
	V9s16XcbfOcvNn6t997wxXRGEydG+AuXdNLGuq3LHFWcE5x+f4Fct3TFWSd0wj0dg7yM0I64wKA
	=
X-Google-Smtp-Source: AGHT+IEoucqhmei2W8M8QhIZshadLp47TQTDO+Dm76iLipImlFup2W7brIF1xHIYG7M+ju1nxgBgpA==
X-Received: by 2002:a05:6808:ecb:b0:3da:a16e:1764 with SMTP id 5614622812f47-3db2389bfe1mr14444572b6e.4.1722333841114;
        Tue, 30 Jul 2024 03:04:01 -0700 (PDT)
Received: from localhost.localdomain ([220.158.156.247])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7a9fa49c20fsm7335295a12.79.2024.07.30.03.03.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 03:04:00 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vkoul@kernel.org
Cc: kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH] phy: qcom: qmp: Add debug prints for register writes
Date: Tue, 30 Jul 2024 15:33:51 +0530
Message-Id: <20240730100351.51454-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_030403_087945_D70A8AE1 
X-CRM114-Status: GOOD (  10.67  )
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

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-common.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-common.h b/drivers/phy/qualcomm/phy-qcom-qmp-common.h
index 799384210509..e6a6bcfcac28 100644
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
 
@@ -45,6 +48,7 @@ static inline void qmp_configure_lane(void __iomem *base,
 		if (!(t->lane_mask & lane_mask))
 			continue;
 
+		pr_debug("QMP PHY: Writing: %s --> 0x%02x\n", t->name, t->val);
 		writel(t->val, base + t->offset);
 	}
 }
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
