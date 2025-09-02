Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F8BDCA1009
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 09:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UG3S65pzzvIF6iJHRZ0CT/iCypM7OS92Ocxjmgn90lA=; b=nsBzcG1Hmm2C0J
	h4ZssgDxp9kkwoqBGElJPWdjMBHmHs0cK70jpGXMIpKsOxPyMnGNMVJVtcnqsEAh51ytMOZyjBCgr
	NH+vOA2ASCLGnnlMMBTrFyc2ICTDqSAx5/CQOu4fhFe64wl4UBxH44g/Gv7FPAzJQpQEKDyWp2vdt
	+hw/14EoOL7sVvCcfrm0m2Z4pKA0GpO2B/C4M/YYmR6pFna5dVCNP9qThnIU0Ot/jdCoteIkxbkM5
	rBHXoUBOZLEggOdr0mGSYzfljQ04xsJj8ZEHtyqIe75nLOGXN0xK2DOYlsLFikStpMCD6iRrcWBjt
	XEtmaKjlMWYAdPvc9zoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNH9-0000000GM1Q-1NHD;
	Tue, 02 Sep 2025 09:26:03 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utMsX-0000000GE88-01dO
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 09:00:38 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-45b7d87b90fso34196605e9.0
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 02:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756803635; x=1757408435; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zGYSWAcPy26A8NcvE1GHC5uOZ8pXLq1QnhxmCLIQEEk=;
        b=rfza/UntCFQff3jfye6YOePT8QWYzWcaLsHcG78aaccIrA2bDKMgJDIvgepA8mdJbv
         DWaJfKNoksPPmamqQa8gX6NtgO78KqoS+MtoxrBtq0oWecZm8+PFnKNBZrqb/y+Kgqhk
         U6OzV4jqH92DTq5lm2S/AhewCLYfjAQjbaY7N5blI/cQDHi5vPnPqDq33dirLgGBllQp
         ztEIBm9QnVRM02CnaUR2gSzJ6GeaSKdihXJlz12XKj9teEho4vGUR25xbAXx3XnrTxq8
         nHdJbybgZoNrRTudRDcJKwKF1b8MglejQGF87+I6e56kJ1CIBivubhBXvZ9O8W67RLzZ
         RAzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756803635; x=1757408435;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zGYSWAcPy26A8NcvE1GHC5uOZ8pXLq1QnhxmCLIQEEk=;
        b=uJjhtg1i8XvNbHSzimJ2x+K46Vj9opwHLCqfDyFpangibasgEg9gEs5zGQqC29ipHf
         cK2JAUuENurdI3wPXbNDN9+cCW1SGoJtT/b9as2jTUV1fsM+rcOJJamjmTpLlWRNM9nO
         7am/L2L5Xbs9vExWHKug/jKMc1B4/m9iPyaMLODS51f2GcXUGQrvqcSqIY8cWPUoTjNV
         03iQ//Zy77gTBZHeAosagFpykTLhj47E/8fBYsAXlRfTThyZj2TnhN8/+9oMnp1yJrZJ
         kA1qrV8OKhNtDj4jEGj1+wS5DqAacjiyOBr8ppZ1J+SvdjdyaniBlj3Qd3kYvWSsB/h/
         azsw==
X-Forwarded-Encrypted: i=1; AJvYcCXb4wNAwvjsCAz/Drs1PlAugiaOG92e5CGmMWPPW913ieR1kCb10zsHAH0VYqw64LgiRTkebsuZ+cY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxs3rtJg4bLAzqVpUOWxXd8ISEhFifnxNaqe39hBpr1jJUPiLqX
	JMDXDHJEPKK0suUulqL9aZTrFdvNjkk4/F02uAb5pYNVzuNLfH083y86p7X5eMqvVGI=
X-Gm-Gg: ASbGncs7eJAEpo8dWM1agGV7ZfOG6/22FTJNUFEAHIHCq1dE82RkJ31iXfx41BABNAH
	NDWzN/RhrJcjyWhQZIeHtl74Ylw9luU+zWFoXHVYlZACB9BRJ33PUkzHSQOgZ3EEBrpYkaMsOUN
	3s7cEixqlofeSi5AnPrU7+Ns1OlEQgI0LvwHFAJggeY+sCbqQLFY+LedG+ZP+JZVeuDBih99TSh
	fe7b/HCkZlnAJYpt3WFpsrC7uUghP7R37OhogjevHvw4TsFL6+6kUNJwIh41rJpACfWgpuGRtiK
	yCen3n/FRdtPmwPvnP4Rz8PRgyYrIaDqhu6jIRJobBb786vqTwFH6Dgvptqtr6BTFU96u4MN8ON
	FfWILTrL/Ug+aLWmZadcwYZFEyOAoxyd5oqQb5cYDQ88zS+ONLKsAVw==
