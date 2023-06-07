Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A7DFC7EE25
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 05:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EfhRhX1qpoIItlR4H9WaVXtj2bqTVCqIoxP5F4eUIoA=; b=zkzW7gGdxNwEN8
	YmKAQsy/Wp5/SpFEC5oRQSqbGT7JGpRH54hZVuD1uhghV6QKIHK8dZdMVTjL+btGcsEGGrlZZlA7Q
	9py2Rs3M7X/h/KFGnjmdBXtQGj+/umUbp6CXazECdzw7FpuukUNwNvb/RDNVyytczzafZlECWPLst
	hgkszMIXTCP5BThMMbFkDspJIjWs0IswTrapoFngSAAUdptr2E/+wcRruIjfT5T6YLtKr4hRq0T9v
	j1czyY/OV7e63cUZbhSGLa2bTr11khjeqZEOlYhG6UhN6XYwevWzWMXl79ewvxgYu+sZ0DXc/Dp75
	vQkTBt34xYY1IqE8hNqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lHl-004MOk-2K;
	Wed, 07 Jun 2023 05:00:41 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lHi-004MKr-3D;
	Wed, 07 Jun 2023 05:00:40 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-6237faa8677so47843536d6.1;
        Tue, 06 Jun 2023 22:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686114036; x=1688706036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=InNCRBFCVMAHRg7WiAegvwd5G8nBYWhLOZCACH97Qks=;
        b=NjQQi6X5A0njTI5DDSxjm0LWsJUyKKR3vJn9jnNOMjq+JnQWy0citPCe7DoOZxbWg/
         jenX6DtpOzlBSu+C4vPZl+MQdwP5EzCHnLNU1bHv79xUm+4Rvj+U0koigf90P1B6RFvv
         imwFm8/60luDl6DYFGpko6+kWbk8o+ubeQF6vGgtljOc7bTAHjVuaMbT9Iipax0xH/Ze
         p88qsHXfLdaWgpjjiaU6Vkxm2xVv8AkaurWJeCFUgAinIPNmibHFHd7ZfFq/xwYXaJVE
         S3K+QibqojhUy00hTBT/rpieqZxAwrKAbNw8/VF1fGUrnASi/Lf86aKB59GFfeufKHWC
         cJFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686114036; x=1688706036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=InNCRBFCVMAHRg7WiAegvwd5G8nBYWhLOZCACH97Qks=;
        b=Z4CWFc/I9idCKnvoqYstc8mtdjBILkQsnbzWx8ESIOk8iMmqPQvtus80goMmlwg19Y
         rQw9EJQ546gKLAEtOw2HpoHWLn0Sh00sSZ8KLBd5c1l+OMoD113IpN0q3DGkWUdOB2FO
         MAkNg9D/vmiu3CvzbSGyflr+P2FNaF5pEe1XuN7duSsqUHusMORjWy1fWP+O/EswZSIS
         OBTw/vVj2OxAa/VOqxRvLuNFodTTyB75aPFER22CP82Ckdt7Gn3/qmtPoD33nJpT0eqp
         lLCHYFpO9m4CjrihhJ78wR6vA3hr0AIUAdfyKwQqTy6OeAMzI76WVmzIELhlVHbCPdQv
         CnXA==
X-Gm-Message-State: AC+VfDwSEuwNQz178m5UuAkieag3aDXTIl8cipFsi8iza8bgRTmnJWGC
	ImY7nSTiC4ik0sOdsvavX44=
X-Google-Smtp-Source: ACHHUZ67ua4QqB8D/EpRugVFld375BJ7JpcXkvv7idb/0bZDgZBksaFRzAEA9X39AnUcgtAbqa9wTQ==
X-Received: by 2002:a05:6214:2124:b0:61b:6fcd:34ab with SMTP id r4-20020a056214212400b0061b6fcd34abmr2570897qvc.0.1686114035697;
        Tue, 06 Jun 2023 22:00:35 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:c358:f4f2:89b6:ca7d])
        by smtp.gmail.com with ESMTPSA id m1-20020ad44481000000b00621430707f7sm5848980qvt.83.2023.06.06.22.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 22:00:35 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org
Cc: Rudraksha Gupta <guptarud@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 2/4] dt-bindings: phy: qcom,usb-hs-phy: Add compatible
Date: Wed,  7 Jun 2023 01:00:21 -0400
Message-Id: <20230607050025.86636-3-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230607050025.86636-1-guptarud@gmail.com>
References: <20230607050025.86636-1-guptarud@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_220039_031258_C8E48DE9 
X-CRM114-Status: GOOD (  10.16  )
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

Adds qcom,usb-hs-phy-msm8960 compatible

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
index aa97478dd016..f042d6af1594 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
@@ -13,7 +13,9 @@ if:
   properties:
     compatible:
       contains:
-        const: qcom,usb-hs-phy-apq8064
+        enum:
+          - qcom,usb-hs-phy-apq8064
+          - qcom,usb-hs-phy-msm8960
 then:
   properties:
     resets:
@@ -40,6 +42,7 @@ properties:
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
