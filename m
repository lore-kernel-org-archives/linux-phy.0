Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAB08C46CD3
	for <linux-phy@archiver.kernel.org>; Sat, 23 Dec 2023 11:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmZYTpmbF2L2E26+eU77Bn6wR0zkd/nI7sQpc9ILKi4=; b=3agMLBk3bLj6A4
	BjfXvwKXpTKA8zC6jtEIHRwhgiPhpTmP6UVNCuxoup0pAHXa6p8ZY+FVzDQ9NwqrLjBTadlm8xI9u
	W7W3b9BTxwm5OdPH4XE89HO26qzkyPjYSRyL4LsK9Y2T+nITelJPJ69BP0TK3lTc/BRETUzE4iSDU
	zi7/MppuPPDCheVnIZkZMWeFZuRjHGkbT1MjYRYnVJSgmA0TLuqpskrqotDmSJf1miAZAQ49Ohq9v
	76MBPmEaSOxsq01jySOXgvYTolQo9V9b8St67cIfHk7BBFGaKI1JlmVzXxzDMmdFLgiZAyMJgdXox
	NSnnXauxvgc9pohnhALw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH0bb-007rhr-1j;
	Sat, 23 Dec 2023 11:55:47 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rH0bY-007rgc-1W
	for linux-phy@lists.infradead.org;
	Sat, 23 Dec 2023 11:55:45 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40d3dfcc240so26479955e9.1
        for <linux-phy@lists.infradead.org>; Sat, 23 Dec 2023 03:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703332542; x=1703937342; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s6BgZXk2Z2EdsOWLkN8A9CQXodyxdbtKQobwp6o/jO0=;
        b=GWPZw8CblTH97SwgA12VXG1l3e0Y8Jb3xAW3lbQ2szIXfwGknTyhfNfZgfiN6K1X//
         RJynU7JAelMKMU4lSOSaFL0dPsEyWHOnEKYGnK66dQ4Y2BLuXNQR57b9yL2oxlaaTzRy
         4Oqr4fDkqyA0xfnY+7Bq07cCXEL2WN3dFQoPp6gFdvkXdn+gWBrKH9G+Z0AbssYzpchh
         u5ro5fEIyOav3x12lr2Blebt8yVEU5cG47wD43MwbUgOSHcx3goG3AubWH70Yorf/Bqf
         vUkFAc00NaA01tJZsdBKI0uLXjtucPapaGdFCNj4JCO93mBswtIZJXqs0vCHEHxUaITq
         g8+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703332542; x=1703937342;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s6BgZXk2Z2EdsOWLkN8A9CQXodyxdbtKQobwp6o/jO0=;
        b=TkhHEEiG0Pr179htVEOg5quWK5zYT35CN3Gz4oCqz/f6kpxpvSRSdKICUi/FgJXY/g
         6dJz981i/FonLT4NGyA6dVBi3byoORTikddeqYB9QNXmX7Rs/4Sye3y83v7os4e0WWGw
         QgVd8BNRom/9EvKUsNpUAOY0oMiOhxxFyyjnbQSwbBDgLYVrrdbfs3hOm1RYimJt2K8j
         gfb6GvFldGrohg5yWTauD3uLYSxEtNv1fWzlsF5UF85BCDCSRFW7+sOTKhffT8g4AOlb
         O3gxD7o+zyoCHfHSHxwn0XAXeVO7tZgj2tcOF8pB/ciAq1OEu0T/6QrT1zGmM5In/a94
         mtWA==
X-Gm-Message-State: AOJu0YyxpGyUbSRuRn8Gaxw72X+mtFJJWOzYJyYFMnTz3NA6v+CClNZc
	mSBkNf3mmFe0/yadPBdqI7LXaUJ5ISnmCw==
X-Google-Smtp-Source: AGHT+IFbKKaDUzDOTV7tg27SW7s49hsl8UxjmsVqHgSUFLade7q7Lz04XuCiV+7QgzJCtZ2iEIONjQ==
X-Received: by 2002:a05:600c:3f94:b0:40d:34ec:8809 with SMTP id fs20-20020a05600c3f9400b0040d34ec8809mr1048362wmb.270.1703332542096;
        Sat, 23 Dec 2023 03:55:42 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id r10-20020adfce8a000000b00336781490dcsm6351525wrn.69.2023.12.23.03.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Dec 2023 03:55:41 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Sat, 23 Dec 2023 13:55:21 +0200
Subject: [PATCH v2 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHYs
MIME-Version: 1.0
Message-Id: <20231223-x1e80100-phy-pcie-v2-1-223c0556908a@linaro.org>
References: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org>
In-Reply-To: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1569; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Cjd737+0WvbPLfzwP1kvLLPld4NW6uZ8Tvfpkvgqv2U=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlhsq2k0cPV01Jw/I8SkjK5Ygnbi5XDM2jUyHL9
 bS05EY/5RWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYbKtgAKCRAbX0TJAJUV
 Vmi5D/9f1U4t+GjBZxjU8iax36NUu3PaOld9Whjbrtds0OLfkX4Nof2QRKGeTud00FYbpSXcv6X
 HEGPebTsn3LZIkDvB3CadQlFZEWVH2mNVGMsmNvuSi+Rp+JgRLbLdF2a08My/MCu8g/Qy8nyw0v
 BOte3qBVbceO4CcXbpysQgjVlQE4OEFMCNCmnInFSbvrmXrnoQs7awAeqRwfpQG0XvrRfIE7SdJ
 Ume6hn+wGy0mZb1dPEjV7EZGesWXMeC3xk5DYjSwLGxGP9x8izsqcI1UGuM0R8EZ+CTASipIp99
 4JpRXt0DqaavGLhRC1EhV6x3hmNPlO/UNPCQmqGo8KzYi/tE2aK/Tx49BRXoWbjn1cizI0I2Ezs
 0K09HAsfYsivgqRHSrFKf+bPmg1rlj4e+Bmq9m/GMWhVprdMDpl3fdvX1p/vW/3e9srRzZPtkej
 U4PyNI1bt68c66+7JDohm/xL6AaNhn9JtVXT1/oWt99UFIZ/QPS/2ZmHtd15OqmX3pp8S4zibgG
 OpjQDDiY82tfotlBJDojtCMvDqQ/LXQDhcEfVVKydoaiZFwhoRrtAhYoHYIGdxeG2zBC+d1OJBS
 R8rzwZXNZacCHgTp5UyBD8kA7haNNYkSLtFX6Bs1HXWx+Kqy62Vub97kDGI8VzfsS919E2jXNId
 FgidTucH4UwCLGA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_035544_506687_87BB43A7 
X-CRM114-Status: UNSURE (   6.55  )
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

Document the QMP PCIe PHYs on the X1E80100 platform.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 6c03f2d5fca3..ba966a78a128 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -38,6 +38,8 @@ properties:
       - qcom,sm8550-qmp-gen4x2-pcie-phy
       - qcom,sm8650-qmp-gen3x2-pcie-phy
       - qcom,sm8650-qmp-gen4x2-pcie-phy
+      - qcom,x1e80100-qmp-gen3x2-pcie-phy
+      - qcom,x1e80100-qmp-gen4x2-pcie-phy
 
   reg:
     minItems: 1
@@ -151,6 +153,8 @@ allOf:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen3x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen3x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x2-pcie-phy
     then:
       properties:
         clocks:
@@ -194,6 +198,8 @@ allOf:
             enum:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen3x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x2-pcie-phy
     then:
       properties:
         resets:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
