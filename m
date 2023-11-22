Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C93CBC61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Ee4ac+MSTGyMjhmmQDnHU8owBxezTcQBLHYdsbYqW8=; b=HBN75PJMX6QOW2
	N8WUV36joFpWkmiy9bSf5rjeXWXYcxKZM0dknOepPc2Aa4Zh45xSEIRSzkqXGBGrQOc9A12067wss
	VunysoVa44EaPs599O+VorTzrzrD8gh0cr3i0YRdJ/OoBmf3MJFxFDanDjkY7b98/E2TjSaBcF6VO
	v3w01VQfoeWrJLdKsQkBE8v5HSGYYVnvG01TjDiTNbQDo7fYHTvVzE+KO4Ii5RiAL/2MlrA2orRXt
	8DiJHPUEvj0jS2RamJdVJ+4Nbpfj+Fs/CNgobnMw/BQiY/s0j4a954Db6PAcINRzEgS6KzHY5pMoT
	MkZRwnw+Xuw70yK+PU6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5ktq-001UcT-1m;
	Wed, 22 Nov 2023 10:56:06 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5ktm-001Uau-1s
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:56:03 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a0064353af8so142236966b.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700650560; x=1701255360; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AR9DGP+JQhiURa6YNx5zsQUGn7vxejxt9rphdfb6FU8=;
        b=ZfZKTTvdzkD3rMS9eIdbjOrWmYjq0UDlLD6cQqJ7LSFY4uX/OQ/wdQwWodbQvwQRBJ
         xUNkyAYdBW+WBJjlIYxTAzWmQus9EhZRSxIsFmtgskdA2/kiC9D0RD8lwHOvsKwhs6GD
         r1FUMnwlDJBy5sYU59IrwQ2JadnjNd6/BYh3AYT38ZSn8AEppILt9kyWFh8L4+MZEPsw
         b4rGugonp0XSZWwBLT+2QJ5hStbPueMqXzlHDbJc6Qn0+Fk/RwXIqe6PcdODM341KXNj
         c4fkR3hbPjS0l0oJ+vhjJ6z+BeupdJu8fo7Vbkdkrzmh7Ogi140dL0eUjVToSRtI0PsS
         fVUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700650560; x=1701255360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AR9DGP+JQhiURa6YNx5zsQUGn7vxejxt9rphdfb6FU8=;
        b=AYOzq6+646DvVhOOU1PutZJ6Telu3P98XtSibr1w6gm0I2KGQIYxmTsUY0ZbjtqAun
         lD6C3kIiDevbW9/qRXQtq1+FBLub97s9t7s6ssbjtlDDI6WGtumRYau2Hzr+3Lc3XCRM
         s1iWLwuRLrf6vTlLPVJ6pkigeptqkze5hQvLhpVdgliU0l0pVVRhTdJqjGKqiycYVDeC
         2REifpf6Sqm1k4vKDA20cPxZ+f6xfZfARupgAz7XDpr3Fwkg0zOZQfqlfocskJdsdIxv
         VSWq5I64KoEqLU1wL4hKGAumB43WKl8snQXDCMN4yg9bYdR2AcjTb3Xu177eokSR0oZ7
         t33g==
X-Gm-Message-State: AOJu0YxeKXewVMsYMrEg6iLMe6Znp9uZz4YG+HNHCoZYi3zXEqWdVNhs
	xzxWPpXmzTMec6RAh1au/rSnojh1XqstIn8IhHw=
X-Google-Smtp-Source: AGHT+IGpQSUEpRgFT+zeuN4EN0klhOh19aiZ62ImloREVKOoIKKapIpDoBnxp/k4d9cWnYmHR0/Fcg==
X-Received: by 2002:a17:906:da01:b0:9a9:f042:deb9 with SMTP id fi1-20020a170906da0100b009a9f042deb9mr1620474ejb.19.1700650560453;
        Wed, 22 Nov 2023 02:56:00 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id mf3-20020a170906cb8300b009f28db2b702sm6423557ejb.209.2023.11.22.02.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:56:00 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 12:55:48 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom-edp: Add X1E80100 PHY
 compatibles
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-edp-x1e80100-v1-1-a9938990edb3@linaro.org>
References: <20231122-phy-qualcomm-edp-x1e80100-v1-0-a9938990edb3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-edp-x1e80100-v1-0-a9938990edb3@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=766; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=47x4DceRm3tCQ84A+H24YQKTKXLsUy4vs1DvIZFUxYo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXd47jtfoUWWWq1bSqU5Il/tnuIoOdQpW46XIB
 ejEpLcuctSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3eOwAKCRAbX0TJAJUV
 VjfFEACOweqBEkv+85EBXxiL/6SI2rTG89ykNUyuIxr/hAg7E8yEfgJQNU+DFBDZrbP4NsbgRQr
 GDwgrFa3N2TkZSq/XJxsZ535oofKqv30jeGqLGEDd4lEctQKR58ey0OUBreHNxm4imBIgOo1O4P
 PIAzNgkhwTvbIKTcWzxKaolAwctveJRGAW9ivxIP2I6aOv7AqPnKDzqa+7X+69t2A9dLn5xHKGs
 LEKTHQJi593z5YY/aPOirGjuoUH+Cb+/ScS/iDfdIPz7756NWP+4RvZFK5D7veybgrf3x9WurMx
 jbKQLGPL4Jm2Iu8/lGQfc/8eapOXzt5t0FEJdFhr6r9Ct4wuGxv5SC07F6hXgXlSb0Q984DgEA4
 sbQzAPWVycUoG/bpnSmwE1m/aJ5WpiAhLjoNvvE9zO+Hzcr5dXCe+WpuXiS0cZaaebwBN7xYKAq
 Er7BFU+IsuEe1BVm32KNZ2IEgf0SwcB8Qy7CqP7UwNZ86bDZTr5LKkaR1OJyDuR2ntNhX4sezlu
 7iQy3zr6NKkvhH+BGZlDsOD2PJnAM4yeDSSJobyeBY+/T9C34/oyNrHz5O26fL61bfKQ7DA5aSm
 Hvnyc74+Yl+E2eCrL5Ai6uXx5GZrdTGcavIRaznNSNXZgbrYvknQxoz6sw+5LbXV6KgZMuCdcss
 Yfc2gvdMo9RqZ9g==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_025602_615034_6D7B1BD6 
X-CRM114-Status: UNSURE (   7.81  )
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

The Qualcomm X1E80100 platform has both eDP and DP PHYs, add compatibles
for these.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 6566353f1a02..190f61c1d0f9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -21,6 +21,8 @@ properties:
       - qcom,sc8180x-edp-phy
       - qcom,sc8280xp-dp-phy
       - qcom,sc8280xp-edp-phy
+      - qcom,x1e80100-dp-phy
+      - qcom,x1e80100-edp-phy
 
   reg:
     items:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
