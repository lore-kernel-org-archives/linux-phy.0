Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D3BFC3DA6E
	for <linux-phy@archiver.kernel.org>; Mon, 25 Dec 2023 12:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSEU1ny1/ltydg+JF1rPTuCRxTa8QLJH/L3CFD0FOys=; b=p50W7edzi+2CrY
	IUq5ivrGwChlCBpXWaTVoHYeSz+URulE95cEcZIZIX0wwTMIeZZoYxMfWsjGzoQbWJPrxER86Sk31
	KdvDSKaidQlfQWYiXlBj9wwf9xpP8gy5YnoVozQPsKf+GP7UhY1L9eUO2Za1xTEhwwrOweN+vF4is
	hbz3H75xxdiIam1OmAfm8ChILe85Bl8vBaaO8hEQfwoB2Src2tzN2WcecM55g7inyCb3hmLOwBLYO
	jYdnb8Oooqq/mFaKNr+YXii6/JbRrpjeN5vJqwuwovKzFLCcTtisXj4rF/VwO1wi+TeJ8IQLi8Hbf
	qhkxfxiuYPNKVXgePlNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgL-00AmsF-2a;
	Mon, 25 Dec 2023 12:03:41 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgI-00AmnX-0D
	for linux-phy@lists.infradead.org;
	Mon, 25 Dec 2023 12:03:39 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40d31116dbeso45162835e9.3
        for <linux-phy@lists.infradead.org>; Mon, 25 Dec 2023 04:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703505816; x=1704110616; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vQg4W7YaJR5MOUu16q2YCIWylXtF8jz1Cnec2z7KjH4=;
        b=TeOcq/2DE+QD4RTNJwJEujHyExy7I6jNZY4h/YgB+m+v/vOpp0tJ2OpB+mD/DMLJjf
         NO+1YNfzvyfrbW18lpLVecYgw3dzplaze3aHPna2xO7PcZn4fU1bIWSth/zPDPcnzsRz
         JVwdokSdNqSb6ryqawpZAfPbqpPQOKyFmOdDPXNY7qAr7g9ZhdsXgoB3uALyBm5AzKiw
         9K1Dq4EnEBi9/8yc1FQfMZaEBB7MTkvrU1cC9TTDcuqO58sgHvxsoeNvdoheZLMAEEdw
         qp1tYhZbbzAxJGCqurlw/XFqzYnObOc0TaLSDKqAxFlMo65eI3p7v8wubz8PA3KfWFEr
         EVCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703505816; x=1704110616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vQg4W7YaJR5MOUu16q2YCIWylXtF8jz1Cnec2z7KjH4=;
        b=NSQrInBp/sUF3qlg9g9eBEODh66T+tOdCQ3Y84lDaXNmTdboKAHpEImQ9O/HNoGxUV
         kD87nhKPt2z4Jm5rLh3/MI1b154+ekGznn8KXhJ7c3ud8qUtgAFOei73VSj1mhwSocen
         I0Lb8iVGcPaPqDqvMlLmvVgrxtVIT/gPvaVOIzudyY4/wwh5gLbIQKWABSLH5EfbPi/9
         0KvdrxfFckBePPS8lQg/XSlzNtJSSVk+jazx7zhhQPFF9mDHAn03stUZDVsAjtbnZuw5
         lvUA+f9gUwcaOkMlwPZNv8Yc0tI2zAc1hzQbUsVFcVfMC4UKcxJd8kwufkUv1ntJbgcR
         keAQ==
X-Gm-Message-State: AOJu0YyiJx/7J7WW2dVagSw6a3DYYLIC9qqAy1HfEiL8uM9Er0jSJU2F
	BRpjlrweYpgG/60XQ5fMxK4=
X-Google-Smtp-Source: AGHT+IGdIHy+N9mc4C/Pdv90hxLzQqMz187MznyGJUQp6KhF3wP1/1LQv3CKc5ED32Wn+5sFhsuXKQ==
X-Received: by 2002:a05:600c:2201:b0:40c:2d7e:6f72 with SMTP id z1-20020a05600c220100b0040c2d7e6f72mr2996362wml.118.1703505815980;
        Mon, 25 Dec 2023 04:03:35 -0800 (PST)
Received: from david-ryuzu.fritz.box ([178.26.111.208])
        by smtp.googlemail.com with ESMTPSA id 14-20020a05600c020e00b0040d23cea7bcsm6349456wmi.1.2023.12.25.04.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 04:03:35 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/8] dt-bindings: crypto: ice: Document SC7180 inline crypto engine
Date: Mon, 25 Dec 2023 12:59:54 +0100
Message-ID: <20231225120327.166160-2-davidwronek@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225120327.166160-1-davidwronek@gmail.com>
References: <20231225120327.166160-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_040338_101459_59075210 
X-CRM114-Status: UNSURE (   8.32  )
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
 .../devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml    | 1 +
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
