Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7049C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Mar 2022 13:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ESIPs1NfEstDKdYLctehKR1ikJb1nhBVT5KM5LFjCQ=; b=KWhe4Xol3zuwZ5
	jti55tQfRO4FwlrR+TiLuKnzR9jmgvsEYHkNLUQUXgH7QIyLUooQZ3tCtOAv/YtHqCT7Tx+mnyOT0
	l/LOYp7ncfYw/L7W6GzQqB6UzEkUIEIJS+STYmCABFVWftMlqocmmIH//dnedhhRAlGOJEyH57rL/
	L4z9Xqaqxj9xBYJxYPMhAaMYEpFFcqaST2LcMHs4SJen7g9S6NKss6sFM182ZRrv1Rr8rp1x27HXr
	qih13BwP27AlRTjJPU4WxVS9fSpVic1bg8D5KC/vqby5Cqu0PcGoM6Zq0qchT2h937Io0Iu/UFWUT
	FnJail96yTCGG2XG8Ofg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWIAW-007sNa-5P; Mon, 21 Mar 2022 13:33:56 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWIAT-007sLV-6L
 for linux-phy@lists.infradead.org; Mon, 21 Mar 2022 13:33:54 +0000
Received: by mail-ej1-x634.google.com with SMTP id j15so15773368eje.9
 for <linux-phy@lists.infradead.org>; Mon, 21 Mar 2022 06:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fairphone.com; s=fair;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QYswGrrTgSo3+1KADXNq6x4Caey9tW5d+t+C0rCwA0c=;
 b=T02RJPNyA5Bdaoq3qoK/0CUOzcxIWP4YhzQOGVdPiyUBOy7unFT0IavfyeEO5LhuQc
 lfQ6JDW3x9IObY++Os8peqM3Bd6UVhLRE8sNpCL3JpfPCquGmsenEkaQR4JoA5Ry5oiP
 /1vBDeO/iYTtjOJk6O1Kn+gDiigq3+SEEqqR6FL7FojQ2T8RXM2iCWhourroosrwIhZV
 a3GI6nvgxE6OFEp6qzK9k7WgWM6H/Mg/nbuoQLj0qfwYoQDajZTtvEuRC+P5l64yNo08
 U3afja1MCPa/6YmV/cdUWn945rw9MkTnDim04cPsElfKIkYSXC6x4OmDcVWmSnr+Laej
 TcGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QYswGrrTgSo3+1KADXNq6x4Caey9tW5d+t+C0rCwA0c=;
 b=l0T2RU4Q4IhhCUo6KNJEWQ2laU2+SFTSqYP65XIVWND6vVruqVC2h0FpSHv6YCHumY
 cOZshKZd9nm0eiawp3penHVTdf/zNu7zz9tL2CGVW7xb62+25emBii0+Kyy82x9tn5gZ
 iFtsy/55qyYIP0ov9TdOLBRqmzCNWynnVAU0Oo3XyW4jMilR/nB4j+k1iEGWahsWU1GG
 Ar2NgP7jBUsbCw6VztB4pnVeC62goce6w1+mgcGAp8Al/LpX5nIZvV7H4Sja2zPUr0+x
 IOcwb82e6XHbD3HN06WPQwkfDmAkzbvp7NPC5oGZaRxmtBQd9V6OuSkMs2DouzlAdl6f
 vSGw==
X-Gm-Message-State: AOAM533T/fwEtgTup7vsuA/XpnucAkRtppZXYj6f6z4LCqg4+Dgk7n+h
 VSPWyTr68VjuYKC5+mzZWkwCfg==
X-Google-Smtp-Source: ABdhPJweYbxlQCN9iSjUXv8HfDwYXIoMzACCIs2xzvq4T0PhwdlYO7uYikzbfQoknng1c8/sAj/awQ==
X-Received: by 2002:a17:906:94d1:b0:6df:8ac3:3eba with SMTP id
 d17-20020a17090694d100b006df8ac33ebamr21262409ejy.547.1647869631543; 
 Mon, 21 Mar 2022 06:33:51 -0700 (PDT)
Received: from otso.arnhem.chello.nl (a246182.upc-a.chello.nl.
 [62.163.246.182]) by smtp.gmail.com with ESMTPSA id
 r22-20020a17090638d600b006d584aaa9c9sm6862154ejd.133.2022.03.21.06.33.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 06:33:51 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/6] dt-bindings: phy: qcom,
 qmp: Add SM6350 UFS PHY bindings
Date: Mon, 21 Mar 2022 14:33:14 +0100
Message-Id: <20220321133318.99406-3-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220321133318.99406-1-luca.weiss@fairphone.com>
References: <20220321133318.99406-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_063353_253263_004D7080 
X-CRM114-Status: UNSURE (   8.63  )
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

Document the compatible string for the UFS PHY found in SM6350.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- add second hunk for clock validation

 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index e20d9b087bb8..5d7417c34c87 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -39,6 +39,7 @@ properties:
       - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sm6115-qmp-ufs-phy
+      - qcom,sm6350-qmp-ufs-phy
       - qcom,sm8150-qmp-ufs-phy
       - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
@@ -279,6 +280,7 @@ allOf:
             enum:
               - qcom,msm8998-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
+              - qcom,sm6350-qmp-ufs-phy
               - qcom,sm8150-qmp-ufs-phy
               - qcom,sm8250-qmp-ufs-phy
               - qcom,sc8180x-qmp-ufs-phy
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
