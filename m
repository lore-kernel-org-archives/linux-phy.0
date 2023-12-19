Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D815C41535
	for <linux-phy@archiver.kernel.org>; Tue, 19 Dec 2023 20:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tX/TOTVxGhq5mkzk7NI4ClpCxvsk6Pnpemcni+fGYQ=; b=MWKUZrZQ6GQs9+
	f/Ud8TdliEO+Tbio2lxCGx5JiguYOX1CunpjHRASyXx7UxRar0gIp3tdwFGFyAmOjjOwxHCg9CQv/
	YKsyz227xW1Y20qGVFOrxA2CYIelk64lyGw6k/Uj6fwEBqMQa5XkkLTF5sN14fHXYKV8UZYb1yg4K
	gE3Gfc02cfJHLKgd8bAQDLLTxqKBx6zKUQ7Rf29pFpxp1UpEu1HYw4kxSpwnt50gHfNVu8M9KtKav
	T3R4x61iUJ1bm6G1TuKDZBLGkYWRl1tlPPmBKfARkqMl6XWFsDL6adSSH33OX7+9udsd2CCNEjWKR
	zBsl/qMi76rDMQC8OyzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFh7u-00FRtE-2u;
	Tue, 19 Dec 2023 20:55:42 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFh7r-00FRrK-1b
	for linux-phy@lists.infradead.org;
	Tue, 19 Dec 2023 20:55:40 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40c2db2ee28so62840035e9.2
        for <linux-phy@lists.infradead.org>; Tue, 19 Dec 2023 12:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703019337; x=1703624137; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5pi6I7RcndY+6sf6sOBcp0JxUojgCI4aZoyVC3XiObE=;
        b=GmQvaS7tk95ztIiYyHLljGYj5H+861MAqaWQ5a45OijW4tNIBU7kJ9xfF7Af1krKIO
         o3N4/vqOcQOU0pHyXvy+3DVy+XOPjSk8lrbMMiFsCXkeDSRf2GYig5xhehp0lGRjNR/t
         X54SPAfnBzuX3h6Kojcotm3NHmZAllYm+7YQSuL8YGupOe684bP2OwOIYUteL1CtDj7P
         a/nLomqOK2pymm5RrymXeeL9UUttK5SeRQLIaqUVPQ0h64Dy9x4Ouw7Fl2oVHauQZI6o
         t9rCZOwRHFQTNN3M89MgyjysHxOAzR/vZO7I2L7t6iaMS919iwaWALeKfwxGAY0FiSoj
         TK3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703019337; x=1703624137;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5pi6I7RcndY+6sf6sOBcp0JxUojgCI4aZoyVC3XiObE=;
        b=OrKxMbI3DSJJsWModf1VqpaG/+YFo3lbHpWvqvCmz1OcubZ8vuhyXjSgaMfaHR/el9
         D1qu9ldo1CHDzyMhKUTqxa7BbO9J6PvbUFaKzv5cEAfS0GNTeTjQ4fJGSJYecn/rTgrf
         jWaI04sV6Hq+G3/+LikAPddqJ7X+fxbdkclRtwm/h9YUBeZ0R4I1suiMLg7jBpnz7ehs
         CjzzV/Mot68Aswsw8N/eCbMBTlABJSiKZfA9I/Wd8sDuJq5sZmvpb6B+9TQnhzhSiuLq
         vaIfBLy14t41CrTElqxsiheduSvbalt0UDT5na0uz6UCm2T9wRVoH4WH2JOWvKKvca6r
         ZLhw==
X-Gm-Message-State: AOJu0Yx50mIh1JIOlmsIUtQ18Ve4sX0Bp74ZQB0K6M6KUlrHlAY3kBXz
	L5CYWAFDyzqxxikgL1lJb9U/OA==
X-Google-Smtp-Source: AGHT+IFrs+t21q1UFgsRZ5h6S9jToMWIlbzWMCwBBw1ahionkg6Ugq9YfDvjKJ8/emZoegeUwMBHrA==
X-Received: by 2002:a7b:cd96:0:b0:40b:22de:b89a with SMTP id y22-20020a7bcd96000000b0040b22deb89amr11265178wmj.31.1703019337194;
        Tue, 19 Dec 2023 12:55:37 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id v16-20020a05600c471000b0040c4886f254sm4460701wmo.13.2023.12.19.12.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 12:55:36 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 19 Dec 2023 22:55:23 +0200
Subject: [PATCH 2/3] phy: Add PHY Embedded DisplayPort mode
MIME-Version: 1.0
Message-Id: <20231219-x1e80100-phy-edp-compatible-refactor-v1-2-f9e77752953d@linaro.org>
References: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
In-Reply-To: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=548; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=iGeFTqzs15DB20OSaW0GNTWB3LDTKk0WKgnlPfHO7SI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlggNDVuSQOMzcFMsNOLBAexyTcim0YGusXvB5u
 jtV0tRRs/SJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYIDQwAKCRAbX0TJAJUV
 VjEmD/0a8VbhWcTkFszcFPFquWH9IPyH5K5oDIV/dPNZ+44skMr2+ti/Y0qAXs+79xVP9Q47tAX
 zrm9/fsKOiSLR2MQsomKjxJMiN+bsM5KE9IOHAX1mtuoS/lblh5zfxGU4s2hPl2lqp/sdzIs2zP
 zrDYCN+vUzxGOamzFxO1sHVCClM96jZByM8H70ja8QpSlFKE2HVMESjKGWhD0Z9fCNEuNib4jj/
 YZkqVVrgHVcUMbNB9+AEz7S40HP593Qoy+4mQieuEd/V0kKzN2vczXWsrn7XSY4NhIXqMWRfGUk
 vidV6VL5SPxGO/U32RkksOEoXWd8l/SvOE3afVq0xH2YuijF9BGRWxvhOPDV77mzTihzEWUisNP
 qiKRMY68h2iFbrUk9VprYmXNNHXNf7Xus9hcHG4i6l9p5LsFW+fsmTMHyjYxSjph/OGo+oyqvUB
 nJ0+8lL62dk+5Q7aawayJBsDvUjd7EapvNcVhaF4WnBLOdUmH/BwcgOXoR9sa0TQYYMHTCzsiiV
 29Qqv+OOHcUhVKro7liyd4MjyhfoYgYKMlrX0GbFNrgs7Td/BmbBN9yHF9P2sGy344D+/F96O2X
 7C5ahwOePjOVySntjBcsLujiVKUuFfCGAe0Kv3mzuip60VP7n/AqO2w6VEJZsPz4YnN20o6SVn0
 VxTfcHo0CtsRy0A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_125539_598392_E403DE12 
X-CRM114-Status: UNSURE (   8.53  )
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

Add definition for Embedded DisplayPort (eDP) phy mode.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 include/linux/phy/phy.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index f6d607ef0e80..bea532711906 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -42,7 +42,8 @@ enum phy_mode {
 	PHY_MODE_MIPI_DPHY,
 	PHY_MODE_SATA,
 	PHY_MODE_LVDS,
-	PHY_MODE_DP
+	PHY_MODE_DP,
+	PHY_MODE_EDP
 };
 
 enum phy_media {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
