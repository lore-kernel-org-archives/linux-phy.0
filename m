Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9345CAC589
	for <linux-phy@archiver.kernel.org>; Tue,  9 Sep 2025 16:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXvZEEhoVNpRB+E+t6ESBWCxlhi8qC90jJEh9JbCwms=; b=EEcfFIWIT1w0ft
	dmnSm3KjR+Io2bJb5UOhSgHL66DFpIB0JEMVs42AD4GsS/MiFYVPQae3rLPHsYPOrr9Wwk01WApPy
	NSF5ZHrg+HCh4xRwoAIaloKBGL7n5Tqe79+gDNTSaon9QWsyvzuUs/PiNLUL1HiQbyd/qAgRokhjq
	nM7QoK9fwKQ4CYMI6TClRFFWXB0eIDlUgO2HhsrlURvAk7sal4QOJWCQHTF3vOcdQA75JQ7qVkzRd
	a3AjCIi68SvoHetebdzGkuJlRs4cDHZZUpNJdvHcPAHR4P3SD/GT+FgbYNbFW2hdINLQfouA6+BoS
	Nl1a6WxtO5PA/+1rBsfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw1QK-00000008b67-1UbH;
	Tue, 09 Sep 2025 16:42:28 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvvGl-00000006FrT-1xFV
	for linux-phy@lists.infradead.org;
	Tue, 09 Sep 2025 10:08:12 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-6228de281baso5575987a12.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Sep 2025 03:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757412490; x=1758017290; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x8PKsA3hbcCLf8IUQFKdfKvwoyrjgr1CbYXvf90j8TE=;
        b=CPT99e952+SOLDffXB5jrL/XOn0A+w7lEM2KNIzQjzcao111vfN9H4oYJlhK9T5POT
         P4dHQY7ZXKRJe3yDcIGOPrhjUEef3q4bcIER7Ajtfog/W/zmS7+9E8V172UV3T3+iOzT
         /PzKFBui4/ndZKg85mzeZwx8buO+22k9cuCmco7/bH7i7jd9LqjWMdElq+vwC0rlLKTn
         fSxFkmk+AD5UPtOEnBDqFK4RUnQL67FyCOS36HZ1NjLesautxb0V/ZjbSiFekZZIOqee
         KDYItkQtP68ffy2DfwoAxeDx3RC+gLRbltrobU/RYS68lyeL8bIHftTFYiw3gwLtge7W
         zHCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757412490; x=1758017290;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x8PKsA3hbcCLf8IUQFKdfKvwoyrjgr1CbYXvf90j8TE=;
        b=Fb12hGwjIrSvRqHecDv0Ip17TEqd39oTwcnk7xABLwgRRCFdLDwEicZUyLUpClnt++
         Me3kJ1WnMBbBIjypkvzVTtouXPCVJY9K8Xxg2Q5DxuECJEbN8YKdx0mHr4mttO1LPoko
         D+33fbXhnoTjPe5vHxz8QbUU2pH28tA24ncT5kObCXdio7XezLulKEYEBdgHQfmNvMxj
         ZzjgiWLj7mgNhzJKhOiKC3kCCV6FkD8eCKhVF77m9kjEsZP8LKeNrbk7yfFhtOVrKEeV
         eSRYeyalw/s4AqLbnfxJmFfSMfQoqtl2orM+GdNKnrh/OXMJW4DsYMmlptVxk+TgSotS
         ghcw==
X-Forwarded-Encrypted: i=1; AJvYcCXemab0Kz0EC2vQinddl5aJ/4mCvKjegzaktrCXJGZUo6KPs3SiD2WpRIysguXjrp3rtMvQt7VUbRM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyazUs2vJEYlHv0JoJvycNiWW9LZmpX0KdyJ/QZ9QTlbScHQOv4
	iIGai7D382HMwJZdC4bfvNPqojIsCXAcLwcIFg4a5pw6gOPkRE7YAo27050xgv16WlE=
