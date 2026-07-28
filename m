Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A16B1C53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 09:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYuCrt/Zn26QZwXLcCi9qixnTHufjwk3Vb4vQ5xaV+I=; b=sN8YxiFyRbuxgb
	DYlANvvNnL8/zdHC5Oj+TfJhuzxbplJebPYz8O3y3lD+cJrSKgS3herrj6oJtwqd7ZOh8vxLjjwAj
	FB5cVKVQdbkbmWNon0eKax2W7G8csmv9D8HjVNpQAk9wykk/GJDiSvMZd/JR1enqSF7M77ub44miT
	QVIIJFkYsogXXGgcQbeuRogg3Mymb+5SA59pz8Ryj40ocaSu5F/DlOwjGSgbYrSD4IXJ3dLpwr2Eq
	U41CXSuovMB/31BMXjPrL96CL8McyvrScNynsa+FfUzXGFyKvki6AqcKBOlDKZQqdNexKqRxJoMTK
	tK3EGXGq6IjSPiPEZJxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeEA-00000004qbV-1NkX;
	Tue, 28 Jul 2026 09:35:58 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woeE2-00000004qYQ-3z3h
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 09:35:52 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4955158f26aso23262095e9.3
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 02:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785231349; x=1785836149; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NJSm/JnxrKE81FhHQMmn4pN/cUcvRnDeftlQtOhibp4=;
        b=fVOd7Da4AeHHTaDa0h7LEVFfZ6rtz2kENY/CeJ2C18GlSVNC505VjIQOOupAghtDDB
         AzHQaLx2o91ZvgyLk6KZYQkoxEQVHW0gHrAE6YN4LqLU+36nnURASLdoXmthOZIlKw8C
         S1sSA5GDMBzoxdJLUrwhDrQ8+h9uLo3tEAEShdo7tItjkaoTtLA1tzTvBu7younHWpg8
         d0MXEA+hQyBLiaEYg0z4k6T1PIqW1r+7wFq2Bjv9iQiDx0eYlOMmTa+fveGSyj3twWw+
         uoba3gc5CTlC8bACuoglur3ehH69A+Ibu6N5rEPngdjAtMvhIBwmnnaXH9e+hKA2vO2b
         ayhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785231349; x=1785836149;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NJSm/JnxrKE81FhHQMmn4pN/cUcvRnDeftlQtOhibp4=;
        b=BllCgs6tJXIgeiVDmPy5qV7+D+9rKOSQuyEOSWQIW9z8slBTYjMUKYqvXOWqE4v0Du
         DVMHII/wOA3GWh59VkRXEeViIN6KuOfu1DZZAA8NuTWpRGcj36iO16OMJBavw4uyYV1K
         JEnObDH8gYaAIgLBQKjwLnMnddoHYQtc2rkcWAF9IO2M8HbkmIcHQDuog9apqh6GWuix
         UPqWDIR5+f/bsNTUnUBtF3BpGbP3bFyVCNQKsLPe9RRaew5isxsURz3VUvBDOb/AZB1j
         l7NBqGPsCnJOiCLzpg1w55vK1BJ4dBqfml2igbrT1zxZ4nu0/HkwSR+2VyyG9iIsbeM1
         N14w==
X-Forwarded-Encrypted: i=1; AHgh+RrlN7wN4zP3zcyO0Yd6JnWHz/wXt1SV3koMgC5Wcz6XnRWGRjrFsK6bITMv1NFqcwmHjl8JxUSCXXs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzwdXfF1gc6yhBBxd32JLVB6IMHcBid/uCzSerDmwvHhLv31NsS
	aFeU9MlJ9gCgRjqWoXDj5QxU3YBeyU8iQgyViuivFOPUl+Vx7cGTpiqW7XiC+hqp1+DmJlYdy1z
	ggxQFABU=
X-Gm-Gg: AR+sD12xv9kga62WrWqK5ppw6jVkCO43p7+RXqNkWK7LJkLUNHsAfkrCbcgj3LRstWc
	vtHhkgu0MyAuaS/wkje11mz3pn/qDLY1Z2EAaYRLbXwD+LrGQaZpxhk3m9RCzXLj+Z2LSHxKVw0
	iqkrv96TL2kFSgJRkvmwM8LlXmDnhgoa3McnXDFLril0mEehJ1cz1y2ZQDBgrnLOsHTq8AU9f3R
	zknsr7xNAYRHcKzz2TSCFFOODZJwv70hnUW3QA7nbGH6PPVhkJc0TGIr6iy5+e4+3KOmU4rvKyS
	6kO9kdCwHRgYWpwzrHQ+4bk30sukMNLfhIH2NcCJcgamhXAE1E85ZXjOlJR3tFleZ24CLuwYDRn
	ZHtBNfjhlfKyQTVWmEccEZ2QF0qw+scdFZfQpG8VxBGEA1Zh5/97dbrzZm5Qr2h1fy7iT88gHix
	ohWYlCbULLsqnZs4w7HVgkRCA=
