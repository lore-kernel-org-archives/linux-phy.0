Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 918E2CAC589
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 09:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hT9nMzXU2FAsOM7kkyZYHLz1a4h+n0uImYBIU63AYak=; b=qw8pQf7qGRgrCW
	taCUWthdF+BrCTldMysjrHzP6iva9nXyaWrzKnv43vnzkftOeY8efDqMT0NLy5j3v4ZDyoPbK+sKz
	8QMThDJpdIz5n5Oj6CyJ6yPZdcNbTc/QiQr5z1j59ckhYMyL5InvsQ5J2JXmh/6y+adnFLZ1n/2wR
	e8BwHFAQ4id08ILqileJRuvz96mqRuDUI1CMBM+wScIQKmD3qT5nZGYZoAH1HaEJsRW22iNVVLhtA
	5krmyQQY5osTCM/FzRSljHtRzX7S08U1AXeGdrp4KtKxb8s6//3hHvuUtSljJ08nMpwTMswaCr5Gm
	DnivQ8YnwuRDysxYNGsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvuoc-000000062Y2-0yCs;
	Tue, 09 Sep 2025 09:39:06 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvsri-00000005Bmd-2NuO
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 07:34:11 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-61a8c134533so2478245a12.3
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 00:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757403249; x=1758008049; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jOv6YZzImpUIBG/mr0NgF5IqW+E610SMfxEFIyqnXkU=;
        b=pn9TDH325RUfgXH1u4cZAjAHNoo6NMDQCAUshr87t48qsiQV/dzOgS1bobVsOXy1RG
         ONTc5/vMPNf2V64prVwFGERNVwt42TBkI9w63EyZb9aQzH3C3yhuqNy72UBKMx5jl0cW
         bPXmymsLzHjW4mvJ88HtMrqM0Q+iDpi8bWNWNOtNsa0OaDky6dCSgm9PTK7MMvQloMZB
         FnjfIkFeUeOtclFyf93za0M+wj3OG512veftTenbLUQBJMB6PxWbt2GcRc15LEM4pxjK
         s7pzy7GEH4g+8B8qg6UvQsKn09HCbZubllqAL0kvzyq3MTQ13i9w3F++5KMF1bMRG3d8
         8ikg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757403249; x=1758008049;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jOv6YZzImpUIBG/mr0NgF5IqW+E610SMfxEFIyqnXkU=;
        b=m+No2WwamUZExWhAVOtCGZ6LuxnjDhuv2wEvU/Mhi8GR4xsEhodiAwFAoHuxNrUGSt
         Kx5Y2XlNN0KdDVfSDRhIb5QqWdjbtIbwiD9CEj/yIwy5pIjE6x/FsP5BVsuwy9ErEOGq
         TFPTORSWwMAckYxag4zxRE9z1KJtPk53ks+Ut0jaiRyIThImrj9yWxW8+dU8EBVGgskR
         qNoYkuBKWa6t23DQB6OF/mPxNSB60/mZw7S7+5Ip/ut6Ch0dp+BSzfNUth0oC8A47wDX
         /Zuv/Nh7Lz7wqk7KvQ6AokTnMAVyEFDmXjJ81Pw1+HZ7Ey5UMp4mjcEUYYbrh8qfkTVw
         hjjQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6Esjh9IoFdRjTMsU/4nAx0JLW+LWJDNHlTRvtCj9lijMEjty01QL4uO4HI8/JSUTGJMKmRy26gjU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcIdOu+nH95xZP4NpieUqfrnqRAEDLv4Ly4CQpFqRTBdaPBigV
	S5Yx7BZ8okzf3xrgRi9ZCZemOBdnYTSiyOa7tvEfNyFpxkHqjBm3wBywaKshOfmth3g=
X-Gm-Gg: ASbGncsfeBSFcr/2OzEHxxTrhKm2BRM9L+reusDrMd/ApLxoVKGuTaPdSqhWNU90DXY
	YpfqoLH2tTevBpHfk9A3B33n5YqgXgnfTor4Q2eC4+43ws5uZbWR9+K0oiJAIBBzZ3CkgDIP1TH
	IhzbugxD9s2SAR5cc6t6NblROBBjGyJ/mXW72jgol4V++NhZVa4o86glQzOVi+brtzwAxb2LVLl
	6rbTCKlvOGPRRsK0B0hX0/Cx0WI6D1VPmd5NBR+sjs4GKqI9YMZNb8XKn5A2e5s7Y5/t4AcAVby
	T9R6MCYUciUXe0Kg8zy5naL1PMVJ7P0Pkm420x74cIhTAs66KTpvBnVzQ3bM/V6pR14hm6UmRx3
	3mQOFEg8xjDY/TsaGBk28lIhaLfjrmaNObw==
