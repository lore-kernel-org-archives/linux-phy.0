Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64E05C27C75
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 08:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wZ6cb9LHpSjAHrKJIDh3JRXpBZU1QQgK7mG6/bi2ftY=; b=krN+kEEs9J3R//
	V4Phch+Ea0TRj1f4j+D8wsRErbsrcOdhiSL4rRuK7ll/LvnuQHLW/9S4Zl4vLwxwZmHjLIJtaRoV6
	Jl13qEnKi/q8iZVeQJ9aq5HZgGRvLP7jeK/g2SGIjO4BTaHEev5WnwphrXjXj+UdJZqz0SZXZGcm2
	yW6k4ykDWvznmbAIte1pqCBpdjHP+nt1elqvDWpgNLcq6s5CiMIp/1pITerZ3i0vS5rqe7a03byqB
	CyxR81fvxysQonnz9asjlr0z4XkW0o5L0nT8x7rY7vmOuoPx1YtqvLTIrRN/0r+JHeIEWH4SJmdDh
	jrNjLbcMxxGqO4iDJ4dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI2PO-000000022KL-0S6h;
	Fri, 14 Jun 2024 08:35:42 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI2PL-000000022Iu-0oKD
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 08:35:40 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-52c85a7f834so2502739e87.0
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 01:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718354137; x=1718958937; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3DHzKRpXg9J/TD6lO3tM3V685Xzbxz5fbjLyyBJ38qc=;
        b=vtURn1rShyK7x8SXqx3CeNIfp4EL8s1qGl0iI0FF+qatjf+HMrkfCl3cqAKvXYUzb2
         0uT1CFatlPzofjwhhia8MTk3D46iOu35kgUzGsgHxAPlMYYI4HnIOKyR8kZiOYc9hWdN
         NLJpARrHSUVrcQRNWDV4VmnN1I/JG5S2bEWYtZpxOIAByzJOk5WO0kKaRQIROcLM+WcB
         iis2Qtkv2VuzU29sHTHlDKpvJ/LLyozHo+cP0xJLqcDrog70Kh0af9qLtRCr8++jpeLF
         Fn53yWUCxC67h7/S/WPV1MTKjQ0LPFOpw6mTyCVLKILd/P2j0s2do24mzi62NyhaEZlZ
         9G5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718354137; x=1718958937;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3DHzKRpXg9J/TD6lO3tM3V685Xzbxz5fbjLyyBJ38qc=;
        b=ihfEZqlzSoHYtRo6+FR6cXfLkAizbLCS9Twoy5anzpx5pQs+bPnJt2QXvE6Ys0mra0
         m8jJDz/v7MkA12BVh2xRJsOX631Do77WykJniwbU4gxV2Wqd1IUzal4vJC/MrQDrMaKv
         Nhf9Ms5u9CyZcnZCMgUuOhRSAclw9lGDq9+pUlDK6kLK4rZkBlQEo6gXmtYwRw8e4Pny
         nMHLYHqo/+yPtJ0lwbNhUkfTx5OT4njT0+xZNinh9MiHSHo2QJvxFGxH1X/nb61FM1Jf
         eb658u0F3gQNdcYpS8ZTEayqAZZ5EiOeiDy2a1m1oi0a9+XhGzH0ViT//OTiABQckAaJ
         gHRg==
X-Forwarded-Encrypted: i=1; AJvYcCXi79JUjnlEzX5NBLnkqCoPu+JpSl9SRWYeg3LnEQaiJH8UpIlu3X0HQ2yjGUwxGdsxmoalqG5kRi+tnE0sCsEvgoW7Sjk0puQgbxEBRA==
X-Gm-Message-State: AOJu0YzaU8aI5U071Y4awI8Zn43ARPozIs8QzkcoPjTePKldmPgCbCMe
	o4xk/d1YkynPV+AgXsEzSqm4hhBvVroU+WXgAyh6Los0+2yCrmRAkX28dzCgMKw=
X-Google-Smtp-Source: AGHT+IEQYII1Qj2KahNl20kfi6Kd0iMIEGFVS/P375Teoc/Ydgcxx2q5cNcvZc4KM7O23+ZS+5UwLA==
X-Received: by 2002:ac2:5929:0:b0:52c:9ae0:beee with SMTP id 2adb3069b0e04-52ca6e90a58mr1297191e87.49.1718354136880;
        Fri, 14 Jun 2024 01:35:36 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282f1dbsm444776e87.110.2024.06.14.01.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 01:35:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/2] phy: qcom: qmp-pcie: drop second clock-output-names
 entry
Date: Fri, 14 Jun 2024 11:35:33 +0300
Message-Id: <20240614-fix-pcie-phy-compat-v2-0-990863ea53bf@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANUAbGYC/32NQQ7CIBBFr9LM2jGA1FRX3sN0AXTaTqKFQENsG
 u4u9gAu38//7++QKDIluDc7RMqc2C8V1KkBN5tlIuShMiihtGiVxJE/GBwThnlD59/BrGjFOGi
 y+moHA3UZItXaYX32lWdOq4/bcZLlL/3vyxIFdsZo2dqbuoju8eLFRH/2cYK+lPIF25jAkLcAA
 AA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1313;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=aXVVMd280kDEU99slp/goCJdHS5H7XE36h5Z2IJXkXg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmbADXrUm9cJ44C/Qoh4AWATZBW3PHxHeKo1RHh
 gPK0/xfq4WJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmwA1wAKCRCLPIo+Aiko
 1QuOB/kBXJliWLone1Vftys+maL+YWswmOnQbrJaQc6CEa3Mie9hAeLIx8NBcEIIXS5NYMOuOOd
 UCghRsR0hPuJmF0uhQZ8fSVchGAjzz01YWZbj7PVsdM0EX20qN5EWZAPhrUY5n23FqZiVnujqL7
 lwh+pD6jiErEGx4UZWJS6/4SHCK7h8Grzgi+h7Gsvl5TKrmwIXG6CxIcgTJeux46gUm/ak5tjza
 qUc3JlGHT4cAKtobXjt7QAqIVGDxSH7OQrnBYIN3WUnWP0wK/v8WbYwZVF4xuEqjXQ89NLYOhzb
 6aM5Mwg1u1mmPX4hmyuh3856QQGpinpPcwVipkAywFo8+ZVF
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_013539_270539_0180AB54 
X-CRM114-Status: UNSURE (   8.81  )
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
Changes in v2:
- Fixed generated AUX clock name (Neil)
- Link to v1: https://lore.kernel.org/r/20240521-fix-pcie-phy-compat-v1-0-8aa415b92308@linaro.org

---
Dmitry Baryshkov (2):
      phy: qcom: qmp-pcie: restore compatibility with existing DTs
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: drop second output clock name

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml      | 7 +------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c                         | 9 +++------
 2 files changed, 4 insertions(+), 12 deletions(-)
---
base-commit: 6906a84c482f098d31486df8dc98cead21cce2d0
change-id: 20240521-fix-pcie-phy-compat-b0fd4eb46bda

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
