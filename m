Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FCA2CAC587
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOt9mp5CA7anpi8HNqWXNsvt5llCKg92+P9MdZJ0PlA=; b=XXwtf4JS/jfwiW
	H+lA+ogDbtpDUysETKbbNIXzU3ClS2f007hFfPfVp2ifYkREw31DrG7bCIpbZSqPQ68QJRX9C6JWU
	0wIT41FIMBLI+akhffVg34GAioKOkOu9BXodoiTK/12XhjD23/IPx/xmoqNSEu48WBC1e/P2TlbZi
	Yem5TUTmECz/lcxJfjE6JBXB5qJAzonwoO1Y2atuc97UI0cXVHYlqXM48hYIcqHbq+T1O4a2SiMBX
	bvtS6pft2IYg2nQv5fB22SrsHCJWAy5rlT0nJUuTSDy29VbSv/dWBD8xP3dhsEjjcOBuOSgeXdCE2
	AVKEsOw7ppQSE0u/fPlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiYW-00000003eCr-43i7;
	Thu, 11 Sep 2025 14:45:48 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiYU-00000003eAW-0yW7
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:45:47 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-b047f28a83dso154581566b.2
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757601944; x=1758206744; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TmaovmcheFOmFnp07VWNh+ByfgZPGvN3Mt5j2vCPIc0=;
        b=JfmDb8FM8BYl2E6OBU1bXGouaBO0/ts3D+QIhIRE/k7NBtIjsNKxGBZWSSwby7geDa
         36whNB1pL9PDT+dMQlz5A/kc2adzXNCCpv5nhCW2UR6lEYh3qkjLK6aSiiPHh7mpHMyH
         KhKERTpudWr9wbTUaS48Nx+00K1lhS0kARvNTse3OwlILfEuaaFNzvugcY9hOZU8+8ba
         6KSJ9YJc8EUiZ6FOQpxuRHnhBtQ0ygN02IezgB2L6rpS3jvpsqkk3wg4ZcaOZ/ekGo7K
         GV0gOrepVXIIm7s20FBsfT9FmgJO7eXA1MXaBJroQd6VSFAXqEo+vtidi4qwcBWSJs38
         6P4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757601944; x=1758206744;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TmaovmcheFOmFnp07VWNh+ByfgZPGvN3Mt5j2vCPIc0=;
        b=Ybzm8yQ5lhNeSFg/0SqtVMdtJyIAFNmiCYENBDeCrTRaIaNWjMnzmN8avB1PJCME7+
         PvQGbQLjHL6VzbvSFX7zs8rKRBxfYS/8eVR2bUFmi8/VTcW6Kv0R5iYgy6bdb7LeUILP
         nM+dffa57CAVJeRcPzGApRvsn4ZbFXR7Ccb02zuO5xTyWj7fMoFnaXPx5bwHpxFYHo5c
         WmMgFm5uGQMiBtynmX0a+xyjpitl3FIhe6izO1HdQz7JDhy4jV8n2ucpjMGmihSM8k8P
         NJOZV3yzN8hfeH/mhs1xCTK2IS7mVDBql1nUR4mZZ7o75/xR6c7n2wONiDUI9Nxs3Fcw
         SlyA==
X-Forwarded-Encrypted: i=1; AJvYcCXw3u4XRi6JDfiu5KIOGzFx+v/BGpkCY1rOYhwayuOgexZwDOVvypCKOhnSDX+PNizveqIDevO8o/8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyj7nZV97abLSc2sDhoUD7EdJjHFGLJBev0XaV6IZWuWPyr/fUM
	bipPYrVXrb7jvEZdpX8VhtHYJhap7DlaDHkwP8rysTCpyXlM5RdE2c4rDNi2HXsNh8NUiRQN+f8
	jy8U/
