Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E2D7C9EC90
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 13:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qKq5uNp/q5Qa+Hw0rKPASs+NUogggaGspPFUfa1Rc2o=; b=x4ENkGIi6L1NwI
	cAk2fB6KsC8BIaNjcPuQhOk/8Ez98cfV8ZYt02D22Mcwa3SQXEvkr9lLK7ZZQGk3X4f5K2YhzQiB7
	3GILbGrjmi8G61GfK5vE0vwfbnv2tLyk1mw0IfX8/gIUGWMs1qu7IKux9c5UChq8QgZzoEDrmDTLO
	yPrwRzJlk5kp1Kj/bMzdYk1yhZlhHH8Do/rP2hfgR2MJGBpg5oPn1ujnz7hDiH2ROztj0s+hVjXBl
	F47n1jaagV8/qKawJtxBiDX2IOmN8H5d+g9Bja5TyLoRUx2zauaYBwU25UDt7VFYyC8kl36LYvMcP
	DouYbMorlQ/NQ415phTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMD-00000005Sfj-3OJq;
	Mon, 12 Jan 2026 13:53:21 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMB-00000005Sec-2KKl
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 13:53:20 +0000
Received: by mail-ej1-x643.google.com with SMTP id a640c23a62f3a-b83122f9d78so1031060866b.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 05:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768225997; x=1768830797; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p6GBn7KiZoLHRbB+eXZ1LBCN30jAII3dIqXdIjZE+DM=;
        b=jR3Q3ly8G2S/1G/EeXnCkb156KBWvgBjBiGO4DQGVRoLkFoepqsL/V4Tw59QnHnlsz
         /nC1xca6/MktMk12aUsHhRYbYMU4Vssf4xzrFomX/JXZX/ppzM9NTVL0SdQo4UatnOOM
         bDFG+kS4rOZdQHMWeq36f3nZRYO5JP2wLszFbU3rc3gH6sXQmseDz2CkQFi2WflRWMAL
         m4+KjFsB05NAfw/+bLZj3/hzgL6zkNkV847oE3G7mOIlP0jVQ1GRLkHrULYOC/3+7wSn
         8Ga/+g4yMTGUemG8moXwKhEa7os41rp3sDYYKWBMAv6rolSlzcVMD3UKbipiDoUQLPG/
         AB2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768225997; x=1768830797;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p6GBn7KiZoLHRbB+eXZ1LBCN30jAII3dIqXdIjZE+DM=;
        b=oJ0HsJp9CU37NlK3fiVYf4OIRrnU5TW/vZh3Fwc/Fo9vC7o+YMEqpF1XZhKRBZb26T
         46YF9UGig4njDMA1hjkUN/ogV1+55U2AtHi2VdjwxmzoSH01bo5yeZCRueCW91vg3Pch
         FUfu/hLXIVhggrMQMEB6iSusdu0DajBBVAjQj5Ld5I9Up3V8QjPar1qXK/N9/YcEYdQO
         5TMTX0NG0n7lEtEqq64Cfk33Mugqi3xixIotJFWrUR5IKpGTQfnKdVvr/Py+W5cJgc+f
         Kx+S8yQHB3dEXF9JVz7vTwMu90nRXt5K+XAJgU/gcV5Fc1Avyef9uPgbIRvzpwemptsT
         nQUA==
X-Forwarded-Encrypted: i=1; AJvYcCVNaAVNYt3jur12r+SLpFIEeMQ9lrl19/8JsfNopbvUd4qkRCB/7LjhOqvCQfhnPeTAOTYPS/erSvA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxo64mxKPWfKeeJqkFbiY1M7kmzU9kFn52PGPCqsnUTxtO2/Lks
	GmsiGotJH9EZ50qCYX2rPBcWOcR7/+iIOqVP8TU4s6JiZPg0h0isMv+RRL8b5fZrtKI=
X-Gm-Gg: AY/fxX4MPPkfgyqJjtANUKt7skCrBlc95UMD+hQvE90KHiALTAnLm0VzDHl3NyzF+Ga
	hkmcP1Xrd7VOrT5MXKR2gye7X0OGzpAgMT3QyZjd/H8wGWuWtVImzKa1ToVsfjWegvvpli95Aod
	iHlhoEVxqfYwSWYTrAEfImrf6fBksX73X2WPH+h8LOeIzglO/Y5R3pl9E/0vWkn5smPlP+JcHLg
	OFZnSoMcmtczF8sl9JI2DoReqowpKA/C9lCO92d8sE8f87OHLdMxIYQyNu9Z5C/bRnrbpWELMTG
	eHmh4zaUc1UlWLPgrLoV7eQ15PHDyI+g/q9HsinWw1hp4FmSYw7g+qKUUkvJK5E0RQkroT/VJ6T
	Jwr6xhMwoZGZfFsMKsYjMfhE6jmlDbhcLDoB3QigjwCDHgZviuZwSEZdfz6/cXORWrt9M6/VDEF
	j5Lxp7roWqrIe5y/0gRoQ749mx2bQwEzuaEpzaFgPYWojF1pevtRvx9UwR9SzgW2QU
X-Google-Smtp-Source: AGHT+IEd+nXuoyJH7y+5irMovJmQYLD5UodxDOlxMBwAbUiTSj+cIGE3y+/oEJNpNUV3FWxwU1bJFA==
X-Received: by 2002:a17:907:3e83:b0:b7a:32:3d60 with SMTP id a640c23a62f3a-b844518a88dmr1900919266b.11.1768225997580;
        Mon, 12 Jan 2026 05:53:17 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8731f071e4sm25700466b.66.2026.01.12.05.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 05:53:17 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 12 Jan 2026 14:53:14 +0100
Subject: [PATCH v2 1/6] dt-bindings: crypto: qcom,inline-crypto-engine:
 document the Milos ICE
MIME-Version: 1.0
Message-Id: <20260112-milos-ufs-v2-1-d3ce4f61f030@fairphone.com>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
In-Reply-To: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768225995; l=978;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=qxN/7SFXQgGYehqBL9aUXI1J2mEyleNlSfDJOc+cUfo=;
 b=+6y4wusQhtRueAHKb3ZVs4ptUD/5lU0HvbI8iylXgKJDlb89tUPOMEzoqIO5WEYaPfvbSmSYp
 Pq9sp8tM9qrDpSD5sTGW1dElYTST04D3dJj3ez+bzIGdUXXzHTuaQbM
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_055319_611965_6771ADF0 
X-CRM114-Status: UNSURE (   7.61  )
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

Document the Inline Crypto Engine (ICE) on the Milos SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index c3408dcf5d20..061ff718b23d 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -14,6 +14,7 @@ properties:
     items:
       - enum:
           - qcom,kaanapali-inline-crypto-engine
+          - qcom,milos-inline-crypto-engine
           - qcom,qcs8300-inline-crypto-engine
           - qcom,sa8775p-inline-crypto-engine
           - qcom,sc7180-inline-crypto-engine

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
