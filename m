Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC2CCC25B7E
	for <linux-phy@archiver.kernel.org>; Fri, 31 May 2024 16:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vixN24rTkQi4t2jG6RYErHhPiRX8lGeN/tLokmkj82c=; b=XNhVxC4N8h3yzr
	4JWFQu/7lXRMuU7mFTmX8G3ELSG5tT3fzo2hvH+6Hpyel78kPyX9tng37ogHoLbcm1LJmn07zXwZ/
	NlT2oKrizScE9bKW+amGiRfPvBWet1xGdwtZk0d98+FuQodIpN7CGMThi5p+qZqBcbQDXq61pBoU8
	jMZdc953kxd2KajXKCnDxDqU4PzjvDjOpYGiPAq5+rM6R3Jc5Hh6f2hDwfc+L/FEtJOUVNMbb6zEF
	WiiWLZk8FXDYhy3aGhqLyeTs3aEnQkhKURwPxQo+63FsDLzque0bGgkBXlFciUist1r83LpX889JX
	J4q2VOKzsog4pj2zA+qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD4mV-0000000Almi-1bBq;
	Fri, 31 May 2024 16:07:03 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD4mQ-0000000Alk6-0a5o
	for linux-phy@lists.infradead.org;
	Fri, 31 May 2024 16:06:59 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a6267778b3aso203504766b.3
        for <linux-phy@lists.infradead.org>; Fri, 31 May 2024 09:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717171615; x=1717776415; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8mQFkvr8sKfXptqDLSupuErcLr+wa+/nDEhtEgvO86U=;
        b=BMD9/Og/wKMRtQxqZY+2Z/PFviMKjVi+0aWD9bqkfArxrt3JNuyacb0u/XntBNit4b
         gtX2oZxtX/hlsjVoiE4mC0urEU9FcfzKBpN4cejtN3sZQKhq7MdnR8glwq48RFTL7Gbz
         VZksbAsS5tZMa5CsKcNenl2+b86ragmbkF16xJyacGxTEODUIJ5jWHOiZ0F8IiidFH8W
         0Om2VYebSC4hVMxX05gAqFMeQVZWdUSpA7KD8i//a7G6sS//tNyyVvDXYTsSm/2E2FrD
         Y8zf9Qg3qiLpi6bPSCuEgWOpg5tWoMfy+sK/dBEUw1TsZDinYy+uvlUoVM3i1Ad3Ljlw
         LI6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717171615; x=1717776415;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8mQFkvr8sKfXptqDLSupuErcLr+wa+/nDEhtEgvO86U=;
        b=C1j4hDl1bAJ9C/Hb95hn1No/NMZgvqDGuTeU7w/eZliukPZAGXPv0nQ2BGiXD86Ibv
         Q/b2aidzcAZdHena2iC7tAaeqJRoSB1BUUGhKQdoBoeGq8X6uG6be/MZmvuOn7FIX2b3
         ickKKMFTaeOqv63iN0yiSAZ0PtC/BEUqUU6b11o5Mzl+lSGhyCc1eWAN7JkoYkUbidgK
         FLfE2YyyK/6egmfrJzmyYtGKu6R0Ma1xHjnMTyBZsKltYrKORPBKu63Z3CSmq+IWmpEf
         okg1W9zq2Tgc5QSfBr3xHhUM2xaECed5Cd7SPiEt4GcuQ+Nn35j6GuV+rqfwYPs0fbnG
         rkPg==
X-Forwarded-Encrypted: i=1; AJvYcCXQJD7nrxkt4McbQYKVsvJL9MvPbKZtSDBuCNcJYFn6X0DamLEIxjC5qceSo77AwxZH8jmlRk3/KhCfV37gjyp268m2cMy1xG70RGGY0g==
X-Gm-Message-State: AOJu0YwggJDb8UHP44aZIl9zgvjUJIgnmOFI0qvogxdr9yg6qq2nKQb+
	w6TgFzp24x7slu+z8wAll1sF1fmW7VhqkagBwvhcnRG4ll6Gz5sCbu2ZookYIH8=
