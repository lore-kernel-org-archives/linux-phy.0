Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C75BC61D9D
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 12:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dx0alddmYnPcCj06OU1O6axXtOc0wjHKIj6PqxLKZLA=; b=KE4788K7iP+oZ+
	JBwTnKyUpsRfLx+HLdqi1FUh4iHwaQaWB49reonqdKtZZRJGLl/9oIhGfsPDBRPan/DQepMKq2AkS
	gCilCDQG2lZ8VBwWHMUbcTWDWucmo3I9kmGrGe2dXPAFcXASG6Y9PhJjqJjd5xSZ7s/GupEvbscZ8
	RvdR23Rutw8Ki+CY82nHY/qPZVId97y/X9BTXZge2Qf3apzaSTylyU6w8uoqgG4kOiDEceVkSnas5
	uOSUP8ZPn4ekBiKgXizsA81sA1WEJXlM+4iYcTcrkJV/3X91n+dF7ru5gAJMYreR2OE3iLDvGhScR
	0N3j6FA6nBFvmOjVQR7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5lz8-001jjr-1C;
	Wed, 22 Nov 2023 12:05:38 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5lz5-001jia-24
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 12:05:37 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-548a2c20f50so4991068a12.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 04:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700654732; x=1701259532; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bymm8ioFVVD3dhLMm++/IzfooTvBAxFVOSgxW0vP3RQ=;
        b=y+8gSAL32mOIhWc5KGaoCF86h+DTgVjLARpuPThD4Vz7H+HEJqAIi7EsN8OMFW0kM6
         WxaCm/oVt6ZvhTT1f+P6/+I7hFnRTRAPjv+5HQmBpgXCBpcxWJMdXa+9I8kTeQeYMRbr
         wBbMz+yR4xcUhWAq+3YjR2U8yLg0l1LkvN7HokDs2THLI+6hEW+yL7BM6+IDvBU0GhO5
         eF/Mc6GgvmGTD61Fk2pfDfk/wNGVHcKSXrf1qjF1TbVzoJZsT3T0nsr0GnhAQQOlFuZ7
         jIMuxogt1f5bHL7aSLVG3V2hSI8n81uRURaUnbqjotTslZ3RShnES3bCmmPs8/iN+kMo
         0uzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700654732; x=1701259532;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bymm8ioFVVD3dhLMm++/IzfooTvBAxFVOSgxW0vP3RQ=;
        b=gss0wjOQi7JTEZS4tQ9iA6NSOXbsx94vmArih81G5Y4rh2I9Lk2znuQhVH4XEkEXoP
         z5Oa+LWPLl3ca3INLyvb3SM6uT4eIh0BzDexCokaAeia+tsCNybVFpL33dqS58Q/AXVb
         w9xPiKjqRcGwApy1W0B3qc5KAvnNLnWrgLT2x+RW8UnNvRryGBPsdluMowVYHilRaRMc
         qPYcHbC6ZoHR6PtxntvHJ8pLSEGejdcwdYxlImjfl0f4ffI6xqrjiw9LKf3Yx/7VEYga
         VzJcoGqJkOEflVc9WcwT56fT3m/2xbPDLTRK2jOO3xwCvtkvR80MEigxbRbUaM+sNmYn
         v2DQ==
X-Gm-Message-State: AOJu0YxOaX3EUYusZnMBonoC866tSPgslaBRld8IKrAaPl4jM+opzzz0
	CLVW2MyVN4YJZihJhaLDg9DCbA==
X-Google-Smtp-Source: AGHT+IFHxGuasn2hCVAywG1/40UpIxj4n1WBlznP+vAlUpkOgylTp/74MdCSST/XfRt80LCtIdPAHQ==
X-Received: by 2002:a17:906:9d14:b0:a01:c04a:b843 with SMTP id fn20-20020a1709069d1400b00a01c04ab843mr1330938ejc.41.1700654731851;
        Wed, 22 Nov 2023 04:05:31 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id kq14-20020a170906abce00b009fcb10eecb2sm4383416ejb.84.2023.11.22.04.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 04:05:31 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 14:05:21 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add
 X1E80100 USB PHY binding
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-1-3f5bd223d5b4@linaro.org>
References: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-0-3f5bd223d5b4@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-0-3f5bd223d5b4@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=843; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Ff/TzKsr6VAOQih2h47SXfwoazhLB1JbDRlKoZrC1AU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXe6HIiyEgikpop1Wudnzf4cIJEHtKgxjpGy7X
 feKVqqm9OiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3uhwAKCRAbX0TJAJUV
 VlM3D/4q4GqU7KihS6jouVBbYJL68SAuWdXSWijx9lTEkmWY1zKy/5+hTyhSCXwTaeK8M4VHuaw
 P6bw68odJ6BAzzfu+vLYtXH3snTgjk0L8MKXKOUrP+ndgFxCHnDi/wb9Xl3nYoOR9JmaQt7J9kI
 jtVER2C2wtBHwH9NI1txuT55Mujy2Kywh4AWzW+UyD/o+5OPBP0pz+UIeH/3bh4fM1o02+8+tZu
 HXI2w0gV75aAOQ/b8l88EI/g3axf36rnevsUeD8DmHvZoiZbBP7w8qvUPqmf0qXyjhw/4wAuOLj
 +cPw5D8rMm3V0O6T3aYnjudWrRBrox/+66kyVlCOHphusYUUGdGaAEHREBqjDc5WPLEecbkLErR
 T6L25nHaIxooyV1JcrSXHsf6OK68JHhNwrXAGuxPvYme6FF+yC/HBi4lKgvYY/gexOgvgEPbSk8
 PrqCB8Bh+UgBJ/566qzbhEKTbAZrwj1hSZ+2yk9qCnTqprP141H0Oav6cDFF1bLIsOIxr804a4y
 +7refNHwhj5KNG9n6fu3RRSnMcye4StU9J7uAcL0onArspVbis7lowN4LWa8VGg59tTOT3HGa20
 skOkzqPLUY1IixvV8sofVvPWhgvviQYtELdFD48RqY0nlPFCu/92D/OPIWMp9RsB3+IvtZpzFhY
 6aqESegYgGlFTRg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_040535_674499_F2A0F571 
X-CRM114-Status: UNSURE (   7.21  )
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

Add compatible string for Qualcomm QMP Super Speed (SS) UNI PHY found
in X1E80100.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 57702f7f2a46..6041d17c0e2a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sm8150-qmp-usb3-uni-phy
       - qcom,sm8250-qmp-usb3-uni-phy
       - qcom,sm8350-qmp-usb3-uni-phy
+      - qcom,x1e80100-qmp-usb3-uni-phy
 
 
   reg:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
