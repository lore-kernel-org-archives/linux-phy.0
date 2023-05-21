Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACBE1C7EE23
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 19:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dr79HF/BTyOdHDbsksWqXsmMUP5kZRuAFzM6SHRovbQ=; b=xYK1dDK6ppOmWZ
	PhA2ymbfoe9qs2czywuUcYCYEt9+z23dQ76P3uTsIQCyZzcUDA9NivGwkKdQMc9fzlHS8LSvlMhWu
	R8GuGvSbVxo4S+DbOWCQkomi7zDw+S6hEqFtBzDuQyNJmqrado6NtIzjcdw3ViiHiVPWDpAgIINmw
	wy9R7pXttb3sifZIL99goVErg8ZnMa4OufhY6fkiPF6N13cuMc5akX7yR+kUkJmX4ItIS0VeOIlzM
	jUq8mIOKGGZsWtMbXRPsnAIRb+DFLQOwxZoR30cJNgCt6q1SXf8rd6HcYSYAOJaB3X9XcXjfLiyAl
	iGCiTWwUa0m31KiuhPxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0p8P-004YVG-13;
	Sun, 21 May 2023 19:54:29 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0p8M-004YSq-1j
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 19:54:27 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-96fe2a1db26so48715866b.0
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 12:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684698864; x=1687290864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aL6CSlS9Q6UUnnjwqpxYTCJ6oS+R2HPG/MBYegldI0Q=;
        b=PYVQayaMrknSNy1L3z+ByIwbFLBz1hd1cH/4nXupZnE42OgwNifA03+xAc9ArHYN01
         CHfQOVwPIAXcEiXby7Mqi9Oiw7OZoOhy5NU6r62nty3hdlvogbniEznhe05qG8zUvTmS
         lM/5lzwQ7eLJL8T7kLLOo1/HMu3Bomfv6seFzG7ybgKBQw0n+/iemSiUi5oydr2jbH8u
         +pcvgtYWH/+ICaVQPO9XHghbdRm4UNOCAqwcaaBEQTqt+tb/lipfZbgUYt0nEyg72NKW
         uz8dQcC//KgDQfvaoh5aqxeohaIWZQveTyp5Wh8hmkHelEdRWOaBVtvHGhgt5Pk1BShI
         G5dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684698864; x=1687290864;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aL6CSlS9Q6UUnnjwqpxYTCJ6oS+R2HPG/MBYegldI0Q=;
        b=VJz/GULNWNK+N+xzQi3ZKS4HQ7mZHcLUuSjWkM8oJ+qCsMd1k22Dc++U+RBBX87s58
         ArI6Azt8luBvQNcr16sKUvJXAmv3QAfAiFd8ZGGdyk4Va1Fv4L7vm8iMCkc4cXqtja0z
         9lGOAUCPeA7LrBMvwC4oLbjp/44dzPYHngc9haPFo0VssRdjIgvMQefUXWi9dJmacHPY
         CU9e0CrovG1sFxukKutyU4tjiRyBt/T8k0wJ7nQjb58mP+QaIl2QwF1QpqwOyKvY43gA
         AdGtBl2ZzO8jc9SOSQm5F5EZOVdLPq73NJR8LGO8uIRMFd822RJptDKQLViymSAqgj2T
         2UIQ==
X-Gm-Message-State: AC+VfDz6k46OO6vCoUQJ+oSxVLpNQUefliZCvZeB6dLl358njlFMpGWJ
	bmcQZh/dnsW4AsK+Z2ZXGfXzDddvP8djDp2wFAU=
X-Google-Smtp-Source: ACHHUZ5EGU3eZWmNTs+xQoFdCS04NQ0rd1X9vfnxlGYEs7u+t0FhoTcvnUIEtFsMw/nxh3dvSpe3bA==
X-Received: by 2002:a17:906:ef0d:b0:966:6035:c81e with SMTP id f13-20020a170906ef0d00b009666035c81emr7634824ejs.52.1684698863818;
        Sun, 21 May 2023 12:54:23 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 16-20020a170906101000b00965ffb8407asm2187107ejm.87.2023.05.21.12.54.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:54:23 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [RESEND PATCH v2 2/5] phy: qcom-qmp-combo: add support for the USB+DP PHY on SM8150 platform
Date: Sun, 21 May 2023 22:54:17 +0300
Message-Id: <20230521195420.12454-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
References: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_125426_571727_47A39933 
X-CRM114-Status: UNSURE (   9.57  )
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

SM8150 and SC8180X are close relatives. Reuse sc8180x data to support
USB+DP combo PHY on SM8150 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 33cc99d9c77d..2bff1bbb8610 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3614,6 +3614,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,sm6350-qmp-usb3-dp-phy",
 		.data = &sm6350_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,sm8150-qmp-usb3-dp-phy",
+		.data = &sc8180x_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
 		.data = &sm8250_usb3dpphy_cfg,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
