Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBF24C3DA6F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Aug 2023 17:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97JEKecFZaXE49YHq1wPdQ9gTFHxkKpR3xFl0DztobU=; b=1E6UUwsiXiOSaD
	ICxzZBJ7Tdbmvb+9IRGW4suBiIPCcqUbmQ9YtWI/hjwS8OJ1yIsgub1YkrtgBdxAgpMNX7B/8GXRE
	ppSqw5gqa8obFbv3I3me8u8y2MMSEzl2G8Ts8xFtQ9gYzg90rxvnUX2QTV6bA4/aTpQeL+Adrncvm
	Ilpg2FvELFeNgpFkM3va48ubFCH2jTp7FKu8SVC5zlD+7IE07S+qdVw1ie/eQ7ITIL0qe5BAOTWnG
	X/GNzl1HElXBmRlcirK2lKA3dapFfmn+/vTqaYnxeZvdh69kNvakJJRorVyAFLLr8IDk0zyUDqVSD
	/L9K0SM8BOlSRyWIn8bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYrRL-001C82-1v;
	Wed, 23 Aug 2023 17:14:43 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYrRI-001C7N-2s
	for linux-phy@lists.infradead.org;
	Wed, 23 Aug 2023 17:14:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692810880;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qp4RdEnnTC5xvkWmLF44PstbcAOtN7ar952PgUn8Uto=;
	b=ext4L0gZlBzM8x0dA/J9cD0AO2UMG+Er//PdmuAtIPKCt+K2yUcZ4y0vDuGYk619ZVcBQD
	pXDvpT500NHQUHLFd9QQHv03lH8qVaIYqymxFRE8YMcAh6a7QU07U08em13I2chtnD9P1d
	ks9mUprIbVZ1ZT+gG/Rhof6Mas+V+7I=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-683-QS02QX9SM0yJF0OjWwZdyA-1; Wed, 23 Aug 2023 13:12:46 -0400
X-MC-Unique: QS02QX9SM0yJF0OjWwZdyA-1
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-76d9d16f4a1so4780685a.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Aug 2023 10:12:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692810766; x=1693415566;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qp4RdEnnTC5xvkWmLF44PstbcAOtN7ar952PgUn8Uto=;
        b=UoZHQY2hiQJUaWywwQNKAY1oUVYKBlzcQ5+G1RN9RIEUG018OJeSuVXvxRi/pm3YxR
         DOzOgHwvrx6lyxvBsiBj3b6LFuMMknyuK170u+gsU+1LJcsini62tXmg2BgYr1Vx7ExE
         KHatvh7TCkEPOLFhEBaA++c7K3QZTjFhVRvRB8aun/+6vLQD31OomJwxoiLD3kBHpZCV
         0M5NvhE+2BTkCrKpl8dhzgrOML4djsvofL+W65Sh7+vsD1U06J8n5MeNd/usbcKyibQt
         McUJ17bih9hvua/soGUSsGrVcwhoBXd4uFCFP1dFsXTmY3Wgj7Qr/FL7NpIOq9rL7Yaw
         /tRw==
X-Gm-Message-State: AOJu0Yw3nEzbCH9rmWKNB7z8bPzuAyNiI+ZWt5sYJp8JellfUBIY0V7r
	xONKyKaNFgeJ+E6tfbGmwBshM7jL+cpUimj67DKICgXuXSUhOLJ4uLKsjUa8sf7/9/RXc7anBZY
	eFWQRlBiTOjvddoSXiH7yYIYopg==
X-Received: by 2002:a05:620a:4411:b0:76c:b7f0:2bc9 with SMTP id v17-20020a05620a441100b0076cb7f02bc9mr16526212qkp.16.1692810766109;
        Wed, 23 Aug 2023 10:12:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFijETF/QBal13dY4JCxSoiAz5Wdp9YfPUCZRSIbi8XM8ZuXXa9y7nQNuulElzOsLHKe1tZXA==
X-Received: by 2002:a05:620a:4411:b0:76c:b7f0:2bc9 with SMTP id v17-20020a05620a441100b0076cb7f02bc9mr16526189qkp.16.1692810765863;
        Wed, 23 Aug 2023 10:12:45 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id x26-20020ae9f81a000000b0076ca9f79e1fsm4056361qkh.46.2023.08.23.10.12.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 10:12:45 -0700 (PDT)
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
Subject: [PATCH 1/2] phy: qcom-qmp-usb: initialize PCS_USB registers
Date: Wed, 23 Aug 2023 13:12:04 -0400
Message-ID: <20230823171208.18382-2-athierry@redhat.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230823171208.18382-1-athierry@redhat.com>
References: <20230823171208.18382-1-athierry@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_101441_000630_B490133A 
X-CRM114-Status: UNSURE (   8.83  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 466f0a56c82e..ccbe64f7897e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2233,6 +2233,7 @@ static int qmp_usb_power_on(struct phy *phy)
 	void __iomem *tx = qmp->tx;
 	void __iomem *rx = qmp->rx;
 	void __iomem *pcs = qmp->pcs;
+	void __iomem *pcs_usb = qmp->pcs_usb ?: qmp->pcs;
 	void __iomem *status;
 	unsigned int val;
 	int ret;
@@ -2255,6 +2256,7 @@ static int qmp_usb_power_on(struct phy *phy)
 	}
 
 	qmp_usb_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
+	qmp_usb_configure(pcs_usb, cfg->pcs_usb_tbl, cfg->pcs_usb_tbl_num);
 
 	if (cfg->has_pwrdn_delay)
 		usleep_range(10, 20);
-- 
2.41.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
