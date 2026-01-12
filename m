Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BDB0C9EC92
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 13:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IWjIefuP3iBZEpJ8ydL+vqlTelW4tTVojjMrfKmjn7A=; b=djjFjE+r+F7Jgc
	lzKvWI/dytjoSYuInC/zY4wx5P+ClDA1nL5ubiCiT07AB25KbxBJ3aY3bE4f+/fQXC2uCAxvGwM2F
	U/P/U/KXglW9ZDHvijUT0g776rxuANSAbCFKQ+gcnICCRDRYS2AzngIm3mAHB6VfvIXgAiQ9DrdUn
	6Dt6YH0u82LeqeyQpv/qdaDarIOvI/CuS94mNQgM2+1ax0kjWQixLGmWIt+KVl0Mc7vWrCK0wiCUP
	wsN9Jeo/eeEEb9zrUSjMbuajeHIeYu5WNg5N5wCSjp+Szp90t2zjVZnj17tXcR9zi5FAnFMemUKt1
	bZxwdfP5mFABIJTQL6Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMG-00000005Sh6-0C4L;
	Mon, 12 Jan 2026 13:53:24 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMD-00000005Sf9-0hDW
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 13:53:22 +0000
Received: by mail-ej1-x643.google.com with SMTP id a640c23a62f3a-b872f1c31f1so50237566b.0
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 05:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768225999; x=1768830799; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Riko22R3LEFHoPXODAPQuN7cY7xnzdRvNV/1KcDSv4c=;
        b=bsDIrspdgAEp2OjP2I+zZEwjxQQ3j7j8laC2dKJZgbGH2fgBUsZJ6paKGUshy+5iKI
         rMe2pP5iCVmq6phArUwLR2/t/eXCPthYiopqv+07C3QIFtwzUPy3M9mOgcVVx9b5iGwL
         ny9k89Pp4wB6DGazdI2i6iC/i10cv9FOtTjKfZ/DGnAvQD9HEGG+YRRjGvtcqHUObTts
         3OuCf+VmRTeC5jYLmfB3uhBeYfU2RtRbm170GlNXK/CbmvHJr2VsOim2ig5cxbO+gp6t
         lEPCsLsysIxCR/1Ib4wM4jnY5oyDH4mol6hNc+Aa2apfdgCPt+sn69kuSKB1b2svvnt+
         DY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768225999; x=1768830799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Riko22R3LEFHoPXODAPQuN7cY7xnzdRvNV/1KcDSv4c=;
        b=YFKQJS73GtaD//9bi+klZifE+qBMOyzTYIMTxboeFqhy9iwT34fyaNItGPOWy59aGv
         pvKO9OmnI3AGNWBXuylM2c1H017edWktEc89Cg7txGrVFFr0oiIQuCyIhRFM6kRo5wtQ
         lYm0gRp9fdDfypOo4fMKEa+f8RXzqv11x+3PJqeo96jZrt2lLx5SMR18VGvm0Eiq6oWo
         vVq3oeTDgMexdrsoznUV4gY2noitcDQI7Iqrjc4T/JCgXNf/KZ9Hg42PEn1T2kfShNIJ
         OCWnNMSr6VNNrbMYKmzq/waoUz1pDBrvXO6KPXFMWWitfXuaEn4pxQ7LsNFi3RqDNZFG
         ShYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFeO/YZVWbwYAX8ZK64lTDpQGD3chO9Xfib9NtHVNB2fP8mNCAaqknPfQ+ZkjCx3PeQkTTW0lUtlE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzOrJ320+x3IcS7j8fUVDJffsaCxT7mjAmiKyLzH+uKviQlMSft
	DaKf42hvunL2x4udIgk0R+VTgoZUgFtGlv/9XSNJWQWdcd+hVz7KfNU7gcEwLJm7ppc=
X-Gm-Gg: AY/fxX71GFQwP+zzWudMbnLbL+UvjCshSRT8qlylAsZueLU+l9cPFUno4CZBGSSxQWE
	os/ejlZW5cbkv5OcyldFDxXbxLsBtXo+hsso54ciXFCkEzvPqFi4yTfnSV8nTaAINK+X0xEHsuV
	+7wepbkrEBQI4VfGSvKPi0YauXjekoDPWbQg/bBXrOkIpbopLmQzUng06gf/r5fujEbgNaDSbjU
	HrahcvTYf4c3VoCB/X3Kt25um+1Ga8JuBD0syi3WyTCgOpwhf78A/+LxLFJfsMm/3gfEJ8GrNU/
	PKpqwDD8H+CpkYgH7faWhNIbb/1YOsdPmylLn+8udhlIOgu4MA0f4soy6VYMiTEZXxkXIc+z7Hj
	7y/6GTjSXnXUBZRKQcxTSOFZ2vA5CZdBGjgpKp4D3rplrrSWjKPE1QKFH7TJRq1H8PdIiOz9f9e
	iZagEfn6r1tYPadvVhX1XTc4RJZSPrhXw7ZGPM84FUgs78M7rEQJL9cvINGuctNokF
X-Google-Smtp-Source: AGHT+IHdJLxmu0+/UyOYC9vMKy7oBS2ps3RobFJH7GN6mmniuulIiVjJJaG/v4t7llHwrgOamXjL4A==
X-Received: by 2002:a17:907:6d0b:b0:b87:fc5:40bf with SMTP id a640c23a62f3a-b870fc61e5dmr388903366b.5.1768225999475;
        Mon, 12 Jan 2026 05:53:19 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8731f071e4sm25700466b.66.2026.01.12.05.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 05:53:18 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 12 Jan 2026 14:53:16 +0100
Subject: [PATCH v2 3/6] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy:
 document the Milos QMP UFS PHY
MIME-Version: 1.0
Message-Id: <20260112-milos-ufs-v2-3-d3ce4f61f030@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768225995; l=1204;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=zh3of1YDtgoe8pLqLNknTMRnkRoApxNn8uXmHT9Ljkc=;
 b=ab3LaAh0nqDakMPE7Y+uZxb7TiZnokZj/MjVglhe9gkUgHWQNgJhpTwAQV0kbZgOi7A7Kifjn
 B5zA13NSsnBCN3I5HDHb6fWcmf0WZDLqXXo1vlbop7PFojeA8ZII4xA
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_055321_228217_8C217537 
X-CRM114-Status: UNSURE (   7.99  )
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

Document the QMP UFS PHY on the Milos SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index fba7b2549dde..0b59b21b024c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -29,6 +29,7 @@ properties:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
       - enum:
+          - qcom,milos-qmp-ufs-phy
           - qcom,msm8996-qmp-ufs-phy
           - qcom,msm8998-qmp-ufs-phy
           - qcom,sa8775p-qmp-ufs-phy
@@ -98,6 +99,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,milos-qmp-ufs-phy
               - qcom,msm8998-qmp-ufs-phy
               - qcom,sa8775p-qmp-ufs-phy
               - qcom,sc7180-qmp-ufs-phy

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
