Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A7C0C48BC3
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 22:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jFPj8SXfEatT+1BGw/HGFrR6f/hGZ4qPgfIt3FGAsO8=; b=tJq1OQqbhy70O4
	g11+5I4GD7Z1yjNKa8xM/6ePvHIBiULmwVVKGPk6Wd20K5X1AisZa+t8yt0baKVpoTocwBkuhrqiU
	m00Bv2XOLl8ZRlc51HlkowGdwj0U1aF48PmzTA+QBODmRw+OK6T/3MfS1d2ul5hO1If4kxWTgWaAP
	aVZKYfECvF1gE22aTaJqVrIJNls5i/JwgG76M5hGFp9+7VlgBjJjriS24bCuAXxt2BcYGo2gWiFRa
	lyH6BGRz3ih8mXWVvmRn5m110mP79hIsecXyg4s8N8M8cGzHZOq9gzaWRNZSJUmRYeMUooCBz5yh9
	KSP4qeW9yvkasIRTM7cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcYFF-0000000GJC2-0AXp;
	Tue, 20 Feb 2024 22:05:45 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcYFC-0000000GJAb-034y
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 22:05:43 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a3566c0309fso706343266b.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 14:05:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708466738; x=1709071538; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D2NZQ995q1n6y2saPHdpsUCNcAuhvmdDn6o1P9oEDhc=;
        b=rL+U1fanqKQ7AyyHHmHAkENtJX/TVyI+naK/SBH6L8Zt9uJBG0Y/8AGWjBouhyDM9S
         T5eIj05FVoBu7ZrX6m2+3PCnKOJcg9HpNIX/AxVgHrlkQhnm9GjfKGE6/V7FzVi1EJvW
         z0E4ZVsBYKMwB4s7Pvw1pP8egYaH+hC/CzROwjzHpZGF3gm613lSlkvHWMRRfKwTHWeF
         NS1VpuiUZUIeLKe+7XQTlYZwjRLa+vpVGrLQP9XevTQ7HOXTQNYvOssGtfTUV70mzzyk
         LPi33y9KUbXv++z1PfWeoyyykDDNHHXh261olamAoECxCyO5J/cT4na7Ec8VBQnFGLVZ
         1EjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708466738; x=1709071538;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D2NZQ995q1n6y2saPHdpsUCNcAuhvmdDn6o1P9oEDhc=;
        b=lUIUObEWJRtZoy3hzp1GnZhCfh0cgGkCDlWLaOdkmNi1Rzr15ydBWA7clLkhIO83zk
         /SbucxbcK9aQ5NWATeSOeLfrmGnEZiPV7CDJLixr7B4t7ZPEtFQuVz3jKYTerrpfpMza
         HkHNaZsrmRJ5HQAoSeUwuxkBgNrja7N7+8wJlxEfvMzuyC+pZcXwUIADZyojnEmiJPGr
         JoiLZ6/K8ZqZ3xkhRzZ66V4+QLr/KixTiAFvsZS2O32pdbi3snuUr3OaSOytmxJXa2GR
         8xTMzyPZ+iATmCl1OIXbKYqiNoBB64zVpykij5nCslRLfxDM5MQD09Wpl2/cM/mExmiZ
         n1Yg==
X-Forwarded-Encrypted: i=1; AJvYcCU8jTrhLllhf6LnuWL9buqMqbZH/k7eHeedUt8mvRcWeYkzlb9bhTsW9tt4RO6RIJF7O2br+ytzZVI2pYRRjIIrDEiRfBizPwJPINHrGw==
X-Gm-Message-State: AOJu0YwsjfRjHVb8AWdNGDKbxFbJzhmpgo0CVeVRYCPQ310xi88IjbC0
	70RSoQs03Tzht9ZA8KDiFQyIiYMEJcpJQEw2yyUSxMYn0cZL+v80ZKsIbrhfaGY=
X-Google-Smtp-Source: AGHT+IGq8w26car/zCBj8sM11UVgZmMu/oeBlMNzOADVp/kghBUvQRxRPpbJdwNPnlCCguPjcvHlag==
X-Received: by 2002:a17:906:16da:b0:a3e:7dbe:298b with SMTP id t26-20020a17090616da00b00a3e7dbe298bmr5256779ejd.24.1708466738287;
        Tue, 20 Feb 2024 14:05:38 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id jw15-20020a170906e94f00b00a3e86a9c55asm2716087ejb.146.2024.02.20.14.05.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 14:05:37 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v4 0/3] phy: qcom: edp: Add support for X1E80100
