Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44259C77B7F
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 08:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZnsY1SUN29p1j48SnstefUnbtgrW2zCYmNir6OoxiZk=; b=PbEqWkoRpuHIW3
	PboBrPx0EfdQLy7A1b5Kbw0kyfMlwdXNnwelCgmg0s0suit3A1s/tpL74ECW/bq/bNmkVUCUbqJTb
	SZZXcZIibDY6qJUHpSeDA00tgIiGpU0jAh4ipPpA5m4hvRmpLTXJyW0MVVLDrOwtzDMZQtq1hda13
	i5McJoCCGdQZClEzYmRQ87wZXPSSBsbpZSe9mnK5fYe9auTZXbknkx4NgkyRInHecXIT0syYNSjST
	E/3UR2i4VxecZ5e/7CZhWu1m7y0S67onA9052UfEr9GP4W9oAc7ohJRJeeUNpzAIG2Qv3hQ0N5nf5
	zaopsnLMZUjwJLBsE+Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV426-0000000DuN5-3MgH;
	Fri, 27 Jun 2025 08:02:02 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV424-0000000DuLw-3ETK
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 08:02:02 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-450ddb35583so2704535e9.1
        for <linux-phy@lists.infradead.org>; Fri, 27 Jun 2025 01:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751011319; x=1751616119; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Unci+r7LHL+lqoLwxDlrvWa0BMlTjBqi0rK62HQ+/+s=;
        b=NT/FpP8ZPZ6qWAUYrpAqSioej4G7dsyMgOM17RNlD2+Ke5dV7RziNUBsZcT/6MpIlw
         xoX/ozDeqltxvK+Tqkhj2icagoKdPmwkoZFd5SBq3LSTjirZqaK0nxTS4A1aUpFlXS0F
         kkyH3OsEA3fq1wZNOgcNEkzzsq8EMYQ8L1Mw3Ag0s64jMjpmBWgi8dBkT828LYL9pRTu
         3UKT5TfHu+sSnUVl9pucw/dzDnBdEEc3aAUxOfdatAnq7OsNUnk3ZEbwS4k6DenfnfI5
         6ySkFkb9bWLgxuk+U3XbVHYoRulQsKrUNjr8EAYalmV5xULKy+FF3FfFBuV5Q4qAXKVc
         qUJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751011319; x=1751616119;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Unci+r7LHL+lqoLwxDlrvWa0BMlTjBqi0rK62HQ+/+s=;
        b=APwZUOllVvTy0FFiTeHGQb+WzbNxMVK4tVAdwKU9dIireT4znryyf8j40BGTt29KaH
         PgdhXfpQKhDSTQUlXnmnru1G0w3Awx45pH8XiCTz6OeK/Ol800SNO1zGi0PEypamRJdV
         JHdnuGmsWswLDooBnzAAz7UHrqovSOq/Tkf2pPEkQoY5cL/87tRZM+5f4rB3EiBcCmEX
         muGyHztHtJjUaou0ZpOIykAVaQjlvKC6x/FIYfd1R8ZKIzps+NWDYGUzrCYKivfWpn+V
         s3z5zJzTCQiZnMNxj0HRK5vknHzHO9OFSexBB2oYyw/7N17X5XqV05Jl57tlGBOy8kYD
         zOgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVvxbF+bx3O43tfKeL7c/put6OKkT+LyOnJZvzxFRf+ddJ+Cy2T1WYHS47OlN7uACBcHloDvUrKHM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxCcwkAhJZ//ceIpaIBWO/uMLeF0nIkRtyj6NsfK8JGizgoGrrN
	Dy4nEnr/AS11clcpwbqI+8OR/6SNRj06maa2k1mYfHBGD3bGMQvLbd9aIWi+l8pdGmk=
X-Gm-Gg: ASbGncssP9+kSnKWcvuDXG39MuStDhePXbew31cidTcHxKxUDZnx0AxT/t9qvyWuDHU
	fn/mdmVkJuHwSaIefuu2rOV22ZW78pAhJJngMaSwb+C9mefA+40VCR7ruXE0DZaDM6Lz7OQaDm5
	S+R2vqIOzar2bel8tTzMsEvFNtUyyalDs/D/4Juk0tmuTdSnPmDsTm2qr7KCm2298v7GH/vEUzF
	qHyKepXW2C07FnEq2urFGwbsDJsAeX7T3378+bfFIxiVBEJf+XXsHVlHEaG/QyB4QTWWidJJWjB
	c5H1D/9sq8asYv7P6fhYCdTSnS/uTXvHkEL6mJikmLHvNGW1EszIeHpHd3PJ0QG73xUVdCayJfy
	Y
