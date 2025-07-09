Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 990A0C83F14
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 10:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udfMWkFQ0ztEuAtTZ7Zhe3/0S2800i+nKS5tdkChY1Y=; b=QDtiiPKo7fB447
	zHCMLphoqEVoyZ7m8kmy3xn0PWp6QndVxfvSXHCAWp2SmpL3enpSmvvxRKvRLtE7c+XgUnNGhHlKt
	T6g6EKZkHKmbP7NfRtmAB3RJD4hLuCMul7EowRYQM1SWDSjnhH2lnJhANkCb5vJiYGwXxW+W+6vn7
	sSPX8J/1H+bMLQh1qzr0cK9uxW5kjkf5q7Bqn4PzqhHy+vxRLXL3fyie6yZGWb9gtnL+tBAo5MSdE
	pXO/xk5VSY3echFiV/qMR3kD6U9/J7MBMdn2V6Lo4sCodUTe2VHX/YgAy6SfMK5FRHhb2mqep1m7t
	YhSvREi7cwLVzx8VACVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZSKR-00000008MRI-1Usk;
	Wed, 09 Jul 2025 10:47:07 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZQwx-000000086QC-0zdG
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 09:18:48 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-ae0bde4d5c9so1095001966b.3
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 02:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752052726; x=1752657526; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uAQIOUI3dQN/BAWWa5L7E496C+B20N9+qpU1jibn7CE=;
        b=K7CwPqCpTiOMJjIpMyJ5ihyvH/G61LWdNlSPCUnJtE/WjG4VFFbv1aXVSAMysASeBG
         MfLZXclaWkM8t9nMwwEHkj/mI4PE32C1nUzkJIqbnP4TTRPsduIQHQ5dn5jzSgakOU81
         jKuDgyl9mNAKxzGcxKXcmPE5vaDXIHSy5VdjgXEsm6sYIkD1yM7P0u1V84pGSpfCofpU
         o6UICd6O5NnFW1d4nbhgtuH2XJfuvBrzt+ljLkQXCpktvyDCTFUmyhk5d5dtsyqL+H0L
         PKpBuRNUPYB5ugWH6/UBsmfnEr/9YwyQv++w8OYa4r5NqUJBYttC24JxzUpZhU9ooTLM
         lpcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752052726; x=1752657526;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uAQIOUI3dQN/BAWWa5L7E496C+B20N9+qpU1jibn7CE=;
        b=xJXcjdHM7h4eiti0a/VP/fF2nJz9y5BQCKpwdeeis9M+ellnUNSW284bYhb6PPq8qh
         Prdifj567XHWWeNnsVnkSZatpS/FeHn1nohDGI29moIi8I+eh9jA73bkOeyGUAfvMqWs
         7jspvkB95410qvz80BxBHl+20xn9UkeMcbxqVlrgCT5G7WwqnVo5T4A0s3/q08wifmzg
         0l+5Cq78fxU/00geQQJnAGSYdvPEPcG/D6ozBeyB0vm3znAq9KPELAhRBk2rwy37LyLj
         W6OkVpHLAWqK4fgCmmrFJGwkNKNE/vOmESFKUzx7xJER4sKmyawhdGwuZ60uECwxhCJK
         HnVg==
X-Forwarded-Encrypted: i=1; AJvYcCW6jqlpdLPL6Ccm59CpeKm5PVJm9tLU9Ez3DxeKYTVCN+aP8uiS7RkSg67fALST6EmDclNwsvC53Ew=@lists.infradead.org
X-Gm-Message-State: AOJu0YyjABwfMymLwNoeaYvJ5BHo3aKRa0Q+w6LAnxGbxdGGydmdX8u/
	Ntu17/kJrPv6lnq+KSdNcu4YaoTA1mJhhWi5X3ik0miuH2QE8si9DELjaCrouq7TP+4=
X-Gm-Gg: ASbGnctHwcrh4tZTysJJ4C33mnWccpcRJOYOmErrFolNjbsyTBMC9is8OIl9yuczQaT
	sHcl/GZLs7+6nQd6I2mZzquWOKej+/USZTjRqQpFTYMEnSn3nZrlG3Z16Wy4EhYVd5wgvSf5C8J
	05og34ZOdBmt1ecmWdlX2NGoByiHcUFqT/tdrxQQJAC0IvSW9R72/2lpvy2t6VPbKiRTqaa1zhW
	8cTnAfgqITLNm+1kdoZlDb6AF1fzHaIcgxQzGD5Mx2NmCdaVNmJJjjHHHVvLrmzDfG8ovkoOrop
	hnHgGyDhTtb9SN/l1g3QOe+WQKfcrAvmmVJiDThO8CHDws5dC5UxWs7XkXx9qgVulap942Cc2zY
	vuTGsDHTaqGchpSUMQUjbn9CGkvM2Hb/BvyWbbuU+u4M=
X-Google-Smtp-Source: AGHT+IGx/vzlfyTviick6hyyNUlcbGsI+JPz+PSX0OW7+e4XECNcxPqd0I6M02c/e4D8+rgbMwjMcQ==
X-Received: by 2002:a17:907:9281:b0:ae3:a8dd:418a with SMTP id a640c23a62f3a-ae6cfc748eamr190274466b.56.1752052725491;
        Wed, 09 Jul 2025 02:18:45 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e737sm1060116866b.142.2025.07.09.02.18.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 02:18:45 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 11:18:18 +0200
Subject: [PATCH v2 4/4] phy: qcom: phy-qcom-snps-eusb2: Add extra register
 write for Milos
MIME-Version: 1.0
Message-Id: <20250709-sm7635-eusb-phy-v2-4-4790eeee7ae0@fairphone.com>
References: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
In-Reply-To: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752052719; l=1428;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=YZmEw3jGDd+2qgbm25oUb6kfM16R2p862EV52VAwfqs=;
 b=zN8r6w9eZkpsfJvCdS/uEyRLTfMfcMPeQkNPEXxwm1zg2mzNgMq6//5XUqXcPzpMEX576tiX8
 v8sIG6hQ6VlD7xQf/Q2ZKTCgES3vUcgQxUzwebHmbVyiNZdDrA4X384
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_021847_276957_03B3F2D5 
X-CRM114-Status: UNSURE (   9.87  )
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

As per the downstream devicetree for Milos, add a register write for
QCOM_USB_PHY_CFG_CTRL_1 as per the "eUSB2 HPG version 1.0.2 update".

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
The downstream driver supports an arbitrary extra init sequence via
qcom,param-override-seq.

volcano-usb.dtsi has the following which is implemented in this patch:

    /* eUSB2 HPG version 1.0.2 update */
    qcom,param-override-seq =
            <0x00 0x58>;
---
 drivers/phy/phy-snps-eusb2.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index e232b8b4d29100b8fee9e913e2124788af09f2aa..87fc086424ba4d9fb3ce870aa7f7971a51d4a567 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -420,6 +420,12 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 	/* set default parameters */
 	qcom_eusb2_default_parameters(phy);
 
+	if (of_device_is_compatible(p->dev.of_node, "qcom,milos-snps-eusb2-phy")) {
+		/* eUSB2 HPG version 1.0.2 update */
+		writel_relaxed(0x0, phy->base + QCOM_USB_PHY_CFG_CTRL_1);
+		readl_relaxed(phy->base + QCOM_USB_PHY_CFG_CTRL_1);
+	}
+
 	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_HS_PHY_CTRL2,
 				    USB2_SUSPEND_N_SEL | USB2_SUSPEND_N,
 				    USB2_SUSPEND_N_SEL | USB2_SUSPEND_N);

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
