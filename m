Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B788C001DB
	for <linux-phy@archiver.kernel.org>; Mon, 30 Oct 2023 09:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rg8HlYANPc/H84KcejM9R7Dcz5CPN++VgXpGvSSJJlU=; b=LO72HlUs9popqw
	ZCRgaECqPN2PFK+qnMw7sQg4GpWkW0X+IyjXmmZIXC2KUgrWqAyEOH+1vMntsiL+9HvYMpfJlPASb
	wuXca5ec/8HKxoFPnboYVlXDO/No3UJ+4nICV5AYOqzm+zYNVRAXgprhW6F/hnUq+NI0G1ZUoLvyy
	5Mazg8JbEug+Mi30ye0+VoKqggYhbe7VmlliTqu5wWw07i/ZEa5FJGEO6cxl2Gw6z5uCZeIwXZVv4
	wcoIGwc7EUh6iNXZ4U/pSOlgHB3qDEx+AjKYHCwBswUQWeOBbXTnX+PNTAVoBrpNDiQdFsxQS/B4I
	EOOcePzwSbVSXtCCXhyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOst-002w77-2w;
	Mon, 30 Oct 2023 09:48:35 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOsm-002vxp-1N
	for linux-phy@lists.infradead.org;
	Mon, 30 Oct 2023 09:48:31 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40859c46447so28375835e9.1
        for <linux-phy@lists.infradead.org>; Mon, 30 Oct 2023 02:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659305; x=1699264105; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FOccD0C7edPjnKtGGV5EOipOupKgg2TlBe26/J19sxo=;
        b=WUD0+iqIN3GQuG5JofnHc6F0zpo71U4u6+dIn6P06l9+yjQvufFTs3nfRtfW1sAfFf
         mTAYJCgfGni1l/M2WvTXGVrJkytjbnB4garb3VtzT2PxUAMTpvN3E81gcG/2WOoi7r2H
         /BiCn7SgxKH41qoUSJPka96dwdrVJWtAYL8IboeLjLnXFC4WzIX9q0dsjEIoBsObYvIT
         hp9lWQvae/e5eH5ene674DrdpfZ67qcht3C7124cG69cb9emSXjVkZP6rLeeF3rmml9L
         x+HmhacJNdSiPW0oPmn1PoAtbw1V3M96LqI+z48QivmvPNc255dGkm2ZsGYlvsEgyzHp
         Di0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659305; x=1699264105;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FOccD0C7edPjnKtGGV5EOipOupKgg2TlBe26/J19sxo=;
        b=CVPsL3FK1Dk173kjwQxZq9fqtb79Y8ywa9CSTj10cm+hY77ZCX/kFMViLRhv7iAvb6
         zqPtvOwziReUuxdNNoPjv9sAp8IiJ/dMmMJ+QXBdi/9efmxyoMyFl2N7WTeMtT3fgIqO
         XkcDt2lRPNcdNXCcp8BmES7bit0P9jFQiFAIMPrh894CSGbvb3oF0lTzzmbB40/k4FKQ
         j1R++5P+Vt6CzW5UJNdji5dZE/8O2ICUH3uMzI//ZHynF++70YMRYxRMcPBcyRg1LKFt
         mJ1JK9lv/JdnDrFADl9KzhoHj6pnRqQBZIrHMx77tm3ETnvFllJEd0+l9DeOog9Wv8XK
         oNYA==
X-Gm-Message-State: AOJu0YwmAUPZCeM2TkqMemye6CCpOeP9pRAhcBfYAn7Lf0hIWUOZ6WgO
	oDbLFJSzLDzJxmbr6+UhZrd8xw==
X-Google-Smtp-Source: AGHT+IGeEbNTWBdVG7nxcyNdqEmFTXnEA9a/7+gy33ifKoZavdBXzRu7k87ubtyaY57mzLZM3iNjpg==
X-Received: by 2002:a05:600c:3b10:b0:408:492a:8f3 with SMTP id m16-20020a05600c3b1000b00408492a08f3mr3133346wms.5.1698659305210;
        Mon, 30 Oct 2023 02:48:25 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:24 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:48:19 +0100
Subject: [PATCH v2 3/7] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 document the SM8650 QMP USB/DP Combo PHY
MIME-Version: 1.0
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-3-a543a4c4b491@linaro.org>
References: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1162;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Xag2WDeziAURcWKIX/6NHrH5c9ia6QiWvMigNGbt3z8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3vjxQlmpxIfopW3b3i5aEIiGCfHhCERWz5f1mA3
 wMr3ndSJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT974wAKCRB33NvayMhJ0bHTD/
 9y0AvDTsyk34bvL3jz0F5B169gUc6mtWbjHWMAicrb6f71p7i1MKQk++f+/k/39W1DiS+vPrzDvXLK
 sGv/ZCapf/nB42ze+ITePQgeahiMWBdE4JvLBqqPZS98W+i4gMCRxtaq+6nxwSsC8g3IBnZvoEMkk0
 T7jv9OaanCOX6a/fKCo/NrBUcS8+Y6Y/ecesuk0Jp+N9cIi5spgQvlIuWlPwpGaDBfs9oy+sJ2np8f
 5MAWhxjIzsuMQr/VSC764QrC1TooE/5xcw/WpW6UtaaK4LPcVWgpoQ59+rf+aHZIVMsM5oQVEMIMEb
 F4m7Ba9VE/uFUlCPPNq2KXOeB0ZvvJgOuzzOnQJ8+eyGAYFrEqkzveg9p69KwONpC5itMjjMQ7SY2B
 u7lQzrdnlG6a6387LXxuIiF0fhyeknLqqwxMlFpp4GZR2zaT9Ab94XwTWCjrrUyiGHAmeC4EP+79Q4
 pudJ9CFfm2bB5Usnr+hG770YgsYTJHf211NAcyAyt+3Zodn58ObsopTy9bp/Bpy+/MJ5rvldzrZPFo
 1uyPd/SyYQKcICO6wc6v1V32glJHVKertuGO9eOvvvdc6lZwn7s9JWMKZXgTSEdm238Kjwx6OakdWF
 Xgl6x6YI90s+0pXUBQVWIh4b9VYMU1iu2kktysEVHoymKQzKjz+X7VSha75w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_024828_468198_B2AA1AD2 
X-CRM114-Status: UNSURE (   7.50  )
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

Document the QMP USB/DP Combo PHY on the SM8650 Platform.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 9af203dc8793..ae83cb8cb21f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -27,6 +27,7 @@ properties:
       - qcom,sm8350-qmp-usb3-dp-phy
       - qcom,sm8450-qmp-usb3-dp-phy
       - qcom,sm8550-qmp-usb3-dp-phy
+      - qcom,sm8650-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
@@ -128,6 +129,7 @@ allOf:
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
             - qcom,sm8550-qmp-usb3-dp-phy
+            - qcom,sm8650-qmp-usb3-dp-phy
     then:
       required:
         - power-domains

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
