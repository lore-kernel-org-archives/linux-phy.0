Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04581D0E6EA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 10:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zstvt6d89DHT9twNyTeI5zQRw/vah82X2oH60AqEOaA=; b=kCdguXHiUA5Tkv
	rYLINCyU4kVxq+OwpTxGTSDzSVCcRb46Qe6UHJno5krKoPlpiNrW4dbVtB3eeMbBKF4e7xiIvnvKO
	ZmBWvbBDRsRBtSrodzkQDgv5pSoqofbjPWtpxYYAzN/FKHnxTs/ulku0SvnvVAPciYSC3eu8R8haq
	RO++3BFf0kUJu8EmG+fwCvkqJ1p4X2N3h2CIycV77TU8mAbpfRErVXOMOkeRm9W1FDmr2tU1hrMun
	1bIM1ipW+JKvQCfCLF/CJu3/trEmYwJu64RYJDofEBVb2qnGmwv9BgLLWrweyQw/U22LeDDNnfGMi
	7Ph0hb8nSHCqDpj6BBLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2pix-00000006tyl-2ORg;
	Mon, 21 Oct 2024 10:33:19 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2pis-00000006txH-3QXs
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 10:33:16 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-539f84907caso4730770e87.3
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 03:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729506793; x=1730111593; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dq+HZX/YrY3XCimbXKEs5fGXUV/6PLqs5QlWH/wMocE=;
        b=tVJQN7yNxUHCRlcJN27MQ83L8eYUB1EO13mfhdkN8Ok7EZxvy1MEyLfcoefAZtfZjN
         nCwulNwOkq72c3TTrp9pdqJEfpsY5H6RwAT5HoWpuyRjQd1VLgv5Mn570GKe/Qs8qPAn
         NAwJCkamnWie1a5gLm8QD3vLY+vmIroPgwjVC1/R5vwlI1m2sZhZYy0f8zxa5+CNVzHD
         YlxHG3lpj8Vkguij5/Eljlx+mF/SvZJBhfYPjp4LvyKI0J/I43u5j9L/LHY+3ayh95AX
         rRAcyPpOuETq0Afbs2PNp/iAS4dGLa7wre0BeMvRWr7NATpHOLtJI82ekb5wmNOV7gtw
         RQ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506793; x=1730111593;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dq+HZX/YrY3XCimbXKEs5fGXUV/6PLqs5QlWH/wMocE=;
        b=avAog5qrWtbqjN0/QfCJvuJEqmd636hDF7tblqTD4ofzGDY4k5nYu7F7DeFWa6Ku2Z
         HbGtzumaZnFzP/TpF7r29czK0ZsQiLAaiHur5IoTT/BcYBV2OSVt1HPCjs4x/UqwcpIg
         BhZKO+qEk2QopHm5J4ZAOzOiWzu2wChxIjxHDnfOaS741+RKm3jCCmJ5PeU3EX3kC4wy
         /licQZnSXICEK29eh7vQYMch3p6NMqmhKliuP0g1LocLMSUzGXllCz+FaIRGTIeZPt9q
         V/vv0R7JydaiFs55NGAdgUR/KoiyMt8iPiaZOIQa4BWwE6edLmneTh6SL9qV3iOJGkYD
         dAJA==
X-Forwarded-Encrypted: i=1; AJvYcCVqUOv8gEJC8gc/bbq3oVKDiQsOrGhnVMOjWJ/0KhfuYtH25EFinpV748K4ABnwXb7cZ1ogk7hibvM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhORLYX65oemlQ4SN8rYziF94McoHZ2rkNg4dXFKyOVa6cXAY3
	OtBX2Co0utSjWTYPX5wWQGzuXPn/IU/WRqDJX7Oo46jWb9zYCGIBxvNh1AV9/Tg=
X-Google-Smtp-Source: AGHT+IHrXA0yTSuYlDJ1nxR7O4obHD6PXzXsLUGDH5RpgjhCzPSYejr2Mgj0PH04npOI5C2Lz0ao6Q==
X-Received: by 2002:a05:6512:e8c:b0:52f:c13f:23d2 with SMTP id 2adb3069b0e04-53a15229c2bmr4977335e87.25.1729506792835;
        Mon, 21 Oct 2024 03:33:12 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a22420015sm454132e87.123.2024.10.21.03.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:33:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 21 Oct 2024 13:33:07 +0300
Subject: [PATCH v2 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 SAR2130P compatible
MIME-Version: 1.0
Message-Id: <20241021-sar2130p-phys-v2-1-d883acf170f7@linaro.org>
References: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
In-Reply-To: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1186;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=7YeWftVlP2Q/gQUZRfbjxaxvlZtz7wnpUr40ZoRjqrc=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnFi3kbqrKaNrEeLFVg4hGGH2uG5CeVqVeoDlB9
 LfRyNGn/bGJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxYt5AAKCRAU23LtvoBl
 uPvBEACle3Xj/q7wBu9X/PtDKjasjl6a5hgmsyoWzlxnxBgZJM8MAbjis1hn4760X47VKl4AtfL
 lNitq5WgM2NC+RvkSk3GUJLmov8o1rUcY110nImwa4eEzq2zN8i3bRWL3d2NWBNJjJ0EwIq09nK
 9uN0b/kFawCSbR3TjzU504Cik+9RpYrgVyMfydiR1XbuRwyjHUftVF5QViNS8Meqxd1/JtA8dFv
 5p0bI3eoNLNvRgpinUz4qeWsluYxJFo2FmMLSSJVlpb8m7stOd+XkFwQepW3NUS/cAsqBAkpGXT
 zWViONEgtmEa2Qe8Jp1mVtu5eu4BzYl5TLt04DsI22rZAtaYFz3Zu8OjZ4/7Gc3HzCf4HTsx5Zd
 RM/rxr1mwy6oAJc8hkLn8J7+2qRtxc+7LDvCP77dbndL2NhXl1OwKKP+0pYNUMTmXuPipQ4Ro8x
 x+xu36WTBLE+C61XIY8nk1xYeZHIEFbj9OgtqHDPqDJYbE17zTdSRZ4c7FHtYjbad4PfbkFlgoa
 drqPQuNLGiaOANLPHSrqTgJeQ7m0TS4lEOZ4vw1XqYsAP9zmjk6zk5nWD2SteqrgGblPbDXS688
 GV/oepP7YPb0ErtLJsFgUCgpWy84TjSJgCBL6wpAl/oKm2OufkoKK4W5gsbsVBScFE476r87u2G
 EnN5gup17yejuLQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_033314_866496_D2E55C1F 
X-CRM114-Status: UNSURE (   6.62  )
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

Document compatible for the USB+DP Combo PHY on SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 2d0d7e9e643117f5ec625e49270ac94c70603e7e..358a6736a951ca5db7cff7385b3657976a667358 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,sar2130p-qmp-usb3-dp-phy
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
       - qcom,sc8180x-qmp-usb3-dp-phy
@@ -127,6 +128,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
             - qcom,sm8550-qmp-usb3-dp-phy

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
