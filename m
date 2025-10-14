Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62538CCD187
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 10:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWzjF4ruUY31csMX5i6IqrjZ/xf+jmInefamXVFr8Ao=; b=rY80au/dG0cgeG
	vExlvycBoIyFKjRuGC9N6gkXLqhs9Nm2ygrqyg9VEePHD8aYl2yhkMCIVJDHgXnma+Vie0V4Z0LiF
	DRrxlF/a4x6qc7tBG01Cb2S0BOPl39eLDWIrI3yi1cmzL8FaGpfLl1rxooJxFr4F0K8UeZOhXuqzx
	wV85yd/pnU2pNeNMa7VVH7gH91FiS3OxXsNOsW7Oc5nI+CdQIp0TYBgSHDukBJW8/70Cu7lw0gkvK
	LWJTcIeidkmIv63JWiM7QMXeiV2xLnHhWCFAAQW0ZrBeVjHAcz1nNOZaRslXNL70FVd4fKWQEAv/i
	P1V6rm3EuxJLGX99oKsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8brv-0000000Frp7-0eQO;
	Tue, 14 Oct 2025 10:02:59 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8brt-0000000Frnz-0njA
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 10:02:58 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-46e2c3b6d4cso38477955e9.3
        for <linux-phy@lists.infradead.org>; Tue, 14 Oct 2025 03:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760436175; x=1761040975; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cVJfqn+CURZR5kgzfDjtV++23e8mA5V4+ieWpLbcMzI=;
        b=ZeMCaNaZehqdZLHnfd1koLtWMx9Oy+QEOOh3xB8dyelvX0/OVbyC5PHfDzGs9cD1pK
         E/ah4eXEjive1jSMkGOId5mQz/rCfehjRE2dsJB4W4pfzm36F4Hv5RAm4gEnG2g/DONO
         l8PC/ta87P1jHKkG0aNWym6CROys1dNo0Zlzwn57wEXdtV4xzFCyuQMvh3vi65Hz6s/F
         46ozp5Z7yYDcA5bIi65unsamHbP7laEcsIMcHfdF/qkiu2opSrE+NMJrgmleTdnvdeLO
         9cO5nByceWpxfu31RwsiCZSb5mthk7nEt9zCFiCDN5ipEtKkdQB0yEY36duGJJWWN3UB
         rKJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760436175; x=1761040975;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cVJfqn+CURZR5kgzfDjtV++23e8mA5V4+ieWpLbcMzI=;
        b=wnNYCKnQByd2ISWCSqrTF/gMSKL1MFuNghPUOmUwprEg8EvS7HntaFRLJk1u/laqMv
         DPam9FVnwjQmYB4cnPzmS9V3bzNOkmi81RyeNC3telqq+P0WEXX2NpOJLRHa/8iau9Zz
         zgHWjnTSNWwAC0oTSHbQmoSKzZ7OdvbRx74DSuz/8PvkzqG+qroHqDRVmsho9vkbE9Za
         YkcU96p0UMwRqIgY6N/kvz4oRmqdyUdrPd96MXF8P5FyqZipNnT7ia2/r2uzGsZMYzrX
         HCyFCVnXbk5OmWKZaCC8t1M1ZSv2NpXZ8EpDRxruCQ1M38fxxaXJu3H93oppw9MZD+k5
         4qTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrkJaHvQVoMThB0MNggBj3K/y0DSCPFoWACs/zNE+b9wHKoPGn4ggAJT/Kw1jynWKke+pCjhb6xaA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKHTbjS6Yy0aSj+JVsolrPARsGLCjyYlhgCu54OoulKLq91jD1
	4QfmZ66e6g9IfGfBpC3dW5LwIyLuQC5Mp0slskfwCsemkwVpeqzeuglpq59/BNP94/Y=
