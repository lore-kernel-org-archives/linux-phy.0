Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A16EC25B6E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 07:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzeEHwNF/LwSxSXvYXHJET9tCgW96WhVxUQ8JbXfXrE=; b=aYMe5nbqgDMSmD
	gRgNHVRbHerbZjsghyHi2F08ZEhjd8htVoTvbW2u0cejrFbgE8ODNXQESOSHbPIOctEeEWnmRUSzR
	H/Z6o2x7QAiYgGWsTI6M0t/qp506J4GV3ed01/FmWEJORrmU+9eZRGqdKNFIsiANun5to908M3vPO
	mQZPpXkA0GoW8AHCdNIUf1VzZ3g65AXcxa/rmIqsi4/c9msUQ0oCKD2DiDO0D2SKZsNWLW1GnRqIv
	RGgxfRZWbk6d86hCfKcz+SwftPVvwiHGPdl0SNcUlW+CmEXLWyn4i0BCnI8nMf+LNKhpLCAJhR1Ri
	1yq+ISBUvxUZbxfYYN1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPU-00BaXV-0R;
	Wed, 25 Oct 2023 07:34:36 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPQ-00BaVB-27
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 07:34:34 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40837ebba42so39050855e9.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 00:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219270; x=1698824070; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vl8vmMHFFGT76d4GtNSEupCDJ3JGe7v4mICOWNP1wjM=;
        b=rfVjarZI6QWvUNVvE7sbUGUgqlxJYA/CgA4TirmC9HX6MPGOijI3d41NH/Y6pnYUIR
         uiVvuXgW/XKac38bKmRyPNv90DBpMQfRC+GAy1IU/Ir64SANW4Sv/gUYg5cv3HHflYZy
         esgLgV+io6INEHsQEU/Kaz7UtivPyzPRJqgxtMN/IUZxG4k1l/aulNSB+yhIDmktM+Np
         H1LOsmx8WVUouRRKs9nKm3DPeO+X16cUo+Mzj3TlxdZvmQK0wHDpJl78YLU86EjFXGl/
         dQsWTy20ub2Cb6GlCFaZHUDADJtKiaUVNJID1pGKjzz1AZWKGaPFJuhquEV7iiZmxczE
         Xh5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219270; x=1698824070;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vl8vmMHFFGT76d4GtNSEupCDJ3JGe7v4mICOWNP1wjM=;
        b=ZkOT2G8UPVctsVrYk1ZF/1LQlqdAFC85G55q6p789uaLO4eIafR4RxUc+sEC3OcnlW
         IrC3oXZmjNEs7axMDGfmpxoLyqEQfwwMqvYnLGf5BBnAyRTH41FRasXBEP6xkgrWWPDF
         /QkCK8x+psGpPjuaYjYX2NNKQG9BFbf5XWGBK+YP6tYmbbelDIXScS4YCRBea6gzvL+T
         LGJzfJSai4HPjJdFNewq9QqfC1AAjhGlQc1Jct9y1RfVr/GklIab/X5V1qnqY8V0KyI2
         a+fKF7cl9kHAYpX3MgCddAXzrV/qhiSqkGyAuGYB3zFEI/Pm9Lvz5UcKLOan5XlQYAJQ
         g85g==
X-Gm-Message-State: AOJu0Yz9y4IS158JvDQPGw5TgpCE9KsAa3hm8ondMd8TwT5w+67QEMjC
	h1hMpktvPeDwQTazdWyijXe6rA==
X-Google-Smtp-Source: AGHT+IEG+KvzpSTGHFZWxScY2uqX4IQOYRoXOYbZRpZ0ixHJRz+JlKuREIS4JAMlFfxiQVIcNBhOBg==
X-Received: by 2002:adf:e507:0:b0:329:6e92:8d77 with SMTP id j7-20020adfe507000000b003296e928d77mr10006667wrm.51.1698219270510;
        Wed, 25 Oct 2023 00:34:30 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:30 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:34:23 +0200
Subject: [PATCH 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document
 the SM8650 QMP UFS PHY
MIME-Version: 1.0
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-1-6137101520c4@linaro.org>
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=787;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=bCDRPrc9BmxSVH1ZE52SGnJTh1cBQGHH2pHl/JHy1Zs=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUB/Rgsky+njvVrJXJbvuwUArcU0sDiqnrO1N8N
 pAvdLqOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFAQAKCRB33NvayMhJ0egCD/
 0Z/peMhuVXDFPX6l619YKuLHavzzASJjOYOFRtymDk/f+k91hac1amhsj4hV4oENfR8MDSk8mbGJsW
 plA2zrzFyk0OA8crsNmSoHIrkwQp5WVVZui4aHaJStdqsmg+PQiW6AsQUpqT+caKoICBFJyRdBxpv0
 8RCaMoSgTiREwq5L29YdzGMWYZzD6jvynLCEONcU9fNwb5HmayvBQs6jR3OHPDJYoZdtgRUaTqPAju
 8/HKBF9CXUfmT/qifiQAldScLX61b/e5l9DxmrSXSbwC0qH+vEgsFk1QMgrn8hkAPWLrR10aryxUTX
 4bSQdOnxnmgeJy9u85bX0K/njEcMLS32/ASvwxjtFiBT+1pL16iwdxlizOC/3XyCzcCFGG20GYGyZc
 490JLcTu3kVBqWNR2uHS8dxNjj7XzoDKYIil+Sn5vwbnb/whl1UjvhhRB6m4y9oqtX26uCt6aQJ+Qf
 +nDi44RLRYBjm1yzT6PBAAViXb2GIl2H1Tiij0wYTDU3B80+ukSWrG1S3Ucat9jXylpv0/xoQeylGG
 wo/NKnv21igWRsXFmWKaCe8WEncEMRqM4oWVF2ZuQCC+0jdifmiGiz50wPyK1fwAAMoQtI6rrWr6X1
 uE9B8KQgOqylyq2ZdnSkWlfRnY7dKyk68NyA52qGXH2XwkpkroAyz7HBbvEQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_003432_697356_D69C46B5 
X-CRM114-Status: UNSURE (   7.30  )
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

Document the QMP UFS PHY on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index f3a3296c811c..1d54d564fe9b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sm8350-qmp-ufs-phy
       - qcom,sm8450-qmp-ufs-phy
       - qcom,sm8550-qmp-ufs-phy
+      - qcom,sm8650-qmp-ufs-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
