Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B8BCC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 03:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ACUwRypG/utTpKh0fR78rZOvgfwj2VGfGLHpXBvy6KU=; b=jjdEKb4+XOdcBx
	SBge3SDVzYf2kj82gnuoRShd5idGxAop/QEi1NjXvlgL3UMPwW3fnyzCEvmonDlfgPYMGIiSDkck4
	gzlHuS33boHEVudrrIuFh5BloB6oaxDRHqkw0RJStQks9WgSf73iq3aR1qJmmKxOEh+elHVCdhTO4
	kUyY+C1xKWp8oPQSBo72pGfsmEEIhc7kEucGU3pMb9NKjHDYuDJ4mV+WxiXJ/8cSkTT3MiebQ/IcU
	8+HSwrVVQ1N73I4nZwck72uNUSt5XQyZkxYFF9dye8bIx4vpZ983JUH6guC60YJ4LTx89T2ar5QHa
	5QYZYlehdRLOlofKQgeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNRRX-0036yX-JZ; Fri, 25 Feb 2022 03:38:55 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNRRV-0036xT-9y
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 03:38:54 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 j9-20020a9d7d89000000b005ad5525ba09so2762224otn.10
 for <linux-phy@lists.infradead.org>; Thu, 24 Feb 2022 19:38:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nnXfHtdU2dmF+bRIs9i/3/49SI7ksFP4+CUOpW5LUCM=;
 b=A61Hahea1bfexZmqVnRRpHA8a0I90W04xKaxHoyWH47bxY7X0uoVQAnujcpZHA5luW
 7iJyj86bn4rDaf8s5E0PWa1cOd7TxhJq+dlFM2f5ihHxKeZzIWnvHOP1scWY2376hbM0
 0NFqjaJkgUmKx0RUXOdZ2uHxV43Kh60osc6u0jzpGyG0w7zFdY+loLVJ7Nt3se7tm4c/
 2bnnMWrBk7Ex8jFLP3CmOE1WT+YQOFIlpXc6xhGljo0qsQXTlYcyKb3WBczOVrgWz8G6
 pnh788gQkRyb7thgXdDRa/FATjvSi8tReXb5uuoSXEdtiI6RYlrL84igSYXVuzFinMAA
 AbcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nnXfHtdU2dmF+bRIs9i/3/49SI7ksFP4+CUOpW5LUCM=;
 b=NoSekloW4nCnAi36P+m6FFxcYs3nYeZUSfDEEA54CHZLTGDM8puXRrcc6nUHXRGt4l
 ynSzrtWfmloINDETwPgm089vCjY/m9ORcLFeOVgR12W5xnKqaAlnG9sdj/L3tmgamHyJ
 5DemoHY9Cj7R4ouBO3z9YaWwZiIrrPYsicYvmuRrDxOLblfHiOJVRTwePqjSnFxcqLXE
 Ypk6LDlVHMH7+VlC/tOo6fOj4Dt/oxgYpIXtZdlAp3KJLVV+TVDhoktV+EEkNuNHneU5
 9jCtE2tjo3qsVWRnQQXydnt77+gcqucLGfDMbEzB0edDTMD++FV1HWw9SAER1Pu/4Glf
 ccVQ==
X-Gm-Message-State: AOAM5324YfDtIyZIbPkzanZ6BmXkWFOjbmhw/txSxUhfDTqH289V28qG
 wSjC0rIXsHzjDLow4uwxX37YQQ==
X-Google-Smtp-Source: ABdhPJxme5mSkSa+u0Mgeo+AjXvnrc4v2vvCZ10Vi1iBQ9PUoyLFkiqYOSWx1BQ4aWNV3Lbh9gTH5g==
X-Received: by 2002:a9d:178d:0:b0:5af:8e58:9ff2 with SMTP id
 j13-20020a9d178d000000b005af8e589ff2mr2127787otj.87.1645760331614; 
 Thu, 24 Feb 2022 19:38:51 -0800 (PST)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id
 fq14-20020a0568710b0e00b000d4492531a2sm809359oab.17.2022.02.24.19.38.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 19:38:50 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Wesley Cheng <wcheng@codeaurora.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: phy: qcom,
 usb-snps-femto-v2: Add sc8180x and sc8280xp
Date: Thu, 24 Feb 2022 19:40:48 -0800
Message-Id: <20220225034049.2294207-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_193853_430637_DB335C23 
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

Add compatible for the femto USB PHY found in sc8180x, sc8280xp and the
generic 5nm form of the latter.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 0dfe6914ec87..1ce251de0855 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -15,8 +15,11 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,usb-snps-hs-5nm-phy
       - qcom,usb-snps-hs-7nm-phy
       - qcom,sc7280-usb-hs-phy
+      - qcom,sc8180x-usb-hs-phy
+      - qcom,sc8280xp-usb-hs-phy
       - qcom,sm8150-usb-hs-phy
       - qcom,sm8250-usb-hs-phy
       - qcom,sm8350-usb-hs-phy
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
