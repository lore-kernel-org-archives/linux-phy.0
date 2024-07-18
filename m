Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6028FC3DA61
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jul 2024 21:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FOAhF0s3U02fBQBMUck9pw8MAlRLA8uHJ1wIEIi6rk=; b=2jHKSG50GL7Ck5
	V8sMaQQB1kTueqAT8GGSjHwQ0OJ/jWoeA12oizhHt8qzzrDOsK+EkvbumvSpip0WsMOw+G2U+kBfF
	bnvsN0XotWhO8dP+dbxZbv0BEWhPc/O5LRxcNKoHXguZN9ZYK/VOZoIve6fD0MP6cBqlsRNM5UBgm
	YHmtxCFyiPu7dvtN8WGt6swyLEJYZXuFCw7wGw3kiMFvfhowGInbnswZxNCL82YPvaOerDpPpuvHz
	EnPzbvHFXUaGcP8kj/q1PAZysRIBeqc3b1rDP6B/Y5nadGMYgRh/9EMW1hkCBDK8r3DY3XBt0tpWg
	Ho6hsKo6qaM+RX26qjtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUYHj-00000000dJO-48bu;
	Thu, 18 Jul 2024 21:03:32 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUYHh-00000000dHn-1fxT
	for linux-phy@lists.infradead.org;
	Thu, 18 Jul 2024 21:03:30 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2ee9b1b422fso11952191fa.0
        for <linux-phy@lists.infradead.org>; Thu, 18 Jul 2024 14:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721336607; x=1721941407; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2JJQ4SAUQ02gRsQ7zWKDy+PLr5g0PLqd/BBdjXOrguw=;
        b=YFHrrqjls/KAxGwQMY5RTofv5On8olG/c+wCoI5OC4BzlaOTQthkA8Nj4MT/eTxPlS
         8ff56zcHi61Ph0rvuSYmMk5MQclApSVfmdULZQ0300psqJzIJLXeYVG9epsc0EAQpJ6p
         ja6KBSSDzZPDBTrnRiHWcCXIiNDDnw2Mo73jzRh/wpKG5IidrDng7bdf8xBHuGoWeyvQ
         H+TNDjgLkKGxuU2HqzGXKNvJugXovFQ9HjSChiHTOxMPEIEOdhmTNxD7Agl54LtShEh5
         EtWE7Z8fXRxYQ9zOwAbKsF6a8vDxTm+5yKY/R7ZFTzp394r+JbIoe+IquIHQpjUrubPC
         ZFKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721336607; x=1721941407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2JJQ4SAUQ02gRsQ7zWKDy+PLr5g0PLqd/BBdjXOrguw=;
        b=F4ipsUA7rbZTsj6V/e4xL3rgkTuTdfa29s7KrQhhGVTv+IYAJsREpkB0X9PUNeggxh
         n4N+KIA73n3PNniJ9/ZRfBEdhrW9fQZxxAYndvgEZ+Jra9hxO4F6WbflXf7734LsnSIS
         nr31KAehvtNKd5nXqRZOgbKiyOtZ4HT3QJ3i9xdVQECSFZEMh3aECBL/IR/aHVMB8Khy
         r5d26mtHph2Wa+6AGHROBQ1McYSfOB3uqnrYBdtX+TC1YnmP4KvHnJNGkykmU4dYyd68
         KaOqaLxp1JB9uoDs5fm0MlSav0kly38v/GslE9kOrtlIVihkpamSRCrGwn9R8roS0oQB
         w28Q==
X-Forwarded-Encrypted: i=1; AJvYcCWzXzy1L23CRtsnar+fjiUK70iDu0t9lhFMg2EWsm4/IK9K6f9/DGqT60O2Oy4PvT23amSnzO5Fyc5xcADJd0JHrkkH31ECXOU5EXIu5Q==
X-Gm-Message-State: AOJu0Yza0GGpF17yyqdGLYSfF5oR7lnUcWLRSnTaisI9J2EKybACYhCw
	77zG2Hdn6RLn5effH68geNMnF8rOQffwrUopVOLZL+Ju7sTEqFbo
X-Google-Smtp-Source: AGHT+IHmMQDSZX19kkj6DZBFH+OdSaeqNPaxl/szYwL2wGxhyzRp/HelLnRG2H9kn25S5v2SgFFssQ==
X-Received: by 2002:a2e:87c4:0:b0:2ec:35a3:20bd with SMTP id 38308e7fff4ca-2ef0641ed4amr11041511fa.22.1721336607055;
        Thu, 18 Jul 2024 14:03:27 -0700 (PDT)
Received: from ilordash-vm.mshome.net (broadband-109-173-124-203.ip.moscow.rt.ru. [109.173.124.203])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ef05c80310sm4516511fa.13.2024.07.18.14.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 14:03:26 -0700 (PDT)
From: Ilya Orazov <ilordash02@gmail.com>
To: mkl@pengutronix.de,
	mailhol.vincent@wanadoo.fr,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	a-govindraju@ti.com
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	ilordash02@gmail.com
Subject: [PATCH 2/2] phy: phy-can-transceiver: Add support for Microchip ATA6561
Date: Fri, 19 Jul 2024 00:03:22 +0300
Message-Id: <20240718210322.37492-3-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240718210322.37492-1-ilordash02@gmail.com>
References: <20240718210322.37492-1-ilordash02@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_140329_457350_78A920BE 
X-CRM114-Status: UNSURE (   9.66  )
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

The Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
It is pin-compatible with TI TCAN1042.

Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
---
 drivers/phy/phy-can-transceiver.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index ee4ce4249698..dbcd99213ba1 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -89,6 +89,10 @@ static const struct of_device_id can_transceiver_phy_ids[] = {
 		.compatible = "nxp,tjr1443",
 		.data = &tcan1043_drvdata
 	},
+	{
+		.compatible = "microchip,ata6561",
+		.data = &tcan1042_drvdata
+	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, can_transceiver_phy_ids);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
