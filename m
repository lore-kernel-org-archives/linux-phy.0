Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E324FCA1015
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9/DVNLfqpoGFOfQn98PEWWqHA5f/GBTSNSFJHU+Ewo=; b=vW1XWmmOyuopP1
	lvuZlcaBD49siQdkEs3sPP16cu/LDyNlNp5QWHBB5VrtrRIFIYEMJEx9r49Y0vy/YL/wVpcMKwBUW
	kjSUz0E8kLy4cR5PcOtXEi+eih8obFOJWxsLWlD5RdGu0x555jfuQjFghDCRVG+aL/AUiB2OEFYmI
	aqfIaVArcqC7fDbnLENZqOUOTL8eCdAq5Ry4cpqiHoq2MGvGdfLhR4bnaZB/u8ZbP85Qu+/8nH6Lr
	jXe4HyQlY4Af2QTHgg7tVS0Rrpq6NxMOk/m7YIbd9Z+zFauLvjZTse6k/cKeD1Z3zVXXL1ffT8YhU
	TiJVidDbBQs1jT0Q1BLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3tS-00000009gHr-2rRi;
	Thu, 04 Sep 2025 06:56:26 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3tP-00000009gFx-3wSW
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:56:25 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3d1bf79d7acso411875f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 23:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756968982; x=1757573782; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TIJW4DOs17I8IE8cnSF1Ab+QfY3CXf+qZq5eyyQ0/Uw=;
        b=kUDjUYI/85qOpYkiv+KsTu0+zQw+xCV+0nil0hm04Vh6DglafSDBhNUlwr/FfUnEED
         6EMJ/i3DQxZadVz6KCvVyIWLvf3Ml+zks46PM/TdVE2GdOdR1sOlMuYDHb1SLuwIp0ZC
         +qZwboF7s3rPLV/jFexq5UXw2lod4H+/lZ/zQsGGFaGwUob0brUSGhl5p60BoS3ufdGw
         iH55fmnJYRnYQ89ERVC2JzD26+g/0vfMh5N5dYMfJBRdfI4CYSe/IQZO9wZSzqX8ozKp
         3HiRkms4udToyGK1+OQQGk5NK7LcazeJ2X+ey3M6aun3rdE/a9pO8chPYJ455/uN0872
         PGdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756968982; x=1757573782;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TIJW4DOs17I8IE8cnSF1Ab+QfY3CXf+qZq5eyyQ0/Uw=;
        b=eHWGa/CRyP/JEpV+3ceiI4ZtBhhhFCMKcgniWhCKFmrFm0hRdK5xg7MvjjI8ift4Pa
         JtLwkRsR9YpQldA7fEx1pefR1M3sn2/OZmWc8vOdD40f9lQl6rphZZaCZzzLrIOeGo6q
         yV0PjiFIoB5J3pS+moXY68IKudoPv4vt71Uo11UMuSdostHaW858WYRfoSP8XWkYcr4p
         hu+abaoze68J6L1Gi/NKWJd0GIYKdqjvQZDDxXeyN9i91XsFN19NIBtsCoJpmlaxmQGY
         4AUaxZsqfnb49KrGIB71PmwGFlWRJ9afv9+oRQynfks1b1a7hvje15/WzAAo14ktNwCB
         WhJQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5PtWVjT/mDolym6NwUO0KB/tABKpzFW8UbRFAC/wVAX2+NRCi00WUXMtreI2ByBIs+YJQz6NUrMA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhvHQzVGaRQ9GVESA6xQetJdBIVPa2tSWsgEo6MckNEBqPYTpj
	kDh2J8beNQ1rw0hiscijkCFW7iZcSd/j8OolnlhXOLPazSW3DxAp+olCRcgYidMdZAQ=
