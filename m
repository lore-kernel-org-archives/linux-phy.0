Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2145CC47DA2
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 01:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTS59BESNjCTNVkHIctKLxISGNgLbU3FWFqWge1rK3k=; b=Rbn1aqvldBZTQL
	1FHB0c4Ph8Uc1gyBKVFavydYxBe02KQV626NjCAwhIZwfPs6uetKpzR5Ujf1HYSNT9xwuzi4nm3vS
	Yxy1VKQ0YJvqqJwU4bP1Fzf1x7/Jp2fEEKuVdCc8MhaOZhvicSREa4t40oMihIqa7iAmj0kGJfQc/
	oeisd8KnkcC074uoQoC2BAoIXHXrYkD0kKhAoRa+/oIYevaJvbi5iuOIxF4rDG4GFqX51tUgD2sxw
	kLJ33Xcfz/ADCERtBj05jlkNylImE9RPUsbT7QZlN/LGb6X55DgRiMVNd9aSwGvCkY6Bxe7+/+3xc
	PAkbzzz/pNZ5BR8VfX1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXz8-00AeD6-2b;
	Tue, 16 Jan 2024 01:11:22 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPXz5-00AeAD-2u
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 01:11:21 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2cd8b64a52dso48498661fa.2
        for <linux-phy@lists.infradead.org>; Mon, 15 Jan 2024 17:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367475; x=1705972275; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gvN59bcYauRfvTOIrHhbS9eyPkcywNo1pcI7+S2IrzY=;
        b=sXk2tJj7tYWxrMrE/Q+TG5Z7/6qD+G/s9CXZoFFSlYH0aGtHqSoq0K71AtmK997XZj
         PPsEJu12y1MHY2C1tO8ZFM6bvIyZEWcgtfl4ZcV5qYRKkd2BZbgoAoCVbRgQqvYyi8Wt
         4qGnCcmmDCLj9dTYmatpsTTZ6PZXVuGft8UHNYfWdYN6BI9fMfreUOFjyp2hMJhfEc3n
         /VhZore3BK3MhYBOTDdxYLho7wKBP2KqXMGLLugb1oMf9vbF0bJ/hoCfy3e/vIJUXj5R
         1w/S854+D/h8sigCvSYmHzZ9dv7+nv2Dji+4Zn0f2QQu1LoQnOPxoo9Ak+f1sWrcHIWh
         d+uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367475; x=1705972275;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gvN59bcYauRfvTOIrHhbS9eyPkcywNo1pcI7+S2IrzY=;
        b=Cw9jPMJnKoKy10s08WrMZmyhq3khrf3BE6yrMtw/dXAAdZyUQ7jk+wroXqxlG3H41C
         CRutF+vZGSojsF0cPbP3gIWBBU/oTp0DLTvnGS+W3I8HO7P81kzuzryv61h4ewJiLBUe
         39tSaXRsdV0Ds3KjTLwGL5sBqJpDoZvQE62lMvV4iG0Eq1Dh5kEETYzal6H+WyXq7ssi
         zph6QuwbPruiGdjkgt4iTMEtHfKCtwi0zNfX0p67qpTQqv+RzZaNGGG/bT4iri+rRi66
         wBZgkwzHVan2+YEJ8wX83ji5iRonDq3J9hVcnVIyoJt2tO6RRAnXffRzEEB4Uv0ltjx7
         yiMg==
X-Gm-Message-State: AOJu0YxEIerIRCEUoq6BUkdr1bBdQ0Rs+wbTR5eHrrjRg4ZCRaf231rO
	I5pb4LSdqEVGZlmlSrLssZSFO82QHBieCg==
X-Google-Smtp-Source: AGHT+IHuLop8vp8Yhjr/JyMmyHuy4+5jnRd9Vu0nqA3dQer4A3K45OZgXQ7xEchn2oUM8YV8FCOdcw==
X-Received: by 2002:a2e:83cd:0:b0:2cd:7ac4:f9b7 with SMTP id s13-20020a2e83cd000000b002cd7ac4f9b7mr2863336ljh.4.1705367475387;
        Mon, 15 Jan 2024 17:11:15 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id q15-20020a2e84cf000000b002cc7a2f7a9asm1513414ljh.98.2024.01.15.17.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:11:15 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:10:55 +0200
Subject: [PATCH 1/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: support
 SDM660
MIME-Version: 1.0
Message-Id: <20240116-sdm660-usb3-support-v1-1-2fbd683aea77@linaro.org>
References: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
In-Reply-To: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1027;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=zYn9443fSl+U0zoJ7ooRMTFtK4x8618NHGGtAH7cW2Y=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+rS6xs/CbF+t0hhSvU6EK225eV1lyWcPFNdmVq2n3eOU
 mMMmyTYyWjMwsDIxSArpsjiU9AyNWZTctiHHVPrYQaxMoFMYeDiFICJyE7gYFh0Ysm3Hxr/Tnzu
 npB5fDm/tLdHwd9sW44/T/UEt2zi+m7IXFb6J0lxtW2lyOL1m+KK1Rs4qxobzViyb5Yqd67ju10
 9N9zUzL57fc8a5rjUxmX5L8SVjCexPbiVr3TPK+5d1ssfia2Z+aw729oDkwuST7UmCjom81We95
 /KdOBO9wGd/9k/z4VvW3uv+a1g4B2Zux4s06QWTXvr3Js2i2Vyz0SzyWG7H5gunMUQcXLdhd9qJ
 kXyW7ueKp4U7HRcafCI/2SjEw93W+yMJ3b9PRLmKVeuf2p8lHT2MJNpY2nTN8N+b45ddp4tGeuW
 HlFbk7xk0R5WTg2Bh6FOR1bvvMKwzqyHaWKBkLFBceZxAA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_171119_937036_215A851C 
X-CRM114-Status: UNSURE (   7.42  )
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

Declare the USB-C QMP PHY present on the Qualcomm SDM660 / SDM630
platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
index 140843347d1e..f1f4e4f83352 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,msm8998-qmp-usb3-phy
       - qcom,qcm2290-qmp-usb3-phy
+      - qcom,sdm660-qmp-usb3-phy
       - qcom,sm6115-qmp-usb3-phy
 
   reg:
@@ -95,6 +96,7 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-qmp-usb3-phy
+              - qcom,sdm660-qmp-usb3-phy
     then:
       properties:
         clocks:

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
