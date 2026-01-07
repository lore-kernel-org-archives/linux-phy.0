Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D8CCCF6BF8
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 08:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ed55bUprc4TLZi+0KskQ6Fr8oXlnZ7hhxKSs+i22xIc=; b=V6BYM+tRCTLAF6
	a70tzXUFpzB+tvgl5IwgE9nD17MsZzZgqrNYiOVY/bh7ug559FY0Ub2VEq5tN3bWacixL9VVaNQQy
	0+AEv2+oMHppBT4StRVeXZBOP/khRptqtDEtd9D2FfATI9usBGUbn0QXAz8SxQMI8xXtVF5d3rplS
	1FMWXX2aeJpp2Zi3s8O7S3JOJL74qWSAYnEnS9eQgWlXvAFCu4qfQ+k+5dl2FbrPR7kv1rK4poLgB
	qC4xR5uN8PxKTFNUJNTAOAkKxi1Cy+nkto6BCrBST1IA1GKXBDI/7qCbyyJ8uznBeGPsP4Fw66pGS
	7EoKjiw+Fi38Kph8LSTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOYU-0000000EMBY-0pgb;
	Wed, 07 Jan 2026 08:06:10 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOYS-0000000EMAa-0EZd
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 08:06:09 +0000
Received: by mail-ed1-x541.google.com with SMTP id 4fb4d7f45d1cf-64d1ef53cf3so2502750a12.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 00:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1767773166; x=1768377966; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2GgDJ/Fmj2hVxq0kt+KlgzxSiJNW4ugYNOpHPzq6Zeo=;
        b=FrohmgRqtW8sQsH7HZJAonlZlPcw3dpr/OnMGUquQ9PRoyx1ZpRqaRchg+U+paPzTF
         TXAz3nhnzLDG4HsHCzpMyptE8rw7gNkndAP0W0teUsJ3SvEWGAchvYmYllmdVr2pcJur
         Rv7zJEEl4hbl99A574pn1Z+BquoURrCldUn5dnaAlhE17Sme970qxQTLF9+L1UYRem2P
         JNmMkZlnDpXJVJlU1Lcv/z15rQBRu2ssHkltQFxM1tr0k0ubx5v0g4KclWZt2t4pUTo8
         g+IzcM1mJ41g/e2e6IztbB4/kk2FobBVw18EtQF8YA8dtKRbjXxUU/3y58Cm3JPw2lej
         bQ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773166; x=1768377966;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2GgDJ/Fmj2hVxq0kt+KlgzxSiJNW4ugYNOpHPzq6Zeo=;
        b=TGfFLe2QPaSviPKeXnl/8JMZGslLyhAH+qmut0ZxUDnGKUo34w8pNjwq3L72hGLc+c
         xvgTazuuQN0TnLVZw29AQQJJSsHOyS5zuCeuHPjvS24/KMRCR1bkYEYNNd6zKJy03SHc
         4/V8mRLvHoLlzVxbXUWzGcUDBOkSTGK2ACp9CWVGKV2Nw9+seuT420+NCqL//gKcxJzX
         +gnWVPVnlqZVMea1LaQrpZvcVrpZeMO2gWvrRtqTtmSzJ9lcuiieTs2x//8w49t1W6VB
         WBeamSgElLM/ytNMlnwLYcCHUFJI+shWbtIGaCZhEtkafljlNAFXJ6l9aL3+zCxM4fvE
         5lsg==
X-Forwarded-Encrypted: i=1; AJvYcCVe47M0wxQWl87T3Ok6Ir7RZmfCn1Rw8UHHtLvkOijLK8dcB4upU/jl6gJjP2dJzANfdUuDSvP/hQY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzPdNIYi3pKe00MgPfBjJHwx9FzHaBhkmTOygJzw31eJvcncrxl
	4sl9PXZ8/AWMm6CsZGVkjI019rpnAQv9TyX61vGvvx23KDK1sxKUZXQWUmNgsmbfsls=
X-Gm-Gg: AY/fxX7lBd9T6iPBgPLmkq7hZ7+CbbctP8WK1nHBsC9R5uEaNm3kSTm4abluuHL7nd8
	bjsOK0YsbPG0WNI7I5932MAgoDsk+mzo58e8oSaLAQrq5+5AA0iGJTxvnWVQMnyaAJEdV8+SGOh
	zHGiHMuCiex37bkVVA1sWtQEOngGexVOCdBTeLfE086HbwJQ6mBWPznmM538PQbkp4HzzesoHMG
	DhcvkXFF7ZwNxVmXDw6M2RSWhryiSJwP1kuNuyEkbNGMgmVqzZQr0EdyXHbi5I32pRTBmaHTmhA
	ojVhsislir6Kb7vZlgyAxSIEIfr0xqWq4f7Xj6GjBrFYNHzkzE4INCz/rmMIxBTBSi+diE+ndEo
	Vrib5oaZcA5LYHfjja6P1TapdCHF3uH+Rrd7YrogG6lsDemLfQpsLTDzadR0pmLGqM/9DLXPLHv
	ixeK0JtjcqpWrZ6P7MP8YqspUB63neJhpN6QrY
X-Google-Smtp-Source: AGHT+IHPuKMiRpCxNqWVDZ6u4OSMQLbl2xruzqTtEZLMtSwwNhXW3B8I34BRmOAoeN3Blb8BbAq1Ng==
X-Received: by 2002:a05:6402:3546:b0:64b:4720:1c23 with SMTP id 4fb4d7f45d1cf-65097df5b56mr1391779a12.13.1767773165260;
        Wed, 07 Jan 2026 00:06:05 -0800 (PST)
Received: from [192.168.224.78] ([213.208.157.247])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5absm3941299a12.33.2026.01.07.00.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:06:04 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 07 Jan 2026 09:05:51 +0100
Subject: [PATCH 1/6] dt-bindings: crypto: qcom,inline-crypto-engine:
 document the Milos ICE
MIME-Version: 1.0
Message-Id: <20260107-milos-ufs-v1-1-6982ab20d0ac@fairphone.com>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
In-Reply-To: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
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
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767773155; l=908;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=+tKKM8eQQWo+yQ33MK7IDCfz3vrpdNi8mDp5L1/eT14=;
 b=lQ5mBpA+U7bYt0gJHGAAKSmbKFboogIa6LHo0xKezfRR8+VQMi1EJlEXC2zEEHIUnQXS6NZrt
 md+vcvmtCvgChFgL0K/iZrrR30Ruj3ZvPQ+/W60c/h1TrJirgsrRBca
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_000608_114294_E3D68DBD 
X-CRM114-Status: UNSURE (   7.39  )
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