X-Gm-Gg: ASbGncsfykdSTZq4j85MDK4U9x5PEKeCRCLaIQLeF0HRHNSt+Z4eF7RqcCZ6o1MYtIA
	7+tzpHUcQSRyaDb2A8mzYDvBRlcFD3BkyUQj1zY0cSce01mZQznU2vfkJedNCumisdkkM9laHn9
	quo3rjT/WZpy/NmiesjzF2nN2B5aUtNDfhxNhsfgLNtZp+ls8cDlH1N7fqiSpuwDiIVZ0jZN5b1
	1X8vuJ+SXTf52ONex3O8uTjLV1Wl3cTZxkM6VjTr2EwZpshB8/e7MEcXBUdHyBoxWO1wJxLSj4Q
	8GRiZ/939Y5VX2IIXBkWiPZ2Gl/2GC8qERxIS7yCm2tPsKUkH+kP1s1tXpIvTserxtt1R5maOyj
	xRsuAhzkUXwnUC0CTgDz0ToTIR2nbf92DXxsuHpqgqsea
X-Google-Smtp-Source: AGHT+IEMGu3GJ/3a4WGqg/zWMK0hDQtQmJ6Iryn3J3JjlXUMGe4FLDan/R6dvlN1OT4FB+YPOlnyAA==
X-Received: by 2002:a17:907:c921:b0:b07:8894:35 with SMTP id a640c23a62f3a-b078894027amr514662266b.27.1757601943851;
        Thu, 11 Sep 2025 07:45:43 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b31282e7sm147196266b.23.2025.09.11.07.45.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:45:43 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 11 Sep 2025 17:45:22 +0300
Subject: [PATCH v3 1/4] dt-bindings: phy: Add DP PHY compatible for Glymur
MIME-Version: 1.0
Message-Id: <20250911-phy-qcom-edp-add-glymur-support-v3-1-1c8514313a16@linaro.org>
References: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
In-Reply-To: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1120; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=03YskNZLKf8OhvkKpOjLnPHFdGEAsbxR+ROwyIo2lLQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBowuCPnspwHKIZuOZw7Vc7dqO/VRg7HNsBadaLS
 qe4sALclxiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaMLgjwAKCRAbX0TJAJUV
 VpOkEACEGvJeUaLnixFnmTZWS2Ex+hDrx0G1njopKGtlFM+swtrbL9z9C8aHLYwt3nkiYXPzccC
 KslQ6dBsuW+6pEVYHKKTehDjjfSIlVF/KZIB1M10pY8iuA9lnZpUbGBggnFHsBRdB+VmxxkBXzX
 U9eCcuGiA0myD42WScdZoEhmnyfeWACSURsWJFm35IsHtYbYSZAzPeYO6E0wxrwUaqLlQ5fYQ+V
 SQFrgaJIczJOWymcybAgOG+fiD9JvPVwiyVHOeKwAe/dQ8Kcy3dpyUHNBqel9lCVUn2O6VLzwRR
 eKdWt7g23lrqxmR1V1XFRvnVrrOVG7nWZBVbrEeOVDwDqbBL/cNdoCaOS1qsQC5/5LNC/X2whpQ
 9i6eYETZvZ4hnWCq0lmZZ54z3cyFD0yxxmUt+Gl03HffHOO14H5TEG2oyXf9v1DAkOHq7QfuSis
 tRs9a/7pjs+NW7DjXFUIKsf89EjIjDlqO5r9G6xmcowKWipR7RCEB5LLYrhyPZ6OYXY0W09KA1+
 OSeugCXy9dFO+ClUKaZ9dKcHn+t0v8y8YSF15A4tlv1+yzxeO5b9BZ+nMmFI7l6Jx6gDILrKWK6
 mXj2LcOHAp+TdAUSmbJ7M7qd0cKeUPB4r3uVrLQd5Jp4Ok3yzdwsrBo7hLBbON6Al9Ge0MFRSeI
 WiuQxRrlECuGOGA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_074546_291972_BFBBAD54 
X-CRM114-Status: UNSURE (   7.81  )
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

The Glymur platform is the first one to use the eDP PHY version 8.
This makes it incompatible with any of the earlier platforms and therefore
requires a dedicated compatible. So document it.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index bfc4d75f50ff9e31981fe602478f28320545e52b..4a1daae3d8d47ca5f08d97a1864cfd615dcf108d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,glymur-dp-phy
           - qcom,sa8775p-edp-phy
           - qcom,sc7280-edp-phy
           - qcom,sc8180x-edp-phy
@@ -72,6 +73,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-dp-phy
             - qcom,x1e80100-dp-phy
     then:
       properties:

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
