Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AA9AC25B7C
	for <linux-phy@archiver.kernel.org>; Tue, 21 May 2024 20:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HeBRmLDD13JZUfz/W/6u5b/Fia5GJuYkYBvbyiJgUR0=; b=L59r4aVh5zC5Pc
	V0pvQVL6LZvczW0wh4BEB1e9JQhsyCSbk+5QHwdZJjGYxw1pcozbdLrCAUsv0o9v7/gJxdawl1vAi
	fI/62xY3flRqSxL/lhm+mNFQsJgLZRze3JXiFQmO4R7b9fCr5nJr1XGciw7mhGVoKf7b5xn3MTHRz
	jnGh4q+CYR18T89nEFhvqW5dGOPYrAYp6Qdgz1uk6fw3l15kjhtQ7i88ROlHIYPO3MBulXMIFr6jY
	4mb7YdNaeHVW838K6O1IQOdsRbVs2u2mLJ8RASElPeSGY1anrDXZWlyas6EaOIlrQdxOsb7I0yUv4
	ksy/jaHu0TPkvAQIkPYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9W8O-0000000118N-3GHi;
	Tue, 21 May 2024 20:30:56 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9W8L-0000000116f-2fjq
	for linux-phy@lists.infradead.org;
	Tue, 21 May 2024 20:30:55 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-52389c1308dso5603103e87.3
        for <linux-phy@lists.infradead.org>; Tue, 21 May 2024 13:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716323447; x=1716928247; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pCzVBCkChxcSIogrmuJcf7U7dBGPAxnq9O89uPJ42iM=;
        b=aVVM06Pjma+wG9crbMKv0UcZeNLZjIyRlFP/a7aKrd3QMmIFxyrG9y4es9ef0BMB05
         gCwQ7uhKszJ3e14GVE5YVxEoTAZzWSYtsA0AH774cMwcnQzkRswwG6DGLvGiEtw2tWz8
         N0sOn/B2FwBrR0E2+KR2l0ko33FIF+r5hTNuDrVF+4l5IhQGpKV2TRa43KclUzym11yg
         KWxC+aSGu7a9e2uGIzjjRrZEoJufFkIen1+MCON0W9vn7M0opITT4A2GPAGcz8oMiRjb
         9slZgIF/WWocyAkC/ennmVT0c4vgmJ7vhvlBKh7M9JFgJPHQ/64nNo8WsqpCowJII/5n
         z3ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716323447; x=1716928247;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pCzVBCkChxcSIogrmuJcf7U7dBGPAxnq9O89uPJ42iM=;
        b=WM8M6OXraMHcINRW7n5VbcCXZc5iCXEDjayeq9ZBZYmAhdkXHdMLzQa3mhOXn2AI9f
         ZwdLKAih8xZpFOIE9q5jmxQ1EPrUEAE9e8cLjzf14fYTIAaB6dHuYBtrUnXE64zj+MAV
         XgIV5/9kBdo0+O7QB8/dPXrtbggITYHemihNnoC8OTTur/RE+OWdGgchlbx9ZJ3BtjBF
         qjNhQgcPfq0AE68NSmoXNS5YjiCQJK58sEeSgwOsefhFrDIkyG0UBCjCV9HS6tMDct0m
         DvyzsK3Oc4JmfcFLcOqJoFDRCcpPtjjAeirpI1bTRxt6oYJvNI8Ec22e+HBKCL9Dbxs7
         j/iA==
X-Forwarded-Encrypted: i=1; AJvYcCX3ovlvrhqpZDiO/b7iMRxFS+b/ulPVvJp2pKP5tfGPMrGEGq8WyDrpk17RggRVFXgKEq40fr7KfxgHkbYls2Cz9up1fjLIyoYGQn0Zeg==
X-Gm-Message-State: AOJu0YwHYQ+pDpPxGwQltdXQtEepo/1xLlW/i1JXCkR9DCR50VPXXpAs
	gdD0tD5oy9fy2ilIx4uXri/SwFl3giff1rWqQntXXaHPWmQ1vaEyUQZuRCMkYPw=
X-Google-Smtp-Source: AGHT+IHvKMY2c/VALGOXGWq7fbmVfPrO3CBOa/9czLbPQck3nzzxirPm7tzr3AFSfgRpDwmRJL3DwQ==
X-Received: by 2002:a05:6512:3ba8:b0:523:9297:2506 with SMTP id 2adb3069b0e04-52392972629mr15632841e87.58.1716323447549;
        Tue, 21 May 2024 13:30:47 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5238ec18fd2sm2538664e87.155.2024.05.21.13.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 13:30:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/2] phy: qcom: qmp-pcie: drop second clock-output-names
 entry
Date: Tue, 21 May 2024 23:30:44 +0300
Message-Id: <20240521-fix-pcie-phy-compat-v1-0-8aa415b92308@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHUETWYC/x2MywqAIBAAf0X23IKKdehXooOPrfaQikYU0b8nH
 Qdm5oFKhanCKB4odHLlFBuoToDfbFwJOTQGLbWRvVa48IXZM2HebvRpz/ZAJ5dgyJnBBQutzIW
 a9l+n+X0//fGiKGUAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1150;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=M+EhpWdi/uciO0AorqL0bUSVVqrzDF3BrW557EWnWVE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmTQR2U2rXolmbrWdg8e6wAttQMImRrg1Pyc9ok
 rA28n9AO4aJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZk0EdgAKCRCLPIo+Aiko
 1SnkB/9cgUDX95JWEa0NHEJK8aRFtxpKZu8Khyq4djF+wMNkIMUC5ekxB3tsfX3XFRIPOWnRVae
 /8vFprf0JoufRr0eGnI8wUGaHk8IiUnTaG3+sQEO9Keeb9XtID/F1vKtdDnLIKaLB7z8jlv1QRS
 ycPHorVLVHnIDpaSv17XxpgHH2VQACIq+hCq3ZfirI+Ls15bXa7DChLR4UuE6tO1bBaQ7OTcxIv
 TKfS5ZNss0NebfRxaO1SgSAHEWKnXZUg3z5VuXM+FAQ580TdP3G0BuqL8/joVgCNG0FwodhUxWu
 0VtEBDMKL8Hul34ot1vmadPpod5f9PYtGaHh+GqIdbZM1Bs1
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_133054_009951_6F93DF88 
X-CRM114-Status: UNSURE (   8.87  )
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

While testing the linux-next on SM8450-HDK I noticed that one of the
PCIe hosts stays in the deferred state, because the corresponding PHY
isn't probed. A quick debug pointed out that while the patches that
added support for the PIPE AUX clock to the PHY driver have landed,
corresponding DT changes were not picked up for 6.10. Restore the
compatibility with the existing DT files by dropping the second entry in
the clock-output-names array and always generating the corresponding
name on the fly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (2):
      phy: qcom: qmp-pcie: restore compatibility with existing DTs
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: drop second output clock name

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml      | 7 +------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c                         | 9 +++------
 2 files changed, 4 insertions(+), 12 deletions(-)
---
base-commit: 632483ea8004edfadd035de36e1ab2c7c4f53158
change-id: 20240521-fix-pcie-phy-compat-b0fd4eb46bda

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
