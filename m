Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 016C7C7EE3A
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 08:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jDCFIsogeaMb+Tdou8PLJA6in6Shza/aGd4sQksv1yI=; b=pwleucCfsMfiEq
	Tf3ayhqJPg1Dqih3sDUdwymo06EugQEq7cAb8Zo7nf8oe12osrumh+FRmk6K+I1cw2osPb5qCdU5e
	lJEzEGlEWlH3/6dKj0Gy53pOROCMkaTWFt3BIGX6Lrsks2hOSAFAf7BN9PmFEgRRnld6xlnrVfpc9
	uvdAKlpk7SuE8qzh6jbAjEFXTcXOs5wRVHfRTUP2HCXUpJWm/8OpNqcRjh6rdhKAGZ1ADsiCWPr8b
	6jv/W8z39MojRCZeU2DRMIckaPFF8Ww/e48O/GtK8ZRa4lUUz8szqOsmtTgbjDCkYZrZc4mxzWKpB
	7FCNzYe+sV6d1ZWKbdVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjaPC-000000017Fz-00Pr;
	Thu, 29 Aug 2024 08:21:22 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjaP8-000000017Dj-3hLV
	for linux-phy@lists.infradead.org;
	Thu, 29 Aug 2024 08:21:20 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-533463f6b16so541481e87.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Aug 2024 01:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724919676; x=1725524476; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GFe2h6mCzOZVtHkC8fLtufQDeRDZfA2dn2/r0ffaHpg=;
        b=oqK160OKx9WYXA011CWCnsRNb28z5xBqg7mZ56Zyds1Md7K97vavxHfBh9TfMG48M+
         VZBA/axkiZCc0tQ/rrt9h1YNH3c966B1/yAOSObScrZK4lwz/C6ge4L29UBoWiM9EyBK
         +dS2zxYM7ua43MMpw5MwBIBVmQAfqya/vKA4I0swD50yioKAuTcC86G6uPRBmiHQdAes
         3LiM6BvMcJu/qQzOGMQBEtiiG4+uMi0ZbP7W+WW6yDns1VhSWtdHiD9U7JZWKTkzgRn4
         6sZnoJi0lni7+BteIZ5mv1/M86K8ryVxcq0yGEM6Vt3SefFeQOJqHeubTkGN+35k2Ayf
         KYeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724919676; x=1725524476;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GFe2h6mCzOZVtHkC8fLtufQDeRDZfA2dn2/r0ffaHpg=;
        b=iHefll/a1vHMaoWJxilJAeHlCVdn3WavqhzLwN6KtWrBk6JX1y/u/zO1+yV/Hf6ivr
         yFgLQ/ACvuAq2lu7GbfUdONRHComKFgH33/IuAzd4cL+SA/kgu7SslcMjAszzwbhxHql
         J065drEaV5SpjLufZbMfmXxyugHWYft49P89scjOnzXAe2hOGWAzUEhnYq1KZtRJ5PKG
         kEedthjZa7GgSmVfkp4sgjzp/Rqu6ZBpCr9wpnk9+wRn5gu8eMiIGNu3QYwC0wOTeeSL
         usZ9CCWFT31ojxSu8Pgmu+kqrFWZW2h1euOjDAAKP/6BQxZ2gnt+ZI/iX2vsfw+Acfqu
         y60w==
X-Forwarded-Encrypted: i=1; AJvYcCWOEMpKcpNTvLrNuHhgcQOsu9ZZk3LiIRtJ+U7+LOi5pXPumZcH+Im0dW/1u1wrQaNITzllP5R2ds0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyXkhGOfpVi2lSzGtWn7CJf9Mrgse3Hw4ZJeV9DGuQmCdMYIKiV
	0DNirsz+/9gL53g0aBtV8EADvLILTqvT61DMI1N4H7/me/rBP1BmLnabn6GxhoI=
X-Google-Smtp-Source: AGHT+IEPILolNaXIOtWPkvXuhIpXtzFYlASE1vDaxS6koISyxcfo0zqXADbPzOyD6IgDr8l2GxgKuw==
X-Received: by 2002:a05:6512:1047:b0:52f:368:5018 with SMTP id 2adb3069b0e04-5353e5b8400mr1383456e87.43.1724919675693;
        Thu, 29 Aug 2024 01:21:15 -0700 (PDT)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-535407ac333sm90243e87.70.2024.08.29.01.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 01:21:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/2] phy: add NXP PTN3222 eUSB2 to USB2 redriver
Date: Thu, 29 Aug 2024 11:21:12 +0300
Message-Id: <20240829-nxp-ptn3222-v1-0-46906bc4747a@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHkv0GYC/x3MQQqAIBBA0avErBN0dKFdJVpkTTUbE40QxLsnL
 d/i/wqZElOGaaiQ6OXMd+hQ4wDbtYaTBO/dgBKNtOhEKFHEJ2hEFFp6760iZw1BL2Kig8t/m5f
 WPumVoaZdAAAA
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=899;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=K04IwqvP4QHiJEyRnXObSNOLM29xMbSAUjAHbtkAsYI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBm0C96KQtgq+QiXli2xwJUwFJy8O7goNK1HIODP
 lY3r0kLuBiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZtAvegAKCRCLPIo+Aiko
 1ZMnCACDncFx7nCwNWfmvqHMShy3DZWvjWLncWqZDdAO1QUzJKiblMhF+iGdU6GZBmgsByotc8Q
 JMy/HDJ6vKDhZgisrtSOUtduyBZeqVrGKsA+THoHnXLLKN/+v2CZX2rxIf4j/02ihV/WM0fRlNu
 SjyDO2bfO+3fI+PEZChomkscaXBHIfr4sqlCvdvBPjCLAw9we5ZcN5UxiUlE+zv+lEo0ESehC/s
 1zCJyYiCoOZ327Na+V9X7uCm081EMRSxz42mtCBDZQ0iJmsP/tqon/XrNXcb6vHdVXLH38pa/Hs
 hcZKkszSDJhRFw8kRw49dLrXg7OMTydk4dLXHX8ATT5l09tK
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_012118_968077_1DE19A95 
X-CRM114-Status: UNSURE (   5.81  )
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
Dmitry Baryshkov (2):
      dt-bindings: phy: add NXP PTN3222 eUSB2 to USB2 redriver
      phy: add NXP PTN3222 eUSB2 to USB2 redriver

 .../devicetree/bindings/phy/nxp,ptn3222.yaml       |  55 ++++++++++
 drivers/phy/Kconfig                                |  11 ++
 drivers/phy/Makefile                               |   1 +
 drivers/phy/phy-nxp-ptn3222.c                      | 119 +++++++++++++++++++++
 4 files changed, 186 insertions(+)
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
