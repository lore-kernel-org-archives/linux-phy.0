Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CEF3CCA471
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 13:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5ITV3mq+aA7gfPftBs7klqtgvp19+HCrY6L5E3Ozl1k=; b=ltDVbXH6JMUGKC
	qX8lvb8hWLVYQwi4C9JhTUF24aiMzN2h6zHnQBRG733m/4Ekw+eut3yfVGL7Uwynr+ajMR6uaOW6h
	ogjNZPnwoZIoy5oSWbq055bZev4fcX5OS/rTx8Sb+9z9hGDMkei9ytjlMIbtPX4PIlJKyD9yWR/UR
	ryL8oAkZ7kZqmjcv3TNRJNkaorapwT99RT4FVkVcAnAsavs1MhRCFfxqtnGtXgiN6mecfqX9Z449Z
	ZARlvtblYZkKjs7N67VVyfNwash1NzjubEbc06cgGm+B1J/n2ZgT/S7WGRrxSWKVzpyx7hPEHRRy0
	65KBB3KMMRTT9cBx/5hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5ld9-000000007Os-15cf;
	Mon, 06 Oct 2025 13:51:59 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5ld7-000000007OX-0pHm
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 13:51:58 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-46e6a6a5e42so25120015e9.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 06:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759758715; x=1760363515; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Sl/Xsdwp7DpkeGa1ImOkGWOTN5ZyWaGLBtET9IVZcxU=;
        b=GzTQpIFq7iPDlBgeei/5dHqiz5E4soCrFQydJBCyMc1UfiVJxI9IyFt0v8QwYxlrBX
         Kt1d7IB+QsY27PVeyqxPQQgpHYtJPsGsbtOmFjnfVU76HuRjIpYb1VE1/4AxHFxHy1eV
         hImWtAK+o9B504/xDZj6j86M6ARmrfFKZbPrNiPW0U/8ACysNKcXlevyhqUqRkheDohn
         AW/Xkfr3Z/JMd/qCMFMkeI4bzoTiq9Ym5pQfPW6e7tMx2ZA8SXDBSddW8J4eYaPj8FvN
         uUAzgMHoGmgqOQe2H/Zzm8sIZNo/mI+Os3sVULf8oB0MMbznUSzHub7+CF5pDwpu71KT
         cXow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759758715; x=1760363515;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sl/Xsdwp7DpkeGa1ImOkGWOTN5ZyWaGLBtET9IVZcxU=;
        b=dgPyNqtP01X8VxP9VECpK0orTMITJbmi1jTTsRjw5bfp5OFMqOQQ90yMlAhmYHCebt
         xaNotNz3pp1TYUZNeGaKG4R4M0BrypSzA/NiBrTn0TOceguTOpQ/iAlvFKyAWYQJpp26
         ZByrX63WRhhufm7y6YY2OWQXJpDIiJrJzpMKur1Qxzs2ODJjTZKyrzID/2vfcgBiAT+0
         J9yoDom0uMfcfkhiQszzokZSyuCpd9C9ZUfNUBbrZJJ/XPouOWgOB6YDYjkdxraFSpwp
         fQhaB+Y2zGsF/RRg1uKoHBLfogN4LaS/tsvxT3C0AGYt+Hhw9/3TtsthsPRVkv2k6QqM
         WuQA==
X-Forwarded-Encrypted: i=1; AJvYcCUFxywUg8ZiraIUZq9CyKA53fcljJTee6B0otTdv+lB6DXXOrtKjow2f8YE+xZldeRRF6mcNQAI0k4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwvYnpQeARsJDomO7yXfz2cVgY8HuozxAVMK5wD3zxQsZi3/bNP
	GPKirhnRXOhS97fVOF6dafaSNJ9Z87sxS3djHcie+pkMiofEPzAqBFkAy+biBLFtlsw=
X-Gm-Gg: ASbGncuRAvERW6omrosqlyDUG9GldJVQINak8Be+h+Ls4Dw0l6du5chmhoOYFI7hxGO
	4/anDbuRBqKZaMzS0pAXJ5B2AHud0EKajm9d68m3XLGFqexD3TlmcjTPK7bt3U1yIxQa2GrTc6e
	9ITiQV+DDCjggcaCOMRQIigTyVzl4pF7wxQO1urbtdgsnKat7YIi5S57xFzuBfVKefnqMaJe1AQ
	vyFsGLwvX0HGXiaVHUYDrWR4wWgTpGVz44VvoWyvfa8xM4xK/s6Abu1FCnV85sKM1yYOy7hPl1h
	pBU2d3o7814rLyN+/lu5+3MqcX4erPWMaj+bHpdbj+Q1UcM0/pBQT3MD0E+AndU6lLWG1+6L+U1
	YF9kxSF1WO8djwtUn9SCtGibrXhGcoRjOTW9s3ZDFY5cR1zUHxqySUQ1Flwi2Vyfckah4sjE=
