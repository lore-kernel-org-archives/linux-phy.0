Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22D6BCA0FE7
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 19:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+PPZ8au100wFz7Y7YmSc/wMX6fNWLgLAmWNM9bN+eTw=; b=AonrY0UYAtl80y
	8TqSCEzgoaYHYcEAtw/Ud7IzEP20Rw0jmZT6MJpSAY76kQ5r3Y32uT4GrqECcjWgZVj2REKn7f+uH
	+pW1hvUK1lRQbHKnfL1gtsle7yEhAbV/1Ujd7QE+UO7jtf5NAB+q4CZRdsvDLY4Wj50jEZV9p03ee
	8EQZCm9sKWDcOtA1t8prws7RrvBVKpIYXR+1SGt7fwu6cFZ2ctFtXWLlJ4JsTVLYFk8BkJOlxoAJz
	CDIOoJt6AS5XCk6YpFBGpJiwAS3WDII16Ivm2ql/J2KxA01AXme+71yOzQl1h9cigWv5bOGRFgLr6
	WQc+PgBM+VRj3Jq+taTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upAhz-00000000Ek5-2ILt;
	Thu, 21 Aug 2025 19:12:23 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5jP-0000000H7xT-0AU7
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 13:53:32 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-45a1b066b5eso5193115e9.1
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 06:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755784409; x=1756389209; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/L//1ClyCXosNXrtBXgB70nXKpVyJeRv0Gj5xSeDt2c=;
        b=UQAv2A0h0XZhVXtwzdxDKlTz92VNXRy15jG+bx5SNsFmP4xgJyreWaAdO29MziSK+y
         Sy0cXe7mGM83VtM5Xk8jSVmcCURd/XSvo60wGfJX2OnzpqOz5WjKqDlU2jWrLN1rXkgW
         toVRm09il9OWP85ZK20gUfuLkaR/pKaSYDYiy1uMyd/itGhjFECTRFiVxzLLyyAUDt1n
         Pg15wCdQugL7M2LGQUUl+UENf+ri5PwzpepBQSOSehOgiXtjsujpCdYjLHeMNPc6cuCM
         YiLkSWK63iKz1CSJ6bo3A88tO95XSNPuw4pAGBeyQj8gvO6L1Q3pu+ByUiYOtLcNqa4E
         gL7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755784409; x=1756389209;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/L//1ClyCXosNXrtBXgB70nXKpVyJeRv0Gj5xSeDt2c=;
        b=KQ5baNxJuxtME4LArVBgP7wSmBv5dPbLHxFQix0tbILkrKE7KSScHoBKkdOy9thfIa
         ORzycgNcJqX35ETT8s7w5IHx8G1NtVtCE3HH3RSkwhebsog+T56UA2pL115qk0AagS0b
         gbrrIqQPFH7LGKmISYEHYA4n+gWTiCMnSAbnOGDZDizhpNlIXNbJIBzV5xkV0njlMkWY
         feBybOvwzlyBmYIz15CGR3rXfhB8L/y4V9OO4qAYCrhCzSkcny2UrqOA1mipwFXKCOCq
         V9/tlSN3nMDKHg15T4GlLvR71+ukM6luAW6H/u4on9ztLMYv6B3QRaYkVu/qOD32xLul
         4AyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVCRzZkuRBrmbMJucVy/cNkctRxWuBjljKoLY5C0MyHv+DW2FVTllIhOwNAUilYl9bftuEs8lPxiA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzBrq/bYzGxiKByrYcvBZwG/Sor86g0SQuVuwgJGDhiMC8WHpI0
	t7BnLNYsaFNNYFOmr0f86er9eiYqckkEcbU3C7f2IPQpjzxsy93UKGXyMiFlPvx7Hpc=
X-Gm-Gg: ASbGncu6S1uj+4NVqdo1rp7ZVilBzKsVElQaYy7ulv0yYWsOPxWdKT3p008Pd5hBe+3
	imEOHA+FC05Og5qzhEqRmCWi84ep5BDeT9wte3GW2SL5yvecTspur4iHtyWOlqaQ5UlNItaiPmi
	gdN3QFIK8iH9dcim/DjYNadLjffavW1gG+quCbIqW9x8dHBARoGovwF/9fNuNqun3jmfUE0PNXD
	RHl+Xnma/Be4IBKKtBSpUd1+0h8q/psDZimPMwtJIoDuVXcOp31SczIwFIyicGIMQJ9NjF6iFbe
	1BqjX/GQU6sBEKFBYI8cv3GsagDy7sSQjdA63wBfRIp+oxZmsioOxJ8VL0dC8+qeAx0BpDko6CV
	MncDp+R/4UcEc0X2JIo7sXtatBp2bZ2SXr569VBULe2I=
