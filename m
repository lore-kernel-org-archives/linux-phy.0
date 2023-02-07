Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16946C64EC6
	for <linux-phy@archiver.kernel.org>; Tue,  7 Feb 2023 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BSaHtH8vRIoLvGJJujFpd5Ki1WU64sTss9idIdN2Zw=; b=jVSsHP72AQHWKA
	Cp3hFw3IipvWsJtzkkn1tMwSyc1OZzy+aoDye5c4YAbrl/L2jyLl+q34SnX5zGuZ2EihIgPhWdLkI
	XQ67WFj/pa3W6nbkWRBCOd7XLTESI9gDXv6kfGeRhf7zOAuLOwP7n+aY20SQdYiim7LnLxVSouzWh
	VO+tiTI6Acx9YptqcZU7M+em6PhB7XT5H2wBfZHyjo0rDzy6aEOnmnNM9CC0KxO+wLTRZFuLWMXKq
	7mISLdVzVil6V+RHpwblsRdXF+PCiJaaeheE8y8PfLL/EulAhYlRgnU51B7kmeboXcjUuFNFo0UFD
	TGx9MA/z4/6EDmber4zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPMLF-00C0b4-63; Tue, 07 Feb 2023 11:40:53 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPMLB-00C0Yv-FL
	for linux-phy@lists.infradead.org; Tue, 07 Feb 2023 11:40:51 +0000
Received: by mail-wm1-x32e.google.com with SMTP id l37-20020a05600c1d2500b003dfe46a9801so9732334wms.0
        for <linux-phy@lists.infradead.org>; Tue, 07 Feb 2023 03:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TxBtF1ODPOfrnP1uvkmtykMhTcc0CM2qY3ptrcM0tQo=;
        b=DAFh39XfA9JjnQDq/uKysmd+vXgWAUhMx2Mk+bDCWM8/x216dDgDSOOBiK17ArSL+z
         jsKC4z9SdecAc1zUcGM/3HHsm4+h5FBUXmehi13Nqxz80hI2X+R82I2T2CZWPoh/0Mpj
         T8x/moUuBMbabgbd1z1AaW8V0GI/KytMa3/TEVaW5zvtDvHlBADIQQ8/JDuFBZLLgeLj
         1VJf3+4N6JOlslL6SIHbXxUDRFqEEPRaE7skgjksEh3mxv18sCK0hmckewV+o9JKfEPj
         BEkOruFsByEJfdJIBtvXPrn/+EWX69mmqamIFQFJYMcorHT1wXaY9/KPWBzwS+GN8p4c
         3XJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TxBtF1ODPOfrnP1uvkmtykMhTcc0CM2qY3ptrcM0tQo=;
        b=RUHmdqXsmbVpNStGpvXdj5rapKzGqVh3aS1SXbnT5Ir0WW+5AfhNpQFIlj3h9iqd/m
         XKynZgv/0+4KfbsVpdUIsfs9vCzv5lm+r9N8Y4YVdwDnuggxAj7NPzpNPYhE6xpbbgv5
         7YGkNRI4S1mp/VJzH/nqRVzZeDsG6w0iMTTJy5Be6aS+B0Sd9M5YhjJqzt41x2IJRH0T
         2oL14U4pHqhXtx5+X+uFAijAfISB9h9KjygdM21EH3Cfj1V1qz/QPBelsc/9DFADgla+
         b3lPWItdzllflL++hLKpQFi7PCcVGTigM5mTgSA/tV/Sg/RS24t+lxkZtkr+7Zqt1xEf
         dveQ==
X-Gm-Message-State: AO0yUKWSDpwrA12rkbJ52vVN/xFRVoiKzvaioIEH1CLD2XM1g2MGLsl9
	wspH1lqOIUa4qDdgUq1519jAcA==
X-Google-Smtp-Source: AK7set8Otdf1st+dq00tU/Rmozb+djdNHI2LVyZrhllm030UHikPlPhdgDKTteBEQPkvLhvix5TCvg==
X-Received: by 2002:a05:600c:829:b0:3dd:1c45:a36d with SMTP id k41-20020a05600c082900b003dd1c45a36dmr1710771wmp.27.1675770048096;
        Tue, 07 Feb 2023 03:40:48 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id c7-20020a05600c0ac700b003d1d5a83b2esm18326005wmr.35.2023.02.07.03.40.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 03:40:47 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 3/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Document SM8550 compatible
Date: Tue,  7 Feb 2023 13:40:21 +0200
Message-Id: <20230207114024.944314-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230207114024.944314-1-abel.vesa@linaro.org>
References: <20230207114024.944314-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_034049_529441_A066B4C2 
X-CRM114-Status: UNSURE (   8.89  )
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

Add the SM8550 compatible to the list.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
---

The v4 version of this patch was here:
https://lore.kernel.org/all/20230202132511.3983095-4-abel.vesa@linaro.org/

Changes since v4:
 * added Johan's R-b tag
 * changed qcom,qmp-usb to qcom,sc8280xp-qmp-usb43dp in subject line

Changes since v3:
 * added Rob's A-b tag

Changes since v2:
 * none

Changes since v1:
 * moved to sc8280xp bindings

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 0764cd977e76..83944959d394 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,sc8280xp-qmp-usb43dp-phy
       - qcom,sm6350-qmp-usb3-dp-phy
+      - qcom,sm8550-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
