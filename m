Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2810FC7EE32
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 12:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezDMoAPq6kAZRPup+HnZb3Yp+mBy6OyLeOHSqfT7t4k=; b=aNfXWBZihG5S6u
	kDhC5h4rruRanGMw+xC8s2no3QVj34SP9j9bZrVwUyWDw7BoJcwHVYuRP1p3UO+zhLgXzrRg6pRiY
	mGQ2mZ2IT/TJJVU6VdjvAm+ifrubjgR/IW9QmeEyhaYFb7EMmLzLMLyKFU2j9zuPNBCrADd1xm+kO
	KPsGO83ugTgSfmVRnWCHOzeXlTo/+CgiKANKYfS0fyh8kG0TjrZFkg8Ssjv1vzFAn2/2YnwTW8dDD
	z7n0wTv4ur4C1JqHd5sPb5m2PhhDo/lNlf8BxXZxzIhSQj7tVZd8XyYy8PKLgAgk5We2iXsJ3x7sq
	DuwGQncByH1tGbJKDyLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUPOr-00000008e8R-3qkQ;
	Wed, 25 Jun 2025 12:38:49 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUMDk-000000085oi-3ZnL
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 09:15:10 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-adb2e9fd208so237508066b.3
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 02:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842907; x=1751447707; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZUNu7081NdSEDseAX1Y3e1QHYtmHZCwU3VvPUFRPHLM=;
        b=vDy61VZTLhcxOYEyffA26A9M01n/pjrV+pUgHWWauEK3hf8QRxVEcnAIpgYvrkhHhw
         NLzmwz44Uq/Z9LztozIenO2QzGQ5DVPnLTWkhAHi1frRJ06XPW2aiZEdM2WB2xlT3Eb0
         hKmOupqlzgm5kR3vftDaKb3/E6qxnkvSnB+/0dHu9LzzCJmtr+u8tczkOfr1nxdIbTd3
         sPuc1jfC/heHJ5KaXnVEeVLdctl+Kd2dEMshQ7bpJjV93el3az1SfGGE3xtfQNTFGis0
         j1HS1/FrBCx7sVtOiLzCDxS5Au1XIcxTZ1X4UPeApTKwfsqJPHpIj2SQnvKi7OlQBVCB
         rUIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842907; x=1751447707;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZUNu7081NdSEDseAX1Y3e1QHYtmHZCwU3VvPUFRPHLM=;
        b=QzM/43unw6Bp/zB61EhexKf1ZO9DykrLYrczmtN5oMLj4ZDwttXKT0nWVtkkXsRJff
         fyW1eg2RiGxj5pEZbqbnJ37qOpn23n+WRJF2Wqa0EF/vY6P1eNz6rjZ/SGkkCW+f3QJR
         UoJHk82nfyDczJu+vk8UCPGx5xZOophxWlOaj0BdnAKJNtiUsWw1hR8T95pfrqG5ylzJ
         XShbysBcfsKbMuDdK62sWYM6NUJxTl9+SysbL4F0dXOd5kOVK3wZbvcewmgTbjSx56lP
         HcJgPAG3NZIyG+f9TZQ9YEtpJnGFWgg47UaEs/8K86Ivb9bJB8M7XfOoiMqNLXozG0BR
         pwQg==
X-Forwarded-Encrypted: i=1; AJvYcCWore5cssQwwwFwk6p031OqfQkX9nHtsTiDsDstXQy45W8+axuOaMWtkKkVWx9ou2OWkgaOI+fu9IE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzspUca59tdaZMEb5u4WCH6iH6Y8NbKD6mEQ6qP3wI+o0xxJCrY
	DYbST3sUsEhYcjxYvK+WEEcfkvPyC+cenMAHeC+J/aiJct6A+ptRB0TTdZXmSq26aYw=
X-Gm-Gg: ASbGncvxYemZ7+Kiguqc8aUxgAlGfyTP1DAgvNojRX9F0S9GpGDbgerCgjW2mHs061h
	d6VFqdlq4qjghnTgh9TpnADJKSZBnLK9mbAVDO4KH9jeeQAji+LIwoXayYa2UsjpPQzugdMCfui
	32ulk5QlgVgzEBRoX4KKnUea91QG7Q2RS1mFmLXMVATz4dFOlZVAMSMi/TYZK3+r8pTkFLNrVrR
	W77bLUkKDkdL0xAru3p66zAlAKsYf3akm6BA+wMIgYtLHm/TB1+KziT23N92zV2EzJ7BLKlfpRQ
	HGTn7GUkC8utjYZgfyE3JwUuFlk6MWoQGOzoYSRTUeTQ1xfk7hOXKH+N6YFV/NkfFhNpe1/gT3e
	Sy81h0x3pJCS+AYrqJXct4pnJ/CHSViEd
X-Google-Smtp-Source: AGHT+IEuwwPgZRVwpV0E5VzCi3XFCUhbcyDfrIuNNO6Kwzrn10Xq2xPkywwIm3YPQY5laniWK8XBgw==
X-Received: by 2002:a17:907:970b:b0:adb:4523:90b1 with SMTP id a640c23a62f3a-ae0bf01a47emr226738466b.23.1750842907077;
        Wed, 25 Jun 2025 02:15:07 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4c2bsm1008972266b.71.2025.06.25.02.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:15:06 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:57 +0200
Subject: [PATCH 2/4] phy: qualcomm: phy-qcom-eusb2-repeater: Support
 tune-res-fsdif prop
MIME-Version: 1.0
Message-Id: <20250625-sm7635-eusb-repeater-v1-2-19d85541eb4c@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842904; l=1083;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ga1S1Xr1XwnMLdKu7zfWrQr/T730QEOJZ68b87o6lys=;
 b=8ytXcaweUPvgAlxdOOzwHq/Lo4rL98hebjV+yYGy27o+H8VskHWgSQLto1TFmtiLWV64CnvTb
 hsS6OQkxPVLDMP9wTarvkEDCDNQLNLFZx76E2jESFwtOG5cmMcEznGt
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_021508_898082_C093EBA8 
X-CRM114-Status: UNSURE (   8.43  )
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

Support reading the FS Differential TX Output Resistance Tuning from
devicetree and writing the register, as required on some boards.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index d7493c2294ef23e37e484019a49ddf7b3d6a6a46..61594739e5b12706775622e1f76af6ad5d2d29bf 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -136,6 +136,9 @@ static int eusb2_repeater_init(struct phy *phy)
 	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
 		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
 
+	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
+		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
+
 	/* Wait for status OK */
 	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
 				       poll_val & RPTR_OK, 10, 5);

-- 
2.50.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