X-Google-Smtp-Source: AGHT+IEFgIuQ+MAL0AXInCJzlXHyFtWrT8/3RqheCs0ENRxVF9nih4Vnn0GqZYmz9QaRd74+9eyp5Q==
X-Received: by 2002:a05:6402:3814:b0:620:1030:138d with SMTP id 4fb4d7f45d1cf-6237edb1ca2mr9611565a12.22.1757403246636;
        Tue, 09 Sep 2025 00:34:06 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c6a264285sm226976a12.2.2025.09.09.00.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 00:34:05 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 09 Sep 2025 10:33:33 +0300
Subject: [PATCH v3 1/3] dt-bindings: phy: qcom-edp: Add missing clock for X
 Elite
MIME-Version: 1.0
Message-Id: <20250909-phy-qcom-edp-add-missing-refclk-v3-1-4ec55a0512ab@linaro.org>
References: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
In-Reply-To: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2004; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=eQ/FyPc5Zgfvvoi2dwn7X4THjFGPUOmpjmW0J4V+O04=;
 b=kA0DAAoBG19EyQCVFVYByyZiAGi/2GKg2tT6epSE41heO9EdESvI1fzKKIrV4s8MTff79i2h7
 IkCMwQAAQoAHRYhBE7z7hFOeo8qyqfRuBtfRMkAlRVWBQJov9hiAAoJEBtfRMkAlRVWX80P/1tF
 k2nco2jZ5kwIf66I3/oea97Yez1B5JxFKTF70e0hrnFvMIquCzh2ojmI8EkXUm3Wcx2QJ5FzBHC
 WjpCaSGuLYdy79JaHop5AHrqJqyLsWwi+JnWS298L+P37a+zAwiyA4wGdVu6tgcyXwj9AofiOhT
 v7LJZSHUIXCVBoYnVXtucHYG0liLkdU2K3LnVCmkEeNp5DB5h2cdNgRmgQP6soH/jyb4B9c4+l/
 gRpEoebWv+EDMUOLz6jnLozOgzAq3uXGVZCpzO5DSb+v9zCuaVUyCYFp0DdN5pXR00Uvh86catt
 QHpdrD5W8exgRT1r0dOYZBTXyCVpEyiLC2tyC//2fHuiILOhaGPe+8+nv6IspBd+78t4zALwlX/
 DlIc7mCQzpXqfhQZbFQWTAVzTWhsbbU1BRkEFvKOt1VcfeG53i+r0IPlRnoWY468ohostUl2y8S
 l172uY8CEGzMyKGv8QIvys2wZZ607zDWof0Mzj+46VMfSuNAiiFTE6P0YJQE8IeJ5eoe+XfdSsw
 Mx591B6mR3MwmPv324Iw1dYh3NhiLJPbSHT/9ezJzH3vlrU0FTyN+lbqKt5cuoYwSsIupGva91F
 FsRoWaBh28do8Bn+5sBW8Z43+TFL7jcwdR0+St/sTXNMOOjLvGfkYi+Il1J3rGugTqBJlE37gCP
 2aIJl
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_003410_612218_B38BDA20 
X-CRM114-Status: GOOD (  11.07  )
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

On X Elite platform, the eDP PHY uses one more clock called ref.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, even though this change breaks the ABI, it is
needed in order to make the driver disables this clock along with the
other ones, for a proper bring-down of the entire PHY.

So attach the this ref clock to the PHY.

Cc: stable@vger.kernel.org # v6.10
Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index eb97181cbb9579893b4ee26a39c3559ad87b2fba..bfc4d75f50ff9e31981fe602478f28320545e52b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -37,12 +37,15 @@ properties:
       - description: PLL register block
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
+    minItems: 2
     items:
       - const: aux
       - const: cfg_ahb
+      - const: ref
 
   "#clock-cells":
     const: 1
@@ -64,6 +67,29 @@ required:
   - "#clock-cells"
   - "#phy-cells"
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,x1e80100-dp-phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          minItems: 3
+          maxItems: 3
+    else:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          minItems: 2
+          maxItems: 2
+
 additionalProperties: false
 
 examples:

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
