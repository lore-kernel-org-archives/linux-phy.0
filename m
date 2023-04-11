Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D492CC77B70
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 13:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kI813r25+DyJ3UpNh+EPpH95/TOG8gIWUIHW7tA78lY=; b=A9o6ZA3e55+mrs
	yYE6W4KMgY+Wa/YMoMzDqijB+pexmQlyOjuUMmEx7WBNnhekoG6xS9ULCrrjD6dcjcuzIxjpJJ6ei
	L8lJQN+2cVbodQB/RcxFykJgYrrEnFOvvfQQBfIPpTmMNwYR4yPE7nTe4C9mnBBpcywSCtlj5XLcy
	hsDXDEhnZOoStThNHrAkZPOrQC7PRUbMoI4+roPd2DbmXuI6A6ZkRYZ8H0CISwDaLIx1gnHlupGXZ
	e5qKHlVyNQsEMuYdVeC5PmzuhxNR4r2A1k2ytrmWRXYHVy4Hccj+q3UTZW8JwJA/PXbVNwyS9NrGF
	0srYhPocYixk8fW+ruzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDgA-0003Yg-0q;
	Tue, 11 Apr 2023 13:04:58 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDg7-0003Tb-0R
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 13:04:56 +0000
Received: by mail-wm1-x334.google.com with SMTP id q5so4477833wmo.4
        for <linux-phy@lists.infradead.org>; Tue, 11 Apr 2023 06:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1681218290;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZABJR6WjNS1+vU+nCbOWkSpTrGq/wc/uSNYECFHn+0s=;
        b=g4lhiJz6JYqqr7hk0Sw4KNjdPe4yBLH7Yzek0taHb+eT0YP9HFnpu3rMAW/kishYEF
         NQQ+pYS0MJI8O+AcdfEKD0s0Igjy/ViOs7PO2BDvq0R6ya9ZNAfdRdK2in7MqQv4rlnx
         4B0k4K9qSCxf+0If4x8y8WuRxGgjabVWuhl66PMyaWaO+Wov1bUuT4d6XNenr+Al8kQO
         XSQIqrG4HD2qfyhRBQgFfQX5XEPyyE4aE1YzVbxeS7rPn/E5/R7Sjueh80ZloeoaruWZ
         oY5fAOMWkYrj5xV3zRcZ+YeGd7tRhmW/39kOnCPTzvFEgKwJwrtf8cHupSG+4nYhrnXu
         GxUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681218290;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZABJR6WjNS1+vU+nCbOWkSpTrGq/wc/uSNYECFHn+0s=;
        b=6JRMVgNTRpi1YWiV+5UovtilOFya4QofQt2jgWeEX7t2rQoieh4aZKulZYQmR9GPx5
         lQJZxIjXJUBZyuRhYZbDBkdzypqlVc07SO8il3Up2MtoQdlJ8d+2N9ByO/OS7BsZukPp
         RYNc39VcRiL6Q1ti8qhyY8kTPqyvReIVbWmVd5j3phJlrBMzvYnvjIohpN8PNN3ya2AC
         MbGuyJtclro6+Os71HVxg/pmNmYyvbvh2NcDtz7G/4DJprWbflkWLHp3ME3gplM7zTKo
         wt401Jxp31knz2DjYFeAtD+NrYCCHW2YOr/NsdCnI+Qqwtbm8WotqfRZ++REQdEPA1pr
         fZ1Q==
X-Gm-Message-State: AAQBX9fObForRWdq37TNVn38Z5x7Y+S/Xs1xku/3DHe+MFoPsRzTmA6w
	MkQ09vsylPx/C/NCpuQoxA/yCg==
X-Google-Smtp-Source: AKy350YI13gmG6S7gmym+AEjXDik99JPHoT1o6t6tlN3d3qWfgUrhOR2bKrzX16M1BoFOlIK8QXlsA==
X-Received: by 2002:a05:600c:2941:b0:3ed:2eb5:c2e8 with SMTP id n1-20020a05600c294100b003ed2eb5c2e8mr9269451wmd.10.1681218290354;
        Tue, 11 Apr 2023 06:04:50 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a099:fc1d:c99a:bfc3])
        by smtp.gmail.com with ESMTPSA id t6-20020a7bc3c6000000b003f04646838esm16921301wmj.39.2023.04.11.06.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 06:04:49 -0700 (PDT)
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
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/5] dt-bindings: ufs: qcom: add compatible for sa8775p
Date: Tue, 11 Apr 2023 15:04:42 +0200
Message-Id: <20230411130446.401440-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230411130446.401440-1-brgl@bgdev.pl>
References: <20230411130446.401440-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_060455_191916_FA615327 
X-CRM114-Status: UNSURE (   8.63  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
