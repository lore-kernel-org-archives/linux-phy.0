Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61B92C19F2A
	for <linux-phy@archiver.kernel.org>; Sat, 30 Jul 2022 08:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QiRgCSpQMD6zVORGzb9idhf1ec55hHGHxMTWuaXB2vo=; b=JM1A8dZggke2gh
	+Cg1c0JLFL9+EHhm/XI+GheiLw+MwmoZFGnfCRtRCmrTM0f2Jle4GLJ6z8gqHantRwceRKR5SNznW
	4nwBIOH+BjG2k04WD1RD5+qy5SvxrY0D/e4Y498GHiupQDElFohYxxLcbntvmHY5qvueernH+Hje9
	ThEI30Jde8U6hYqty2P0zlenaMRfFSoisTg/qhny2VFbYDf01i3nqNDHPg7vE+t0qOHwccXMF7TQK
	/ASsxklwrmDl2vtac5/cYLjZ2Bx5GgDHSV1G3ySou5jaGKqIyL7w31ww7zem+OnxfQBruB59K22jf
	MK8dK5+SOws081E3uEnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHhdV-00GbXQ-FE; Sat, 30 Jul 2022 08:15:49 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHhdT-00GbVg-5H
	for linux-phy@lists.infradead.org; Sat, 30 Jul 2022 08:15:48 +0000
Received: by mail-ed1-x52e.google.com with SMTP id c12so8200277ede.3
        for <linux-phy@lists.infradead.org>; Sat, 30 Jul 2022 01:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DDKdfvPOf+QF5S75zEZ60inDKg0zQa4zxUMz/3qhhjw=;
        b=DNtXLewhpCPQLRrV9vJP88Wd/gtXOmm1g4F0jz/hX6gcANzNKy9dwk3dSCHzvR+W57
         FypKwlCO3pVgSJz7VYrEZPrau8uTKFrCbpxmHeKVk43fpGXFQQVR0aSRmKIieq6rd+JX
         Bej6a8Gxht2dRKBI/CNaSUrIzG80adNH4O0yzfDU/7Y9e8rI4hJwQstUA1i5wJ8Oqk1q
         Po9znxzhjgczBk5ZXfHdq2o+bYsBFy76e8bzcRWoN/SQMk5HXJQm7qFsJ0JLn88w4dRA
         vqEaG76jkYFpqu7uKxdozerZxLqG05wGZ0vCc2Harb06XlH3sD47fLHbUvxKQPdGgEty
         n4ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DDKdfvPOf+QF5S75zEZ60inDKg0zQa4zxUMz/3qhhjw=;
        b=qtHPU3UG/aMRGrj+intaeNH9NNeRuN1N7i/SDOt9xQWpjhJkFf1TOS6aI5StcAkuM2
         LgUl0GkKZJHX6wpd58dbTvkVPBkpqPdkqoHNomTVbP+TnBkkwi6nX8qJt6thswRfBTkE
         6AZZULvBT4A/Ad3D0xNxTehoQLgbJHyTsEszINE0hMs0VwBnDOrQITKdVtkcXcCbfJs6
         iRZIv7PplLulP+R/dlsqMIu8RukbIPoWVQ7bysT9RNWlo2jOmcnWu4RVhOFnaSqdMMza
         cFpIfOtvME+R9rMXQv9omAhVJT9+xx9bBZ4I/RciL9MCHeFtWzdozGtohlNMvIXRbAVJ
         C6LQ==
X-Gm-Message-State: AJIora/JCZcF4W4sveBq15kP2Y5hSkALiZm77VTgbTypIHK1/pss4h4I
	VKQq0Y6PDchd0hv2JcQzWM0=
X-Google-Smtp-Source: AGRyM1uTyvrUCgI2ZHsKNbsaTwkFs3WZ8T8oiv1D4riyc+QhF01hJpWu5BF/4iTsm1VaMtQSxJbZ4A==
X-Received: by 2002:aa7:cd84:0:b0:43c:532b:65e9 with SMTP id x4-20020aa7cd84000000b0043c532b65e9mr7245047edv.330.1659168944114;
        Sat, 30 Jul 2022 01:15:44 -0700 (PDT)
Received: from ainazi.fritz.box (p200300d09725550031ca3b9b629d79a8.dip0.t-ipconnect.de. [2003:d0:9725:5500:31ca:3b9b:629d:79a8])
        by smtp.gmail.com with ESMTPSA id zo6-20020a170906ff4600b006feed200464sm2623673ejb.131.2022.07.30.01.15.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 01:15:43 -0700 (PDT)
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
Subject: [PATCH v2 3/3] dt-bindings: phy: qcom,usb-hs-phy: add definition for MSM8960
Date: Sat, 30 Jul 2022 10:15:36 +0200
Message-Id: <20220730081536.14511-1-peremen@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <84923720-30a6-1a49-48f6-96e078a46743@linaro.org>
References: <84923720-30a6-1a49-48f6-96e078a46743@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220730_011547_220182_27A56E79 
X-CRM114-Status: UNSURE (   8.25  )
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

v2:
 - Rewrite commit message (subject prefix)

 Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-hs-phy.yaml
index 0655e485b260..b3075c5ab887 100644
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
