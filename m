Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A2A3D0E6E8
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 10:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DvHTz6+x42L9mLvAjvF8oKJ+McdSTkpwaNAiuk4RRsI=; b=pLAFDfAdGXmeNk
	smXQWxC/k7gK3Fmef/16/YfQDMYvoOop/iasBz/2rNzCmguGrqP42imnbjEBlUlGkJ+Jbl0lmGpXd
	+SQJ9Lmw7nMhMLo8N5KPS3m+qS52F9FSexapBoZ6+1TeH9fRxag+rYGSjckRVdlWjCwzip1otu2g6
	/akDzDdh+cFdLmFp5BysBhTQJZtGslK9W+so99nearqxiHczOvvB5eyQfjajhI0oxpM1fcU1uqvD8
	iSX+HpHC4eUl+s4kKhoxdu5zAOuej+qQZD4+gRpcMpTybjviKQe22ZK6AhcrhMFIpQFvAhrGdGnnr
	CUObb2ZeTQWdgiNf2r6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2pix-00000006tzF-3zbU;
	Mon, 21 Oct 2024 10:33:19 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2piu-00000006txb-1Fr3
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 10:33:17 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-539f2b95775so4990783e87.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 03:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729506794; x=1730111594; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gYfkdNF3O8TZS4V0T1JegIJYADXSJj7bD5ghT8EX1Qg=;
        b=a3/l3pvfTf9oIiJGXaIcRW8S5CboYYIzop8uIYhIOQznhTfqEV1m2DNDl+uIAnXCZl
         IX3XnSuPQXvhJpXPdDWKzeTy2XcYPF0mmJO11Sr4G/XfShDbCqUQFv9Fw1LvvaBRTnA+
         b9PlDTkaDusGjCmP4sTi4XnI+xOGFSHM0XoYIiehCVvBjJYUQSdT3Sq6oSsWIliPoPii
         6i84KUfhydi/v83y/h8UlY/vR2ZkhqAgMpMtVNNRrhS7ZMKocq0W/SMHnYK4oSAVaSYD
         n8NWuPtVV8SmDgvqcqnmlgeuT0YCSKLFdiTZEo/pT9DRQK63NDS+do0YXWHvf/DYKV3X
         t/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506794; x=1730111594;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gYfkdNF3O8TZS4V0T1JegIJYADXSJj7bD5ghT8EX1Qg=;
        b=aYc1RM1DhWlHVQFfU6IWWPuPpSZoyLVzcPx6oPHXeqXdFcGtWYL0OE2AXYbKcGxDUY
         jnaKyjeFVM/deGeHaR4vQ63RWU/SMW6/ooqe5CEGSEi8CmVFF46RatkQPdMdj1Lo98Fs
         3CoX68rc+Q0il2MEWDmziUFjZNoqFqo+JS/LY7kYk+nKDJDrTsaYvNNSKMqWbs1N6576
         OJnoXoO+nU2aFYCNpA//XqdW8UvtvOS3SOrGj+6ustfZiSSLrSjrMVyELv/FGcwxR+Xo
         AT+ZgWReAzEi/iaI/6TlvnEXGxWR54E5CwvOdgzKFrPhpqBoHSfVYREDnbt8Kfek6Sdg
         SeBg==
X-Forwarded-Encrypted: i=1; AJvYcCVjbrA8d4Ch8WryVS4hRpnouXieNqDFaA7YUWsaWG731ziBbporxpigTBTZtt1u4uIlFuCfZhRoCCk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxB7V21Z2DM6Mrl0A/xrJLL5gg1rbEJWl7j77aNXF0UAj7jxt1e
	AHK1rVkssmX6tV6M6SiNIMuhbSX1d0ujfusoKneQin/k+1fIkz5BRN4fgkqQ4ik=
X-Google-Smtp-Source: AGHT+IGmbx2g7eFoaGvGb051ZNzvURUqKvBQWmVN8iCU6PsIsn5QCeAVxaRkUqIa877MeDJYqaKWsQ==
X-Received: by 2002:a05:6512:3d1d:b0:539:e0a4:1ec0 with SMTP id 2adb3069b0e04-53a1546c918mr9981537e87.29.1729506794357;
        Mon, 21 Oct 2024 03:33:14 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a22420015sm454132e87.123.2024.10.21.03.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:33:13 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 21 Oct 2024 13:33:08 +0300
Subject: [PATCH v2 2/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 SAR2130P compatible
MIME-Version: 1.0
Message-Id: <20241021-sar2130p-phys-v2-2-d883acf170f7@linaro.org>
References: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
In-Reply-To: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1242;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=5Y/fABq9b4vk+PutXYP52URTjzKP/DzFXovrE11VWQU=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnFi3kTP8dkpzDsoU+54Z5eLE8yd9nAJri9R0oS
 ALrmpKRzkGJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxYt5AAKCRAU23LtvoBl
 uJzHEACzUv96sfyayVdpKJ6T0eDjASoB0frXf3HEqlvtfoXQxdAtpB/ENJOhnMFSfv54SD4DOFy
 tFEzraVCsiaTtKwTdWgXkbIhcLehfgBRSevnRZTLpUJ9fEOph4tmnBTpa+n0ewYpE5/IPiw9zjN
 56MHTopXaVGw/3N7qrbscxKFwpqU4149ctHFY0UqaWVi1GkZIX5XogPUR/ET4fgtP5tX1qABBg/
 HaJLZ2PIDXmQ8aOQqDRf0iR3j24icHvrIPNy/HEzkoiA52HzPBdwjCAqNRXcKMqSgywlJfYRS9y
 R3XU78spz5Zp1fN6sQoZcjjF7QDRvTjyODFOFtV2bVfOBedsNs545/SSjqjg3jLD6+GkZ+p2ao0
 drDIzn1h7FXPpbbwF+DBaCYkOdaqm1pQW1iMMK8vEr7egSU4stOd6Ujp8DRWwZWRtkZkKakIlUq
 PJ0ftT7yM7YmZIEsmXWMUScGhgfTi9k2pzfKFys+MqYajo9VYGqzEw6h548oJzaFa9QfvBmT+kg
 U0hnDLf2WMjDDYtShpNQWVfpgixw/hCj9pmHl1h+3z6YWCA3NgLTlLhObf/AxQSo+JJSBzyc40H
 9DSkdoWR/DsY1lx9Bk3RrFkPFkJle6/Gj2TX3h5LKk47uGHjaXZBrcZIXZG3qIybfsnqL+9XSin
 8OD0u9CajZ2n0kA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_033316_347479_CADCDAE1 
X-CRM114-Status: UNSURE (   6.59  )
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

Document compatible for the QMP PCIe PHY on SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3c16330a58ec68da32486637e02ae89af9a06a3a..9b3b6fedd70ee924e7757ce531bdab0fb6a3cd8d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x4-pcie-phy
+      - qcom,sar2130p-qmp-gen3x2-pcie-phy
       - qcom,sc8180x-qmp-pcie-phy
       - qcom,sc8280xp-qmp-gen3x1-pcie-phy
       - qcom,sc8280xp-qmp-gen3x2-pcie-phy
@@ -139,6 +140,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sar2130p-qmp-gen3x2-pcie-phy
               - qcom,sc8180x-qmp-pcie-phy
               - qcom,sdm845-qhp-pcie-phy
               - qcom,sdm845-qmp-pcie-phy

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
