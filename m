Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9EEDC7EE26
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 19:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voHo9tOhEANT/8AGbBkIooBPDGT4Frvsl5yWEZWn4xo=; b=HMIfKKoSgBKQHg
	7v1wy+DJyYUJ8X3M8j0Fec+pJ/GjuRYrfsiKqtfVFktig5WatoPei6C6TRqER4GWjmvQ7yVn4tlew
	K93AxxsvnQrwdORVY+LvUmMS+PRoPMvjgE80xztCa08szAKps2dJuBDYJK9C7lvcjTYx3FdwSUqep
	J+PgdWinx0JyUWRPfmtPdbvUVjuYGm7hXnYrfCwSpXWTBE2CKQLJOIaGUbB4xkRoqABOxiYwvVcQ6
	iBPWT11YL0NpBEZWsME08v1Nfqen8ZlvP72wUr3HfwJzCmP2hBDm1DThXyM8ZyjXgOXsN0Dtdnf0E
	ZrjpFLMuAUG2Zn6oAGBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0p8P-004YVR-1t;
	Sun, 21 May 2023 19:54:29 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0p8N-004YSd-0Y
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 19:54:28 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-96fe2a1db26so48713566b.0
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 12:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684698862; x=1687290862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3c6yMNCBo2Th5nKj9JcDZUyMz8f9ppKaXvygn50ATHs=;
        b=tvHalgFJCB9Vbvk2S4Ayk8bmq3aOOvrEUQy6wuBO3aKFZuaCgmGM1zXj4RpfoqB7j9
         E4L/t+l0njcJjsovD8MRdAFPNvjEDOxN0q0mEj/ALXN5NTbxTaL9SEpI2iyX7JAz3LwF
         0k2UYUHwiG1yqTrQ+F0PC0xQSk8+lUHTpw4Y2aSkQ7OZlpCbBYpZ1RhdfiEWHSRoID4r
         N+3eoswa8bjzEkRmolH7EkjwZNH3zvc8T3O53CWz9aAK2DYEjui91Vv1jJ711G6sa0XB
         QyMpqNXUddTY6pOMCxNcCvaNGd6ucXM9H3yNtj8DyS20GmFe5/ukk2G/LV56E41Dc6FL
         Qjqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684698862; x=1687290862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3c6yMNCBo2Th5nKj9JcDZUyMz8f9ppKaXvygn50ATHs=;
        b=FZBLoi9tFG/J3Q9k+0GNS70gePVV2z6lueyNMYfM1fKCtRyKy4dc3TD6d9volNqXZn
         99IywKYmD79YNloa0px+9qITEXdpPcJiNSSntl8bTY9po3OKU+vYIzlX968WzyDDcOv0
         hXmB0wB1KF+duFRUuRU0UmpvQoPTd4iPXnIBRmW2AvJVNQachs5e9OpvejRn1mOQ+N5K
         8667aiksP9J5UuBFswR/8cYoDX8fXby4vxptzZTuZkMrbQiCpVNsqzfoEKOK7edDb/Pd
         0WsRrjnRVkT8l9WZNXZEhpV07T2v414cNAKWwdJooOVMe4ohiHwQESttBSvc66qMR/WW
         DcPw==
X-Gm-Message-State: AC+VfDzCa+jZ810/4Yp1DynSwABUd+SCadRm8jTxSHEfs0kPnIOHVJZl
	3SRgnxZU0axEoAE5ejIycF8qeA==
X-Google-Smtp-Source: ACHHUZ4ikYNUesHFLaMcP/hRIarB/KQ5X0fGw5cKhHOyy1ry0G+WKFNCLXgZDckUz7+ihGpbIEMzbw==
X-Received: by 2002:a17:907:d86:b0:93b:5f2:36c with SMTP id go6-20020a1709070d8600b0093b05f2036cmr10395893ejc.61.1684698862784;
        Sun, 21 May 2023 12:54:22 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 16-20020a170906101000b00965ffb8407asm2187107ejm.87.2023.05.21.12.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:54:22 -0700 (PDT)
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
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH v2 1/5] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy: add sm8150 USB+DP PHY
Date: Sun, 21 May 2023 22:54:16 +0300
Message-Id: <20230521195420.12454-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
References: <20230521195420.12454-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_125427_207039_E2B379FC 
X-CRM114-Status: UNSURE (   8.45  )
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