X-Gm-Gg: ASbGncv+ycEp+iZxZW42OBu0Twha4SnLFsB23Ltp2nPDC4DB1GveEOqVK9EdFr9QIWt
	l9uD5G0Qwp2cbfweOTT5WUvt12Xx95buQyjABOBX4wUAIb1WFVxiO1JyZBZ9lkNY7WVINL+oNl4
	LboMpYKh2wAUWBsMC+6eMCMzQAeVBvgsIQfsCZ9RVwQCfCzbzXP20HYxRN0TVM330L+BAaiwAHJ
	0xkXv0DJdXgmHlXDbdYkmGqhcEuD37HQlTvyn/jhtBt5Hiu86EGNr83hV4es9JOqbN8XiB+92lK
	g5VgNeNOE9uKsjZ5HoWaPgKZmCGIyOzlKbEmTgQ7Ha3XUaIyt0iVwZCcPmrnGE9w5apeiR8HQBU
	zAEKL8vaj6MG1YUNfQjwj3mcgdYT2twq5K1QQgA7Ut+c=
X-Google-Smtp-Source: AGHT+IHn1J3P6w0TT3kflXZRWIHbxv02CVqgaJ7Zj1UOEcse11mXhprORjqLY8jjisVskI0JowAdcg==
X-Received: by 2002:a05:600c:1e86:b0:46e:4581:6634 with SMTP id 5b1f17b1804b1-46fa9b018e1mr176937295e9.29.1760436175311;
        Tue, 14 Oct 2025 03:02:55 -0700 (PDT)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb489197dsm239615305e9.10.2025.10.14.03.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 03:02:53 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 14 Oct 2025 13:02:27 +0300
Subject: [PATCH v3 1/4] dt-bindings: phy: Add DP PHY compatible for Glymur
MIME-Version: 1.0
Message-Id: <20251014-phy-qcom-edp-add-glymur-support-v3-1-2772837032ef@linaro.org>
References: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
In-Reply-To: <20251014-phy-qcom-edp-add-glymur-support-v3-0-2772837032ef@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1167; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=SjQNMcKFiFxf1UzqcFbV5V5FIrz1nf5P1xbHJ87t43c=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBo7h+/P9kfefQL9Xhu238N4OW/+ki3a8ZQcLA+5
 /LnZTJxNsaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaO4fvwAKCRAbX0TJAJUV
 Vg0BD/0TH9WNgHrWjeqkeEuXihRVj7jKEy9+iMDKrSQ8/rwR7ChvS6cRGpe+u/O4DAzGomvgO8Q
 lx7b2fwpoWlEowETy6PImWEB2TmpNXUBdD4zo/BDHLaoISEcdcHToJpihgWYI5rMnQ9zhRIKshe
 q9ufkvxu3L/+/u+FG9LCc7sES2xB8WjJFaoPQpROLNfaNB+9455YfeteCb3SvePUAzbtO3qJavG
 P4igEdfz7GaknEHv9wlIiYb08v5jJJKCc+PROmlHQfojvQvbED6Rn9+YuymS57MnV0bhTRt8Mb9
 QVXW6+6YpfLU3eTjLBgPlrGF4wjF0kuAl766P+FjYwDscU0MUaTXk3FVehoO2uLB3KXmXJpvpQT
 zTlh2jLKjy/lJk9aHxChoS/hVQk3Ac+U6LPqYcfEplRrKF9nXeBWYoRbQ4+olOltcY01+QnIeKx
 1Pp/9Wx2UxS4HDM3pFw8g3MvCkA8FRpo5kcQXqDBFVt1+kFy0vUhmlD3SIzpzohIgWX4m1+tx3X
 WsPCgPkRq9UoKN9VSpzP1urz1ueT52u2OrGpa1X0AbIvOCaE+eBdacV669Tgx/F1mk6nR5OynX7
 lar0vq/2GI9bGPxHKSu0ZAvctRDk2YWF6csnxydqF1krfDNbM0Gh7dxwEVGM05IFMnpuhpkrJLX
 dxT0tKQyUxjylrQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_030257_249422_E909A19A 
X-CRM114-Status: UNSURE (   7.62  )
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

The Glymur platform is the first one to use the eDP PHY version 8.
This makes it incompatible with any of the earlier platforms and therefore
requires a dedicated compatible. So document it.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index bfc4d75f50ff9e31981fe602478f28320545e52b..4a1daae3d8d47ca5f08d97a1864cfd615dcf108d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,glymur-dp-phy
           - qcom,sa8775p-edp-phy
           - qcom,sc7280-edp-phy
           - qcom,sc8180x-edp-phy
@@ -72,6 +73,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-dp-phy
             - qcom,x1e80100-dp-phy
     then:
       properties:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