X-Google-Smtp-Source: AGHT+IGOPdQFC+VdmXdg6Gug4F6QB5XA1KL/TuwuNHEa+43ASEYHZmFqskROXFVIXRrqrnt7rPC08A==
X-Received: by 2002:a17:907:b96:b0:a68:2bf0:91 with SMTP id a640c23a62f3a-a682bf001c3mr140911966b.31.1717171615063;
        Fri, 31 May 2024 09:06:55 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67e73fc1b3sm100802566b.74.2024.05.31.09.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 09:06:54 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 31 May 2024 19:06:44 +0300
Subject: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document
 the X1E80100 QMP PCIe PHY Gen4 x4
MIME-Version: 1.0
Message-Id: <20240531-x1e80100-phy-add-gen4x4-v1-1-5c841dae7850@linaro.org>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
In-Reply-To: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1417; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=u1d+TMVUZZqkWCg0B+VJb5FPvmrutEqoJRDhebY8iig=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmWfWaD9g789Rn/DmA84+GH9CJ85XBpmwwrsvIM
 bPXAyX/0+2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZln1mgAKCRAbX0TJAJUV
 VoebD/4jshJ9++Z5KeNra3Usv2Etjlie/jaVDHxXbtth1rZYbUq8X0EHYAKaxAxtfWfrYx9OQQo
 SZP9ihFnVazUFxbNUsQ1sj0BRkDfqrXapvmgZvzhUjATEk0uFRKBu6FNOYTtttGPas+lteY3mPV
 QWb/cIWSsZMIjSzotbpAu7BUijGhQZyBnyf63ZLhWmhSR7JBrJBhHt6F6fBzsu5KKg2sDmfNoL3
 1QXnwgGp7Pq/OX9VirsWXKbb/781HGyL6KpgaJS8A6aoxoBTCfAGUHIDKafCv4nsshDDc9WCoAv
 2f11vzjB3+COA4B13zcCvE/f4rpvhee1XNpGLPi2UjaV6+O9PX07afIFBcpb0IUvQib+RhgEEgi
 p7H7Rb55T74OF+PxRzBlx3FLlJqy1NQE35FA4Q23rtV8BZRvTu3bm+NFBrxbguXBvr7B8iursvv
 Ck+ey84wCkJeMLT25o5o/NPZIEO7AJHXzdYJQ3m5kdA5kyPsUzYp4O6dQjZWX7BZGYAguWmm+gc
 NOuatHR3A8UarHC4snGlpvJPA/PpHTSfjxterb/4deGbDaWX0ebP5kaOfWSiuHMRADUzRhYpTjI
 Ca+uWtbc/nKROkhfG7AzG1nCzEi5BaQknja9EElCxss99I0M/UOdvGwbXA7S9ob7LQshyuftxTC
 6AEi67lbAa5x+Vg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_090658_264117_2CBC7FBA 
X-CRM114-Status: UNSURE (   7.59  )
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

The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or
2-lane mode. Document the 4-lane mode as a separate compatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 16634f73bdcf..f96f692c9ee5 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -40,6 +40,7 @@ properties:
       - qcom,sm8650-qmp-gen4x2-pcie-phy
       - qcom,x1e80100-qmp-gen3x2-pcie-phy
       - qcom,x1e80100-qmp-gen4x2-pcie-phy
+      - qcom,x1e80100-qmp-gen4x4-pcie-phy
 
   reg:
     minItems: 1
@@ -119,6 +120,7 @@ allOf:
           contains:
             enum:
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
         reg:
@@ -170,6 +172,7 @@ allOf:
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
               - qcom,sc8280xp-qmp-gen3x2-pcie-phy
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
     then:
       properties:
         clocks:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
