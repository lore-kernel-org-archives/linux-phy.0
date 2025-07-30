Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FD19C87FCC
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 12:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJ5kGEfWbMMMZY3gDIx93zle5vBHbAkg8OgFXqvaOvo=; b=EbxhwKkJGczCTT
	m3izhHhgzliTW9NgAnh/BqTia1/g6oftNtMI5CMlN92xPRrmQfvHhKI1Ks142JljijXyN8XISVvY0
	Y1GG/4hbp/LtiHHfoThWqs0gn0KgMCB/GUPI3Fmrm7y2Ph7YN4ZRKNB1dzD08/5RJJl3mJqWOIHAE
	50qf5NfYXz00/oL4HTvjSNzL5QOFJ8nEg5KZyR4UtFGuIetzF+c1G7CiBVhSDMlBu1H7O6f32D1XX
	y5zTnJT0pWpYDYWGEwawSlJgTvDL2WSm8bjL5TehUIEYUWwNNrU+HmvtQN0870ep/9LlwZtv4jUi+
	wBrLTQghaR3qRVx+qQew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5tT-00000001Srn-1g79;
	Wed, 30 Jul 2025 12:26:51 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5H3-00000001Ni6-1VHw
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 11:47:10 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4560d176f97so66946425e9.0
        for <linux-phy@lists.infradead.org>; Wed, 30 Jul 2025 04:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753876028; x=1754480828; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jn5v3OPTVsl3N7aQ9eg+u74JOJMjyRDux5JHlURDcnw=;
        b=csZQqv+Fr+kSr4UQQiJINkYDeDAFI2McnW3JBz25id5Y8+wKMu8nWfE7vLiUP1KMlN
         7G4+Ihzat18F47AhASdwy1KRzEX7LGcXLJuyqZYFWFEz7MJlZ9ODcEvoKGR2Q08WHZwC
         Hl6rR68STZ+bGBI/J8QsDlNRvTqghjewgfODLFiOoxJ4H2+iF3WB/+Ozc8l/pWEDIUoA
         cmQW/eL5jja0FYRXKNkmloAa6/MpqMxRez/PCjO5tZLdlCkZzCdPq/dBGtJ8XGkkjoyK
         TuH8X/pFF5ECOln9XeLPgwg5v4UFDtgwHrDDwDaUHI7dQOsYZ9jeXDIzlVC9kRgRaUbc
         fdDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753876028; x=1754480828;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jn5v3OPTVsl3N7aQ9eg+u74JOJMjyRDux5JHlURDcnw=;
        b=FOf2iDmSAyaEn6VFtFIw0q07U8gIGMah3A5bMtUhYpB241yN6P0r06AQDkE3+KblcJ
         +gQ3oEWqH52fxJe2r6eocKzWHxZMVwT3WwJfX3Bl0BNRqnJpcGpXgnp3HslywYOJglns
         n3OCiaH6yq3X2akufssWUJjcoNR8gcotdAmWkAxZkBviiCOo7wWFEyyNTJ02cf2fS+6w
         Vy153U3nCF40kHqO/DvAnSuA2ubUArrCDq7VBnZD5S9fq1+WGJy2fJp7jWR9v9qVKKZq
         SOyEY1m2faJskUeDYXO5Xo1Si9IT5dLuSt+8fxPp0lGLZfLfu6c9MzvjOFCZAOFHGcUQ
         NCSA==
X-Forwarded-Encrypted: i=1; AJvYcCUjRsHeNdX0IFnw1SBgIglfmJDYdYRrVZmGy44Kxnv70qjvI9RwLBiKyBiGNOOCC4/v13+WQWpm7Jo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3J6YVYpGQP2WcCBD2TdrER9cCk/QyNh9FTgn22obBJ7edz/kN
	4wXdmfHbr6PnHY9swr1Q9cBDfnQo1V4G02gUu3slq75aUIZsD3zrj38M8fWilF+a0g4=
