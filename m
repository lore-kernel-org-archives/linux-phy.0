Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64524CF6BF7
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 08:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FHIotIuXMlwjm6zbSut//slE8KVLUpKFM3GmuoOMvU=; b=oTryt6hAnezfqx
	us7i7CS/jEe+1+JmWD6tcrRtz6WohhrsPt+4Q3wXIrXjmEnEVh3Ep0yCkntI9FFRu+kyBZ7Md+PAr
	eCNjHQDk3JpOZMbaihpSls6rS7NyU06K5Qw8RvQ5S6J9UFAOsbe0ULgu2K5syqu2gKOhyDjzK5yRe
	ioGCYff5MtP4ckH0Di6ieS5+QmIrESG+jvRImrrX1fh6T13fbbchrzmgKxe6sYVeLHVt2/7E2sdfR
	na1oEvncfymhFnSuCOxlklRzvIAkDtxqL+0rA+i+LgqFh0fMsWu0vibzz9hvxuxTf+J9wwIdHFCB2
	1GvTjj4cUYBQREtmhgmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOYb-0000000EME9-0fgt;
	Wed, 07 Jan 2026 08:06:17 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOYZ-0000000EMD9-2MA1
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 08:06:16 +0000
Received: by mail-ed1-x541.google.com with SMTP id 4fb4d7f45d1cf-64b7a38f07eso2672939a12.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 00:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1767773174; x=1768377974; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UL8Q3N/uuYGWCPQc/j4tS88zUzpRBU6RKL22PZGfA+c=;
        b=KIRAjAJgnzpGj2q8i5ZieR53+eYaCsUfucarlgrofec7ugc+b9Rt2VIfE4OcW7BwbQ
         TrEgcGPiZ/wiw0hInRksx4hsDCVKUhlrWYeMk8CYaaKVOWyqCsAnYcgO0j3JXUGeAANB
         GJB83+NYI/FdYPXoEzzlKNXQQvPpbXvOSXmfDee0bsffaQRIiu/pHUqi1FmSyV7CzVuQ
         6+dfpwHZxbN3XC0DICAQjGEDDfbTf3jvuATow0QOYB1vme0Rb1krcaXLnTb7SU/8olBk
         GQzW3b5k/42Cs8vcvvoyykF1vkc4W+8tgajuU6NLiKqAFD0kusmCk7X0v2++EB9iNsg+
         la9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773174; x=1768377974;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UL8Q3N/uuYGWCPQc/j4tS88zUzpRBU6RKL22PZGfA+c=;
        b=YZJCIYENg7eGC9pz7is3gPgfiDyJbtvbR41fNo8pykzsTVjZgHFp6o1h9fvTgMuZUp
         oppbQOPt5EJuu1NRpeGBnSYUAPG8RBpwQorpQDYwDanQlXZkmsiQDBOwhv/JYo1FQbXS
         b69EZYwdhrpZYYqa8wA7tsvMDyKBuRW5yEOlAYPY7AeyinICsiO6KnlpeeIHN6boD8DT
         e0rsq/I997iNAUbJk5otOsmvtBKzERDjo7E46JZxoIZuGv1qM63LpLtRbi+hmuTP/Yrt
         N5iKqW1PbxW0JBiTZQgCoRAcYqZVCSHPRKm55egvVKt5h6jLVZN878tirsY7YsTU8q2y
         aSYg==
X-Forwarded-Encrypted: i=1; AJvYcCUCdcRK5z7ijuJ07J8Hg/RxT3NqNOKwMtsmx9lfeyb7akTjuhAOuooz5juSMUJUaC4BQDLFwBdoQgo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxkkIlzTHrB9cNgW3yDWIV5XPdVhhJwjdbzf/u/4f2pSbhet/8W
	5NTlgh4HwtlnByxZfwMmwxuDpXP5w/j7XRARsQLJFgzHKgkeX2EdI9wN8kn8hxuEXZs=
X-Gm-Gg: AY/fxX4BKpuxA440ENykY2lix1UpWAYo/GwfY5Pf/INwPyHVjBCof6ehAebBrr+C/jC
	kT/tX98vl2J+0wufPIzI0wGUeOwMeNhUtcug4y/pCWHuZYV10zsruNn3+zwvFElfbjotMO/xrD9
	FeLrxdXEnyEKnJc8SnIGrEwTBpph5LEEbpzho2mGwrhB/DjOhplaJfv0nlBlv+7+x/GjWslWwFv
	Jk2CshLeMO1Bl8zE5wooHSSEJc+i57aDYxZp3F2VZm8EWzDNSyos/SJSyUxZFtpLjBNMqliSXo9
	HbXQ1RvnQqP6PFTEZVdlMGoOcQNw0g9LHtqFYUFPfACcltiYfotQdMH6etJRXMnZG3j66nsLgtN
	z9St3ex3zGp3KaXXkjlbJHeoeFq8y7psHSreWU5xoENsYoNlC+YAnIZRKpBun0BUPIwpNmUAkAX
	mVeIDst8ZdJx/LmGde2gOXe8yMOQ==
X-Google-Smtp-Source: AGHT+IGoNwL2Ad4Wf5/kMZtYwloqDC2nclTMDNUXOI6+OkN3PNK9lgubRfkIS9pWfU3l7el4uXNpgA==
X-Received: by 2002:a05:6402:1461:b0:64b:63f3:d9ac with SMTP id 4fb4d7f45d1cf-65097e50cf1mr1240312a12.21.1767773173934;
        Wed, 07 Jan 2026 00:06:13 -0800 (PST)
Received: from [192.168.224.78] ([213.208.157.247])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5absm3941299a12.33.2026.01.07.00.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:06:13 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 07 Jan 2026 09:05:53 +0100
Subject: [PATCH 3/6] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document
 the Milos QMP UFS PHY
MIME-Version: 1.0
Message-Id: <20260107-milos-ufs-v1-3-6982ab20d0ac@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767773155; l=1131;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=L7zFGJrpp7R/1SPywgnVmhsEuokhe1Ahx7lfge1c7Lo=;
 b=Fe5DRXgl1tVzMTAcH+EEUjx+bRFHCdB8IT+CJt8zvyJkZSSz/OKPkBx4UBM89cvHuO6GsOvMZ
 RcQEkaJMVezCF+L8auF0yI4aw/Rt9ht6yq2/Dx/32t723EUyu9KDJbr
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_000615_621042_5EF2963F 
X-CRM114-Status: UNSURE (   7.77  )
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
