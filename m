Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66AF4C48BC4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 19:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKZSm2fKqc6CBeG9IGt+qj38+2Eah+QetLrMVUAvEF8=; b=AJvTYkIk1XmoM8
	W/v0jbeBh7PnjBp0Vw7iKHzmkbzaldbeLvTTOqpbO7hqgNHEijr+qK5gT59U6euOF6SpwlT/D4TK+
	tT9gTRjF3pdLmiMsGbk2dG/Mk83nd2jxoOjBWMu2ok24Hh2bqzoyYQhq0ehhRSFqhqc4UKyp9ndzX
	L5d6BmOdgC97OGOXzYxMyHR+q6HvFBqJ7EKMo3AAtYCGndOGJkgO17j8RMbFqPtU4XkGF4Ymk33ZE
	Ak/G0iUtVBy5McQe4SuX8joV9lONm0155zwoTki1a5ZbT3Ej2pg43qsQcFrAeSfwhyyy3Wsdzeg2e
	3ZpQ5LPMFtphon/LgN7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcW0O-0000000Fz97-0LfH;
	Tue, 20 Feb 2024 19:42:16 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcW0K-0000000Fz7v-0edC
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 19:42:14 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-563b7b3e3ecso7285972a12.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 11:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708458130; x=1709062930; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=68h+LE3V0lr/x+lRFuw+jGun3H+4YcH4pkj7W0Hoxgk=;
        b=muHyFwTA4HmDSP492iiUddAWxLHHtbpIJ7zJuBoh9GgtV94BAdp9B7P2MoWkubb7FY
         62kxHT45BNsksWyrMbCH3FPDFvFSCGEz97eMl+tcLBpxFROtrGctq/d6LrkoAt6VeWn6
         UFN0kwWuCsOxcLZAlDnaNLnO0LB5gr+2ocqrXhf+QHkxpPYWFzQlftpdyrCnoILdlOMH
         IKwqVt4ucQWaT6fIascKINydVoUe8MINcCn3TNCjtThHmfW3Ro6My2+jwWoRkFxAMcBV
         s/KgG6kp0/jneZtE4lQERwEpCQdq1ywFip0au/e1ELOBMVM+RiWQFzL62R3pUg4w84/J
         ntJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708458130; x=1709062930;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=68h+LE3V0lr/x+lRFuw+jGun3H+4YcH4pkj7W0Hoxgk=;
        b=ZjiR+8XFqmR1aghIhMlCJyl2MXPOQilUH6np83+ggOA1QNBKdUt/dJljlyQu3cyLN0
         qA07XXSZQwoBddynZVZK5ivyE5I9oFMQ/WZG8XZUJTY6+ZIbocI0gfGdi024dKoWVcBI
         EhNeWtjvoVYYcMS7Ka8IwfLiut7p0VVwtZaZRFwha81gmFbDvAbYz3u1RwmDcgboPzQh
         j6VHKbRfg0TESUMcQYw0eGDbnBa3NUIwv+HbOex8SQVIgCxA/D3H/mdxbO9+F2buJzSB
         Th+afyjpWKKLzr+ktyGG4UqoQUNwIwT9HiEym7V/uSacbSqLaKyAavsgGvLT2VbCvyzP
         n12w==
X-Forwarded-Encrypted: i=1; AJvYcCXO1UX2E9WOA1jPzIWcTLLHrl0Lln3wy+nYEWlRSkKnThZp1PbYrpcGZhYmPnb3TqSgvJv+Nfe/WIFyQHeoV+50iv6sT83jiWUV5n6N6A==
X-Gm-Message-State: AOJu0YymcDq4jEyKTgQYBRFQJGK+he/K/IphyjD4Sw6kDd/WRREb7hcn
	L1sivDQLBxBJbYzQWir6Pr2DpzxQHGQ0eY64s+KC+5M+vANQraFmZYB06DMXSHB5tMW+T6ZxVoI
	H
X-Google-Smtp-Source: AGHT+IEmN3u9NfNCJHi5YlS2KPIwUVANNjzpvxdcGsi7+HFNP9uN+rCikJJbcI05RahxcW0koN940g==
X-Received: by 2002:aa7:d899:0:b0:564:4028:e2cf with SMTP id u25-20020aa7d899000000b005644028e2cfmr4651208edq.24.1708458130436;
        Tue, 20 Feb 2024 11:42:10 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id c1-20020a056402100100b0056486eaa669sm1906822edu.50.2024.02.20.11.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 11:42:10 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 20 Feb 2024 21:41:59 +0200
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 compatible for SMB2360
MIME-Version: 1.0
Message-Id: <20240220-phy-qualcomm-eusb2-repeater-smb2360-v2-1-213338ca1d5f@linaro.org>
References: <20240220-phy-qualcomm-eusb2-repeater-smb2360-v2-0-213338ca1d5f@linaro.org>
In-Reply-To: <20240220-phy-qualcomm-eusb2-repeater-smb2360-v2-0-213338ca1d5f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1000; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=SIo7UuL857cJN/BAk2/OFWYIDGu1F5bYNPOrEFilIxU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1QCNOAZipYAXjBdAijs80zBC/8NG6RFfVTGz9
 97PbulbEI2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdUAjQAKCRAbX0TJAJUV
 VtFmD/4pQdUIgFWfHGlCQU/z5+p7XGVVkaS82l5b7PjySJRSqhcG0utgcrUheaUccIIe6WKt+ud
 aneGbMEBXiqaIfLG7jwggwntMT0hXUhf+0GwqznWXid+XYOClUgXvHB0tLP4jSsTXYvASZWdYWJ
 ovUnzG20wzUwOjcyP21L3IVCWxw33+CVDyj+GDycVQ3a7TePPhiOI4FJkonzk1wnBXolaetI08Q
 HBSCvqic7GPndYXb6iZUApNnL6Zqb+nLbkcIU0Kk2X3/zukCvOij5OJmlnmiEOSvSecYODXcyJ3
 GIErepa7iUsTU0UcUSYN8NMlM1ZaAhBX3Px9+9A2pxWp9IVOvvs+OwVxjlNw9/16XgYj329wTX6
 dZxSNXptwFjYAZaQGoioxUTXFgx6+iKZjtUNsTgdzgrrauj1MGlfhAu8bh8sIm0nA/m/jFqaIvH
 a/ZAKjU67T3bsDcYu9b0XcTJXOnuItoqgc8OOYtEU5McZss3W6uiBvDRBYt7uEv7sHunxzShGC8
 e4tLiG4a3TYrIhyvAKSzJaNw3EoDkFFjnreg+/Cal2BVZ7gbVOtRVej888ZNIH6eX1CB6oVPmvp
 TI/9AM13TR+/DMQziN4bdQZNgtWJoZLemkLjQVRjfMzxw0UOw5LRk9zgowrwBWyodZA53LiuLss
 KR1/B257ikB506A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_114212_227728_A99A6195 
X-CRM114-Status: UNSURE (   8.40  )
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

Add a dt-bindings compatible string for the Qualcomm's SMB2360 PMIC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 24c733c10e0e..90d79491e281 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -20,7 +20,9 @@ properties:
           - enum:
               - qcom,pm7550ba-eusb2-repeater
           - const: qcom,pm8550b-eusb2-repeater
-      - const: qcom,pm8550b-eusb2-repeater
+      - enum:
+          - qcom,pm8550b-eusb2-repeater
+          - qcom,smb2360-eusb2-repeater
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
