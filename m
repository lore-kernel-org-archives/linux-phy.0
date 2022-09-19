Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FD42C6FA86
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 18:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHjDrBFIjFezd0tYA5EZlJlKPQZVPxEWFNlvSmsQHVQ=; b=jzz7RXZQbj1H+z
	q1Tit7MyyL1dqKIIoVe1DPJ5eHIbaYfP2G3H0nkSm7lN36U43iVh/AuDGW7P5tJZT+PXwiYsheF9K
	OUfw7BIgj0wluv84rBKVonPtmgtY8y1EKSEcOlW2eQnyqxl+fz23kb2sVmqFr8nid2Y7j2ompLDZW
	vli8DLKXXsaVeBfP3DlPzkpU7qfBkklTp8f1teA0ZfVqYQanrZsUBc9t98oIaMayb9gATBxkbh+Xr
	YepNwLy8pEggAumMn0iHUZ5MwoDBOUjhLZ5ksBs2zfODs72RU9JjoFdOsOI2KgXZH9kuWaLRToQCd
	9YgEWLoJFxSxjwQhA3mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaLAN-00DZF1-Dw; Mon, 19 Sep 2022 18:06:47 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaLAK-00DZ9R-CX
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 18:06:45 +0000
Received: by mail-wm1-x32b.google.com with SMTP id o5so84220wms.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Sep 2022 11:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=nFv4Tohd2giyViEtmIJ+DkJDZX8rBCWBLAqJ264IXgc=;
        b=DzprM+EVmuciNfN5MjSEQFntwLFiXzYspWF+B8bHoRhRHYpGlIVNhYHAe7LVd+vnr2
         9BCGJDWuiMto327LPx14iISVBQ5Qj3fWVvHvF9LCn6M41LDDRFpLJEBaw8tT9iDodJjN
         VcefXkiyM+p062WpDtMt1T82mQNKf3nGj+5So538bvFvLFfj4mTxg+1Oo8CS4mvB93Bt
         QDPaFnA0kZfDZUTVOihlCCBUn9N7+6NslsFCG4mq1lTTcTpxipqx36udcZVym3apBMaX
         HkuadDB+Zaf6ZNvgpPCIUhA1upFAb+aPU1F/FQuj8ruv//jwYPhX3lCUGaOiYM50PD/9
         h04w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=nFv4Tohd2giyViEtmIJ+DkJDZX8rBCWBLAqJ264IXgc=;
        b=iaYRIgT+pUNOQC14Um3RxQ6gZ3NJr3n5TiM9rK6UsN+ffFQUXNYDHsUcrp1eMcrCEs
         gW7Ffv8SpCDSUxOOYrfz+tpdic3TE5gNbTEjrwUL/uLRmTzwEg8TPk7hXVo3afzz/1ZQ
         Ry1o0LQzqqfJpPGCstbQR+rbYX0lsITJewur2hrsyS+ZOX/O/GQB+RFxJDw0+sppvCG1
         CAgX63/Nyz+MU239a72iKQwi6Oqv1GomJ2BbKxq+bPEg5Wxrr58yUdK+uut6owTSk/js
         B5wKlqegi7t8Vgi1B5yatBjZrD8Ff+3lMfiWCfUKjRu0LC/GlOmzKeqSFkIaPZo+Pe6x
         gN2A==
X-Gm-Message-State: ACgBeo3vwWz5fwzBwZ0C9hzFAQKeNkx/mGueHqzjSgmwzutjtsmi6PNI
	S0H8CG273g1VLiFgVkNN218=
X-Google-Smtp-Source: AA6agR7WFHf/c/7ZGkKNjSowQOgBbUt0q40ZFOAhfWInvty/BMFYjQ17wi0j/rWq2kman714us9Bsw==
X-Received: by 2002:a7b:c84c:0:b0:3b3:3faa:10c3 with SMTP id c12-20020a7bc84c000000b003b33faa10c3mr20015521wml.94.1663610801419;
        Mon, 19 Sep 2022 11:06:41 -0700 (PDT)
Received: from localhost ([77.78.20.135])
        by smtp.gmail.com with ESMTPSA id o13-20020a05600c4fcd00b003b332a7bf15sm15051410wmq.7.2022.09.19.11.06.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 11:06:41 -0700 (PDT)
From: Iskren Chernev <iskren.chernev@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Iskren Chernev <iskren.chernev@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 5/8] dt-bindings: phy: qcom,qmp-ufs: Fix SM6115 clocks, regs
Date: Mon, 19 Sep 2022 21:06:15 +0300
Message-Id: <20220919180618.1840194-6-iskren.chernev@gmail.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220919180618.1840194-1-iskren.chernev@gmail.com>
References: <20220919180618.1840194-1-iskren.chernev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_110644_463743_555B5E76 
X-CRM114-Status: UNSURE (   9.36  )
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

The Sm6115 UFS PHY has 2 clocks and 3 regs.

Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index 6e3c186b9972..815c375d0f7b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -121,6 +121,7 @@ allOf:
               - qcom,sc8180x-qmp-ufs-phy
               - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
+              - qcom,sm6115-qmp-ufs-phy
               - qcom,sm6350-qmp-ufs-phy
               - qcom,sm8150-qmp-ufs-phy
               - qcom,sm8250-qmp-ufs-phy
@@ -180,7 +181,6 @@ allOf:
           contains:
             enum:
               - qcom,sc8180x-qmp-ufs-phy
-              - qcom,sm6115-qmp-ufs-phy
     then:
       patternProperties:
         "^phy@[0-9a-f]+$":
@@ -198,6 +198,7 @@ allOf:
           contains:
             enum:
               - qcom,msm8996-qmp-ufs-phy
+              - qcom,sm6115-qmp-ufs-phy
     then:
       patternProperties:
         "^phy@[0-9a-f]+$":
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
