Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AF3ECA1015
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4wIF8AzTO1UEYQv26Bnm4eFXxAhR1n8OVO/m66izlEg=; b=TNuYoOexfKAPU9
	KnOmiVO3daeDIoNnhhM5IrXNa1DRZRrqM/mKoKY9G/E9+EUIokigM5jOuyYY3paufbhjezwd3zrBv
	rYrKnlsHuGh43wDP/eL4GkiVs4M/vZUHtLbBEz4wzVprgVvzSioEq8n+d3dTb04cBEHb1VX3zrZhZ
	uJgf+PVyw9WPnkEDXS209b/s9kgRZcAEQsoozWCgzZXuSQbWiOeEf9Pe3ooW9VRjczkNm4dGQuVIM
	/mUEhggDWv1hFOYTR1MgzqYuiGgx4QzFX55PZUYhtH7v/fHGYf8mO/iktkbq4zfnROXjEAg241y3F
	Wf21umL45s4j4SXCy/dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3tQ-00000009gGY-1gCK;
	Thu, 04 Sep 2025 06:56:24 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3tO-00000009gEY-0agn
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:56:23 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3e07ffffb87so212230f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 23:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756968980; x=1757573780; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A7W+MHt4m6RVZcMRRD040CxW9PQRGlDxO7dLPVoTn8U=;
        b=U9tSVHKXePK67Wr04irkElX+4505JBHSZndUcgxnTurylAiLNGdTs/IZF45BOiScUC
         1ywGu0Yhcg/txYt+dkys48iuMVQKLs6yNhHShAFVok4EnzH74qIgjaeR3ApbndcS9cL2
         YxCSGlE0OEO/3S9cUqfugIEayBUH93L281X/EM4rf92bzv7eWJ6/wqigJYn8nUTlbqaP
         xlegU2ulED8g3uBjWxpB2da9ccW8dJRJsZr0VSMm0f0azKkM6cqIaH+D8kX64i6381OL
         Yc9eljnfXk38naZi0i2/LdatruwNAZqtOlyGyw1NkqMuSQrYO7jR0uXtaASch/Nqcf5r
         R9lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756968980; x=1757573780;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A7W+MHt4m6RVZcMRRD040CxW9PQRGlDxO7dLPVoTn8U=;
        b=fXyF1K0HY4y7ijow9CDrE+trLXXyygffv0WHS/8pEX6tVUr9FhoqV/092JwQNaw0gG
         c7v+00JmAp5shJWYrSxD8ondzB4hMl7H76Lf3QwG9I5cENd6wD51PmFfdY2EbDUGvUGS
         AJ/992OaCJx/BxbIHroW+99AtwthCqFhu2zmcl/jWdPPTB50IIIhnGpbQkwjDbc1ZSEY
         pXGUvNYG3X8b2eJ3q47HNL9DvFxqwf1685jeacgs+Ax1NzoQ1tKPpj/+7lZ417eBb8f+
         4YwJUPgKCVsKatR3vFsO/1ZWhsHRHyGTkJwKIZkRymVWae+JAxHXreNakpM3XXwLmPJj
         waUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMr3hRZcr99BUDkkj/q83ujM/Qt4hHuG3jKchEjRxj9I2+cU6vwMlB5XP96dIZaRCK1ihH7ulBO/4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzv3WQ40WKOiT8Eutx0eoY0ybuy7NMy8QiNWOFjixgw/mYvAS2g
	uv6vlyfBd2CgnNSNZIlsXxGvVo0dyXKrK+zBj8onxzLzCziJwbRPjFATD5ADDPLzC1U=
X-Gm-Gg: ASbGncvQv9ItxmUgtMHeHImyIE+QiW/LNMhIyxA+Rqf99JL2jU5DzF4nAb9uR+GU2Th
	7UuUPmNQ66ZCDH+VDCdM2l04CwXqhaC6EWaTfRqef/HnvCzhFG1Ljy+TAELchyxWg/HqlhS2DA3
	hC2Mz1Q99wPB8SX2YWYfXi9p1uL2R4coeXrUepkMrBI6ZFJdk/5SaF782NJmEWTMhU/ihueKc2A
	MOsnhefuZdk+sG5MkqXhY/oNuYJGf/4iKaZXrwNPro7B+s1fArIoKsOj39NFw3/XUMUCgFsNV5i
	bHgSLEJM/Jq03iOorx8HaggCo7xElttB2O3cSCUnZK/KzSYhpJfJsD2Ld1Vvni0UZpGzdA0Epqr
	mTnsM47d9yfVhEqGyUeI5NBE=
