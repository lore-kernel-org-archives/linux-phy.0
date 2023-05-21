Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 626E9C7EE2F
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 19:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voHo9tOhEANT/8AGbBkIooBPDGT4Frvsl5yWEZWn4xo=; b=ushRRmZIOW2acg
	A8K9IDF8kys7IltwqL8qNisMOFEp+4GD3tiE+j9WjgCJx2ro69n8Zxelk+FRk4BbKnoP5BQV5IRuq
	AFPpj3cAMAuFkyUSr/P2JOZMWND3l1tjGKtYdnyVUbtWQPlR37ayqoteMXDcEf38TDbmbWz7WOCeb
	DG9j1a/cHjB2001D/HT8/6Nml09VBqYzldjUfOpKC5KPYwgNXDv3dqUQ0VzIWhPNZmvC59jgyZitK
	xzAxMsS+VOohoSwDftGN3ythfUy11VJuFDdymCJxxhtFxZUyk7FqErgkf5V7g0WlBlbTKQxmftGpb
	mdI7ElWqiW42Fdq2+tCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0orE-004WeX-0B;
	Sun, 21 May 2023 19:36:44 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0or9-004WcE-1l
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 19:36:40 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2af28a07be9so26542131fa.2
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 12:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684697797; x=1687289797;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3c6yMNCBo2Th5nKj9JcDZUyMz8f9ppKaXvygn50ATHs=;
        b=RI0O9gknU0lpz2ZQiYQ1kJ3pzREN7UhSGCBX6mEyjoTK/5OQWgl+DvLDmLr2oF1acI
         a1Lwjo1lrfOyGoCVVtc45Azpxf3Px93tPvhBrVI7guoXv7nup0lNu5TGQ0cTz2PHWKM4
         +v4Z/PT2Iv+eEx00qZCjTX5EXyF+igC8cyr/SoJHQMLIDV5mt6ZDAjs0kOvEMII0OKA+
         yoMVfUzbo+Q4LyoPXXeaxf+Zu75ls9Em5WpfPHJQLel6qf53JA7DQ/YYzvjWp6QRtZrt
         97K1ta/WDhlcT2q/w2XsxoZbi/BvyyGtOoahjbXNEZoueazkbU/V55I+0hd6AL+ROr4y
         q3ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684697797; x=1687289797;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3c6yMNCBo2Th5nKj9JcDZUyMz8f9ppKaXvygn50ATHs=;
        b=jH/F52jit5IFUubko/kuCBl1ulCuUkNhXhGKt+XOgoZVLPcKqDNweTcg+8nrPk06Ny
         nTHapKwufxO2dOK1QdKAlEopWDQl79mKJRsPJwJB7NKgk7m6viqd54TIOpnrsUgiJ0p4
         CSpgS+SDQkmoVay+NIvA5bysCY3r3omnp0sM4e8v7N368Ad0Ih1UB9lyf6C5rar5OxJy
         G7GUHDR1MQg0BtwsFniQ7RxbRFNedh85Bg7A0WXR2KXYShx8XTKxEYNi/OdcZV48Mxwb
         06hY2o+mQ1GgoW8G0HVehnKho5EHJPu0MkZZjT4WJacnlw3DnAEjF+chFdzq17epnusF
         eNTw==
X-Gm-Message-State: AC+VfDzgNBVtE9tm0ddPr2aWHTlXhjNAg1NzdT7yLnAKcH9DxC1hFehC
	Ww9Een6GWXee4DabfaGzPt4Nmw==
X-Google-Smtp-Source: ACHHUZ7Q7JS3j1fRbzIwHuEKNzn6hQJqA2wg2j2HTTMLGlbAesvxtukiWmQ21xAfg4HKGQiPql/ugw==
X-Received: by 2002:a2e:8410:0:b0:2af:d2ef:49d4 with SMTP id z16-20020a2e8410000000b002afd2ef49d4mr628046ljg.1.1684697797602;
        Sun, 21 May 2023 12:36:37 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id q4-20020a2e8744000000b002adb98fdf81sm830009ljj.7.2023.05.21.12.36.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:36:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/5] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: add sm8150 USB+DP PHY
Date: Sun, 21 May 2023 22:36:31 +0300
Message-Id: <20230521193635.3078983-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
References: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_123639_585298_FC19A017 
X-CRM114-Status: UNSURE (   8.12  )
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

Add bindings for sm8150 USB+DP PHY. These bindings follow the older
style as this is a quick conversion to simplify further driver cleanup.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
index 0ef2c9b9d466..a2ddf718ba76 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,sc7180-qmp-usb3-dp-phy
           - qcom,sc8180x-qmp-usb3-dp-phy
           - qcom,sdm845-qmp-usb3-dp-phy
+          - qcom,sm8150-qmp-usb3-dp-phy
           - qcom,sm8250-qmp-usb3-dp-phy
       - items:
           - enum:
@@ -192,6 +193,7 @@ allOf:
         compatible:
           enum:
             - qcom,sc8180x-qmp-usb3-dp-phy
+            - qcom,sm8150-qmp-usb3-dp-phy
     then:
       properties:
         clocks:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
