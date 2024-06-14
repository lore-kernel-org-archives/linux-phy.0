Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02F1EC27C75
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 10:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vb3/th1cc7NzMMdfc/nV8OUD49ePIvTF9Ykk6+fWcY0=; b=AIBJzH/KMVwEjT
	O0DtxmC8tF+t74mAgoZxoqA5ZrtQwsAhKmmcKqGMEqhLopGLaEqSWlLKVazy1tx5vEbUYtHJZCzGl
	u1e5FY1xcmIIOYWqZpxB1oVxY/xSghlR3zf7tiHGgQSpOWtctSlE74g9fivrvDvzKzgZOn3Yk4vmi
	/zb0KqgILz6wyVPS6uANk8B17OsB+8DApo9T02OsT2tok4unK7fj3Fdc0gTsLJTRkfKShvsEkn+T4
	T7K1fpvEeRmpY4qEt8e0td8tYQ4nNMgp6KvZ8RGy9dUgFeWDwYt6h+oH1CERBVdzL3HvTpzjzoFrr
	2AVc6+zfWJPxIgcXeLCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI40v-00000002Nin-2cDx;
	Fri, 14 Jun 2024 10:18:33 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI40r-00000002NfW-44Ic
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 10:18:31 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2ebec2f11b7so18911911fa.2
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 03:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718360308; x=1718965108; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9exy3tODP6D6SB8BPoapzrGAVV2VEaTDfn4vpIL8sTA=;
        b=XJscCF0vxkN09CmL3LkdvTXxuFeU/2Nb2UgzmFW/SHpHHZcAN3hUiVptE0zvOS1zKr
         r8oXySOUkJX4rQPmLTZgb1kfkf46XhaO/VaUj0c8B5SXmPqYH7hC3yG0JucaFeoRuf+f
         T9kSMw+Xp9vN3Gl7qCQefKANvZeTcsrj683oSMGaqWG3UnuwhQpLflPYUwTFGl1VDC6G
         7mZvSdXjy18tuBVaPjrXjbAsPzb1xsvq9bwkVfd2Wn6NWHbwll/X9N9wYMT9Eacgy3Vl
         9XLHMjlG5Qip3Pm2JOwQgqFHUovCM+CGxfalQxrlAcjFlfoD1EhkH+DvhZNXrapWorro
         Pldg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718360308; x=1718965108;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9exy3tODP6D6SB8BPoapzrGAVV2VEaTDfn4vpIL8sTA=;
        b=wPvxwUSHV0bVmWX0dbvPUpGgnhpZanSyzp3Li9KqJ1oAqR1E2xqn7ZeGIaYNYbe+7O
         KkVru/CnGfV6jlI0uZD/j4+JoGj8wJByKyaTsyTBS5PxnSlbUAeAS8Jv4AQKm8xFMMHU
         MQaxQExLH4Zzrlphh5FpoMkJgUFyPCZTOBO+4VY8rfDjrONkVEMCROlImoUgmwai416T
         kh5ISsgesmk7jxn0rNR9nQMkIvSeYVs/h0UXKYWq8PX0gg9ZZYevsK5dvNaQgbRo9E62
         PwABev/dWLqEd78NkaUzkHDc19XsFrb4fdaC9CkVwjcl58x+LRConaVdD0KjRcBrlxAp
         nsVw==
X-Forwarded-Encrypted: i=1; AJvYcCWmqxZAcL7O1ENlRlmdrf2+paIa4SUjawXM40QmTkoQmyckocLUxnlH6WYEX7byH9uZ+bksxsoHKaaoufZbaT++gH3EJFiRruk3ipUBxA==
X-Gm-Message-State: AOJu0YyBQeN3Zs0eHlc+enydiqduYuwHpWkuMkii2KbTbf2i2XxNpr0j
	TrHpg3rhl/6VrTCO7fbZAteBgAwP/Pswwk+bH30/K5zWLEcfqZzZCGjQe/crHnQ=
X-Google-Smtp-Source: AGHT+IHif8PpMrCNZ7ondZJ4LR6vU61Ku4c2yc3F/h5NwMAY40GaKl1XyS+EGiyfYT9ejdFAgr36yg==
X-Received: by 2002:a2e:6e17:0:b0:2eb:e023:5178 with SMTP id 38308e7fff4ca-2ec0e600587mr13757311fa.38.1718360308286;
        Fri, 14 Jun 2024 03:18:28 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05bf44c4sm5000241fa.9.2024.06.14.03.18.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 03:18:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 14 Jun 2024 13:18:25 +0300
Subject: [PATCH v3 2/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: drop
 second output clock name
MIME-Version: 1.0
Message-Id: <20240614-fix-pcie-phy-compat-v3-2-730d1811acf4@linaro.org>
References: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
In-Reply-To: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1663;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=5IhnbDeMfhrQJFjppRaXrqKXHovo12yYiCutUlaZxUk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmbBjxTDpJm67FOO9iMkWmjTpU8w1Er4FyDsrac
 4ANw9FcLIOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmwY8QAKCRCLPIo+Aiko
 1Qd+CACfpgWna2AH0ACJYVYlQPpNS9ppWj0l0jeTzfUGMMtuPTeWpkOVseRykJvNkdJyi9OXO2n
 YpCst9+o2wZmeVwGbD7N2VOoBLqgISBUqRyLdBPeUx7kITia9e3sw3JrAPIQUEncPEe8W8y2orx
 Q3yR35x7+Krg+8gd5I0ZoWiCz8naoM32w7j/SxnvP5CYlWxvX5QAea9FjnfoeOoMlItMTCLu4BE
 bpTqwOY4k3ZsSR9chkPswI56MAd/Utbk0aq1NFGoXkQR3haqC6N1LYF7KHnUJq/GVIzxFvS5NEq
 EvVTquA2B6AZds7ZXNfdB9NmGm9kUU5tBgfuaKJLydnewXc4
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_031830_053491_7BFAADE6 
X-CRM114-Status: UNSURE (   7.96  )
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

There is no need to specify exact name for the second (AUX) output
clock. It has never been used for the lookups based on the system clock
name. Partially revert commit 72bea132f368 ("dt-bindings: phy:
qcom,sc8280xp-qmp-pcie-phy: document PHY AUX clock on SM8[456]50 SoCs"),
returning compatibility with the existing device tree: reduce
clock-output-names to always contain a single entry.

Fixes: 72bea132f368 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: document PHY AUX clock on SM8[456]50 SoCs")
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml        | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 16634f73bdcf..03dbd02cf9e7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -91,8 +91,7 @@ properties:
   "#clock-cells": true
 
   clock-output-names:
-    minItems: 1
-    maxItems: 2
+    maxItems: 1
 
   "#phy-cells":
     const: 0
@@ -222,14 +221,10 @@ allOf:
               - qcom,sm8650-qmp-gen4x2-pcie-phy
     then:
       properties:
-        clock-output-names:
-          minItems: 2
         "#clock-cells":
           const: 1
     else:
       properties:
-        clock-output-names:
-          maxItems: 1
         "#clock-cells":
           const: 0
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