X-Gm-Gg: ASbGnctPrF+pvQevGCyl7PQ0Qz1jmEIZE0XzsPqnxq/YUOtkNsnxRm4sMaXE7fHCmFq
	5k2xBbwvmWDrO0tCXJGHVkGtKfNdTLWEXcN/q59FlVfi4FCC7kqBta+2iaIZiXU488Gu8GPTZfN
	Zhg5N2NN1ozXENYZr2wZiBxnqHpiOIRFI/Qn5UieL2fEWPupXyLh/6nimzxs8EgIfi+LVu24sqO
	pW1jyxdihIwcNnTyGEOPFMHtnK9DcLXZPhn4T5h+k2VaaYacHlqlAEYvqPJTg/RClENQHc+htYs
	mPfShdTQ+ndLdipklFB4FKOSDpx2YnrHomhY0tDqtUqWQg9TUKGq9NqBTfMt1Ti1QvXyT16abA/
	Lekokx+5EfMUXEe9sujP8kR8ojY01NuvMyA==
X-Google-Smtp-Source: AGHT+IHRwoAxbhGuGQIlrGrcSD0ZvA0qOr+60n+D1k6tu3Y07QMfNcWceUEmrhlKDr15ViXEc/rzYA==
X-Received: by 2002:a05:6000:1888:b0:3ce:a06e:f24e with SMTP id ffacd0b85a97d-3d1e05b6b69mr11774429f8f.52.1756968982361;
        Wed, 03 Sep 2025 23:56:22 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d701622b92sm15256075f8f.58.2025.09.03.23.56.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:56:21 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 04 Sep 2025 09:55:51 +0300
Subject: [PATCH 1/3] dt-bindings: phy: Add DP PHY compatible for Glymur
MIME-Version: 1.0
Message-Id: <20250904-phy-qcom-edp-add-glymur-support-v1-1-e83c6b9a145b@linaro.org>
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
In-Reply-To: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1007; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=HgvQOvx3m4CvBoE5dHF5Hd62HhuXy89AaUrS/0C+J7c=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouTgLKxxjCn1VZ7LJKQe2QBBMb4xTCaRUaHPLM
 JriC34hbOOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLk4CwAKCRAbX0TJAJUV
 VuL9D/9cfeQfJtA3v5YMBBvcdx5o1Luyr7sQmCGbcBDCJnWnfVzfV8QhGxDYu7Rx6vCmHrnhnXw
 Jj0ZlFpPQkMMj/uCSF/Knt3kXvHWDymMKh2lYCoLlIupYFPp4RDpexcI9QkSg0Ikl1xhgLgrJH7
 wbd4LrxcOisyQUUCGUPiMVnOHK6fRWcGUuUXYnqLkQzdwWeRFAs4vvthrc3tKuSXRDw+c6sGzgK
 0V2YxWEnd3QaeH3p2kaZDXbFBLf9t71UCDa7nsu/4Aw31rNkZNuBO66+ISVGU2BGL1xcgI/NxZ2
 POgfA3u2+GHoNY0mtVyWgM/yV7XrQRbCp764ySDnjcZKCDkWdODq32XHbZw0ZJp0p5OeYz+ixNp
 arsjjBsYszJ76H+IWzQNJ+kcu4TraacMZ5X9XynwnbxuPxxnVbV2kpCHGGRJUWoFIM5CkUa7qWS
 uP+H6oFI7jY8rRnbia1+fv2CNiwicOy6TF0Bk8flxQzaU/3r0RhRajq0keAMoKcZ1JKl7eBWoBV
 zSO5LNiEPGPT3trFD6BAeBjme6XjuA/AHGmxVdazsLCF5AL8Wh7Tzu60jyJzmyi4uEIMOzb2W7A
 GH8DXtVlSNogh5UiLgwK49A/cnnoimNlBD+x/PmPlRYt97Ro5ZRzLYqb0KizIiM9bGbv3hKw2iC
 yA6ENdLZMf4VGBg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_235623_981435_1198B1F9 
X-CRM114-Status: UNSURE (   7.93  )
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

Document the compatible for the Glymur platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index a8ba0aa9ff9d83f317bd897a7d564f7e13f6a1e2..e572f6ea3523a483f701aedab383a63af7abe0e5 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,sc8280xp-dp-phy
           - qcom,sc8280xp-edp-phy
           - qcom,x1e80100-dp-phy
+          - qcom,glymur-dp-phy
       - items:
           - enum:
               - qcom,qcs8300-edp-phy
@@ -73,6 +74,7 @@ allOf:
         compatible:
           enum:
             - qcom,x1e80100-dp-phy
+            - qcom,glymur-dp-phy
     then:
       properties:
         clocks:

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