X-Google-Smtp-Source: AGHT+IHrlWEGIp2jfPvPNYCuVdAm78L04cC7Ows1hq2QFUYr3F3uBfqzroHI+RRBQ1DT0GzNgdWAmw==
X-Received: by 2002:a05:6000:2410:b0:3d8:e1de:7e4f with SMTP id ffacd0b85a97d-3d8e1edc849mr7713856f8f.21.1756968980518;
        Wed, 03 Sep 2025 23:56:20 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d701622b92sm15256075f8f.58.2025.09.03.23.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:56:19 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/3] phy: qcom: edp: Add support for Glymur platform
Date: Thu, 04 Sep 2025 09:55:50 +0300
Message-Id: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPY3uWgC/x3NwQ6CMAyA4VchPdtkmyEyX8V4mLRCE2G1EwMhv
 LuLx+/y/zsUNuEC12YH468UyXOFPzXQj2keGIWqIbjQuujOqOOG7z5PyKSYiHB4bdNiWBbVbB8
 MqfP+QjE8ugi1osZPWf+H2/04fqXvaLtxAAAA
X-Change-ID: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1007; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=+jM2IX9YMvgKOzlDNA7D7HKUcXHwlAxrld3bjm7TAGs=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouTgDQFMOO1/9mhrp0khsNUjrwKGAFRw3CHW07
 Hih9CyAHpmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLk4AwAKCRAbX0TJAJUV
 VmTXD/4zu1EOD49T4qwPcqvkip86WFCaFmszidMLCD93/3N4woAbLZB8JdxI9eARWU6Zem3C3lt
 yfdiv9Q7HGdjWWfV/ODOm0t/jDeQGAAZeq8hr3Vd4g1gTu/bCN6Y5xceXFN03tQpWd3amXWoLOi
 3zd9kAZRHVbhWK9TKfuwZOT3YL7cru7WgYbiF/zgNU60V25aDradkYLqHr7mcWmn+w5opiawp8C
 PcRNxTXFCUA6qhzChaxD681voDzUsJXUks4Eg78ii9z26niuCy1NCNYo2cukISD6x3Pv21I1Wg0
 IpOhTWYt35FtvX/OsS9nwYlhw4cZsh5ALi+4xj4aC3/+sVZSlMCS9t5DjXG/dARqQ+S1cleu//P
 JGWiZOeYNJ8/vqv0FkiVzucsQ1nF81BIX8tXw+fD9kykg7aA5ZvXhL/wUjb/9emetL/Tkuaibct
 MPi+if842R8FDDfcW0yX5/mW3i3fWnQFq7T1Y5tMO3CtzheLdFcHiBLk0FtxtfhMs+gFL2IZ0Vu
 z3ND2HzuA5Ud2B0dqBcME4QSCr/+1npIXHFIJDwklM9NALKGsxRT8xo3NE2qQDLMhFZwbxhSdgI
 PL1FfUbrmF2GSGKUrg2YVFFzAN3q1LnyF7GviTDdpAbnLUUAMTHLb0S1l6+AbqUzgmG31GYnXAW
 cjsoAyH2v97Y7sA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_235622_190354_E95AD35B 
X-CRM114-Status: UNSURE (   7.45  )
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

The Glymur platform implements the eDP/DP PHY version 8.
Add the necessary registers, rework the driver to accommodate
this new version and add the Glymur specific configuration data.

This patchset depends on:
https://lore.kernel.org/all/20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (3):
      dt-bindings: phy: Add DP PHY compatible for Glymur
      phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
      phy: qcom: edp: Add Glymur platform support

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 239 ++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  12 ++
 3 files changed, 246 insertions(+), 7 deletions(-)
---
base-commit: ab918b506f0121423beef123577d5071eebf9218
change-id: 20250903-phy-qcom-edp-add-glymur-support-2a8117d92b89

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
