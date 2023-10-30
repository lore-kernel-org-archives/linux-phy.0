Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A934C41535
	for <linux-phy@archiver.kernel.org>; Mon, 30 Oct 2023 09:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3UUJmXqpOje38gksJV9C0AVkYvL9voRh2OqiVGK5xc=; b=CXxnWgIJkCAObP
	ikEP3Doe49cVuvIOfEkm2DiyJx3wrszz/uWLR3dafGwiTkL2n2DJxKT8zHs4ejN3RAusYyvwLi0Nv
	HzlmyCGqugPlRmpSjpEusy9opOUUUiQ25/nC5HL2PnRA6ekexaL7Lfm4B8g05lWC4L2g2N5dS7ScW
	qmtlsNmmmcdQT9Qg0JkLs4R+343Ma2nMHhS/tsBsyCurkM5p0qLNnFw1/bzW9sYJdqnDAthfKfmT7
	itg7C45k/nKYRySNrwsKIDSygt72H8f9zxRgUvWU7S7okNPdnoNVD5I450Wio/5/ikC0RiBlqzR2C
	4X9Z2YKp9a6HLyHiZkwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOst-002w5v-0q;
	Mon, 30 Oct 2023 09:48:35 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOsm-002vwt-0a
	for linux-phy@lists.infradead.org;
	Mon, 30 Oct 2023 09:48:31 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-507b96095abso6075573e87.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Oct 2023 02:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659303; x=1699264103; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A+s31ZrC5VzgVWo4S6ti1Chy3hSPGjdBjn6xdECA8qo=;
        b=oUc/yrJ1PW46N90YtxWOQFCIGmcvUxtEJfJ0IJx0/gTpdsXd3zSRKldE8cNXu3rWBI
         4PEej1iPLo+ienne3DJ0TmSJ/XZs8Rpup6YbZlrvtgWbgS/x5RQkM1FryAkkcJl0+jVY
         H/RjA8IVSVa1TPLb2Y1kHRcbGFGt1Woo4hK4yHQTnhUR+d2RR8AZtP/siDvX9wtXws1B
         YxRzYnc5eJpq30MKgeBn1MO8GumF0jmyxtj/mFMLBuanRIt4nztx6MTGHQajKr4BDEgr
         q3xvS7Z1qNuI6HU82CADmUhNRAsYk1H70IjI05PbnhOucvQ7ZVjYVBJIvoCl4k35Khfv
         64lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659303; x=1699264103;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A+s31ZrC5VzgVWo4S6ti1Chy3hSPGjdBjn6xdECA8qo=;
        b=ci8Wfuz/is8k5tCy+jHy9doFtKeisDXG793z4FqhETHYLwbM5g07v1sQXaH/py7mgi
         OHsnHrPq8oZE2KCAHA87OYHHfIHjGjXSHyX86zj/UUtNSS8cUy/Zkz+SxlOhihEJaH8I
         WFSpb89UbKAyPHhKV30upFhOnXQhvpCn4y7wPzLHiGnBEVMn2Ll6N9xDgaH+QNsHKWKQ
         FfbwljtP3eP8+OJEHcBgoA6lbabm8xXccKcoQKdBzbOTzlDzxO0ws71pGm+JvfrrdHql
         b4TbxWn2NbHVfRItX25MY/v0ffv4K6Oba6ShuFQfarIdicW0Ljr59MNY7jpfKg75KqBv
         KoDQ==
X-Gm-Message-State: AOJu0Yx8B+liaQfkreTnvIMDUBg8UTTnEhLqf9Xc0/Hw6gZKmQ4la/gD
	CwAvgn13caLNf0726ElcMnlaJQ==
X-Google-Smtp-Source: AGHT+IE8F8NNC3sPgy5q41+rKlt8zQuJ8RgN+m5KV40NAL3J9EfJYp+Lb6rShymZMHF/imCoeJZu3w==
X-Received: by 2002:a19:6551:0:b0:504:c83e:322b with SMTP id c17-20020a196551000000b00504c83e322bmr6236386lfj.38.1698659303058;
        Mon, 30 Oct 2023 02:48:23 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:22 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:48:17 +0100
Subject: [PATCH v2 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy:
 document the SM8650 QMP UFS PHY
MIME-Version: 1.0
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-1-a543a4c4b491@linaro.org>
References: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1035;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=LrivK+UeN6evTZJxEaqfZCKKVlaycsKwlIH1lL0OHhc=;
 b=owEBbAKT/ZANAwAKAXfc29rIyEnRAcsmYgBlP3vi+Rm7cTfTphKTFr6J27j4orI1KhMuGGyqWQ0J
 q1zFtN6JAjIEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT974gAKCRB33NvayMhJ0dloD/
 dbtCFsmBpv2zGSAOcQU09xemAbSxkmEkTaFith08H/uNzJ54mPtppiweJpRMWtNX7n6xhraW5QWEqz
 w4ciAQdIOXopDD3peGR3e7/zhgadzd+zbjJWqw22tJ9+hyde2k5cWL7w4QhFTH+RBPrtIWOk6jDzoX
 QVvsGMcGNApdiRbIQRz4N6pBTWW5T27Stf4tzOgv1+G233XIqfuKlGUCYtv2yFXniOCJQU/Ya/xTot
 /qHkelCgoZH521rmQccilW6lVIVj/va7kqq8Oj7mZ6i82DYFWTfvuN37T5U7MclG0mDMG5tWRhVsgb
 pS2L4OIltLNYu2fgJdn/M8WQDHa1VIKZaK38YtMAQcjFMZUWXjh+8Inl9vszSmVE1YVUy/zFtdVBIG
 1sJzgyuPH5h+KVlWHx7dG1OxHD6KlKN4mZFhTxP/C/parvSTodHJ1Yui95qkQ3wxxgiRZ74rs8Yp2+
 5dhtvgHsWj5fQRUFaSk5GCuTJVVQrCanS4zjjA5VDa7OkbqzJAsw6Nubw3HfGNzkfZYWQDKunxbkoY
 TzOvJG+U4RLHXm810gB5JdQhwVXkduYJrXg9D/fFbStBEROAMD0Z4uja/aRGDmwAF9/2M75Dva5jTL
 QjFi7yiq03hR6tmK0+6JRNW9/UVKjMU5DAYhDvi1YGyxI+AYNakyFGVdhM
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_024828_227588_3077356F 
X-CRM114-Status: UNSURE (   7.74  )
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
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index f3a3296c811c..8474eef8d0ff 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sm8350-qmp-ufs-phy
       - qcom,sm8450-qmp-ufs-phy
       - qcom,sm8550-qmp-ufs-phy
+      - qcom,sm8650-qmp-ufs-phy
 
   reg:
     maxItems: 1
@@ -112,6 +113,7 @@ allOf:
               - qcom,sm8250-qmp-ufs-phy
               - qcom,sm8350-qmp-ufs-phy
               - qcom,sm8550-qmp-ufs-phy
+              - qcom,sm8650-qmp-ufs-phy
     then:
       properties:
         clocks:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
