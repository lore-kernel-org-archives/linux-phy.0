Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6F55C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 18 Mar 2022 18:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6yeZA4+5PS7CvvezKYTC8JbBH9C9tb3pETc7OFOaqW0=; b=PJ1fRinKmAr/o3
	vkZ1ZHATG/z1cA/MpBDttRIq0NuLXYaKR8ZQxv6LxhJOjIwEoDbsgmDrhy+FnpR38mdItYHy82RZY
	jtH9xtExT4FlvsghzKRy59AYOuCpkAHBPNBd3AGW+dU2b0Kaw4zfFJg4LGIwEBdn8VOg65WNrES3T
	xHDP8jjwcXD6f3eGA7nAkFdg7mQdwmCvvobqdKJMA3g7cyFYgY2IrUgcodp6jXjtY59WiSDJBvsdY
	jnOj60HhtAa6Ov0cbNbHYM4+9H6/v4xxxScfQOmbVQA9BaW2GPaUjCPzwoEU8o7xUvsz6LTRot3Zp
	SXB6z/34WyjDp0l2gy0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVHVF-002dAi-US; Fri, 18 Mar 2022 18:39:09 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVHV7-002d8Z-2d
 for linux-phy@lists.infradead.org; Fri, 18 Mar 2022 18:39:08 +0000
Received: by mail-wr1-x434.google.com with SMTP id r10so12858942wrp.3
 for <linux-phy@lists.infradead.org>; Fri, 18 Mar 2022 11:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fairphone.com; s=fair;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rbg2RlFA/4puyAOuKWmpEc0rQD4bbwwHtg4uOvJP+0I=;
 b=CLaL56CILexB1XmewhSYD+RMOauS6TXFrSrM09e8FX6dz3NqqKNQuLoBTJMloetORm
 bdsFhPuyeJBgQwXMcWioPB3uOCRhCKZb15XtU05+uB3I/TOXoWs0CISSxKayf95mroVa
 zaN5A7mGN1VgxSGahkm6Hmy6lrxAOme+8PJ/Bg44Gec/QYLJhyXIkqJWp/aoVAjJBRDd
 iaJvbVkvpG1j0vgmX6D8dbAeG9ARk291ldzH5/YvTUVsXIBVvVMPQIy0XqBLGXbG8oyA
 rlLhDlE7/MTvg8kEayMeztg9JDPF7plFAz3CxDj+7gO6QzrJx2fjQ+NM9TO8eirumasp
 aoYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rbg2RlFA/4puyAOuKWmpEc0rQD4bbwwHtg4uOvJP+0I=;
 b=JnFfLKH0imrc77r92JLtznZYku8nLVys45cKaJAhQzjZBU6EGRqSRrJQ6g6sErwwGY
 VHQtRvKn0TZUIamJg63GqtBwJemrQuNKl3a5cxtosB1Ps5sXRS6g4J8bDiEv9ttTeGlK
 bpXN3kkkMHty/DiYtzaDhBVIZAN5gsuycfhGh2OyG2Pe230DTVdI7CC6dT5HxRJ/q0nx
 xH0ntk8VJGr0+WRgCF1RA2QaS1Sib1j09bVW6Yo8uQYK9X2+rm+L+iQu8fjz6g2Ea06C
 o4DAjTaNpyEmdy8qJZsygh/ZZAfOGvWb1br8Mc58v9lDeibVjTcleXxGLxFg98F6uRkx
 ye4A==
X-Gm-Message-State: AOAM530dsHJf90MbxI6H4w4+XhwFrt7r2mKuCL00xT5Aw9d0IATbn6WV
 U2zpKeZlrV+Ie8iIdBjtTEgmX9g+F7l/1w==
X-Google-Smtp-Source: ABdhPJy9l9NnPcxCTwrHttfVSh2VeMF/NE86kvBCodu5fsRVccCePBYOvZuaZPfCKvJyw5yFTLlEtQ==
X-Received: by 2002:a17:906:6a02:b0:6d7:cda:2cf7 with SMTP id
 qw2-20020a1709066a0200b006d70cda2cf7mr9874936ejc.53.1647628227733; 
 Fri, 18 Mar 2022 11:30:27 -0700 (PDT)
Received: from otso.arnhem.chello.nl (a246182.upc-a.chello.nl.
 [62.163.246.182]) by smtp.gmail.com with ESMTPSA id
 y8-20020a50eb08000000b00418b114469csm4567551edp.52.2022.03.18.11.30.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Mar 2022 11:30:27 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Luca Weiss <luca.weiss@fairphone.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] dt-bindings: phy: qcom,qmp: Add SM6350 UFS PHY bindings
Date: Fri, 18 Mar 2022 19:30:00 +0100
Message-Id: <20220318183004.858707-3-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220318183004.858707-1-luca.weiss@fairphone.com>
References: <20220318183004.858707-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_113901_125620_98473BBB 
X-CRM114-Status: UNSURE (   8.01  )
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

Document the compatible string for the UFS PHY found in SM6350.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index e20d9b087bb8..934aa9101ddd 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -39,6 +39,7 @@ properties:
       - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sm6115-qmp-ufs-phy
+      - qcom,sm6350-qmp-ufs-phy
       - qcom,sm8150-qmp-ufs-phy
       - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
