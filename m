Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C8F9C54E94
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/G9i4yKYIIcA7MyAVVijZij5Tsj7XrMutCi4fH5bVQ=; b=kDzz1kGUbLMtxJ
	HlAjQB68Bn8AFjPIiurAzVrN60iLnfeNhyrvwTyjx0WlJ3lbb39FdO7LaBOofzo9t44KKoXg09rQe
	Ouy33cjMawZGabp4jpTFmDGAXG3v+PbzRig9E7vLtdRg27cWgaaFt1y74TgUkiYz9nONGvNOmg/EU
	XAPILl/UKfnSOSQP3Fp99TjHUoXrOolHdLpjc2btScTuTFgDaLV2IFIOD0qLDx091njwjFsZ62D30
	emkDQalzCT4haooYgTYali119LvTEWRPHKTc84B6Jmrn+mnk3ibK37NUoEkCCto7W72KOKwTRtYWP
	7avPSFd34fcCeWXW+8+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mj-00B5UV-LL; Thu, 26 Jan 2023 13:59:25 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2me-00B5OY-7F
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:59:21 +0000
Received: by mail-wr1-x42b.google.com with SMTP id n7so1860179wrx.5
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JwXf2047+hi/AeAqI5m/w1YUk4KylbD2BCgLR+1i3CE=;
        b=dSXKZWJcgPLKm97z6OFwwrz6aIf1Vx+18WpyiKVwo8JaUo0wJK8s1GqdhgWKhzJgBC
         Dd0PvI1W3PsQ5JVMvs7W+DpzAqeexYc6SGD5jGkqth4Ui7pQFH5smH+9fEy36obFB5/d
         l1dSrW4jT1WLZnPgX9orXg/0UZ6Sj6/ASatTi+MxOTeyonMosiNIAQIeyREsSzb7Ru61
         22HSlRuwfrXWLO+QDnybLmmKaEvTfTxTt4FqhfqlyJryu0Z/Kna8RGreyZexKrfawqOb
         KHIEIVFj04Arc1CCos8KloHZ5/GSdVr3LnyXk+nNHjKruCDDj032COQjThxkbqXP34L2
         9b2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JwXf2047+hi/AeAqI5m/w1YUk4KylbD2BCgLR+1i3CE=;
        b=KE1Li7omzIDjDX5E+a0bF/KApcGBZF6HiZmK53/lrAdXRNrIeDGbcKftv6Wbi2LTgq
         Axnz+KyCWKA3hsRq0QbOdGntzh2MJv9KwWIDlipeeuArMjRjylMsPH4rnp/+40EZHyA+
         gfha715159NFmRcxPY0BYGoW6esA0qo27B6HaMRlr6b8ZWydarYSm2j6mLpX25xPkWXS
         7MUApZ8HtAH0Z65/9pGa3Ex/8IVSkzEw2IL+5d5yC18P5c3K4jUmDQ3qkdJSPJwdKphS
         zDdmrln9T1IIBILva9hOauNaEfT0jPBIgMP7gBXFcMCmf+qPevh7UbJvSMTciNVzjzjS
         Amuw==
X-Gm-Message-State: AFqh2krD6BgYwW03ccQFzrByIyJNteqQ8BSvqzoe+R/fw+HFABVtFZHU
	5REilWqU/GeDISUMagLJGCmWjoZO8AdmWiMt
X-Google-Smtp-Source: AMrXdXv1sxQUxwm9hhjE+Mpz3hy15gKvu4QtgIEtWRnt22nyf7jTGEttFz2syjCVSyAg6tHiucbzDg==
X-Received: by 2002:adf:e18c:0:b0:2be:493f:3b34 with SMTP id az12-20020adfe18c000000b002be493f3b34mr29630818wrb.26.1674741556524;
        Thu, 26 Jan 2023 05:59:16 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d6d8f000000b002bfb37497a8sm1594067wrs.31.2023.01.26.05.59.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:59:16 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [RFC v2 2/7] dt-bindings: phy: qcom,snps-eusb2-repeater: Add phy related properties
Date: Thu, 26 Jan 2023 15:59:04 +0200
Message-Id: <20230126135909.1624890-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126135909.1624890-1-abel.vesa@linaro.org>
References: <20230126135909.1624890-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055920_293088_67F35440 
X-CRM114-Status: UNSURE (   8.67  )
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

The phy properties are used for allowing the eusb2 to interface
with the repeater, which is modelled as a phy driver. Add the phys
and phy-names properties.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml     | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 49a5dad486c2..3279ed0fd44f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -36,6 +36,15 @@ properties:
     description:
       Phandle to reset to phy block.
 
+  phys:
+    maxItems: 1
+    description:
+      Phandle to eUSB2 to USB 2.0 repeater
+
+  phy-names:
+    items:
+      - const: eusb2-repeater
+
   vdd-supply:
     description:
       Phandle to 0.88V regulator supply to PHY digital circuit.
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
