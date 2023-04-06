Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA319C77B73
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 19:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abmz5PxnrOMdmGIp103xnS3Y3zyA1qbgWqT0TSoIJ1s=; b=qA3PEOragR5eLY
	reP73mvlIfDgxRYvKCuj72cbCE5RzcRWpx7fpDofBLFg/NfQwwpl7ZQu6bUk2OCDhafLN3QFzk1U+
	RPr/RvNgpHYAU2RSFj0kmpIPthCsFn/3T45kNez3KZZI+/5Xi15Gd48lap+t8ikToRqiSU3cM1yiZ
	zHQsAENqNo5C7a/CrfyxHKlFgnuv0KZs5iB13l3zVGVVK1CXI2+mHNEg0TN6M7Dwpkk1gXRij7qm8
	SiO5s1f7dX+LBYkiT1llY8+acikQo+842sKoYelxyBpuyGnWJygxKviC650Z5qQnTZLvL9OyaRS6o
	5GKCgChHadCupJP6jeJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkVZo-008QjZ-0u;
	Thu, 06 Apr 2023 19:47:20 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkVZk-008QhV-1Z
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 19:47:17 +0000
Received: by mail-wr1-x429.google.com with SMTP id e18so40601565wra.9
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 12:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680810434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6QvGwHE8712SOIXKJ/RICuObIng9cSrbflgnP7B8Dcg=;
        b=XhxatPnPUEgyW/8dv0QXuGkNPW6wibJ2hl8Z/1fUMqgaxvjrPhQMbOjCMis4w480En
         zAfjp18OG8yb77ILEIBfWuy+Dj3WG9t7PKd+so3aA9oF0JfB+5uykdq5FBMHP+pPNpZL
         jw0mIS4iMR3WwwEIaI6QIzwaxFhJ/lCRFUaO/lsE1e177DFiCp60pH/ypEvZCSTqokl9
         mafQOEl7IwtOetoJu5gUEXa6/Sez7JAp16bF/iUru2CVsX2pvZXxQm9SYwiWdf7OkEHq
         2dgc4rR6ZCwfJCzHIcdV03cWTVRSICmw8xRybkpNj+5nsW37S7i4Sebk/+fMZ0QJlEeT
         FLIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680810434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6QvGwHE8712SOIXKJ/RICuObIng9cSrbflgnP7B8Dcg=;
        b=G8l9VBjAF5G5ckL9GdFHm4NiOtaLdtm4lpVnX9CoijZSeDcgkw65rdPot2kckV7oYi
         REiucuswzTuKzdxRd6kw/e/yDEFJaVyGLRvr3gwq0MK3v8VzPev9fLixVvuC4+sMsA7i
         I378gGvBsrTbQrGTT9JTdwCVnGUKbByZjluqhgO9VALAAUOSGFinV/a92NeOAku6Uvvh
         ZdrjAF0vG91EvRL9dJkdsqYI9OMuJV0u/v88/cUgV63GiGx4AeV2GPC9P3BXRlUQcSRB
         VJbA0zjgxxy5jJpL0/4cSDzRdhXV1pdhYkPgeGm6WZgLmYPQE2ys5lPlXosZwJe/njiy
         bCiQ==
X-Gm-Message-State: AAQBX9eBtJsYIZomFCXqrkMedhcZk7yzykwfsHDg7y40HdN/SIVLoS/U
	2UzFMr6+A/BTjsMhvtgTGeuJ3g==
X-Google-Smtp-Source: AKy350Y6WVpr26JrjHi+2PDXFAstDUbANXU9nW0JbJo5gDYwejiR9/qIlYpT9L0PhWqFuI87C0d4Uw==
X-Received: by 2002:a05:6000:114b:b0:2ca:5c9a:a548 with SMTP id d11-20020a056000114b00b002ca5c9aa548mr7643576wrx.60.1680810434627;
        Thu, 06 Apr 2023 12:47:14 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:4793:cb9a:340b:2f72])
        by smtp.gmail.com with ESMTPSA id k15-20020a056000004f00b002c71dd1109fsm2593323wrx.47.2023.04.06.12.47.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 12:47:14 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 1/5] dt-bindings: ufs: qcom: add compatible for sa8775p
Date: Thu,  6 Apr 2023 21:46:59 +0200
Message-Id: <20230406194703.495836-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230406194703.495836-1-brgl@bgdev.pl>
References: <20230406194703.495836-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_124716_527400_F6B3B5BC 
X-CRM114-Status: UNSURE (   8.74  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the compatible string for the UFS on sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index c5a06c048389..b1c00424c2b0 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,msm8994-ufshc
           - qcom,msm8996-ufshc
           - qcom,msm8998-ufshc
+          - qcom,sa8775p-ufshc
           - qcom,sc8280xp-ufshc
           - qcom,sdm845-ufshc
           - qcom,sm6350-ufshc
@@ -105,6 +106,7 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-ufshc
+              - qcom,sa8775p-ufshc
               - qcom,sc8280xp-ufshc
               - qcom,sm8250-ufshc
               - qcom,sm8350-ufshc
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
