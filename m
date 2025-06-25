Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 013F7C7EE3A
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 12:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikeQr6y3DaYJ1fRITAaUEmxteVhXVJ6SX5fyuclvFi8=; b=T32pL6YXUcYU3C
	2IoSiIwrX7LLuHK62uh7Alo8E+Y1kRVPXZl8AjbG8DBskeuBCzBJ9MS4It9101xKweqR5Zz3ey0st
	9+OF0J5rEK6BMM2buFNdGYXXColMybbwl/6us5qZiRY5n6A5KpPcTDjRaADzCkIYLSIxz7OR6XuWd
	i0DhsfaIxcsOVRptQ4v1lfDZgaBzwzAMBhp6JYoOr9nhSFceu742TrV8HNkwcz0NjkvFkP3MioTiU
	gVwAAEA2w+axVV8pwAhow7QtvasysLtwpd9oPfbFUoxydSrjzBA8w3gf87WRu05po7MGNGQKfhUPH
	m9JJyQK4R5SbZDI9ILBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUPOs-00000008e9Q-38mG;
	Wed, 25 Jun 2025 12:38:50 +0000
Received: from mail-ed1-f51.google.com ([209.85.208.51])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDn-000000085q8-1oep
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:15:12 +0000
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-60c5b7cae8bso307891a12.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 02:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842909; x=1751447709; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nYAqoJ6/qKfU25b7tBm6m33uYwBP9NEeRrfJuuX4YuU=;
        b=yCulmWKTss9Kvcd7efzCvlfW+sO6nBliiAR6yJ4024CWEPY/Mgmq1KB4k5XEq7T6Ix
         7MTia1SXiNi9JjSWZnCx4w5QU/D4jLp0g44i7NtvYDXTv0nwby2JMc1oG2poYiiSya2g
         WjuwLnt5+lqXKeoGKOCJA7ecDIr4X+/Qvp0NJfOwicWX0+YUSSXxwinczldCGbs8suNQ
         nqfx+VanfuH5xKsrz7akOVSdZUvSTbo5GVls/KyEK6EzhCT0CM97noToX6xgCsIbdyuk
         8Q7n92re4GfxS42kbmS6edMRkAY7zlskdh+l/hxZGntWiNyx3nkWruBWOFVdZfBXmgY2
         RMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842909; x=1751447709;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nYAqoJ6/qKfU25b7tBm6m33uYwBP9NEeRrfJuuX4YuU=;
        b=v5PcKu33vcrmZ8b2EsM/YjvgXWwXPZ4XEOsuzk+RC4PX0rTWUXVAwG3hjXI1NBLFwH
         8y6FKVJXmd3XMIs6rs+FevbYCkCxP2ErgOyKJTWenm8VxPB74wq1iXb6aab0RH5LAkbE
         0Gs5wlMsi2uD/TBcUAqNzS3hPnRfdgW025hk57P8Dkj24ZzSwwxsha1jn2YcYcsrP7L5
         g4LG8l/GlosBhhrqNQRevVo5wdVj96ElfzIaIxo/USiw4JNXNmEhPHPDRUP/HI3aTTId
         YHcGUDoJRPoYpiTjrL3FsdKmtVgoj+YUucRzuMsBR0zNlUSXQdzMkL5xG5qUGUK6aDjG
         NAVg==
X-Forwarded-Encrypted: i=1; AJvYcCWU+tfU6PFSpLH9uHe2mI6z9cbvauYPf87nBxFVZQLQPmBt6zJ1BvvRtp7kvCjXzU2CbjyZ1eXtkVk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzA3xct7UspIAskrRxktlWO2CXxrFQ+XgCBRWDxR+eufvgp/Goy
	mvPCz43XQ2Mzf9ere0Y8vz6mfHlzGmQwbtwJ7RhwJN2UPNmXlxczfyrIG1hNcW241yw=
X-Gm-Gg: ASbGncveBIK/TTv31Sl5Fe8PifFAOdKq/UAfMZ1vX3GiD2ir4hotvPt5fAWKks5EIJd
	BskbYn4hyQ0IqbrBUx6vT9J9qE0bVRrh5BwZrOcKPaRNdYzh4OXUjpAqME9Z73a4140jkCau0iA
	b4Ub8+6lndc3TF+r3CMJiYv5ztF47f81hR0tS6sHUOGQbiYKPTLgAYztlS//yvHKEiqKnbkfS7n
	vdeT5FcyMACFw1abi74NAxbJ5xlDKuwtV8l2PTaSw/U2BTujl9+u67xXreXV+GQghSHUXFFyzY8
	/Ai1C0dnUSl0EjW5dZKw82uoMbYqxSOalM8bCMI3BmArtPD8wRsXozwEoB1Kz021J8hVBxzYORY
	7TmMmKMV+a6VwD72tbrsPkgPXLpoUw0DP
X-Google-Smtp-Source: AGHT+IHTHT6smOWuvPBbg/OoSpzrmO4I1vDkFCL1KQ1NKNgVDgQsVVmwWjvkBuZNA/03futIChe+uA==
X-Received: by 2002:a17:906:8f03:b0:ad5:430b:9013 with SMTP id a640c23a62f3a-ae0beabad4cmr197343066b.42.1750842909404;
        Wed, 25 Jun 2025 02:15:09 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4c2bsm1008972266b.71.2025.06.25.02.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:15:08 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:59 +0200
Subject: [PATCH 4/4] phy: qualcomm: phy-qcom-eusb2-repeater: Add support
 for PMIV0104
MIME-Version: 1.0
Message-Id: <20250625-sm7635-eusb-repeater-v1-4-19d85541eb4c@fairphone.com>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842904; l=1626;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ir+Zz4LAiE20eWLdniulU6V2vglQQAqVFBeR34CuJG8=;
 b=poF4UgGeNsIdsHzqa+4Ufcgj3UOwUXQ9heUHTSr0dnvLoBGTxC7sTPQsPYsEOBqNDzaIkqivb
 0Pe8NuBzS+DChDjGAvuxbBPb93e/Hf1JOEeKajCAGwAwTabDEokAhcp
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_021511_476389_0656D0A9 
X-CRM114-Status: GOOD (  10.90  )
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