X-Google-Smtp-Source: AGHT+IGo6pK1+48xuNgN3auTewN/EHFWBz9+Iiu+OQ7VN6pvjPbYNc8364yuEsgI32HicaXdpYLUhQ==
X-Received: by 2002:a05:600d:1c:b0:45b:8b95:7119 with SMTP id 5b1f17b1804b1-45b8b957228mr58823695e9.8.1756803635309;
        Tue, 02 Sep 2025 02:00:35 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7271cd01sm261112045e9.23.2025.09.02.02.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:00:35 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 02 Sep 2025 11:00:29 +0200
Subject: [PATCH v2 2/5] drm/bridge: simple: add Realtek RTD2171 DP-to-HDMI
 bridge
MIME-Version: 1.0
Message-Id: <20250902-topic-x1e80100-hdmi-v2-2-f4ccf0ef79ab@linaro.org>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=933;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=yi+yrbIzGW/iL1vhPwZbx/n4ZLKTnBzZ9NjoEtR61eM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBotrIu1rzwhA3usNfOLqoRch32SVvHPgyil+fD4ZNq
 nNQ95BCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaLayLgAKCRB33NvayMhJ0c6ND/
 9lkmS7XWOeRpyO4D/IzKA6TOlXSIZbQjaXoiBZoCqEgQlddd6BnF+B4alveipEBm919yvs0w1oObaB
 B59pxJbpMnIYNDW+uZmhwvJBJTK/53NYszuzbVoIlqkj9xB97pt2CPdTFV2uTSc07gMqFi5X99dFtl
 eZYOzch/q449Ca3DraYde5kJWpk9SyCNzbGP5i3JXtZ3IT/oNLFFbQSavQ5k6bVPheGKHC3BsjydGA
 jIZ1XAQRSbM4WzLqtbk5UKne7vEabHKLtMhNv59vtVx0Wa0fDI/MCx5ex+3XrkYxcKMSO3EHlRFUdJ
 v9jJUv/Sj8dXnlMfNcnc6yj2Hhc9ioIWFvxHbVcYwtP/fU8wZxRoBH1esjHjMnsCH5iVijJg4bxplG
 nG6vT5YWAXPvoKgBFjSqWbhHZMv4Fi6Imi9pHlqEvXl4LsKqrjRA5ZbBFy7VqihvOftvruy34dI6ZW
 IAFs+aHk0hdTgD2LjY+TvqDAgKFbh79BWvZXm96KLxMXu2BgR5zRjmJCEetGeomk990fCaX7382nma
 R+AstoG0xrZ8ZbOj1HsfPBTTkyf2r7gaeWHotRSS/gxmbZctKhpFyrqbo0qAGxWJoi0u+ggzay+Kjy
 LrfDkeCFTU1rdZCgQtdOJH8u9CmnA6jSAf1dZP6spP0Kc7SbACB0DnK35DNQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_020037_079447_17BF4E89 
X-CRM114-Status: GOOD (  10.50  )
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

Add support for the transparent Realtek RTD2171 DP-to-HDMI bridge.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
index 3d15ddd394703a351c1a537e7ab5f1487e024ee4..acf8a6b639da4119f17e4a7c40605947495da0e5 100644
--- a/drivers/gpu/drm/bridge/simple-bridge.c
+++ b/drivers/gpu/drm/bridge/simple-bridge.c
@@ -261,6 +261,11 @@ static const struct of_device_id simple_bridge_match[] = {
 			.timings = &default_bridge_timings,
 			.connector_type = DRM_MODE_CONNECTOR_VGA,
 		},
+	}, {
+		.compatible = "realtek,rtd2171",
+		.data = &(const struct simple_bridge_info) {
+			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
+		},
 	}, {
 		.compatible = "ti,opa362",
 		.data = &(const struct simple_bridge_info) {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
