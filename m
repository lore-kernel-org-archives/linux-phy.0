Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 645E9C6FA8E
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iBAvF05qqRWN9q6SXYpIH2CoZPdwckfS9xoiTGP1Pp4=; b=h+/sOoYeBrox24
	x2HBtEdetjvCt5ZeSX37MWsVb218yCKI1vUahGlvVnSdtpZvDk9c3Wt+auxKmMZNJoeQzAYrDgeux
	mnfnZXdp29ZbXeNQj3JVkzRHOnOm3Rr3LV1/XPrXG5JkdlaeRDoPmPSiMhl6setHxCrA/uO0R1joz
	k7o8noJIG4yemxxc0rrDKrLARDfXJdi5Q0EZ/Pmjy0v0Ed7V58cn0vfwJyZe44z5UVqdPPxQ5KAHD
	KNql86N8P5Bi1Hpn/Th6Vsqslx2GDsMbKiAKMtpml/xPk14hFlymBnCxSCcWhBFPxRbX+Ts3HYb6V
	vFNeXdjPbpZbiFqjbh5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdve-00GI9t-Lw; Fri, 09 Sep 2022 13:20:18 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdvb-00GI6j-7J
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:20:16 +0000
Received: by mail-lj1-x229.google.com with SMTP id r12so238872ljg.10
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 06:20:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=RBsLYtteN8YU4lRGMzw9zqgxcOvhZwcGeFN7EX29dmw=;
        b=wjD10bS6c1+eAs2rS7Oi009sgk7M6D6qO3BmkJEeZOXe6yCa3P8KGXMVTg3CY1hWEZ
         o0ASTMt+T0dpZpDZi/pmdcICHLxac7fJkml1yjn55rfpABPxbE+r6AWjih+iLyIFr4mu
         YDbE//j+5K0nZBdRJ1mcckq68GqwYGE3zjbQyA+rw58f9R8vc/6j9F4aiybpBjXZNOMh
         gPqoXIQNA8wg7ooKLsE8pwRhzCjwd+KPbQRFgMIGFKdjxvDzE91JAnY8MFXh9fCVjsKL
         DRQXiAtJUhZ+fGSxTuLo21R7HKuhAKowVFbcvYV7tYe8kL/xQcaW2evu+L4G3BSeSIpd
         z+iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=RBsLYtteN8YU4lRGMzw9zqgxcOvhZwcGeFN7EX29dmw=;
        b=omjmSLpOYsEnIe9AKHCnQWOxgjk1BMbscoXGkgmvz1sJktpeRTnGDa4YGBdYObYIJD
         nriVKXvmO4WSBwSrBkN84qeq0dhFNhbF1Nf891fo0igWi+NqBy5t9CnmyGKHAAfOS2R9
         xvNfWBYKRAx8j1L4r+nHOfQez658rE+AM3bUkOddV5PgJCsCEa6kF+5JJhjEmUVp32Go
         dWUyyYeSWQwyYdvZ0RvZq3KYxcB93IAYNNTy4OVl4d0UnH42gO0pP+zs6Lh502BLtDpc
         O+e9ySNPZefFfKP6T3MOUfUiC5kbxA9XV0XMvcw0A0yYckM5vs9JjHNZeUQEa7+kijUP
         tmpQ==
X-Gm-Message-State: ACgBeo3Mrp5LvqGKyN2KBmO+gVfyy6vBgkls76D6wKD1Udiff5HEOx2P
	nnD4nawMg3GcnZSkPgryk1fQS4iZCh+ZRA==
X-Google-Smtp-Source: AA6agR4jApsSfxkznGesCO5yTuFeo+/mhq+cWUwayQBJ/EfN63EAwZdoGuXFfoDy9tZQIaC4RTteRQ==
X-Received: by 2002:a2e:a911:0:b0:26a:ca0c:68c6 with SMTP id j17-20020a2ea911000000b0026aca0c68c6mr4122331ljq.396.1662729613173;
        Fri, 09 Sep 2022 06:20:13 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v10-20020a056512348a00b00498ff4ae746sm71729lfr.294.2022.09.09.06.20.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 06:20:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 2/6] dt-bindings: phy: qcom,hdmi-phy-other: mark it as clock provider
Date: Fri,  9 Sep 2022 16:20:06 +0300
Message-Id: <20220909132010.3814817-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_062015_285668_FDCF8A73 
X-CRM114-Status: UNSURE (   8.57  )
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

Eventually all HDMI PHYs are going to provide the HDMI PLL clock to the
MMCC. Add #clock-cells property required to provide the HDMI PLL clock to
other devices.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,hdmi-phy-other.yaml          | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml
index 2c21e120ff8d..0c8f03b78608 100644
--- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-other.yaml
@@ -43,6 +43,9 @@ properties:
   vddio-supply:
     description: phandle to VDD I/O supply regulator
 
+  '#clock-cells':
+    const: 0
+
   '#phy-cells':
     const: 0
 
@@ -113,6 +116,7 @@ examples:
                   "hdmi_pll";
       reg = <0x4a00400 0x60>,
             <0x4a00500 0x100>;
+      #clock-cells = <0>;
       #phy-cells = <0>;
       power-domains = <&mmcc 1>;
       clock-names = "slave_iface", "pxo";
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