X-Gm-Gg: ASbGncusKqHaKVctWPma3kmYEVmVZZvhhSj9swvpnqEamYkpCHyui2AKxnzMJRyIgsQ
	42nQB9kWjMhECVaRtcLs5U4FoQx+cGAwpOJhvN9sHyFUxHR2N1QUVxrZL/3Mc7J06RVWnxtUmFT
	H/jL+qzDtFjoPfS6mTibe5DPH4CQi8MwKHsyySWH6uIWpSq4lvDR/3FEKfDPW/PGhUfmy0bDvxu
	DoVOwjUay6grwyPE/lywtdqtralyV4Bz0n787f+MRZ9tzzUZf1GIuuOYNYkV1K+Hi75t0hZFq35
	+HhU39y53Ydvhier5RHH4ISqZdU044wdw9hKZoQD9vI2GKwHJif819gW4meoiXowcK/d5tAaV5+
	27BQHFrkU5tcVM2A6a/KQ
X-Google-Smtp-Source: AGHT+IHK1v3ExXZ8hWrOGdu58iya/EE9SeoaSHxiXtWaABPsvH5/R+dj3WzTNqJo0SfmAMp/DjO+gA==
X-Received: by 2002:a05:600c:3505:b0:43c:e70d:44f0 with SMTP id 5b1f17b1804b1-45892bc5961mr25413485e9.19.1753876027754;
        Wed, 30 Jul 2025 04:47:07 -0700 (PDT)
Received: from [127.0.1.1] ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-458953eaeeesm24503235e9.25.2025.07.30.04.47.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jul 2025 04:47:06 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 30 Jul 2025 14:46:48 +0300
Subject: [PATCH 1/3] dt-bindings: phy: qcom-edp: Add missing clock for X
 Elite
MIME-Version: 1.0
Message-Id: <20250730-phy-qcom-edp-add-missing-refclk-v1-1-6f78afeadbcf@linaro.org>
References: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
In-Reply-To: <20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1529; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=2NokYDIrwQ5BnU+V5V62SNjLrSQQSy6xfJVad8Rvaj0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBoigY0lwy32GQTK506+eiLem1WiCxhU9cw0z2R/
 O1v90rpfTiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaIoGNAAKCRAbX0TJAJUV
 VgLJD/4nCTf4Nvpw/joo2iZQElvFfsXIVP4LzsDsJAibgsIq0v9gQCxx3POJXlwnigGIIiWQqX5
 kQ2InqPl0myG95jVVX+Gam33PNJdVimTDcICVYJ4n+GtuZ1sR9B9OQiVJycGGOPceauVOC4Hcvb
 o8lkqZ93Kt4pi55sS5cN5+Kg8DVe+EYNMBhFAaDXSmM1umx76Ioio/C06nbPS9p2NYTjYNfnfJ0
 /DSDFJhn10xSWqFvIiLIVBNTM5vtTOv1OZr5z9NeLVU1OH1wrIJKFgDnYt3pDIx8p1KLWvVyy3F
 1z6kGb8oyqZbtmYJwpT081fCHildm/+mC9qvMwgmbBAiZripsa51PSKbWsqxUd8CO5kY96i1kgg
 XFGhnPdQX3808qyZLG2Nnz9QKrhegQ9KKFRxyNuuunPONl14cAvo1ukfDusI4YpF7fdLU+21r/0
 YNVblR2ufZCqKxz2WlRljArMSYOCngPkTja/FTBWBmw66F9Sgmp+pVem3FvAk8FdLelFe/P63H4
 nBUnUC7c1NJJ9hIPEqXqwF8b8wd33n3pgpG79uYm5qhqH3PtvksJb3+yT7pe2kmDotIlhfzxxVT
 Zy++0Xj2cNCg44N/ngm2OH2bIUKh27tDs9K1lsxwP9mblEgkFXP7WsZfC7FQJhtKw1kPwX0tYnq
 fhH+l+0rNbpNxfA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_044709_408670_06304358 
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

On X Elite platform, the eDP PHY uses one more clock called
refclk. Add it to the schema.

Cc: stable@vger.kernel.org # v6.10
Fixes: 5d5607861350 ("dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 23 +++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 293fb6a9b1c330438bceba15226c91e392c840fb..2e594b2ea81d385118684bf58da3440c88ca32b9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -32,12 +32,14 @@ properties:
       - description: PLL register block
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 3
 
   clock-names:
     items:
       - const: aux
       - const: cfg_ahb
+      - const: refclk
 
   "#clock-cells":
     const: 1
@@ -59,6 +61,25 @@ required:
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
+          maxItems: 3
+        clock-names:
+          maxItems: 3
+    else:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          maxItems: 2
+
 additionalProperties: false
 
 examples:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
