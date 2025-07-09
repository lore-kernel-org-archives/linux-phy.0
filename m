Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ED55C83F12
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 10:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0J3SE2KYYezq6+uPTYAfJPmLTd86MZyH2txTG86ngIM=; b=2cJztzvm42GkkC
	deTfrkaqq6H1+TnMpJfRzxK4lVKSnHCw44+9vvwEkrSXPJuwGasg0BT2sLBDH8nddJqnkifH3dR8M
	TlpHLAwGW1wS++dN66RdH3rLGEhj5e5lpBaUVVPRfjmsTqTvtLq9dSS50LEE+rxH6FH+998kg6MvU
	D+uThWX4miVP/cyKCqj7zxRdXmEye3nW7nZIizysHpUnNlDipsI3HQyaKacLB0n4oMdgjSkFj1iVc
	L0rV5/1VhXKOGboi9b5D//3FOr12qhvI5wWbdbDSKhcmXAmAWFIXR4Ljx9/tP850nnU798UbtOUbV
	VUjfDiiezOqwkCK8jg8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZSKR-00000008MQz-0HcS;
	Wed, 09 Jul 2025 10:47:07 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZQww-000000086Pv-16BB
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 09:18:47 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-60c01f70092so8359352a12.3
        for <linux-phy@lists.infradead.org>; Wed, 09 Jul 2025 02:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752052725; x=1752657525; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k19wXpNqnFMbk5R7eovbUjQ7UB0GYLr4+9IyBRmyPec=;
        b=cp/Of9voL2HXu24qEvuvERLkndmH00fpZJzhjUtx5Aggf1a2hEXQzTBGeoP2lZV68p
         aQ1QdB5Mvy0w/kTdIxMWu2+0V7FHuAMm90u3Js7WCcNPKQrrmraGfS6L7ScERHj/55NY
         3yS4JYuVIzvzkFkDCqQUgmBGeStISm6+mC3D/m7tGvMDdc7DT4FXCFctCYgJxv+HUBTy
         n/vEaWQEQsAVXxf2stN/4h2Z7nu3fNoHG8kyl+0veJ1aqAi5cno6tdaY5mVylBcIpdiy
         EE7iivUTGZmMlz8FhZ/iORpyH1uIQnqtgRTKZ++bO1L6+987Mhk0iK7qy7HN7f5dpFIG
         YrBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752052725; x=1752657525;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k19wXpNqnFMbk5R7eovbUjQ7UB0GYLr4+9IyBRmyPec=;
        b=TifjbQPu+koH8zqXt1BqWiA0wq8PpLDzHg+LR1KH9+j3ec3NZMh+V51MCdQofTWUtA
         WcO0q9iRBJTuqfnUGb74LZU+2IvcyOjLr2qfB6YDy4SU6yjuLFpn88au5V5LTYZTyFLq
         StGKnnOSDi7SGSytecuTlHtP/nECSrxwKMecCwFxQ/+GXHBLYILMmfRtNtEVPZSj+cG/
         21bzXqNC9BEGfNSvmXvS+tQfQF+5dbQzUv2FhETwDZASPVK34HrLRbiAZS7Wx6S/pmM/
         HEzlbw0LDzLPKCDa9HIBj3yFH+Nd1SeyOSFi2KSdLrS/3dyvBwNwqwhLazgroQxEuBI5
         ctYA==
X-Forwarded-Encrypted: i=1; AJvYcCUxHDtC+f30bTeS5KzNAKJH5SwoxWKNQORyL/tfe3QsAbd8B1hKNZg+w4TSCqUDWEyFDB65u+DjSeE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyu55eK9XBI0ZzfqSwSA1B5M0JshtzfItks+EwTbS/XqNGNwnBk
	Br4DK9s8Itk9Rv+b3jxa34ANF3wd3AbY9w3b5rwjDC73fE8DqfS4oRxfG5A9AZDxPkY=
X-Gm-Gg: ASbGncvMRskJFQicStKWKkZvqOZCMzO4zTsSy3k9K1jNOW6sBYNPf/hhg9ac+BNXMAr
	53fhJZ407lf867/P7DXLJpH95L11uPStYcCwsBmV2DcOqn2mCemLwHUjqSeI6dYdGXnNaW0/JmV
	t8vF5tjJ4o9amZR8rk6vXCk8XBJtCkwglVupQAPkyRxlBggO0RHvFyW1sE/hQzheLebuBu9VNy1
	rEuT+TMS86NtMvHSKMEuHCxjMUmhqDuzPT+RRYyPqoC3XJlMqZa+hWms3MQ4upF33n83pAbhTwf
	f2cMkVNPcSrJrWISCrUxaJUJTujUyDE4ChyGiPSTRVkCs6d86nY2A6VP2lmmVRstvt9YyGNTep3
	9ItMIZmKi//8rDXl3CbL6/VIdeet7DErC
X-Google-Smtp-Source: AGHT+IEldUKbclROxgKKvDj16YdbKCkfb5vsSnzNDwXOeeA+MdVlRejqQ2rYPeZd+UWqDhaqfEndNA==
X-Received: by 2002:a17:907:3f1d:b0:add:f191:d851 with SMTP id a640c23a62f3a-ae6cf70f6ecmr193619966b.32.1752052724529;
        Wed, 09 Jul 2025 02:18:44 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e737sm1060116866b.142.2025.07.09.02.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 02:18:44 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 11:18:17 +0200
Subject: [PATCH v2 3/4] phy: qcom: phy-qcom-snps-eusb2: Add missing write
 from init sequence
MIME-Version: 1.0
Message-Id: <20250709-sm7635-eusb-phy-v2-3-4790eeee7ae0@fairphone.com>
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
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752052719; l=1183;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=ypwpLrRTvDMuCRzzHaQyRH1tZrFg5WTx+gHcQSKkU3w=;
 b=qWz3s8ZAOTflgxuX1N6dBmF5nLHnOvsOGcagHqbmagvbHIa4s4DGNR3HHtOQx/6KBWkS49b78
 y8aXmLEU/40BkHdwOhmwGYx/yUn4lOmbIbaH1RiDiedOPOnvRiI1YBJ
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_021846_331552_7606EFBC 
X-CRM114-Status: UNSURE (   9.13  )
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
sequence is missing setting the CMN_CTRL_OVERRIDE_EN bit back to 0 at
the end, as per the 'latest' HPG revision (as of November 2023).

[0] https://git.codelinaro.org/clo/la/kernel/qcom/-/commit/b77774a89e3fda3246e09dd39e16e2ab43cd1329

Fixes: 80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
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