X-Google-Smtp-Source: AGHT+IFqjnnSjNF61C7EpeLGUx4nIzky6XYFQ0Y53PvynJQ0yLX0D7/wgkx/BTczmdLthOSq7BBieQ==
X-Received: by 2002:a05:600c:8010:b0:459:d8c2:80a6 with SMTP id 5b1f17b1804b1-45b4d85d6c8mr20573915e9.33.1755784409232;
        Thu, 21 Aug 2025 06:53:29 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm14825015e9.2.2025.08.21.06.53.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 06:53:28 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH RFC 0/3] phy: qcom: qmp-combo: set default qmpphy_mode from
 DT for Thinkpad HDMI support
Date: Thu, 21 Aug 2025 15:53:25 +0200
Message-Id: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANUkp2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDCyND3ZL8gsxk3QrDVAsDQwMD3YyU3Exd46QU0yTTpBSjFEszJaDOgqL
 UtMwKsKnRSkFuzkqxtbUAe9wO5GoAAAA=
X-Change-ID: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1764;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=EuJCqC4vIrzzbiFdFQd34jpBkJ7TfEaSLO1NIgSU5T4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopyTWErVXRbjkAObA+pRNthpmvFlxIHFVX1MJmq07
 4Z44uoGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKck1gAKCRB33NvayMhJ0bwAD/
 9ONMhZMYCagWX3zIDZDb3Pm9l0st1EhTIG0qMXmR7QI1+jUalRHvRtBKpR5hE7Yc8g1KBPf2flID0A
 qnL1K80I/ub6xYry25m7AoDU5ISiHsI/NlZU35FlgweT8jAM3illoiG6VOM8A8Hy32uakBlJVFvIlY
 lccXtjmeIIImXhiW9iC5JkzERBq2CFNRfK4EJ0O1S4ibUV+95GQLASfi9KR8ZKvankswFdmGfrt1eS
 /0Ud0+O68LZ8sWQPJYKuEj9r5UbMS7ZtD8HV7QKFQIbUgF8Q+Jqz6FlBcbHXW87/cyTqG5F/GpwmE6
 vEtYo5cNvmDmoCfPQ5II5wl1RjVMgH9uhFGAi2VNP0/4ksDhM1vIV5eqUT/2dpb/p/WcHXkue33iHy
 avqfdiupk1YDCoM+8y4hv/E8BniWyOP+aa3vES6gaUn0GBE4iVAuTudneZaUsF0VhEh+2Hfei/rZeJ
 cw4cDwldJffl0PHwc8J0R6yr2bPMDNGlbOjSr4EYrUeW6UUoWfzVBl0cZoWFbpxjUaLFlSZ2x5xzN4
 Ocztdwf9YU9RK44QA3rj16rSFT1NdtZiwTOfKyNu6/MMsC0vozE9qdW06yGYo76ir1oJt+kxJnFmAi
 BH1kWX8ctIU1bJ/uEUOFDZUSy0D69JKDjuojw7wmC7HQTrCHQhjuYmRJ14WQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_065331_110363_B4657D16 
X-CRM114-Status: UNSURE (   9.35  )
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

The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
connected to the third QMP Combo PHY 4 lanes.

The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
of a combo glue to route either lanes to the 4 shared physical lanes.

The routing of the lanes can be:
- 2 DP + 2 USB3
- 4 DP
- 2 USB3

And the layout of the lanes can be swpped depending of an
eventual USB-C connector orientation.

Nevertheless those QMP Comby PHY can be statically used to
drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector...

But if a 4lanes DP->HDMI bridge is directly connected to the
QMP Comby PHY lanes, in the default routing 2 or the 4 lanes would
probbaly be USB3, making the DP->HDMI bridge non functional.

Support the property set set in which layout mode the QMP Comby PHY
should be as startup.

Finally Add all the data routing in DT, disable mode switching and specify
the QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
the underlying DP phy.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (3):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document default phy mode
      phy: qcom: qmp-combo: get default qmpphy_mode from DT
      arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: add HDMI nodes

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 13 +++++++
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 20 +++++++++-
 3 files changed, 76 insertions(+), 1 deletion(-)
---
base-commit: 7fa4d8dc380fbd81a9d702a855c50690c9c6442c
change-id: 20250821-topic-x1e80100-hdmi-3bd5b5bd2d96

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
