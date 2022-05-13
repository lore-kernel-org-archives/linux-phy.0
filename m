Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ADE5C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 13 May 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GN2EZaeXsanpVHJapxQkqj9NWKv2GBjYzm2xdwAkFHs=; b=BGKLE65MDvGsgK
	ZFxqjNb4bJ+V9VYd1kGMrEEbjScQ8CxsIl7eEyBXzepP6o6O4gV/J0S6W10rXe3CuxIiLwncx2yJc
	9yjwqYn2/476+PDd0/nUyrIGmZAF6tEa6EjmvkSTxKIrjl/yZxuIABMy6DepQY04YEIfK0tYGE9TQ
	3fBRXg/Cv77cihCDDwV6U5fUidrxoGxmvxBKEFTVOcms0QEWOankHT+D4vBqROq7OKdOnh8mcJLFf
	GJGvrPo2/YZlAJ1KqZDsm5VA4HyBbqyqouDzwTu7REUxMAm8XVXwFSbLkfUzm9BrzoYo4SAIU0Egk
	ohUtJ38m87E2S9K1P4AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npe85-000GDQ-AV; Fri, 13 May 2022 22:51:25 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npe82-000GCV-V6
 for linux-phy@lists.infradead.org; Fri, 13 May 2022 22:51:24 +0000
Received: by mail-oa1-x2a.google.com with SMTP id
 586e51a60fabf-ee1e7362caso12235442fac.10
 for <linux-phy@lists.infradead.org>; Fri, 13 May 2022 15:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Kua8B4khAkEth8WrkaEZqbJEJzxcds7bDIq6qGKeoAA=;
 b=LYr7gat2Rwi6lnoMITQx6Wg+OlJDVuSYTte8B0VtIQPVFl7hehb0Nu41HE+Vp+KDcW
 2LP7wQ018/Gsd1fpYoesJ5oXAoPhBK8PJkSHIrpD8J3guAzwGgqShC8FWrK7FtMyb+BY
 gRrKK6osH8mDnq384UE7AGJymdwVLIRHciOM++u3HrIre+OqQY9ds0vChidWCR6eyYTC
 oF/98ZLYUIQ/N/W+lyrfqG0HqIJLYBSbqq/xsl7+fKUOczJWZEJFs2p8/bnWEi9LoFAd
 F9qrxw/bNk8MvWi7JyrMdMKlTGVo7fqBoX1B0+i8uLUpMv1K9LAk0DG1JCaq5yMFZDby
 wuiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Kua8B4khAkEth8WrkaEZqbJEJzxcds7bDIq6qGKeoAA=;
 b=mfKTFVt9vmMtUqXdQaCr2hSqLVSJlQCkzFZNqoN4h4I9mVQkRQWgIV9XrZ+XauLl5Y
 wRukoOd4ja81eQV+2E1v1x+kvjKseAGYXfUMi2ALWYqZ3BYse9s3JikhxE19/vw4vMid
 ATOaVKHbxW/5UqIten93sgF8TH3R+sCglvFezggaPhHJQ8v8kkpCU+oeDC0URfAIuFoL
 70/IttAFCmhylj9Sfvlpob4WgF5XmGpEevngJT1WlNfYFlphMf5w/jsZoJnwrELxfBKf
 SJ3KAQHgp/zoWZ3+uuPAM1Kt2DAiXFlDEnp/LKpwTS6hoo4rYKLTUCKDo6uFftac9nyG
 udBg==
X-Gm-Message-State: AOAM533xZXJhHZ4QoQbGRAdROVOmA/AUtd9rUFjXpUUPZPt1tmiwj/9d
 DIoDiD87fd2sTZTbEVdps2XjdbVv+UksaA==
X-Google-Smtp-Source: ABdhPJxQcfhFWjlJ9JKtJ3WaK8g8TNN/nzSOi6RPcULRnRIlo3Njy5+RMC4zs4dZur9aiM3tMCxZIw==
X-Received: by 2002:a05:6870:c093:b0:ec:c13e:f938 with SMTP id
 c19-20020a056870c09300b000ecc13ef938mr3712741oad.123.1652482281834; 
 Fri, 13 May 2022 15:51:21 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186]) by smtp.gmail.com with ESMTPSA id
 l9-20020a4ae2c9000000b0035eb4e5a6d4sm1592679oot.42.2022.05.13.15.51.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 May 2022 15:51:21 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: phy: qcom,
 qmp: Add compatible for SC8280XP USB3 UNI phy
Date: Fri, 13 May 2022 15:53:46 -0700
Message-Id: <20220513225348.1671639-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220513225348.1671639-1-bjorn.andersson@linaro.org>
References: <20220513225348.1671639-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_155123_034569_2D8A112D 
X-CRM114-Status: UNSURE (   8.02  )
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

The SC8280XP platform has a pair of 5nm USB3 UNI phys, add a compatible
for these.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 8b850c5ab116..0a9ee5b7600d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -33,6 +33,7 @@ properties:
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8180x-qmp-usb3-phy
       - qcom,sc8280xp-qmp-ufs-phy
+      - qcom,sc8280xp-qmp-usb3-uni-phy
       - qcom,sdm845-qhp-pcie-phy
       - qcom,sdm845-qmp-pcie-phy
       - qcom,sdm845-qmp-ufs-phy
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