X-Google-Smtp-Source: AGHT+IHf0XVleDEkE0BhbbDIPcUJVH+5v33yVTTQ/TAofs4Bb0q1LMt4liHnvPnDbjjsIjmsonEo/Q==
X-Received: by 2002:a05:600c:154d:b0:46e:6c40:7377 with SMTP id 5b1f17b1804b1-46f9bb3fd36mr29299735e9.35.1759758715096;
        Mon, 06 Oct 2025 06:51:55 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e723437d8sm161373265e9.3.2025.10.06.06.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 06:51:54 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Oct 2025 15:51:53 +0200
Subject: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 mode-switch
MIME-Version: 1.0
Message-Id: <20251006-topic-sm8x50-qmp-combo-allow-mode-switch-v1-1-3d79e7ea6824@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHnJ42gC/x3NTQqDMBBA4avIrDsQhdHSq5Qu8jPWAeOkiagg3
 t3Q5bd574TCWbjAqzkh8yZFdKloHw34yS5fRgnV0JmOWmN6XDWJxxKfBxn8xYReo1O086w7Rg2
 MZZfVT2gHYnJEbggj1FzKPMrxX70/13UDC6M3qHoAAAA=
X-Change-ID: 20251006-topic-sm8x50-qmp-combo-allow-mode-switch-a75e5b55b7df
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1797;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=5+4PJ6jPfemENa4btjS7LirYUE2KnvwhBP+jw2X7dVQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo48l6OT55Ag31LX05Dik6U7flL1LRcECV3P48fmDE
 TId2NMiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOPJegAKCRB33NvayMhJ0c75EA
 CdtICwvFHqp7DobK5NwBTBXdeEWfziO1B5o6TRtlyFfartZTPlBciNHfL80Iyk3Zvn/Bwvv0lZjqs7
 Pgs2/TMlsScDFroBe0L+wPbPF95GXaUg5lYogAdm4a7nHolbsswGYikugIT0xHxghal77W+WeHSb6M
 mfnnZj7Wpty/ilqvoyoNB5+Wvb4hGv1hAxwx0v0J6D0HGtJ64m17JV3+7Ioy1gW+3PyVsTTFAHQTr8
 +G5pSMtZzqf963pvnhRPCaMqhGi/Gb3Ks/yOm5rzOJh7gvkrExraW3ACooQoq7TKK0YF42oyK4z8cV
 sP8HdD8lxXXCUU3LiLHlLsCIZyJRD54Fq6pGBS2fP23+ZxZfRByCr0DgyrODdTr0uSdVkrZk5z4VYY
 K9Dw80O0MphGGbHXEmOMTwnNwYUme64EXh/IRbZseeWhVpqHdjYZAkfQC5Bsfj57OfvgBS+7nOtLjj
 jQVbagl7QvgsmagcI7Z75N7iEfqo1FofHJw/Q5pkQIrXaCL2/HwDUTOAtR7COPcko8wXUqYDLlHpWt
 5B/qXalYhJHanRRQJNDlunY9F02oKBmjZza6cTcDfH27xZnyhvybtada3MhiATJrKqLFWGHppgwbZ2
 //70JOiIQXdWdHNHvdMNmHNQDMhhGdY5nTwtz+Q3W0SCeQ3YQp20MbFgA3bQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_065157_273513_BF8FCDA1 
X-CRM114-Status: UNSURE (   8.59  )
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

The QMP USB3/DP Combo PHY can work in 3 modes:
- DisplayPort Only
- USB3 Only
- USB3 + DisplayPort Combo mode

In order to switch between those modes, the PHY needs to receive
Type-C events, allow marking to the phy with the mode-switch
property in order to allow the PHY to receive Type-C events.

Referencing usb-switch.yaml lookkied like as a simpler way to allow
the mode-switch property instead of duplicating the property
definition but it causes some issues with the ports definitions.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Depends on:
[1] https://lore.kernel.org/all/20251006-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v2-1-3249e511013b@linaro.org/
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 38ce04c35d945d0d8d319191c241920810ee9005..bdf7894ff84869030252f64f20acb4f920fd19e9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -73,6 +73,11 @@ properties:
     description:
       See include/dt-bindings/phy/phy-qcom-qmp.h
 
+  mode-switch:
+    description:
+      Flag the PHY as possible handler of USB Type-C altmode switching
+    type: boolean
+
   orientation-switch:
     description:
       Flag the PHY as possible handler of USB Type-C orientation switching

---
base-commit: 9cba8ad3e538c0d955a9844fbe26a887dbb04f4a
change-id: 20251006-topic-sm8x50-qmp-combo-allow-mode-switch-a75e5b55b7df

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
