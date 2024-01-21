Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07A1BC47422
	for <linux-phy@archiver.kernel.org>; Sun, 21 Jan 2024 16:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIGD+XWGbSy82IUMj8cXA8WdmkUh1iOnNryyTA9+DRU=; b=P6IuSsntHRja5F
	9wphQoCRoUfzdyierhs3xjTxdax+z81mIM+55fFhYe5Yc/6KmhxCDRrf0Zez+7Jw60F2/s2uemQ8B
	PSllBGNs/GXD3y1RdD4UdfMicHb7BiHn0c6r1Yqe8bYe7kST65aQK9dGhga+axeTqFLQRPbrPR4CU
	uBcJG70CwM/2llxiXBJFUYBGQrkfF6AmxhKxbMdaQ0/AoUuKJ4t95srgH+/UmRq1eVnPGZkIWdJjv
	3eDZ1sYAUSLBt1a/8dihx1/q+yhb42WbSJ6SXR2sbT8SCo5I5OuVRbcgTW/YlNfKpOOJ4Qg3xlIBJ
	rAP8IOgPI4O8iFdege8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAK-009lxI-25;
	Sun, 21 Jan 2024 16:59:24 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAH-009lv3-1R
	for linux-phy@lists.infradead.org;
	Sun, 21 Jan 2024 16:59:22 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-337d05b8942so2739684f8f.3
        for <linux-phy@lists.infradead.org>; Sun, 21 Jan 2024 08:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705856359; x=1706461159; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r7GFapMX83Ugwi2W5do1tXfyoLlSaiu9uYO/iyI3nsY=;
        b=Ksa/eCwYI2OLRPvdRbAgvMsv39ce5EA81Hzy+L6kHuJgUJaIWRtv3NFQYCDgxBih/T
         mSi95bzcUmin4WFxr2Qsg6YY9zz04pWqEHMUERrwlrQaQP3Rz6WBRdJ6iA3UJNBkDduA
         o6JeL6ltDgVfwrIgfcf3yt6AsLiYJ3M8sFrAokWrtjAl4iMd+Qx0qx2H+4tizIPyY2wa
         YCb3Ty4a/FiKiX0dvhWbOYEaaYTetYDi7NAN9m8NHAoCEGFlsXzvEwBH94D6KahM96K6
         NVG8BpGK8eGE6Zp/FsCWhsSfvNIjzXt1tI+9O6uuN2s5raPM+ohAc0lwTDrOK5EOrjP6
         oTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705856359; x=1706461159;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r7GFapMX83Ugwi2W5do1tXfyoLlSaiu9uYO/iyI3nsY=;
        b=GpecyOOxAod5ixybY5DJLf9uBu1zKSpKMj559ZFrcIDxBF+D/zsnT59ueV4APE4PnA
         7ltHJ+uHFYFRls/CwIku90X5fM2rqijebqXNuSZtai+RsjQcj5wfC7oJkarCl45KwNja
         XyAwyJypLBcSROMdJpxTRErymfBuQM8mXfYHly+T6HKMDvrjT/psmpeaVEDVJg54DfDr
         aPBYNVaCafBM4p7za81fl51qmGrorLo6QNteB4s3XXa30O9fJEV8HmeJ/CD7xl4YwIy6
         0mjoJGvtpLS1z1uVmwCM8km+ukveUOVo/YY2XLu9uvoxFG0qkHjJwABCUJLFCsDY9yJo
         6ZEw==
X-Gm-Message-State: AOJu0Yx3LGeuZsnKDYZq2T910PbJwPerhmN4vWXywRenVENiO7nzmJht
	7J66GgCbDqFnyK5AFs/tqFga/1uhrvgaJV5+tsYHfiWlF0arsgjR
X-Google-Smtp-Source: AGHT+IE8u/xPbve4SsuSe6cCHX0i1Rfu5/34go7AfvGZd3Wlg8LTxSONonioZF0LPss8c+LMH1Obbw==
X-Received: by 2002:a5d:56c8:0:b0:337:bf42:b1f8 with SMTP id m8-20020a5d56c8000000b00337bf42b1f8mr1642775wrw.137.1705856358841;
        Sun, 21 Jan 2024 08:59:18 -0800 (PST)
Received: from david-ryuzu.localdomain ([178.26.111.181])
        by smtp.googlemail.com with ESMTPSA id q5-20020adff505000000b00339214d70b5sm6541115wro.85.2024.01.21.08.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jan 2024 08:59:18 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
Date: Sun, 21 Jan 2024 17:57:43 +0100
Subject: [PATCH v4 3/8] dt-bindings: phy: Add QMP UFS PHY compatible for
 SC7180
MIME-Version: 1.0
Message-Id: <20240121-sm7125-upstream-v4-3-f7d1212c8ebb@gmail.com>
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
In-Reply-To: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 ~postmarketos/upstreaming@lists.sr.ht, David Wronek <davidwronek@gmail.com>, 
 Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1705856354; l=1184;
 i=davidwronek@gmail.com; s=20240121; h=from:subject:message-id;
 bh=7JQ6Zn2Q/95Qw3aNMQph8bonATbc18xDznjJ9sX4apo=;
 b=p7icsHatqXQbBNED8tZYwMAcrMaUB6qn7TQ0TYBDmoaZXtd6q3BrjIUNtLAwbqxge+mvUiXa/
 w5MwFkUcizSCKuCRhI4qAwDpUiVlPCZDoWnWHfxUHK5Q/dNp1snfHsG
X-Developer-Key: i=davidwronek@gmail.com; a=ed25519;
 pk=PJIYyFK3VrK6x+9W6ih8IGSJ5dxRXHiYay+gG1qQzqs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_085921_485778_1F7350D5 
X-CRM114-Status: UNSURE (   8.34  )
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

Document the QMP UFS PHY compatible for SC7180

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 8474eef8d0ff..5faa1cb3a12e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - qcom,msm8996-qmp-ufs-phy
       - qcom,msm8998-qmp-ufs-phy
       - qcom,sa8775p-qmp-ufs-phy
+      - qcom,sc7180-qmp-ufs-phy
       - qcom,sc7280-qmp-ufs-phy
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8280xp-qmp-ufs-phy
@@ -102,6 +103,7 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc7180-qmp-ufs-phy
               - qcom,sc8180x-qmp-ufs-phy
               - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