Date: Wed, 21 Feb 2024 00:05:20 +0200
Message-Id: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACAi1WUC/43NQQ7CIBCF4asY1mIYKLa48h7GBaWDJalQwTYa0
 7s7ujNuunyTzPe/WMEcsLDD5sUyzqGEFGlU2w1zvY0X5KGjzaSQCkBKPvZPfpvs4NL1yrEb+QO
 wESAEt7p2oL33SraM/ltbkLfZRteTEKdhoOOY0YfHN3g60+5Duaf8/PZn+FzXpGbg1DNGNcYI7
 Fp1HEK0Oe1SvrAPO8vVlCQKoMK6MV6A0X+UWk0ponS9965Co7XpfqhlWd4ieOA0bgEAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>, Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2677; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=1oxELfa5Io+hWvP4lYNlRYww+1oOBVHgYby3WJ7/TvY=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1SIncVPlsgjmGMiKi5Am9MB1tLfLvopEg/u8I
 UTw4JMiIfmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdUiJwAKCRAbX0TJAJUV
 VgzqD/0RT6oWi1E9rr1Wan0LcYpK17jYKw9iC5T8LueGuDSeA51L02HHNZRR1JCAAsbqGf1lPYw
 iqO1GkkThYLg/+hOmbDmDX1NQQpfK9l5gUUhB6sj0UTAXXPcid1OLc7xdGg9+YXRbDyOJkD/UGk
 CXUIijUsnlSYbDMCUoT3djHoICbVDg6JbZeK3QYKQd9F1tafV8pjAtsdrWBuqeTO68BUqY7zTx3
 2LDbzX3xpCt1qa1OzwdK3JyPTevPr9kFA3S754BJsGtmD6nVobXwdJR9wmpL8w7bBTNlwlTHVk3
 CM6USYEJx9DYsPcWGeS3I2LChXVuYos4BqgoL5p/1wOuBvlm3P1t0/LMWRb3eBo9GUFjoKIrnrN
 rcEW2bsPhBx1vEJA9JdD8oFL00sW1GiSU1KIIKVqYu71VkFcEWtcoT60+r7wyeHHoqLLZ0JrCwp
 WKx5BRldLlipBvNlipDBrL8JgM79N4RtZEhVQGVYhJTwtia/t6LHph4zTFn6jh/W+N38ktIT20/
 w/IfLdB2T103rl3bbDRSkDPAHFLcmc8vSGLE9TyqcFP0gy/X7/odWKvz//CvQ0XNjEau9mjU0/M
 ONvcJYSl12V+VasTc5NnxOt04nfFYck1KnuGM4/jWeO5zk9KIhVHZMU50SD5dpWTU4N/cOVpGXd
 0L8BVi9UxI5fs8A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_140542_276062_0022AE6D 
X-CRM114-Status: GOOD (  11.14  )
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

This patchset moves the v4 specific bits into version specific ops,
adds the v6 specific version ops and the compatible for X1E80100.

This patchset is dependent on:
[1] https://lore.kernel.org/all/20240220-x1e80100-phy-edp-compatible-refactor-v5-0-e8658adf5461@linaro.org/

To: Andy Gross <agross@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Changes in v4:
- Moved out the mode setting to a different patchset [1]
- Switched to per-version functions approach, like Dmitry suggested
- Link to v3: https://lore.kernel.org/r/20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org

Changes in v3:
- The whole support for COM v6 register offsets has been reworked from scratch.
- The bindings now document the phy-type property. (dropped Krzysztof's R-b tag)
- New patch for adding PHY_TYPE_EDP into bindings header file.
- Link to v2: https://lore.kernel.org/r/20231122-phy-qualcomm-edp-x1e80100-v2-0-114e789f0195@linaro.org

Changes in v2:
- Added Krzysztof's R-b tag
- Re-worded commit message for bindings to suggest same PHY can work in
  both eDP and DP mode rather than being different PHY types.
- Implemented different qcom_edp_configure_ssc and
  qcom_edp_configure_pll for each version of the PHY.
- Dropped the cfg8 override in qcom_edp_phy_init
- Used enum instead of defines for PHY versions
- Link to v1: https://lore.kernel.org/r/20231122-phy-qualcomm-edp-x1e80100-v1-0-a9938990edb3@linaro.org

---
Abel Vesa (3):
      dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles
      phy: qcom: edp: Move v4 specific settings to version ops
      phy: qcom: edp: Add v6 specific ops and X1E80100 platform support

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   1 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 321 ++++++++++++++++++---
 2 files changed, 278 insertions(+), 44 deletions(-)
---
base-commit: f11d52ee9ab66205a0c9d1b936f6d9842e766bca
change-id: 20231122-phy-qualcomm-edp-x1e80100-a57c15fff32b

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