X-Google-Smtp-Source: AGHT+IHcfWFGNWC16F+T/5JDKvwd7eGwjNT+A6IGrz+imkl5/bKkRK92RXClDJ3nlxfVmYvbeGIitg==
X-Received: by 2002:a05:600c:a08b:b0:450:d5ed:3c20 with SMTP id 5b1f17b1804b1-4538ee7446fmr8751165e9.6.1751011319205;
        Fri, 27 Jun 2025 01:01:59 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a423abbsm43490295e9.39.2025.06.27.01.01.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 01:01:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/2] dt-bindings: Drop 'db' suffix duplicating dtschema
Date: Fri, 27 Jun 2025 10:01:50 +0200
Message-Id: <20250627-dt-bindings-db-v1-0-d5c7072acbee@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAO5PXmgC/x3MPQqAMAxA4atIZgOx4g9eRRzaJmqWKq2IIL27x
 fEb3nshSVRJMFUvRLk16REKmroCv9uwCSoXgyHTUW8G5AudBtawJWSH7SjWEnXeM0GJziirPv9
 wXnL+ABL1hPNgAAAA
X-Change-ID: 20250627-dt-bindings-db-38eaa005ccd0
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Vincent Knecht <vincent.knecht@mailoo.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Li Jun <jun.li@nxp.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=755;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Iy4rMuXXapFTx2kjSKugMlp9I0/iVWn0dY70WllqPHU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoXk/wcCM14kQDF1d79XXpGo8n5HZzTk1uWzDKp
 WTG1g2l4lSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaF5P8AAKCRDBN2bmhouD
 1ygSD/9zKEcjWzeAnre3VyS4sy8f/zuzk+6aiVwKfnQZNwMLddjHQaA4tfav4oTxeiUDcSNL+Wn
 OMw5i3B3nkWhbJbCvXb1c9IIs4qgDoSs4y/ZINqcWYZi7JuadQq3iAmvUQIDpctu9n4oDo2fPb1
 QldagXo4+4ICRKcYtBlC27JKFS5/Nyjk3RFHS0wii8DA+I6f3rN5Cia7d4KGVjP8sfI+lGSdpD6
 d2P/A+kT4bQA6Py7S8kPKt7QgqQbpRb8wi0+PE/J1TRQwyyfepG7WAZ3nxOzKvwcpRMnazhaCKz
 H5ADmhne9Co11Z0QG1QDO/GE5zh6jm0EmHfAOCBFNb8jEJWvsm8/eQkWq12GVPBeqitfEvycGBV
 0PVlCuEeM04wH5rKeXKYYILSX/G3EtUFBmg5cK5HRgvYb/O+H0o9PBz9UBf30NeqT96QQFl4PNQ
 lXTA2aPpeneel0hmnCgE/y2BRa2WQyIuz2VRRJQnPd0llunwXN+DfXjYoPs0nhIGTDX8so3mII1
 QAMHU+cu9+B05r4P9F06eEAGIqitbczfPPpIZ0ZL2F5PeLCAX/U4Qw+nnRfdMxbFX1oB1/xG4wm
 igtpvpkYIau9eiYialHk0wxplMxEBmIMR8/2wEhyEOmomVGoEaWwZLJixnDMgYzXoLLVSsGCSYv
 MF+OFeWgcqtydng==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_010200_823588_17399357 
X-CRM114-Status: UNSURE (   6.05  )
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

RFC because this depends on dtschema changes and should be accepted
after new dtschema is released with this merged:
https://github.com/devicetree-org/dt-schema/pull/166

Best regards,
Krzysztof

---
Krzysztof Kozlowski (2):
      dt-bindings: leds: issi,is31fl319x: Drop 'db' suffix duplicating dtschema
      dt-bindings: phy: fsl,imx8mq-usb: Drop 'db' suffix duplicating dtschema

 Documentation/devicetree/bindings/leds/issi,is31fl319x.yaml   | 1 -
 Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml | 1 -
 2 files changed, 2 deletions(-)
---
base-commit: ecb259c4f70dd5c83907809f45bf4dc6869961d7
change-id: 20250627-dt-bindings-db-38eaa005ccd0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
