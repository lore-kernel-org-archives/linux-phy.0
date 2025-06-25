Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 713DCC7EE30
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 11:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWpUXcHtylYHW+M/EvxPgYTUkcknGgI8EFY23JN/BBY=; b=pdULQ11R+9JCzy
	s57E/CfSreEFNl3ZhP1QbSJbWMY1zzwZB/qsK2VhDrZ/G6y7mptQ7wsOFzVC7fEusF7SNfP8E44xY
	wqk05VQ5xh7EosvAInlbLf76MBUciyapFoZNzbLDDDzNg4LepF0zKWOXX0naqpSeAqxK7ekFEmGqM
	VAydQ2a+8DxrfTMobB4KSbCHJIlaV4Nmn+ARkZpVcvondsGtfzdbup3q4CvCjhvQrHGy76no8tETK
	4dxZOuQSh0nFKoCxAdh2NKhLFSbye8Og8n2/Kppy7zWorPisnDOXc4lQO9l1jHytCVDA8KCcO2Wef
	Gefj6dmRPiEMcDIawUNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUOEJ-00000008SR7-0g3X;
	Wed, 25 Jun 2025 11:23:51 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDL-000000085gd-3DoT
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:14:45 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-ad8a8da2376so1039328766b.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 02:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842882; x=1751447682; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UAc6RebJyqWkfWaiafshoyDeXJgwWVip4sEPQbkZWzY=;
        b=L8eIHqoFxj6wvXlxph9NiJwK5IntuL+ke66VTbh2I45JFf1OOgkM06bqBD1DHsOT2s
         JZuK3cVPxZ04eeuYyZzAJEBF1fQ5eR4miEnulNS+Jb+umivUuGRlVB5SBmWT+BDGv4g9
         Wtzf8uvNE9zlJBOp2NLvQkWvRMdeTxx4NV3LAuVv0WL13QPD9euFk/bkFNr2NkTwtUW+
         y0PdTm54vLVb2kRPjqSbXy4u4wgwQ40ADqyydKtVCaCZ3JdSqQVfh9mSx1tHqFsBYgkw
         goBsvd26TE0Bd2TEspjvkJ1bh+Hmy12VM+BAhy+KDYqvqYWbqemGxwZwioX/9fKGwMxN
         6FhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842882; x=1751447682;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UAc6RebJyqWkfWaiafshoyDeXJgwWVip4sEPQbkZWzY=;
        b=dhTwZhEa0/3R/kFSKWB+hsD6M3wlEVryNmpPi83bkdsA5MtEp4a1LEwJ739Gsm+/6o
         +prmT5yErYbzxaFqfiAfv2td81kNdPfvddsNX/yPgOj0U6QbmMDoupaNBSYo+h34gOzQ
         zh5czYohHfKYhfjACuU6VFFy39jCUkVcOPGa72WRVvSZtGGKYX1acshp7ipwFKKUjeuU
         D31CSKKiDaq9R2bbSdJD0iR7tENpdxdSzDf9pA5b6l00GNpPdhJdQ1Ur8KqP7oJI5t6t
         cfjnYO6gPVTRf6vy89/qmIQ6VIVtkCkm4qwGpQQ0hB6d5Wlh/QIPPizDF4nbIOKsIkjx
         OvzA==
X-Forwarded-Encrypted: i=1; AJvYcCWK+0mtxx96HNdkUXCvsVbY4UQy1P71H2D5IRq4wpbwP+kPlsHJU/jw5JoeZkwth+ERIi8asGiMgnI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7F7akvPLap1GVNKO/8mrSa8nElj2/akW8zt5IgRk9WvPy5In8
	39KKmTVsWMRyigfxOotkVl6Vbg9vhcAn11JMpAbC0scLEufqB6cuG/yxw/GxsHxyvbuzRFkBlM6
	TNHcr
X-Gm-Gg: ASbGncsOt8vgh5z9jiqxZxhwYVxSOpGk9k0bhL86jnlqVtj351cAEe3cvWmWsFKUIJP
	1aWvOsapj6gEZ43n5AQVj2BOIv4eFwNgy+YreYWsOxfXdwv0eGYuzmneOKr9C9PLfFtoM2CgQK4
	9fpZ7Qi1fHTEbAV2txPdZ5BS4xtNwyHaWrUPJhB8s2jrBaxo94kV41TP37rn1Dix44ZFENOO6iW
	hX8CkKTpmYUSlYADfbBWJFziGPN2T+jiP0U7jgwAgRmDa/6uDOM6dvGiKTQECNjORLFjcepHAxO
	zBgtNkkRvv19coxFptqx+Dr1/P9lhDhxW2iRWUxiafEsbMMGMsAPnQ6quVFL+TqICe4Qomjn2eZ
	gb9lOKRpniw0rV3cNVyAL1mPvw4xYMA6D
X-Google-Smtp-Source: AGHT+IG0l8SlxqzbJy5yTWk4X5Wj8Qtynwz8Lsq7ZGJOC1TtSj2YLID6Gs1lC0BpZmycf4LOOW/++Q==
X-Received: by 2002:a17:907:e2d0:b0:ad8:a41a:3cbf with SMTP id a640c23a62f3a-ae0becb6e06mr214652366b.13.1750842882078;
        Wed, 25 Jun 2025 02:14:42 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054083c95sm1021480166b.91.2025.06.25.02.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:14:41 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:31 +0200
Subject: [PATCH 3/4] phy: qcom: phy-qcom-snps-eusb2: Add missing write from
 init sequence
MIME-Version: 1.0
Message-Id: <20250625-sm7635-eusb-phy-v1-3-94d76e0667c1@fairphone.com>
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842877; l=984;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=6jOwOjfHBLUytEzmwKQuMf9peA0A54DjyUpxSjnkgtk=;
 b=knC8BOEkeNO8OiE+NnKYB5/k14fP2simRn0FEiUH1MxKyG5zzAMDRqRJ4zNqyeyJsLSuAzNFP
 7cMvV9XCTULBI8qv+2u1CuI8W0OhIAvgqX7c6mnUvgVxb6/pH1mdEUa
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_021443_810493_9E694690 
X-CRM114-Status: UNSURE (   8.92  )
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

As per a commit from Qualcomm's downstream 6.1 kernel[0], the init
sequence is missing writing 0x00 to USB_PHY_CFG0 at the end, as per the
'latest' HPG revision (as of November 2023).

[0] https://git.codelinaro.org/clo/la/kernel/qcom/-/commit/b77774a89e3fda3246e09dd39e16e2ab43cd1329

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/phy-snps-eusb2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index b73a1d7e57b32cfdfbe314ab938ec54746ed53be..e232b8b4d29100b8fee9e913e2124788af09f2aa 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -437,6 +437,9 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_HS_PHY_CTRL2,
 				    USB2_SUSPEND_N_SEL, 0);
 
+	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_CFG0,
+				    CMN_CTRL_OVERRIDE_EN, 0);
+
 	return 0;
 }
 

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
