Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8620C10DC1
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 13:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3si1oN3jkBNt5PZZ5jiw4+Dk5O1kQW7t3MkFeBj36k=; b=ndNo6cWoGSo47L
	rzy9uPn+dK7FGM23PasY+hxJtZxgBB6mGPX6RjjV0+0eB/eW1Th72u1dTt129W1bCPF4lWM6XxInZ
	DZUbKjb3eoJiIYF83DpFvUfhHcYJKc9vWANWO7WRpBcjCGGOgtj5zpkHUucZ67bxBg2w9cXzQcB+Z
	y6KgRTVGjdlI6e04EP1cvG4c62SFHhrsn3X20DwMg2t8jIHitkXc5NWYldBQeZ9jeJDX71qj3oKIM
	zJH8wdLG3tWOeRin3bXcfMMQjEAg9KV4ps1jPrdCcxdxVDo8VtivgQGmI77gHpVKuNk9Efi2xwPhh
	CKCFtclHaVQR0bXrRC0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA9LQ-004h9Y-2h;
	Mon, 04 Dec 2023 13:50:45 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA9LN-004h8D-1f
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 13:50:42 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40c0a11a914so11377305e9.2
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 05:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701697840; x=1702302640; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dpmzJi4akvzbpZuzwJILp8O80QWxKU2Dnd8Kt1I41OA=;
        b=M25obZkW7UnVuEE1SVK/O/5Q8P2PnqQn1hlk+i8VP3AD8IZThDvMcFmeJBeMZJq+Vw
         O3QTASVXicTNuvZcfofuY0pde8d3gkq79zGpgKWXTGHmz7UvtxpVZW9q59FiIQSjvsUp
         n9YPxfcrsJ8JKFc5r0Ini1w3Ab6OMctPxP8jyxdpzAubq+SK3VQpJqDYWhoG8qwDX6ql
         uvLZBwixz0gollIZcOV/nzYB4TlgBMka8n5/PVOC1SVE9tH9DJTpprRfjTHwlB4h/z6k
         RZ4UK4rs8o4zAG1OUrLsg3ikhYAnb/7gCH+r85HORfmNZdBNEA2q0llvx+5MR2e8mT16
         EdCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701697840; x=1702302640;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dpmzJi4akvzbpZuzwJILp8O80QWxKU2Dnd8Kt1I41OA=;
        b=ldDyVQjZQUaYg0D32mjKAsQ5OoILdymYXWAQwttxQH02/fvpFxUNGzuXhZ54MjRDS5
         aisSrW8MHBha6dLPWQzAabVrsHN4tiLc9hvP4dPhI4oCsEgknDm8TJHOxVgxlXARRi+s
         KLPMZNEjeMVRIzj4mnBrXbYnELXT0IOL0VVH3T62RAVvDjZNnus9ReLF8RthT9/C7bkj
         PLTr4AIPNM/fNGHtI2oxgPZ1GE1IXM+MfoQIifCPt0Ypk7GVHxnzEZSwvUKtixZhWxB9
         LdP6Q2iUvcUb9YMkX/Y3KKnLQs0R8ODqYR/b80MC3nb+Ne2f/iEMPiqpeVswLVvF2hp8
         ZQiQ==
X-Gm-Message-State: AOJu0Yz1gaq6u0PriI7+Mr9Ctl00Jxa/oDjNxF9h2efOnoKZusbGXXFq
	s2uONdgPe5NU4di6d6MuZH1pfA==
X-Google-Smtp-Source: AGHT+IHnJHIBosD9vpCmfDZQxFbmh8mjVp6z59RUAq7uA8PJwYW35Q4MLv9j09YEiHnhm4JON9LRJQ==
X-Received: by 2002:a1c:4b0b:0:b0:40b:5e21:cc51 with SMTP id y11-20020a1c4b0b000000b0040b5e21cc51mr2266833wma.124.1701697839976;
        Mon, 04 Dec 2023 05:50:39 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id w12-20020a5d680c000000b003333e09990dsm5908553wru.8.2023.12.04.05.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 05:50:39 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 04 Dec 2023 15:50:27 +0200
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add
 X1E80100 USB PHY binding
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v2-1-1a3e1d98564e@linaro.org>
References: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v2-0-1a3e1d98564e@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v2-0-1a3e1d98564e@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1362; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Xs+AR9omw6vA45imh5zdaLfjBg4ctH1dPKx1UPB8WBA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbdkqXuf2yH7Si9IzdLl7nAlCsTVPqUOgONQDe
 zxd0mNfbQeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3ZKgAKCRAbX0TJAJUV
 VprdD/0YS+qbNkPE6ijUxkEeq9YCScrmkW2nw1o4gD7t8tFKS+2DDYLVP1LBHBKYGAuL2A6bT9V
 Ic5+d2EiBboV08hrOGrnRzKLpRgZ0WyHnwrJML0Xw+Sb1us1qeURbQvmQe7n9XmyzVX/2pasjzB
 I8dvFoiaJ0cs1Mj9djkV8nOmcpUBxtkT81Yt6L2LFuuIQJEf1sNXVoX8oIHpYNXJCRNGAOCKP3s
 FHXW6mMSDKpmnt5JTP+4S7Y7UBZvjpw6Py4Z5FUXtM1GEBd/YO4KBBZrVlIHu8nUdDDKE6sXy6s
 vhZ6v24O4mCUTDz3WM5yvL5+iF56t/v26dwnk0E7+5A6oHugNUmB656nOMqiQOZNP5CEROUSdx1
 w+nJgqw8fvGpuSAPll+mKpWDsFnhmhEVTBSh/RE1LsGaTy0QUrTm3E44TSyymNcNb8tALh8ndoB
 eWPysnieFWBx9HKOr5Of2BCNEaafmq4MscAwcIxrYnQLeiCc8hdliybhHAi0yqDWl2GAdp8UAPU
 LK6N2Jr3l19HVRq1P592faaiiSqwN1AdHmFAxEeSfoWp89fB3oKplDeGCk0ldkdF+WwEab9Ai9m
 ht/IUnvaREszdFdIlC+GqvdfvPO8qeA94j/S9jymdSqV7X+6HyzWhSNmPjXNnYHavUYedWmwQTb
 jGcLj9ufcT/lr1A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_055041_552780_916AC29A 
X-CRM114-Status: UNSURE (   7.24  )
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

Add compatible string for Qualcomm QMP Super Speed (SS) UNI PHY found
in X1E80100.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 57702f7f2a46..15d82c67f157 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sm8150-qmp-usb3-uni-phy
       - qcom,sm8250-qmp-usb3-uni-phy
       - qcom,sm8350-qmp-usb3-uni-phy
+      - qcom,x1e80100-qmp-usb3-uni-phy
 
 
   reg:
@@ -135,6 +136,7 @@ allOf:
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-uni-phy
               - qcom,sm8350-qmp-usb3-uni-phy
+              - qcom,x1e80100-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
@@ -171,6 +173,7 @@ allOf:
             enum:
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
+              - qcom,x1e80100-qmp-usb3-uni-phy
     then:
       required:
         - power-domains

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
