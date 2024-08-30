Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F4147CA0EED
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 08:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e/8bgWgj0ZePLxlvdN0sZGjhyW8M9P3r9KD/fGUVO6Y=; b=YqfI8M0F/SjIu+
	vIZQKZ/smMc0hl4NuxHWXqjFbnWOTlz2peF7vagaNHA24RA6ZOznLnDL1N4U2PgZwKKNEeIQxOlVQ
	fBl/eaE0WzMtqCXim3l5LgiqefoQCQgOW7FmK60iRbhBdOKEKB/MTj3RsKnHFgAJf7ucsRdWBZBwU
	yZtAu56q/OreQJjeUzKdcTxe0eYL6w6B5qPnKO4zKSI34UrZboxMOntlczBre1em+0j4qSMzNcx/M
	U/NwRVNLlzNZ6KSGwm6y5zCRK0OrmlqJCrBVDwBQqcTJaNK1KxI370YBYQ5cZtQTS1sYbPHxtwiX2
	UHhyWTp5wmI+gJNh54Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwvr-00000005KcF-2AV7;
	Fri, 30 Aug 2024 08:24:35 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwsE-00000005JYK-41MM
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 08:20:52 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-534366c194fso1469854e87.0
        for <linux-phy@lists.infradead.org>; Fri, 30 Aug 2024 01:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725006049; x=1725610849; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tNNx6R/CTj6/etPLMLqRbZQLDDYvh5RRNyVtz+9vczA=;
        b=hTaoMOKC1Lb0jQquwpqbOEU3B34XN2N0pArD0utvEXaAHWblcsCMlaJ1KJvVy5Oh7N
         jMUSDANTLh1C0pH0g9BKaR2ofRn4pOvq18bHYGhv/myj6nwjNg0F57IBpA0GkI7Kqqx3
         cB59vdfYN3BnhRNufk/qgR2oCBj/nsHP8y7OJmxwOhVz3XClekbPIBXGfH9rdPKGwNTk
         RH2PmINbKK/mCYm3eVMR+f0C+NEJlK9/+f+jKLSORl9VB42dIkYQmUYuQuwGsZRQ3idt
         dk1mgBKVxOk6W0JID7U1iMQD9UsXmVuo55xoUwon1zkM7nV/4P41ohjr0Lcr6DBX3wZW
         3UdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725006049; x=1725610849;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tNNx6R/CTj6/etPLMLqRbZQLDDYvh5RRNyVtz+9vczA=;
        b=VI8w0yOKKd6CncSKwX+hJoV476FVZNLdhHMcDAZbqTZuG5/LNhhncZKgzV5D6OZZEZ
         sP3YYIzNraN6a56GmOtb7LadEPmTsUygb6ZBbVVOknrsPGAxeZBVbULHIeLynDwtlFrw
         5u4stLqUe2OgSNAuQnqaNu2xMExXNmia876YuhQZrrWuleVFHyGdsr6RUXjcTe3djF8T
         4kgf01uzDSlceEJKIEKtaV+ZfZ0nBFiOgR6OazwvXeKac55oujB/QsdaMQkNBTMx77hg
         LPbom0tHNaMMkJAqNS+dzkepIw3Iv+U5JHKYLLBErOQU6613sypbXe/BwphWz7aexe9/
         7Ibg==
X-Forwarded-Encrypted: i=1; AJvYcCWxYWQ2i2on9wWmjGn177PiXSQ8Yfm3jZ5KW/U/MxZFXgw/YfKk7PgWziLIB0vyxQbVZ6lt21UUa0U=@lists.infradead.org
X-Gm-Message-State: AOJu0YxCqn2Y1M8waNnU7j1KLXwQbSt1EQjdbR39CICcBy93Fh8TR/eJ
	xfvR4aykbtPRHvX7TcYzAVdNxp4uJy3sbtDjPnN27radhkfSxzo2Js/+Pww4ErYXKnKMjFbBiXV
	b
X-Google-Smtp-Source: AGHT+IHGG+kYAl7eRrAUxIf40F23jCJzii6dmVx9hrJqP30xeomNshfKUkKgkv4Nshm5utOmgZzdnw==
X-Received: by 2002:a05:6512:4014:b0:530:daeb:c1d4 with SMTP id 2adb3069b0e04-53546b1920fmr784708e87.12.1725006047931;
        Fri, 30 Aug 2024 01:20:47 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5354084e00asm482623e87.271.2024.08.30.01.20.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 01:20:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
Date: Fri, 30 Aug 2024 11:20:44 +0300
Message-Id: <20240830-nxp-ptn3222-v2-0-4c6d8535cf6c@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANyA0WYC/23MQQqDMBCF4avIrDsljkGTrnqP4sLYqQ6URBIJF
 vHuTV13+T943w6Jo3CCW7VD5CxJgi9BlwrGefATozxLAynSypBFvy24rL4hImyUc87UbI1mKI8
 l8ku2U3v0pWdJa4ifE8/1b/3v5BoV6taq1o26091wf4sfYriGOEF/HMcXvrYvI6cAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1066;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=YucLZiKtcTOQ2LZLPspdYxYZ3G8B0cZuu5cpOrrY3uQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBm0YDeWPNA1ymm+x1qxspVMU3+Q3+Fx3fQb25KX
 4Q+J63WS2SJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZtGA3gAKCRCLPIo+Aiko
 1Z6xCACpSleZDi29XNNeLJF0ITh7C8B2OkfchPfTrm6NdUvhBEjxCYDNGMX3ZhwcSIrF8un6aE+
 J8KHfMlNPvxDcEp8fAXNlIaXOeOz0dfLeyqHEFr9r6cg9QBpLyRTx/gtVTa7RkkB/7hxxeck91x
 5WT8AlsiA57Eg2Smn9wAliucD34zabwPJ5sFFsLhA//fAC/0poK74gegTk5o2LjNqlTOckXSuaF
 Np1o5MQ2hP+yua/DpT0HK/fQ4Zo6Ln6QvRRg4gLdsl3A2PNnkg0ubw76WbKB9Db++ifmB9oVZZO
 5mbCLcBLnA8qJhvN9jqqDeRBgM1CzsF9KPhW6pi6NZttt2C6
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_012051_214192_E2C0D7F0 
X-CRM114-Status: UNSURE (   6.27  )
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

The NXP PTN3222 is the single-port eUSB2 to USB2 redriver that performs
translation between eUSB2 and USB2 signalling schemes. It supports all
three data rates: Low Speed, Full Speed and High Speed.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Switched to devm_regulator_bulk_get_const() (Neil)
- Link to v1: https://lore.kernel.org/r/20240829-nxp-ptn3222-v1-0-46906bc4747a@linaro.org

---
Dmitry Baryshkov (2):
      dt-bindings: phy: add NXP PTN3222 eUSB2 to USB2 redriver
      phy: add NXP PTN3222 eUSB2 to USB2 redriver

 .../devicetree/bindings/phy/nxp,ptn3222.yaml       |  55 +++++++++
 drivers/phy/Kconfig                                |  11 ++
 drivers/phy/Makefile                               |   1 +
 drivers/phy/phy-nxp-ptn3222.c                      | 123 +++++++++++++++++++++
 4 files changed, 190 insertions(+)
---
base-commit: 195a402a75791e6e0d96d9da27ca77671bc656a8
change-id: 20240829-nxp-ptn3222-30bbb81e984e

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
