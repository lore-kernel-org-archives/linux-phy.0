Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21A88C83F1D
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 07:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwteqrzNXa0uLmxxX5O0awZ+yX5sld1YL5z65pfBWjo=; b=W47Mfa+3VLgg9Y
	A63QXU/6olIx0haY96Fg0tl+db1W/OwalvqyKtTXz+TREWk7DiyCUO0fQ3FnFWFvdhvy8qawj8Inz
	EjgNo5Ob3aWKHCUu3YTbc77pCat4hCJyTkX6NcTUrKc81wpuqNpy8QnoAUaOWPQUGK9CfBpVJ3FUG
	I1xEWUWLAfc5V7y9HNz7wDNRCLbzTAbpr5QZQvRNauZGU+gzd09NLMyetxgMND/ifI5BctU9hwpkL
	TouXkdAaBv4mZ27uucgA4Huw+FycD2WADaoUKifkSzfAEiVFTzQK2n4lthEaP6KWbye5JW7+NP4tD
	XqJReNs60ntSaBERDZAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubaBU-00000004MjQ-2v9K;
	Tue, 15 Jul 2025 07:34:40 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uba6t-00000004Ll4-1AU3
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 07:29:56 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-455b002833bso11676235e9.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Jul 2025 00:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752564594; x=1753169394; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cKX26aKnBjtUzQOYUax+zZK1e97PUjbyxNSQ0DpaCR0=;
        b=A8fadxNmczu4rfs6ERvQuazISIzS2WmbTDZyl7uAcJxO6FVckl0qsbfocgalVG8KK9
         jJk4OFzYQ08F3McZTLA7QKP+GsXunLM6TQxJRaAbD1JiY1sIwwZ5RbYpMBabJVR14Sg7
         wygS0qQ8t26JXLN1Cvwq9PEU+1aNurdWFNrAQU0MwtjSgEZImAuIfzwf9ldjxzk3jWSd
         gCMeiNiHySnaVOCPdb1THAcvMsMrwvfurGoXVlK8cHfU4clfAChePI7x12NEx+3OiqmM
         6BKHCkg6XC7mDu7nUu3ZQTNMvvrDT8eKhxSh79T4X1OTCQO6GylL8wS7GgDyXSA389Kt
         lzxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752564594; x=1753169394;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cKX26aKnBjtUzQOYUax+zZK1e97PUjbyxNSQ0DpaCR0=;
        b=LnfoTST6rIL++FbiYma+Ggkx04v85vkjPllsTpHXZsiHgdtXEqfVyrLgGvOBRF9d/N
         POOWGvCw8bZt6iaISe7MKXH68suQqN1Z9q1FHihHppvS7+933WgNYJEomtsd5dLWTZ/r
         TTd/47ujLbjzr8Y3ZgJcaT+zuZSHz/TWZble5y4TBcOGVpj8R7j0G8U5zzSxz59h0Yw4
         f8D632Bh1UKbchqDu2hyINtCSTjH9plOpQszsHyl3IWySZRMhPEWZ6sEfhlbdwln2agr
         RX1nHexsZRWK/iXVbJ7OBY4DRbHPCD1jvv1qoylWkL3qAA6YZdPsydM16Ai8hCpq+Hs3
         2pcA==
X-Forwarded-Encrypted: i=1; AJvYcCVfslglaqtHxr457Nd8WK6kcslD+7XUER0YbZaZLYkJbotMtNrLaEqvKYQ1tdK9uVKPslFhlJhcIo8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBRjSqvwkQhOhc5h2QyI3eEWhvmyq1Aekxe3o4Lv/deUWo5jfZ
	6xt6cGJ2iKmese+WK5cyLXOUbv6MPKDlOWQu1suo/tuVgvlH3/LSzNJe3p/CXR1zGo8=
X-Gm-Gg: ASbGncubyO1O1NSxxH1i68USdKfht8XM/GNstOE3nlzDRQ0JhPzO95BGTU3EFBIa3pu
	GULnZWyklErgJYwPHHqBKYl6tYOPaniyuMUBKEMjTr//GpaHsJavyq3LwKuVNZif3AL8Lw95kTQ
	fAdJY0ACAf8kjklj7NpV94p23h2wU3PmaMjrxk8UJH481I2PuIr/pX7YNufDWHpJyk+dyg7hkUu
	fG3ArJLDu6LcFBK8oaU9Dg4CuWLXplbJgsasqwN1Xa2GBYcsWuKbW6gAUJLDYrLtHRwQuiSsTtb
	YRrLVrTN7AKo6ujlBE27YaRYhfu3wK/716zPfy9GFE9XEEIJq9Q8bIhd11Pf2T3n2gAsZfdkohg
	PCmq1FwQi+Qlmds0HnX1UYzShH6PDT8K2roG1eRLPRvksXO7dMm9mF5IqjDk0XD9J36Q=
X-Google-Smtp-Source: AGHT+IH/721YD0d2nZC/ZtDRok89aWdqeORozs5yHiHN61ozNTDLlak1hxt58SbOisTPzHt9mdONKg==
X-Received: by 2002:a05:600c:1f11:b0:454:ccd6:327 with SMTP id 5b1f17b1804b1-456272d233fmr13038635e9.1.1752564593644;
        Tue, 15 Jul 2025 00:29:53 -0700 (PDT)
Received: from otso.local (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-455f8fc5a01sm106703395e9.32.2025.07.15.00.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 00:29:53 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 15 Jul 2025 09:29:37 +0200
Subject: [PATCH v3 4/4] phy: qcom: phy-qcom-snps-eusb2: Update init
 sequence per HPG 1.0.2
MIME-Version: 1.0
Message-Id: <20250715-sm7635-eusb-phy-v3-4-6c3224085eb6@fairphone.com>
References: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
In-Reply-To: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752564584; l=1041;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=dKRIX2zCBDl46th6tpWYKQ8ftUYUz3Ovibvr6genGas=;
 b=jg+3EAQfrVGVvex10SEG9/YqZt9ntRuWJlCNcEabPPuV1ZNP043tJEYI08EeUFSbw7GXST/WE
 y1W/CWHqrcmCs+Q8gklChp3SDKzDopYBRGsktodY6QduCnNEF9NHpeO
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_002955_340613_087B416D 
X-CRM114-Status: GOOD (  10.71  )
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

The eUSB2 HPG version 1.0.2 asks to clear bits [7:1] on all targets.
Implement that change in the driver to follow.

See also https://lore.kernel.org/linux-arm-msm/7d073433-f254-4d75-a68b-d184f900294a@oss.qualcomm.com/

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/phy-snps-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index e232b8b4d29100b8fee9e913e2124788af09f2aa..90b3da79900467dccbbec226db1cc83297ce8834 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -392,7 +392,7 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
 
 	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_CFG_CTRL_1,
 				    PHY_CFG_PLL_CPBIAS_CNTRL_MASK,
-				    FIELD_PREP(PHY_CFG_PLL_CPBIAS_CNTRL_MASK, 0x1));
+				    FIELD_PREP(PHY_CFG_PLL_CPBIAS_CNTRL_MASK, 0x0));
 
 	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_CFG_CTRL_4,
 				    PHY_CFG_PLL_INT_CNTRL_MASK,

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
