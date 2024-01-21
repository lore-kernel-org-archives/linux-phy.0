Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0404C47DAF
	for <linux-phy@archiver.kernel.org>; Sun, 21 Jan 2024 16:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rt16NISOKwSm5j72AU2r4hz0vmnhwwjWYbmnS7HgUIg=; b=3Lh470voUgLJL5
	Xw+FZ4wplPaFwlsRRgRxlbf6WFYHH1/a86ctph/Z0s2+sJQlMjyKzNie8NYgOnY/LMelcrxfgNy7F
	kpjmYaIZmyNUQi2RcobPDLszcPuCQVPIYE9mmGOr4Kd5KDQ78HfvEMvhR88YesDSoewGeZSN3WrCz
	m0BDGk2L16PPapPPWgMj2oleqmB3HhVRKHEDWi4/xjEpXkQKX9Z6hWxyoAcCRoCN3J7g8CWzi2LUZ
	BtIRIUHT4FqHDvif1wTsVHkEk6qDf1srBvnjpzI0VSKavX7Hwr7wBIwuO9ubkW1ZNRvyUjc47eL/p
	nyBRLfMXN5x3B8qzCvoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAK-009lwu-1D;
	Sun, 21 Jan 2024 16:59:24 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRbAG-009lub-1c
	for linux-phy@lists.infradead.org;
	Sun, 21 Jan 2024 16:59:21 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-339261a6ec2so1155113f8f.0
        for <linux-phy@lists.infradead.org>; Sun, 21 Jan 2024 08:59:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705856357; x=1706461157; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xrP9wfCZ2jd6RtCktC65pL13ukk88B3IGZsPZAZd47s=;
        b=ENK5djetyp2wkkKV6D7hvOv8ZJ/JoQK8QwOYoGjvERIkg0bsJxoVfCp0Y8vUtQLY/L
         royp6YhHlCqJChxpDlXfwRpzHs6dPL4VMwxcQ0aUF98PhVr0M8+i2HCij+7GJ0EYpTWU
         b4nqd0sWh79cPSRwNNzy3WQIMhGXAQXL8gYJG1IIrXGMc4oka8j72X4Tnm1I+YT56MSO
         WDEbRVb2yZRHQQllL5XV78cN+2qQIWn94Mjw7s+potNBO95EGXxoQ09a7AHOg526APWA
         EKf6KRVwX7NyPtRqWIFDtVormjT6VAANzKmmk7dbzEsqYdS8hR+0jNiwlRf9PaPNJaoK
         JtbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705856357; x=1706461157;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xrP9wfCZ2jd6RtCktC65pL13ukk88B3IGZsPZAZd47s=;
        b=dMQWUAOBwixlv7hrhdpv23SK99UCARE90BQ2Eg3VQrTkk8XybFdoCM4+rcclmwIPak
         wdMqZnev3fOq54WeIaqQxbTCtNZK0AtyFGsGIrVLyVml2vYuNd/rVRRreGWVfIQ3gWZN
         Bls7jtLI/pY+WCpPpVUUcPtJTcTO4qJnYVQX/1J7AZDsZJbQVh6/CfSiRZXqzG3wG9TF
         Wvd5MBrDtGuS2m4KxRGDE1pub0WSg9amK4O6SwjciuxwrhQl3XO3l/qdtf5RPiiJ2S9Z
         OkpJ+nhnE6D3Bc9P9H+CB9v+kh019hPCjO9J44J5/xYgXAhqLtJIgy0yhk8radCjaXWE
         GQ1Q==
X-Gm-Message-State: AOJu0Yym0T/lsqlMkcjfHu5GB6GnntFdOqpruA9wPknpT5w3gP4Eh5yb
	sVlihZp7MzdSRBrriH9y/DrjVwGdds0jdDzWdSYN0HXFY+QNlFtn
X-Google-Smtp-Source: AGHT+IHgwqwfnrwyYx4GELirb4O616sy167S9jUeoBLlOPt8dQcdntaeRd2H0ZUNOYNgKGDoH6RGhA==
X-Received: by 2002:a5d:4909:0:b0:337:c409:7185 with SMTP id x9-20020a5d4909000000b00337c4097185mr1484584wrq.94.1705856356794;
        Sun, 21 Jan 2024 08:59:16 -0800 (PST)
Received: from david-ryuzu.localdomain ([178.26.111.181])
        by smtp.googlemail.com with ESMTPSA id q5-20020adff505000000b00339214d70b5sm6541115wro.85.2024.01.21.08.59.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jan 2024 08:59:16 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
Date: Sun, 21 Jan 2024 17:57:41 +0100
Subject: [PATCH v4 1/8] dt-bindings: crypto: ice: Document SC7180 inline
 crypto engine
MIME-Version: 1.0
Message-Id: <20240121-sm7125-upstream-v4-1-f7d1212c8ebb@gmail.com>
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
In-Reply-To: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 ~postmarketos/upstreaming@lists.sr.ht, David Wronek <davidwronek@gmail.com>, 
 Rob Herring <robh@kernel.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1705856354; l=963;
 i=davidwronek@gmail.com; s=20240121; h=from:subject:message-id;
 bh=qVaislNuQL0+E4M3fCbQWAEijGl2Fh676slFhuCB5ls=;
 b=9HTrsSpduIv2mwBjs1XJi1bw5o2OEcQY6lYj8iILvPj6Y+FxFPgzh2qDpXJ5dJGz4yaUFWh/D
 9VxDlSzjpLQBGBZclcODRqlOx0Fse5/u9wppCugvvn63EQVSewF52Bv
X-Developer-Key: i=davidwronek@gmail.com; a=ed25519;
 pk=PJIYyFK3VrK6x+9W6ih8IGSJ5dxRXHiYay+gG1qQzqs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_085920_534390_D516E6E5 
X-CRM114-Status: UNSURE (   8.75  )
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

Document the compatible used for the inline crypto engine found on
SC7180.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index 09e43157cc71..e91bc7dc6ad3 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -14,6 +14,7 @@ properties:
     items:
       - enum:
           - qcom,sa8775p-inline-crypto-engine
+          - qcom,sc7180-inline-crypto-engine
           - qcom,sm8450-inline-crypto-engine
           - qcom,sm8550-inline-crypto-engine
           - qcom,sm8650-inline-crypto-engine

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
