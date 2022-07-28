Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 717C3C04A68
	for <linux-phy@archiver.kernel.org>; Thu, 28 Jul 2022 11:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yo78yZhXiwmPPIJxbTlY6rhsUjSHNlFG+jlq96MNLXQ=; b=JDIb7m1dqqP4G1
	YBzbnGV7qio+LV/OHsRNi6ZCkJgKOCcGbawYMNtoGkXzCm2jbsJC++aANOnScjy0WbeGW8loNP+il
	DbaTxe7+JXS91NnOlRaooEdItOLjv4doc93jgs8FfaRYlJtUmlnLrYm1Exp7NlDnvmSMAikv89LBU
	5yt7501xCCRLg8+2Nks4fd1KaN/ubcySIY0yWup7bDt/FYNQnIfwdsNYSMPjARSy2GFLia3HpTDjc
	xMh5SUdpL822cw6CdXrILuq3w2whOkmKScBR4n5CZpUzMYr05MEltuoMmvgrPKirDqUkfNHwamyEa
	2WQdhs85pKzqq/9BiSNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH1Wa-008etH-TV; Thu, 28 Jul 2022 11:17:52 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH1WX-008erK-S2
	for linux-phy@lists.infradead.org; Thu, 28 Jul 2022 11:17:51 +0000
Received: by mail-ej1-x62c.google.com with SMTP id va17so2706351ejb.0
        for <linux-phy@lists.infradead.org>; Thu, 28 Jul 2022 04:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=N83H3oNoMy8JHMUEzp53BdqT7RoVkSAfEBNG/wDBUjY=;
        b=KJ31dxfLCoduc3d+IUQ4kYZGBFU9qgO6NpH1r1tQdmXzhJK5hAS1eNJIZ8fxOn8yh6
         Z/o3zOS+FFE35ypH1nQBMun8Bz8pUMKfZBfIcJVmLmVPjVopXYGfiI3/2IVwepuSP7vl
         7KfT2PI0AEAvHb2y9Ds8HoJjVHe51KtmO7msgGIDKqN23xv9lL+b06FeVvdbfnNeDJmZ
         P7k26HyxRYKI5KhzIXYnnrIEB3WeGvZ4ffAzyxb72/BfkzZnCcaUy85az6/U9ZMqFyT+
         7S17hT55n9lmMXkSUeLE+gesvHL0WRIneeZesrWL5SlyEDsukYmopSnKtidq+ZbQlxwF
         KMKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=N83H3oNoMy8JHMUEzp53BdqT7RoVkSAfEBNG/wDBUjY=;
        b=gvA34/V3tMzfw7Y1LKfT2TMPydE9bazInC8v7fh2fB1iFX6ke2Z7hl1SGTcsVyVBUV
         ysQPIjGNLN2IFpxudeChRuXTyAtfgEw3buXtvwYpr9o9FzPecgJe4O2UCqauWBqx+jJf
         M/Qr8FRTOFVXxKkjWGUoEID25zxbjCQUqibBE7ff7wUS70+38ROwGcjF+XDvtXB0qAVk
         XnLcSj2mRn9OXfSFo7Fn/qOlqoTvCGame3gyAPGyar2JvbdfposWCCp9mgGIa9BwELl0
         UbWcuotyjFi632Vd9Kj5LAh4xjInvHQ70t92fgRQoybvAI9mCEToJ4+DhXpooHuDHV2W
         WwFw==
X-Gm-Message-State: AJIora/HgAV6u96pXCOPpYbbJm5eiCYePn47THzu4HdQUw2HhVm6PeRQ
	MFGHNCBLnUO3oLJL/yHEpHM=
X-Google-Smtp-Source: AGRyM1vXSWZ9gd1nNMzlzAm590GmiXr4VsPK8b3CHS3FghSTTsgchUiKEiUDMcNJ+mU0tZwLN7VSQQ==
X-Received: by 2002:a17:907:2724:b0:72b:496c:568a with SMTP id d4-20020a170907272400b0072b496c568amr21163184ejl.305.1659007066439;
        Thu, 28 Jul 2022 04:17:46 -0700 (PDT)
Received: from brandenburg.sect.tu-berlin.de ([130.149.39.100])
        by smtp.gmail.com with ESMTPSA id w10-20020a50fa8a000000b0043bdc47803csm517957edr.30.2022.07.28.04.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 04:17:45 -0700 (PDT)
From: Shinjo Park <peremen@gmail.com>
To: 
Cc: peremen@gmail.com,
	David Heidelberg <david@ixit.cz>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: phy: add definition for MSM8960
Date: Thu, 28 Jul 2022 13:17:40 +0200
Message-Id: <20220728111740.30595-1-peremen@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220728_041749_926153_03BE7412 
X-CRM114-Status: UNSURE (   7.64  )
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

Document the changes introduced by MSM8960 inclusion.

Signed-off-by: Shinjo Park <peremen@gmail.com>
Reviewed-by: David Heidelberg <david@ixit.cz>
---
 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
index 0655e485b..b3075c5ab 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
@@ -40,6 +40,7 @@ properties:
           - qcom,usb-hs-phy-apq8064
           - qcom,usb-hs-phy-msm8226
           - qcom,usb-hs-phy-msm8916
+          - qcom,usb-hs-phy-msm8960
           - qcom,usb-hs-phy-msm8974
       - const: qcom,usb-hs-phy
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