X-Gm-Gg: ASbGncvJpUPOkrjyujCcCENxar/1MSMV5OWQCGeRpecDiPMgg0pw2qlgQGBbbGLWxh9
	zBXeSOZ0g5KUNId8GFjT4uRF6Zq6frwDxTQDT5l0OI5Hme2G6ooX7hQhakiGru8K43FSG44P3n9
	U7p5WsyDH7j1SK68YevaCmZM5lEq8ZHKPZqYpaHfwBMcLPIZ8f+IM4a7+9pN8l8GfyOaATK4RH9
	vBfrbGZgnw2jWAjaoX84ePCuyTAurvKaU+amswA0uYGwTqHNXrl6p7bMxQcDNwi8ceTNhZapM2L
	7rRSmPTOFj/1ojepp/ZUR7RPwyQ2Rq6WAWoYJvLxblWGHaBfB0luNnbJqY17eVvI+nGzt6a0diA
	DDiJWTSt/ZplNnli829O7yEg1uKWDxQE67Q==
X-Google-Smtp-Source: AGHT+IHWfA/NvJtv795An80ISNX/g4eyZP7imfZNeAj+7gmKXZ9qxdyvphhOFxdTr84Pm2VwUCUoaA==
X-Received: by 2002:a05:6402:2342:b0:61d:90d:1431 with SMTP id 4fb4d7f45d1cf-62373df67d8mr10477327a12.10.1757412489840;
        Tue, 09 Sep 2025 03:08:09 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62c018f65afsm965379a12.41.2025.09.09.03.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 03:08:08 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 09 Sep 2025 13:07:26 +0300
Subject: [PATCH v2 1/3] dt-bindings: phy: Add DP PHY compatible for Glymur
MIME-Version: 1.0
Message-Id: <20250909-phy-qcom-edp-add-glymur-support-v2-1-02553381e47d@linaro.org>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
In-Reply-To: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=976; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=ItF/HMZ6S5OBCHm6xKpPP46GBkD8+N8VkbEbVV8pWR8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBov/yBnLAeC5QI5RadrWtDwrlJlInPJ8UyZpMNz
 G/9Tv00Q6GJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaL/8gQAKCRAbX0TJAJUV
 VoecEAC3pWIuV6FBpIuIUo6D1ojM+HtFHItx8awv4geaaiv2Zdp1AEJBVAujCULh0YMA8HFmx8l
 /eY6zzEEC7IdNQHeCf12zWHq7bmpaeoSvcYgvoH0wHiSXlWfGjtMKSvpOeZY8WpfBOqcVK8qxCm
 1jDmDE6PNx0Mh27L7Ilok9kAYhfOQgGJOAs1vjOdwbBGnJroyvcRUMc2jcVA5hKzJ88+8KDxMni
 UV9IIqmiepOMt2KqoBEwW9k/vXeuRbuhsQAE1Yh3Jdmxneg9l41zTmsQ+KibWFNQy8dWbdvgm9b
 0UC2TBx8MiZnP4LSJLHTR3QtycEoMNNjexv842gA3ZmTrgvo811T3kz9H9Hem49iN054a/XfGFg
 2nbd6SMtOtf25eMMbmOY1+zs1vYiDaRFtvgdk0nXD4DcNAlDfbfqZIloOJCsBuSJzw8GbPsN8LG
 s87m/FTHqFxqsZD+aFMw4nmpSM6mOSxbwKnPUEvDKqEfzEMUymD2Mg5Enc5Xarj1QtFlYl6IkVJ
 CvIsudaSY6iIEo1I/Hi/tXdFl6/IUu5wLbFn9VrN3bXbYlChToiG3FgInvX/tmf4J+SRANaOfEu
 WX9rHwC0C5QEOHj8L9b/gCEUaJOw9GGLHwDXwFk/tvN+lUKWWLWjJCsI0zDXByb/2swPqW7uKe/
 ammrGh7kjFoRxpA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_030811_511707_0476BB8F 
X-CRM114-Status: UNSURE (   8.08  )
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
index bfc4d75f50ff9e31981fe602478f28320545e52b..4a1daae3d8d47ca5f08d97a1864cfd615dcf108d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,glymur-dp-phy
           - qcom,sa8775p-edp-phy
           - qcom,sc7280-edp-phy
           - qcom,sc8180x-edp-phy
@@ -72,6 +73,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-dp-phy
             - qcom,x1e80100-dp-phy
     then:
       properties:

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
