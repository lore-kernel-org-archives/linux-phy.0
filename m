Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92093C54E94
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDWk87oDFDQGOppDwjjVEGK5V9Tg43bjDRW503LwCJg=; b=VZR03W8W5uj0xL
	01ksCQBlUahpHDi3YvZV1L+k30I0JE4mbTt9yQDRPXvOOs4uWy/s82LEj4UWRrUToL+z5Zca5SVRY
	IcY6Iw1M6YbN7IWF8NgPP47JsidtIw+cUQTX6OOvGA3RkBVk+zizhNvdUHnFhHPJKLa7iVrMzTT46
	FbvUtzUW+6/0J2ZNDx9XM7oM7mzM4UW5KgN6gAvedzcNeKz84WWXDqxdEyhdZmB2QFxwPinJS9/l/
	Hy4Zv0hndGIx0Pj/P5I1CEBDsNtS5UOY0POGQUrzJ8oQuRWuMeqgi+UmthA+KsELiMaxNbT2hPfbT
	gGMvrInhGZQjmFjCiV6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL25K-00Aul8-Uy; Thu, 26 Jan 2023 13:14:34 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL25F-00AugY-BA
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:14:32 +0000
Received: by mail-wm1-x331.google.com with SMTP id k16so1095476wms.2
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p7V3laH3bCohYeyPJkEFuVpf3XlsAopRzeHI1Uj9B8U=;
        b=V63n/+VwNLZ6HZqTwu0QTJZt1Rpblj7GC6EbttSOIUrVRowAM/llOjimnq6m4NC1SS
         DBBTP5SyS8PU/+L5SxRQVIqN/71N9xNfxmd3RXIIVQp/W5ksqa7srafpJFMUgbIdmCti
         N7OGMj163p+LPOz1Sr+3+rFQvw7ceiDDEgmnrtN3Fe+qm3uVKB94g1hBu1FMFaF5FOxF
         S3rf+uGqsCTqFNWdLREmRy+W+X/C3WYXzf9HW7uDe42/WdVn7JKlVUetvU3Qxox8QFco
         iDAvpejQyYWVFR7isQzsSQ19y+m/FxDeHK5j+mM61rEcumqSCVQK0ySZRon8sE9B/U7I
         1C1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p7V3laH3bCohYeyPJkEFuVpf3XlsAopRzeHI1Uj9B8U=;
        b=lxvllR/hp0wA71y0wOD+zB+K6W+Wv82bNQ9M6MeuGSZ0nbA3vCymhwtR2jKS2zyKWN
         RIt9pDUT1hV2n+y0lQepTuhWzXPoR4JTWQhbtJA4+Awxp+kpvY9u8r8XYsIDY03eZavB
         S4845X1S8NIJ9TgIEnWoR6IhbZd7TgHEQK80vT3xaduhzRzdn7ZfaXW2Q4u4XBIKbxrM
         fGfWqKO8TVLLnWRpHQHMI6S31z8EZHsJiZC9b0i7dqsFcdWBYS0oXhEgoRhwuQMrmS6A
         5lQYpMpVxa0hYl/dRgdLPXx+GrqNqZSVaOFpl+uK1bOUC3nqFYD/JBktAHPrxFBppPOI
         eFIg==
X-Gm-Message-State: AFqh2krIkp/iRLEWmls7HVN3NQlcbj+Xn7CLXcO6IxIVz0nB15lhbYYU
	p5sIFVJq6QXFGgOT5YKZBB1DAg==
X-Google-Smtp-Source: AMrXdXs3ulda+XFv55nj2i5H17hvI3boVBI78iBB7I3UMm0dvkNXh8vDVeOztjyX4y9WU/I5L83+Mg==
X-Received: by 2002:a05:600c:2d84:b0:3d9:e8b3:57f9 with SMTP id i4-20020a05600c2d8400b003d9e8b357f9mr36200959wmg.8.1674738863160;
        Thu, 26 Jan 2023 05:14:23 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id 18-20020a05600c26d200b003da28dfdedcsm1719804wmv.5.2023.01.26.05.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:14:22 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 3/8] dt-bindings: phy: qcom,qmp-usb: Document SM8550 compatible
Date: Thu, 26 Jan 2023 15:14:10 +0200
Message-Id: <20230126131415.1453741-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126131415.1453741-1-abel.vesa@linaro.org>
References: <20230126131415.1453741-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_051429_404462_E58A8471 
X-CRM114-Status: UNSURE (   8.82  )
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
---
The v2 version of this patch was here:
https://lore.kernel.org/all/20230126124651.1362533-4-abel.vesa@linaro.org/

Changes since v2:
 * none

Changes since v1:
 * moved to sc8280xp bindings

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 6f31693d9868..ec00fbc06abe 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,sc8280xp-qmp-usb43dp-phy
+      - qcom,sm8550-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
