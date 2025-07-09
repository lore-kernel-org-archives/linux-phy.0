Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03740C83F17
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 17:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCetWrgg74KbrefZWm4Jmx2cZp6byJgp1ZNJtJw2PEY=; b=D/y5C5obg6IQ9F
	Axg/ftITe+1ep8Y5LpMScdjaoiwJgi2C4/f1JwaAH6b8AypMS2k7z1Wji/8XuXmuG98ciHiai1ZeK
	O0gQxQTcsbP/Mx3DIPGRLwo9WGgUQZupq6/x/55kIloM2D+zeICXsgN2r9xnQQvIWB0TaSoEfm01P
	PhU7W6ZO8uR54WOUj6FlEQicidyDG5MpEFr9DKcMBPiUhGP0+Tt7odvx8UEusRc4Wp6Qb8JxlLdbj
	IR7kvDkR/Jyww+6fyQ83u7rW+mvJcc9U0QQqIGVgx7oKbcSA8UweaaxedbHv7+swmPNPb7eBxb98M
	uOenpP8c/bnuKdVHzYmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZYKE-00000009P5z-3BxW;
	Wed, 09 Jul 2025 17:11:18 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZWCm-0000000941D-2BrN
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 14:55:29 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-acb5ec407b1so987339866b.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 07:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752072927; x=1752677727; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5MGHNaliWz7mYnqQYod2IP0rY/CEmdQgMImzv7dtE1Q=;
        b=aMzCYfFPZsRY3//+teFaaa5yI1ojr+oI936l7MdT/IKUItYyRnf0M9VA1g3/AGrisY
         bA+/CL4R2Ho4cK8gidIHgNzXeuIW+rshj0Ax7uyHdYQ5en5zx8PYLKvda9onOxiTk5TH
         DN818KTCwnrbtJ47kGG/zB2A3ObNmh011sPvdClQlPaHB+kM9bzA5zuBp1Oa2Rr/nw2O
         jkC3wjKpPfnuM3u1tD56irKsMtabBr7ovFJzjoBef2R70tucSXLAeRrTqKfBipviSzh2
         H68L7q3UhAXV6Ini4e0DvABwoGUc5WCBy23f5Luva6Nd3yiiJ81yzbtRQmjjUFQtRisU
         lZoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752072927; x=1752677727;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5MGHNaliWz7mYnqQYod2IP0rY/CEmdQgMImzv7dtE1Q=;
        b=aQJREdrwPEN/FbizQEGGyZ/pwKjjNl6gdcRRXGJGJQR3yqUCS2YqbDlEcUCxbi6+Lu
         wp+c8Wpgzgmz0XQfhs5WQdqY3SUgsi9ciWHfkmqjwNzvqeFeOMDq4PgE+T/WCDvvkQWD
         rJMiICaT5ojpnphX3Ua+4YeeojGoK7POskYUBfqAk3azGC81xZT9HFv2j1COoakDjOtb
         UT7EtqRyJTiuEtZFX0RGk4clL62mhbzI2KswVJ8iD17MuCXQ52KuHqIrAKc5LmqFXdHW
         +sj6j/mMCzo1kQUq00H/tnco2DTIEXunNKZlfpsZ2Ohg4MZgBkPNQbolJvE4QANHU814
         XQmQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVx8mXwjwmAkTyMx79pevQF34o6awEBbOYIIGzLIxD+45kviPVPzMaEW7Gah7xho85pHpr/AeQ52o=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGWCEQv6O3QmdpsBpZk6/xN1D/DFFFBjwkfFz2xSIiEBf9DfJk
	lp7j+a9c7beCsJJLXW4ZRajKvWYjYSd3BJ9+gaK1gk3yHXQvH14g60+W9PIOoKm7UNk=
X-Gm-Gg: ASbGnctXBVAs7kvdK/RA0IRdSt9fsMt4rMXNFmdAwvy6Q8fF8j68q4ZGM878mYw2T5D
	McFF2APimAVyOnQElAvSAmsDkQ28lSKsKm7lK1UAuLoGRAw2s953bTG8s3J247FLdHKGVctivOx
	sZnGMzevzLhTziVHHT12vlFm3M/CE1zqYpKIfVtD6CN5ehTsKDhIxKrMfZxk/eGT35J4LjVB47t
	Fcukr3RqBEoaxkxVcLmKIbEs0bk5/6GQg0ge+5ab37tsJk7K4h/vITNGSNOxJqlUOHt0vusT0Ro
	WeAIBckd/LcuxuCyy+JCLj3Jffz0MUN2+k9rfZr3Q8je/sPT6ug/gWqnxTVS+fVhk4DiFYO7+wO
	QHAlwV4+ae/uyuEjPXrJ37TFT7ahrHwZk
X-Google-Smtp-Source: AGHT+IHPOGWQN7CQo5uvqH3maITnR7iEOg+MpVOumRq8qlMhfQS1/sDkbsRXe/C9cg/75eQhqbeYCQ==
X-Received: by 2002:a17:907:3f89:b0:ae6:df9e:736c with SMTP id a640c23a62f3a-ae6e10bbee5mr9312366b.21.1752072926801;
        Wed, 09 Jul 2025 07:55:26 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b600ddsm1116795766b.158.2025.07.09.07.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 07:55:26 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 16:55:17 +0200
Subject: [PATCH v2 4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add support
 for PMIV0104
MIME-Version: 1.0
Message-Id: <20250709-sm7635-eusb-repeater-v2-4-b6eff075c097@fairphone.com>
References: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
In-Reply-To: <20250709-sm7635-eusb-repeater-v2-0-b6eff075c097@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752072923; l=1730;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=dqwE+mgZFmDVF9ARQ35sDJJ/X46qouKrH+a/CF0hG4w=;
 b=lyt8D0KlGNc8UG/Ba5c6MpLOjIKEHZ2kTOawV2liOjxfTKc8u9Nw5YChPEsmez45eub/Or6uK
 TMYz3TmgQPZBVmIdMkPKcrbNwsoHX6fNfz3hrG8kiWbd2JZYNOLOxEc
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_075528_565044_774FD4A8 
X-CRM114-Status: GOOD (  10.88  )
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

Add support for the eUSB2 repeater found on the PMIV0104. There is no
default init table for this PMIC, just the board-specific tuning
parameters are used on top of the default tuning values.

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 61594739e5b12706775622e1f76af6ad5d2d29bf..3d4cdc4c18becd8efd5015e698b836ad4d7cf18c 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -82,6 +82,14 @@ static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
 	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
 };
 
+static const struct eusb2_repeater_cfg pmiv0104_eusb2_cfg = {
+	/* No PMIC-specific init sequence, only board level tuning via DT */
+	.init_tbl	= (struct eusb2_repeater_init_tbl_reg[]) {},
+	.init_tbl_num	= 0,
+	.vreg_list	= pm8550b_vreg_l,
+	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
+};
+
 static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
 	.init_tbl	= smb2360_init_tbl,
 	.init_tbl_num	= ARRAY_SIZE(smb2360_init_tbl),
@@ -264,6 +272,10 @@ static const struct of_device_id eusb2_repeater_of_match_table[] = {
 		.compatible = "qcom,pm8550b-eusb2-repeater",
 		.data = &pm8550b_eusb2_cfg,
 	},
+	{
+		.compatible = "qcom,pmiv0104-eusb2-repeater",
+		.data = &pmiv0104_eusb2_cfg,
+	},
 	{
 		.compatible = "qcom,smb2360-eusb2-repeater",
 		.data = &smb2360_eusb2_cfg,

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
