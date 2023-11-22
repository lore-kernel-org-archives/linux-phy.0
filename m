Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5712EC61D9B
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DiDKlSOGqbMgUgYtTcOOVHNujUhDjFCG6lEqzWr6FsY=; b=L7LgCHEQ6Cp3XZ
	8rejWLMFOBZ52v3MKf+wynkpl0dg997709zY57kj+odX+D32B5SJt4UMQI6wbPzYJN1xBOxlrpkvV
	lLkImd+O1CfipoDk4GnTXsn9Y/ntL/5MjEe7ovfrao/7cb6TM8U566uhV3DmPygA+TzrSbhrvy6CF
	D9kvoi3IIrKvX3x0uxc/Fodgrrr+TTthIA+33D95OrbOIQaPBvCLJwhSkEokiA5tXoUPp2adIjmpN
	QRrbV61CNv1AHLOKu0tisU3FQKMUH+vlgcJ52v4py0VdHBcIIDclxDN26WzbD5E0pB5PqYjinjNhR
	KffPGnY2s3Ghe3W/xxOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kT9-001R0E-2u;
	Wed, 22 Nov 2023 10:28:31 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5kT8-001QzU-0r
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:28:31 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5441305cbd1so9091006a12.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700648908; x=1701253708; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yT3SRC7g0WcZYpUlZzUhhdSFSVdcOgnIRd9ofgqTgO4=;
        b=NJEi8J17cbM4QOvF8kledQe0kFpx1NAGIBktjrM7IPf9Jfk9kX60UmjxjM9XhpwiLy
         QQESExhfFDLzaMc5EhBLkRuokmdflDbdMBrOBCN4+FefW+JQAtxCPXkooAcCQHB9lBsR
         Tx6Lwr5Ei1sWbvVvJZjKi5wZLjf77PeYtc6xBbVhoIF4Lz7e/tFMuFRpbqTiOQ8wG6Yy
         FkaeWafv/75/8BNEzUKs6qyh9kuMUTtzThvkCUh6M8QOePLGLlCdvhpKYk4YT+GCunnI
         4qZrZowdBdESNQz9bFQdXcgct2TZXO1q4Av9rmizQGPX5mg+pms3HGgOIh9VmV3dEr8m
         J/SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700648908; x=1701253708;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yT3SRC7g0WcZYpUlZzUhhdSFSVdcOgnIRd9ofgqTgO4=;
        b=wD0jzR5+mNNYFEsgLgJVOagjfPDzZr0+PFKgpFJQTQKdjXK31dSNQEgCq0zZsflBhx
         1QCO3UlfljWSW9juuYOkD0eP39jK40aCYgzT9HacXcokAmsE4w35N1pV+xXejOvPNnFK
         aPpUFh4RordR81p/OhtH/TTCh9XAMhgUYkvWzsxgdst+6UncRowk9pPj1SCAuLqHHFOX
         0VGNTWpgaohA5nqwNGOCCb9wkwFeefiVZt8MhxcWXz6z/zMZN/e1qdXYIzhwzg2jjKNl
         E7r5NUPEGMCSIdU2/fXIIitIU4kcreoYPtfwvbSRl1jQivEFy0BxW0moq4tld2aLzb/E
         81qw==
X-Gm-Message-State: AOJu0YyBMsi0dhwcfAZOUAwrlx76AgdfSctQGcf6ul8DCrFxAJPeGJb2
	v409HshQKPDMq3w9fS2qdz2dYA==
X-Google-Smtp-Source: AGHT+IH4SHXq9mLdJwRDXoIJrNJUO5jXfmhoDNQ04drsrbcIGKENJlqOxtY8YoZElmIN+W6ReMJdhQ==
X-Received: by 2002:a05:6402:31fc:b0:548:5272:db61 with SMTP id dy28-20020a05640231fc00b005485272db61mr1534067edb.15.1700648908068;
        Wed, 22 Nov 2023 02:28:28 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id e1-20020a50fb81000000b005488a15b25asm4325139edq.70.2023.11.22.02.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:28:27 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 12:28:08 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom: snps-eusb2: Document the
 X1E80100 compatible
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-eusb2-x1e80100-v1-1-ce0991161847@linaro.org>
References: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-eusb2-x1e80100-v1-0-ce0991161847@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=804; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=RjZWUAyEQH5jFz7bbSGKTtE999rrt7usdRU8o7GC+Og=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXdfHL+hyf1BeyziIAVgHIH/EWgwBzsYhPvxyd
 mJCdGU5wXGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3XxwAKCRAbX0TJAJUV
 VvUiD/9Lozo7g4i3DLoFJIaW2U7tZZJZBp8AvtfEH6IQdCphksxxyrI2t0yXqKOj/hwR/Rijt5I
 G+cJEQB379AvQFoTXcAaE5b7/39aAKCINV8ikvK8B/9iZjtJwkWD+JwieH2b4zKi82h8BCwpBsX
 dN+m+OpD4NYRq5yogBf2MrP2gP2VfA3D2zJd6tPHDlZKknzeiborAk3gA9tOdQdbtfKn7jrNgeO
 uoMc3naEkYG66uo2CVf4pQEkUNvc7e98/B38WZdUmiDK8ejGRDEicgdm//e7OZ+aXxTbDkKXF9X
 wIQUSwMXnp0fqpNLjWfTw/BJcpLqmmQe2pwgLF0ncFlj431y2qdPlszp5qujyyqgw3MgwulVPyI
 gFnYSu0Nmt28gnaquujig/ufAED0w7+MFmpAHFfWEXCqJxTgCtQtwTxf0lnHuk/D0u1opas5Uk/
 Uoz2GDadqzbw9NWiMAXWZrkAAdjymkwZbV+fWUVuO/IT/wuQbaewDxn/zqG1sOnZkN0gGELI/7U
 1rZ7LApfJEQMxgZJ4qiah7dMxdmrluozrjUKiwKNrAoV2ypMLWljY7vEymAMJSm2GHlM79NaEeR
 TtQ4UP3ZdITaIvJbh+rriWAgGhxQiGSrzsAVvpIM221R7M1wiVFTlC2LubgN6mmKylSabR8Szip
 CYsvDf2mvr7H2Gg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_022830_306272_5531B342 
X-CRM114-Status: UNSURE (   7.35  )
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

Add the X1E80100 compatible to the list of supported PHYs.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 8f5d7362046c..ea1809efbf56 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -21,6 +21,7 @@ properties:
               - qcom,sm8650-snps-eusb2-phy
           - const: qcom,sm8550-snps-eusb2-phy
       - const: qcom,sm8550-snps-eusb2-phy
+      - const: qcom,x1e80100-snps-eusb2-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
