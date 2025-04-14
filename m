Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AFC9C369B2
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 12:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aI1NDB8MhUH5J6uivj7ooNR4YseyRy0qKvhFJtmV1/E=; b=oOTB0T7FHxM9EV
	gKsT+9J3VhXHJSSEP1LyLZV4WUjf9SR7T6C1srkihxfzoit+z9624EuU6LVqdBfOVUDnRKNvI2u5W
	LonxrK4s+6FQREc19zX8RAJlO8KrQu8AIlalNJuBnNx0yRGj+TOJlQOxTZ6opHDytQR/LWvw2OHlI
	8kQyBeT+UeeMUPRf3UCYcRJQz2IfujlIqM+Wji+/DlP1UTpcwWVcX/i+74bLGYbJYWuiTtQR/d2Wv
	MKsn+tjFFpsOcQotcqbk3AToDMOjnqI9EPtP43bjOCnrgAkgwzlbREeAmUQKR9Z1CLv5KWLqYi4Ll
	seuw8Yy5dl2uy9ANUyNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4JNw-000000021aR-0HHf;
	Mon, 14 Apr 2025 12:58:00 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4JH4-000000020mr-14rj
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 12:50:55 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-6eedceb2e7eso5608636d6.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 05:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744635053; x=1745239853; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5eEfnKTk32WTy+QJQiI3RNUOZJ9r7Y8K/vt3pS3W0F4=;
        b=mNcYLX2NHu2aQJXY2rUdElS/f5POHTpIWktMdkGudf7BBs7Xwxb2g0yL4bBwypngSn
         qeaSyZi2SNyrr4UZsxEz/gLhQfT2R+XYXsLt2tGJ4BJCMMbMDmeJ/EhkAASH0jIZRngc
         d+NsUjcV2RxFBKCC+pD8WTP2JQVDh9p5o8asHIemJA6I38fRofdgpPM3wZeWMWjzSFgw
         YEE9xkCV1xjIK/bAEluJ6VtJaLkwwGfegUobwLHbY+yXb2U6pVJ2yymFIv/GS9HNtXh3
         +wK8dy48hnr1Vzohah2oOVTHSgzndNn5vi3EpO8bFE+xaVAC8UpWMQoHmkV7tCyqzl+n
         tdcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744635053; x=1745239853;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5eEfnKTk32WTy+QJQiI3RNUOZJ9r7Y8K/vt3pS3W0F4=;
        b=b48ksY7EptKl62CNhFJvb3/7UpyM/uAlfculQT68hCF2CSi26zBl+Cvk+HwRBOhesC
         q7FUtqo/zUzb+LTkZO+L34+j82HS8p6C7kSiolgNdMftUePIK7ePl/yVPXw7IY0o1EsV
         JKLZO2A0IN4JC5OpFmAFyZA2/d3o3s8hi7HF+TEnhpPtOzlcSaV/PLmCg/pmVR/1lhz2
         W9DvxQNrK5X8USB5eJisASxj+R474PG6u8UbN83eMlUZzMRINyhrsBiRrAXAInyZhMHD
         hyE4UqNKfnf9mVAS7Bwh3MS1sLA3RLZqloYyUndX6UgmcbbnB8phc9Lwq6Vj1V/ORleE
         w7vQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKhbco/MmK/TH4SAyUiIeq+UzJ2dwGZwW5WKzGQhsqXL0dNArCjP7d9mEcce7h1Udus+wFbpZJ/x4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9Sxt+NBly09V7Y+aYzEUMqkKGnKKNVK6oJqGdGWgnhVYan2gi
	fkxejafQlZYziCeecpScTs/vBgn2zKa7ztqCkoqNBsyHje9i9h4=
X-Gm-Gg: ASbGncvijw6gqArekLQGazxCxRoYbmAhIdSLrpHyo5mDwF9r/U08H+QeWultV8C2s9S
	xA9lzfNVksuxwRj3zJ06TIWzlxMLoblFalMEoqsZCaJ8BtfwlY4pS4RADN6TIBJc1KEuO/xqG/v
	1xuvTdY5KBavlmqyBVm4S2U8M1trCE4pAbnEeowDa4mZgsXd5ouLNP9sk+SbyxlrPJThGoixViU
	b0q7emw6jlOPHUGS2zP5uY0FxmwI7CKG0dgIaF5rhno8NGA5GVkbDDAyTIahpUp5/Zhk8sb14aY
	KSGHTYyjEBxW4K1AOzdYFwVj1r09mJZuuV/zwA==
X-Google-Smtp-Source: AGHT+IFy7jmaqrgWyM7zIgpGp8coRUKQmwsw8NBxtyEF0Upi2ZIyVIy+TlgWPeYcRMzsZqNmhWaMMQ==
X-Received: by 2002:a05:6214:1d08:b0:6e8:fe16:4d42 with SMTP id 6a1803df08f44-6f283adc8e5mr75255676d6.1.1744635052906;
        Mon, 14 Apr 2025 05:50:52 -0700 (PDT)
Received: from ise-alpha.. ([2620:0:e00:550a:642:1aff:fee8:511b])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c7a8a0ed5bsm729732885a.105.2025.04.14.05.50.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 05:50:52 -0700 (PDT)
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
	Chenyuan Yang <chenyuan0y@gmail.com>,
	Johan Hovold <johan@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2] phy: qcom-qmp-usb: Fix an NULL vs IS_ERR() bug
Date: Mon, 14 Apr 2025 07:50:50 -0500
Message-Id: <20250414125050.2118619-1-chenyuan0y@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_055054_296218_A8C78DB1 
X-CRM114-Status: UNSURE (   9.84  )
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

The qmp_usb_iomap() helper function currently returns the raw result of
devm_ioremap() for non-exclusive mappings. Since devm_ioremap() may return
a NULL pointer and the caller only checks error pointers with IS_ERR(),
NULL could bypass the check and lead to an invalid dereference.

Fix the issue by checking if devm_ioremap() returns NULL. When it does,
qmp_usb_iomap() now returns an error pointer via IOMEM_ERR_PTR(-ENOMEM),
ensuring safe and consistent error handling.

Signed-off-by: Chenyuan Yang <chenyuan0y@gmail.com>
Fixes: a5d6b1ac56cb ("phy: qcom-qmp-usb: fix memleak on probe deferral")
CC: Johan Hovold <johan@kernel.org>
CC: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 787721570457..ed646a7e705b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2106,12 +2106,16 @@ static void __iomem *qmp_usb_iomap(struct device *dev, struct device_node *np,
 					int index, bool exclusive)
 {
 	struct resource res;
+	void __iomem *mem;
 
 	if (!exclusive) {
 		if (of_address_to_resource(np, index, &res))
 			return IOMEM_ERR_PTR(-EINVAL);
 
-		return devm_ioremap(dev, res.start, resource_size(&res));
+		mem = devm_ioremap(dev, res.start, resource_size(&res));
+		if (!mem)
+			return IOMEM_ERR_PTR(-ENOMEM);
+		return mem;
 	}
 
 	return devm_of_iomap(dev, np, index, NULL);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
