Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5086C00A5A
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 22:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMMi4B5lmzRa15nPr/OkVNER20fOkMhcD8wgucKGyaM=; b=ocUm11I35LQrVV
	gH/KXjZLwo/mpSncFZlWhwmdL8ffTxUGDEJNATR98FueKgsT6g1ZJTjr0+4aVK60fAAOJ1ZNT3Jb6
	yV8a8mR6ZoCZtdmkTSOI94IAvyEGkTgigSFf1XCSEEZWwaqNBQDzGW7EvFLSJ5e01pfiDXUbFAtlR
	I4LeSCLXkJel/k+EkBA8ll2+CEJXSJzOozQTB8OD8Dh+AY2uBWOTCuSQ+m/zVhM0eO5f4L0hcaS54
	RIPnuU2M0u0Ye83rZw5QwbV007Uxnh6PAa2FzskREJYxrGe6GBJjbBKtyGJvfsiYq1gsU0mjkFexK
	6OZCkADVbR0dYblkAd4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHueW-00G8n3-5C; Tue, 17 Jan 2023 22:42:00 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHueU-00G8ls-0l
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 22:41:59 +0000
Received: by mail-wr1-x42e.google.com with SMTP id b5so11001244wrn.0
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 14:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r70HIPPoSUCJDW7BtmV/6Lm1b7r37Y3H9xwbUY6W4Xo=;
        b=sWrmfqJ27JEVuWH0BM6QD9/vCbZOknUOQJfd/fNz1Js8TPqGfsKheapQBjql2tTcHs
         1WYQIt1e6y+S13Wj9k3Df9691P+Cy1uFYLfd1R++0y9VGFbSBCCDGGxdnHhtC71wqL23
         oqyPwVcg9Yu6SXGX/BfJrBRftccHyOY/T8RIFzyh9Dl6fUK5yRO1B4i+vT+tPugI4zOc
         BHKsemhS3tgYT7EITwJ8JbADWjdlSctyCTPtvUMBoQLKKAPFNRw7L6hhq1VwJQhU+ipR
         2uVuceaavI0cvLloEKyFDB8ZxeLttkVXNBANkbgFg/ACzHy4PZWVCA9LUCBQlQgYxwK9
         sySw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r70HIPPoSUCJDW7BtmV/6Lm1b7r37Y3H9xwbUY6W4Xo=;
        b=PUN6XxSccq6bV3cVDm2fhv3ms8PX+7A+7G4onZW/dV2ZVthG2Oy4bDssh75tk/KxFA
         TDLgsg1AlsdbuMhF89rRo2buYKGGE9RCIRdXXJ7Nijh/hPcUDgejAaFZllnNftF/peF3
         T5o9XoM94GBYkqCFsJDkz3ycMYE7qz52Ax447XLqNVObwqqkY6x3SbERj5zIYmhN2dfD
         Ifk1fHDyGb4ZrPrMPocCZFhTZ9/Jl07mraKsCN/8ED7Sao7cvYqDHSP2qZ/wXKWS8f2S
         3qiBY0oUkGlqmdvEdEinqRnXvwyHjwL10T7wkMbGqBRRXCO0UTcqhaS497da3raxUkWd
         zTww==
X-Gm-Message-State: AFqh2kpkrYLjjPa3MNkAKnDPG6sUeVMrcaoeG1qw3T7kMVKJSuk1aAia
	ldac4/uU/MGOg4KzRq/TeZwJxQ==
X-Google-Smtp-Source: AMrXdXucCp+E/4eIszaPq+GEjiHcs0MuUiEJXTo2i+kwCrqT4EvbEoigyglefocCMvD0vkynn1SgqQ==
X-Received: by 2002:a5d:570b:0:b0:277:2e27:61e7 with SMTP id a11-20020a5d570b000000b002772e2761e7mr4292022wrv.17.1673995315665;
        Tue, 17 Jan 2023 14:41:55 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m1-20020a5d6241000000b002bbdaf21744sm27024916wrv.113.2023.01.17.14.41.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 14:41:55 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/6] dt-bindings: phy: Add QMP UFS PHY comptible for SM8550
Date: Wed, 18 Jan 2023 00:41:43 +0200
Message-Id: <20230117224148.1914627-2-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117224148.1914627-1-abel.vesa@linaro.org>
References: <20230117224148.1914627-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_144158_092411_1C84B474 
X-CRM114-Status: UNSURE (   8.04  )
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

Document the QMP UFS PHY compatible for SM8550.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 760791de0869..64ed331880f6 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,sc8280xp-qmp-ufs-phy
       - qcom,sm6125-qmp-ufs-phy
+      - qcom,sm8550-qmp-ufs-phy
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
