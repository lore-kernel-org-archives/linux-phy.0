Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1E1DC83F15
	for <linux-phy@archiver.kernel.org>; Mon, 28 Aug 2023 15:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UE07I8h4wrkrROYjDHDsrePWEt4ycEzUUgSPlK5XHXg=; b=0i/W/4WRzA1Z3G
	XQTB95PRvtig49MV8bChfYbTLNLDAVEL0dObSF3SMMCMJXmsRtSGPdtJ5HskgEbNEuFB0tSGA6P3/
	0NcNqJ+rld/xGahY8kQB6dlo2BJMp9MQuo94pBm1UdG9mGRmEahMtZZsFbkAo8gv7aauu4uKSSc9i
	d02/oY4q4wKxWCbePO8058f4wjzymBStTOjmSwPmKeqa5BB8ifFW9d7bhs/E5QthMksDRAYg2p+eI
	LMMb5dgp27DbGHKSkwJXRjInLQBOgBBmNbl6c6a3Db6dBq717Vmi4+0S6Bw2VuCd1R7QHjQpCVRtw
	YwJmDuOO7dA6fYZX65TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qae6C-009n7d-2A;
	Mon, 28 Aug 2023 15:24:16 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qae68-009n5g-2n
	for linux-phy@lists.infradead.org;
	Mon, 28 Aug 2023 15:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1693236251;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XgaN+BG8AUFu2JQlp/lnBJIk6IikRZnClAJ7+Cn21e8=;
	b=DB+bFIdXEfm8SjuRWfdvx4+DdjHYuPrKcqiZcJS8nJRTN/8qEte6RTkT1SvGgw6BwOe9Sm
	/cMy2sA7yZdTOlMjW5GOb4hpCDOkTxOuuTl3e/cvXopjKOOysQxZzYZNIz0lYtBVcyvrRQ
	D4CRYT5LD2usHVhtHrndbMDdQKaeQ1g=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-258-qkI_-Cq3OBegvxf9XHqUqQ-1; Mon, 28 Aug 2023 11:24:09 -0400
X-MC-Unique: qkI_-Cq3OBegvxf9XHqUqQ-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-64bca259c4bso42813526d6.1
        for <linux-phy@lists.infradead.org>; Mon, 28 Aug 2023 08:24:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693236249; x=1693841049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XgaN+BG8AUFu2JQlp/lnBJIk6IikRZnClAJ7+Cn21e8=;
        b=FIUVF0cEVkBTjtXRAt9yJtHoEr8n/Mta5PpOG88Z1aLzesLpd/AFHw7d2h/P6YgfX9
         EZ/1My2gc/lIboFfi+5T66rYww8CrcTDG8plHPWH56vuhq9ClIALmgRADYyDTCXJNrEX
         B5Cqt4PKSfq9NSMVkOxF1gWqN05n+voqpxYDywKtWaM4uv05DxWL0Is5EjbL0GZ4SQ7j
         CduX3C2ygjrRDq5lcwQgFeKTCDNTdUK31c2dMhE7i5HSYNtnwhlIGWGNOW8UPN5wJ3um
         rLpi8DgdlFK6IOf+RhcklZCrqV11fGklhcxRfU1YLPsiAR4zpVfXqPwcKmhsE3zR+Oaj
         HnKg==
X-Gm-Message-State: AOJu0YzzUs8hqALRqQuD4ynMEYaBRF+mCntc+SDoSMZ9vM7OiL6ISNAh
	v+Y+q+RziN5waAjKhhsJVXaB/5CAZtjOXe49fnl9FBmdciwCW0Ot/6q+9rh+18K5WEtV9l3C0KY
	QG5iEQi2uHs/oM1nDBzaozdeEMw==
X-Received: by 2002:a0c:b24e:0:b0:64f:7a11:b06c with SMTP id k14-20020a0cb24e000000b0064f7a11b06cmr9033465qve.43.1693236249539;
        Mon, 28 Aug 2023 08:24:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5N0ACrbO6gr/QzkKRUkb3dyF6Q8NXiLtE6V7eutxzNLjqvtNUAH39N2ZcM5lHQY7myuavYQ==
X-Received: by 2002:a0c:b24e:0:b0:64f:7a11:b06c with SMTP id k14-20020a0cb24e000000b0064f7a11b06cmr9033452qve.43.1693236249329;
        Mon, 28 Aug 2023 08:24:09 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id m9-20020a0cf189000000b0063fbfbde4adsm2632860qvl.129.2023.08.28.08.24.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 08:24:08 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 1/2] phy: qcom-qmp-usb: initialize PCS_USB registers
Date: Mon, 28 Aug 2023 11:23:50 -0400
Message-ID: <20230828152353.16529-2-athierry@redhat.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230828152353.16529-1-athierry@redhat.com>
References: <20230828152353.16529-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_082412_993401_C1F6788C 
X-CRM114-Status: UNSURE (   9.26  )
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

Currently, PCS_USB registers that have their initialization data in a
pcs_usb_tbl table are never initialized. Fix that.

Fixes: fc64623637da ("phy: qcom-qmp-combo,usb: add support for separate PCS_USB region")
Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 466f0a56c82e..f9cb60f12575 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2233,6 +2233,7 @@ static int qmp_usb_power_on(struct phy *phy)
 	void __iomem *tx = qmp->tx;
 	void __iomem *rx = qmp->rx;
 	void __iomem *pcs = qmp->pcs;
+	void __iomem *pcs_usb = qmp->pcs_usb;
 	void __iomem *status;
 	unsigned int val;
 	int ret;
@@ -2256,6 +2257,9 @@ static int qmp_usb_power_on(struct phy *phy)
 
 	qmp_usb_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
+	if (pcs_usb)
+		qmp_usb_configure(pcs_usb, cfg->pcs_usb_tbl, cfg->pcs_usb_tbl_num);
+
 	if (cfg->has_pwrdn_delay)
 		usleep_range(10, 20);
 
-- 
2.41.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
