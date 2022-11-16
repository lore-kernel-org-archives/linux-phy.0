Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0A4AC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 16 Nov 2022 13:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sznxoT/Y3EBxjIkV5enVLL02MYKYkDNprzy4m5wZxzI=; b=PHumgBfIIkZccu
	RD3qreDvFMiNMVVND9trXrR5BB6MuNS2fuWDZUDESRIp53ko2IZi3DvjXdtIsb4OlYAEFCmVXETfm
	6A5Cf+s6JXLxYF8xguVhHHeAIFDtbcqcXj9aDimzTiC/BrPx4ZqTZR/0GV2E7WyZdpXppn+kY58tZ
	f7r2oNCsAZ76pB3633LEyZE+w518zIjI6x2a3ZWQQLRGybs1U27NJ2OJNqj705KItRuoTFonJPQBM
	juelEzq8NGwCMJZfeOoSkq354nceepCwRgt7yE04vUc//2lYXTWT12b2fZeC1a7UAlWjCSxxAPOtV
	zaL5BOKo8gxcyeH/jYrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovIGU-003mA7-18; Wed, 16 Nov 2022 13:15:42 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovH7I-003Cx0-Uu
	for linux-phy@lists.infradead.org; Wed, 16 Nov 2022 12:02:10 +0000
Received: by mail-wr1-x42e.google.com with SMTP id o4so29415093wrq.6
        for <linux-phy@lists.infradead.org>; Wed, 16 Nov 2022 04:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=29tsCGJuEUN4XZ/iXoF/gQwu9WmWjy4DDv26eITvgQY=;
        b=f6n3e3EwRdSwVEcT9LSkHfkr8V2Q04EwuYjeYT+ADPTjZ94m+rvJ0F35UOueWHyVbz
         yJwbiNzWWK0vz2Zp9unpHawFDqY9Mq5BpxqtGYGWUf0nkzDCD/EHeVRQlz52s3nXibCO
         itwVTkkzIQA8EyE960IX3IqnLotGtwSH57hPvR81pzLRXpwE9Uuzchd+6jqnZvg9Jokl
         x9yW31WW2HbGU/Xqbv4ecYqkqhVF/8ReoUXRz0+Y7FF+o/VtFujSo00CpBBlN3OtroBD
         80AVkFA6ejSEU2QO3Lhkk0plYFeMUuBkPxDYdSn3wotKTa0XrV3uq+zOprP53rBsCSwW
         0osA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=29tsCGJuEUN4XZ/iXoF/gQwu9WmWjy4DDv26eITvgQY=;
        b=WYICAFs1iCs1z0dO0Ux1JHwIAwzfZLKRUXxCWOef0OarWGMVmy1A5GiNflvMHL40Jk
         L7KLyg+h8WQqd7yFbMHG0JMopv72ivuTbLo0+L2/EdfPCVRrzgTBeT4Mz628IN8dOh1w
         po1mtsBPsM6XxtzuSkQ+ZLjSmGNt4J0as230Y+cjPhjVHqzdqzAp7RJSLlBoOnESNLql
         sdoc/1Au2m6wPE5uuif3SX5tKLUEJZE2lWvdbFuuSWCnZQUovBcH8st4PvD9Ix30LaNN
         cVu9UUbMQ/vVKnrFTrJ1zDT/VKU5nx6F1T/xVSSKG9gmw5DaaoF0OvmnBWrCGtalqFSW
         mkTw==
X-Gm-Message-State: ANoB5pkrjok3b06G482iewWu8wMDJLI9Kfzojwvss5giya6mjtSG4iQE
	1A5qUC0wKv3Z3Ce+TmtWFvYTKQ==
X-Google-Smtp-Source: AA0mqf79a8TCF+Ze96qE5qHGxYCKTidrM3e+XF+CYLCD4TV52wzEcUu0lswOIKV1PE9cZYuj1hx7Fg==
X-Received: by 2002:adf:fa01:0:b0:236:6aa2:12e5 with SMTP id m1-20020adffa01000000b002366aa212e5mr13588312wrr.227.1668600125393;
        Wed, 16 Nov 2022 04:02:05 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id r8-20020a056000014800b002206203ed3dsm15120109wrx.29.2022.11.16.04.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 04:02:04 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 04/10] dt-bindings: phy: qcom,qmp-usb: Document SM8550 compatible
Date: Wed, 16 Nov 2022 14:01:51 +0200
Message-Id: <20221116120157.2706810-5-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221116120157.2706810-1-abel.vesa@linaro.org>
References: <20221116120157.2706810-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_040209_013692_D49EF8D8 
X-CRM114-Status: UNSURE (   8.60  )
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
 .../devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
index 0c6b3ba7346b..cba2a252baf8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
@@ -37,6 +37,7 @@ properties:
       - qcom,sm8350-qmp-usb3-phy
       - qcom,sm8350-qmp-usb3-uni-phy
       - qcom,sm8450-qmp-usb3-phy
+      - qcom,sm8550-qmp-usb3-phy
 
   reg:
     minItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