X-Received: by 2002:a05:600c:3103:b0:493:f278:ba2f with SMTP id 5b1f17b1804b1-496c643219amr16527625e9.9.1785231349157;
        Tue, 28 Jul 2026 02:35:49 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.204.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-496c4632263sm68190825e9.15.2026.07.28.02.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 02:35:48 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 28 Jul 2026 10:35:35 +0100
Subject: [PATCH v13 4/5] dt-bindings: media: qcom,x1e80100-camss: Describe
 iommu entries
MIME-Version: 1.0
Message-Id: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-4-ae811e2f0799@linaro.org>
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
In-Reply-To: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Bryan O'Donoghue <bod@kernel.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2593;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=5wHZsmRZJkX36FzDROcwG3gCmz+4LTBOmCoFC9DNaFs=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqaHftKWpv80r/kd2OEz0SwpuOlD6R3IYkWLa1/
 UqMkdNx1TuJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCamh37QAKCRAicTuzoY3I
 Ou+qD/9XJ9Kr2dtNDMp3LaXCqRgLwCUXh9WHlrVvWg0IEUWaEpC+qyd6w4rm2xFbsJXMZ0Cv7LX
 uBtcCNSqIDgb98WTUHsRlOCIKcV+N7Zc0DDczm9A0RR1ui19cgMcKZaY0dl6Tk2E3NpgZaOTXoq
 MVcpByF+yJBRETBwq7kDhVMEqOIPiszmPlrWCgT+aoLZ3980RwZVrIy4d3wu3UlzoFGtYRyjFTu
 0irxHZfSOipWleivf/17UYZ/rkdb+ekKGdaQK0XAcuTlcirOXtmhrGOSw4EsRKFZtC6J4tTJh8w
 dSh0whpXzhKJLmPtKSpq/iCL0hE5/WX912Jaap7RUjVR3AANyTVyC+Ud+MMQNxBNRLzDJq1evau
 1gpGTKQifnZs8NYzWyAjUJTF6UIT427qD2F410/GfVYAFZE4dGhiR9uOQTqHO5a6PuSpdma0H8b
 fYW1wZY/ebjcEKGRxWa6w5FH20Ftd5WTjrf8sUc0ge1LCa28Cm/4wAKA7dJ5k/qheaEtp0/ttOd
 fOlP4yBr+2PQ1IERSdxYS+Bq9K7twWG2rJ8KX3bWx6aSJLqfgDvx0BzkUZjXIqc8DiO5Ds4uEO0
 Oifi1v9Xk2RNYux1Q0KT25uOybo2KDQExNIn6XaMDN9xM0cMfGuHQN8eaeCI0OlX1vPUPvezEt+
 5ShgyElMc0/0bHA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_023551_056993_43846592 
X-CRM114-Status: UNSURE (   9.10  )
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

The original iommus list included entries for ICP and BPS/IPE S1
contexts. Only the five S1 HLOS stream IDs are required by the CAMSS
ISP hardware: IFE/IFE_LITE read and write, SFE read and write, and
CDM IFE. The remaining entries serve other hardware blocks which will
be described in their own nodes as support is added.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/media/qcom,x1e80100-camss.yaml        | 26 ++++++++++++++++------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index 2d1662ef522b7..126400772d028 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -104,7 +104,22 @@ properties:
       - const: sf_icp_mnoc
 
   iommus:
-    maxItems: 8
+    oneOf:
+      - items:
+          - description: S1 HLOS IFE and IFE_LITE non-protected read
+          - description: S1 HLOS IFE and IFE_LITE non-protected write
+          - description: S1 HLOS SFE non-protected read
+          - description: S1 HLOS SFE non-protected write
+          - description: S1 HLOS CDM IFE non-protected
+          - description: Legacy slot 0 - do not use
+          - description: Legacy slot 1 - do not use
+          - description: Legacy slot 2 - do not use
+      - items:
+          - description: S1 HLOS IFE and IFE_LITE non-protected read
+          - description: S1 HLOS IFE and IFE_LITE non-protected write
+          - description: S1 HLOS SFE non-protected read
+          - description: S1 HLOS SFE non-protected write
+          - description: S1 HLOS CDM IFE non-protected
 
   power-domains:
     items:
@@ -332,13 +347,10 @@ examples:
                                  "sf_icp_mnoc";
 
             iommus = <&apps_smmu 0x800 0x60>,
+                     <&apps_smmu 0x820 0x60>,
+                     <&apps_smmu 0x840 0x60>,
                      <&apps_smmu 0x860 0x60>,
-                     <&apps_smmu 0x1800 0x60>,
-                     <&apps_smmu 0x1860 0x60>,
-                     <&apps_smmu 0x18e0 0x00>,
-                     <&apps_smmu 0x1980 0x20>,
-                     <&apps_smmu 0x1900 0x00>,
-                     <&apps_smmu 0x19a0 0x20>;
+                     <&apps_smmu 0x18a0 0x0>;
 
             power-domains = <&camcc CAM_CC_IFE_0_GDSC>,
                             <&camcc CAM_CC_IFE_1_GDSC>,

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
