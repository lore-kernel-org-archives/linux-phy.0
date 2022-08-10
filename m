Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 985FCC25B0C
	for <linux-phy@archiver.kernel.org>; Wed, 10 Aug 2022 04:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKi7oSw/xG0q0E6NeY+o6U06DiFzWYhHdwn/ZnrlXlE=; b=roBe+0exJRSrpK
	uhhexfFuLhLpbYyMXANvLOCbp1B91S4hRKLiHpEK5522FESzrVjRp2poFy3zFFQ4UFf8p9X4+YoSa
	Wa6AntRSbSfbOhRkiPliUObTuwc0a7zmb6RVbACzdOCb8GZ0lIWzXNADVu0umrN8F76zHvkA8+I0+
	dX71lctbCH4IIcvk1my+uoeg7jNUKseQpIGIJC37XgFSzlRiokb8gLXjI52YqtRZWhvUpohTLFcfo
	fldMeuV1RGefmu3W7EA4cH+f0zk0KSnkqZjukN9iiUOnGIpvO+00uHlmiJ+bLmEscXcvzZ+7mS8QI
	1y0GNNlBVYQXqJgsai5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLdCp-0096xf-0C; Wed, 10 Aug 2022 04:20:31 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLdCl-0096ux-Hh
	for linux-phy@lists.infradead.org; Wed, 10 Aug 2022 04:20:29 +0000
Received: by mail-ot1-x32f.google.com with SMTP id a14-20020a0568300b8e00b0061c4e3eb52aso9855146otv.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Aug 2022 21:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=NJ4wYR8zqp67KyZb/vxWvGE2htfMdPrc0+SKyjTL/B8=;
        b=H41UTue3t5ek2dGF5AGZNV/7/59dNzBMFItqwT2SN29PsBBt3MaMIvU3h7/xU/KGl7
         4UWuu+HB83Z3sWkRe+FrMUDm8Ga+Yd4YTL+7zZhoCYq1nTeLugYG93N7tJpRN4JZT07S
         wEpVOH0cjidhprNeDulZYIrJg9HEtJwXLombBLlpgi5kUeCkmDg4dZupyLyvfeCJZbQw
         lZ3I8mUG5D1MmVSziYra9Z17pPCFdm3iWHa83m9aVbIbugVajemCa+MGjlS+urIGzorb
         L0Jji3l5tveiDlZRcpJ9K1v4EaapYo9zUVtYGGmlcqFRq7blFWvi+pTrVm8MJRFzAYr9
         LXoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=NJ4wYR8zqp67KyZb/vxWvGE2htfMdPrc0+SKyjTL/B8=;
        b=MFdFimtuBwudf7oNROqYsB93VvsYsSV5FikYvLz8XVIe8B3zVGVSfaA7N4P4Ack9Qy
         pUPyhpDP7YKLpVWHZ74M+Y48eim3iByaucoRDGBPDOUCN6T11biuQBsFiFSXa4s6oeHk
         mpuMlpLwVDM1FSkQ0vSJvGsB7SaJGVwx4Y5BzSyP3HI+6OU7k7ZUMCjIrqn2MYCgD25d
         frmteiMIturVppZnnHw4ns1DupfhORhYaNDg5VwbdzLT0S53kUg2AltgXwkHt7uicnZ2
         LECJ9qpqkv1p1UuPw6oUcaFGDfFGG4NR4AEmEnbFF89OLxF/F4sdlN9tK0s4P6zSHuXj
         kcKA==
X-Gm-Message-State: ACgBeo3p4CRek0sKccrDKdt2ikpgThKX1ulk6wWqGZA04V5cdiomY2RE
	bU6Ttrga+zT79Y4bma/PbDqSmA==
X-Google-Smtp-Source: AA6agR5BED3R3XYzgrBxDgGj6zErXv7+kkqjqui9kOVigQoSbEIPHmIlUXdELbhDtw+sZbcrQDoZNg==
X-Received: by 2002:a05:6830:4493:b0:636:ceb8:91b8 with SMTP id r19-20020a056830449300b00636ceb891b8mr6222330otv.335.1660105226337;
        Tue, 09 Aug 2022 21:20:26 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id ba41-20020a056870c5a900b00101c76f7831sm3622747oab.24.2022.08.09.21.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 21:20:25 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: phy: qcom,qmp: Add compatible for SC8280XP USB phys
Date: Tue,  9 Aug 2022 21:23:00 -0700
Message-Id: <20220810042303.3583194-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220810042303.3583194-1-bjorn.andersson@linaro.org>
References: <20220810042303.3583194-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_212027_621959_CC1465BD 
X-CRM114-Status: UNSURE (   8.44  )
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

The SC8280XP platform has a pair of 5nm USB3 UNI phys and a pair of
5nm USB4/3/DP combo PHYs, add a compatible for these.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml         | 2 ++
 Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 1 +
 2 files changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 220788ce215f..d8a9c205f039 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -34,6 +34,7 @@ properties:
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8180x-qmp-usb3-phy
       - qcom,sc8280xp-qmp-ufs-phy
+      - qcom,sc8280xp-qmp-usb3-uni-phy
       - qcom,sdm845-qhp-pcie-phy
       - qcom,sdm845-qmp-pcie-phy
       - qcom,sdm845-qmp-ufs-phy
@@ -379,6 +380,7 @@ allOf:
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-uni-phy
               - qcom,sm8350-qmp-usb3-uni-phy
+              - qcom,sc8280xp-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index b078009ed509..ffc0c5b0f08a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -16,6 +16,7 @@ properties:
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
       - qcom,sc8180x-qmp-usb3-dp-phy
+      - qcom,sc8280xp-qmp-usb43dp-phy
       - qcom,sdm845-qmp-usb3-dp-phy
       - qcom,sm8250-qmp-usb3-dp-phy
   reg:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
