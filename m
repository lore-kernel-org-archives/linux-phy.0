Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E809C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 07:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B6oECWoTDdagatkMu3RrLpxCahawQRrnyHGOttQPHOI=; b=2DUhpTYRy36en2
	HjPmum1Gbpdx+NUGELGDTxsRmyYY4Xe/eKuiUFSHrnJ98ZTeXT/wKoFg1NgTwCdv6fRkjXy7hOGGi
	HQknLx0wQtVxquzTmgEGWz8+Q+PVr64loX0L8DTZlQ1CjLoD6ZHD6MVWWHMy+QD5QiaN4ShFJ2j4u
	3I0thp21/SE43/GvuF/A6kGCXJw5blxa0IKjMhZ2A3b5SXFPdQ7OEYy96B/BW400tp/XQlytVhs7E
	6bIe1oCWeozCKw5U/L8ILmjM2Ig8MLBDZx9vFiyhjAw9OrwL5smVdBe0VkmZM8arnJTmxWhEAlY09
	fBvL0OwWMFF8YEc16BGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox1d9-00AeW9-JP; Mon, 21 Nov 2022 07:54:15 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox1d2-00AeFf-8h
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 07:54:10 +0000
Received: by mail-ej1-x634.google.com with SMTP id kt23so26528916ejc.7
        for <linux-phy@lists.infradead.org>; Sun, 20 Nov 2022 23:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GT9ErDbClBtlo66hqT2klzySCTqQIgR/TIVfNl1Gg+Y=;
        b=O8QBYlAGTTApUL6TLXRC+RdaXgjr6tjZq/PDzzK6ry8Y4u+YJOmeMB5Bn7NTt1qSBi
         Fukr5kVtdZ4oP8jT3o5Y4ig2M23vgoSWxqsEKX17jKqWA1nakj+jDvHCYj3zVMtgXt4L
         6w3BeLQUjC/HSQg6TnRYqaWM1WO8NI8d0YViYJ+vy0UvKzyKtMySsWpp99tt08PwS7Vh
         0/xED8W60TuQkxU12/G2BNND3IPn28OjtYxeXPDUHtbs4zYNN81rhzun5rLMy8kSU1GK
         QygY7zjiZdOTBVHWAttgYDOf2YlF1/SdqxTmuvWrr2LRwf4fhLC8LAIsuE8j8fh1D7Fu
         RzQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GT9ErDbClBtlo66hqT2klzySCTqQIgR/TIVfNl1Gg+Y=;
        b=rqa7aUTniEhiMBqdJiN7cuo70ICUFLjkd9WhFrCCCvKrC5qD5Vp2FOiTm+is0lS+L1
         EACU6A7FzB+oUJZdX5TEtCugCHsjDGFMoqmbFID0Rq6GtWy6QxH6Qn6166ZOAXEXizgQ
         MQd1SrGWkWmWZW8bsV6AIQG2KuZ77C3EFk/FlYq73DY5+IBsfltmysLP17WPUAnLvVMW
         /DiO0mVa6X3KWss1eh5ZdbLBVadk1L8XSfdnX2jriZWUp/maL6kwLfOBblB6Vlg89eob
         zLRvV8b/FiBnigZSJzKU3cKNwz0ScYJQfl0BjI1pLjoMs0byx5+cXk/vF+ORxL5HtFL5
         YwIQ==
X-Gm-Message-State: ANoB5pnpo/5xlaPiWhfBV5WEZc03XQsq49dmjIsN10QuS9yAF/bUo578
	oIrTkadYhjzqzDbEZWd13RjJLg==
X-Google-Smtp-Source: AA0mqf62uSlXNxPTJw3z57ahsIMBOuTXwZwsI5C/DqMRrKONDTY65VHgWF2pcKCOJRSKeBBt/r1gHA==
X-Received: by 2002:a17:906:2804:b0:78d:e7c0:a2b with SMTP id r4-20020a170906280400b0078de7c00a2bmr14766006ejc.273.1669017244575;
        Sun, 20 Nov 2022 23:54:04 -0800 (PST)
Received: from otso.. (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id o11-20020a170906860b00b007ad4a555499sm4700805ejx.204.2022.11.20.23.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Nov 2022 23:54:04 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Luca Weiss <luca.weiss@fairphone.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350 compatible
Date: Mon, 21 Nov 2022 08:53:55 +0100
Message-Id: <20221121075358.76582-1-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221120_235408_443158_62B435E0 
X-CRM114-Status: UNSURE (   7.55  )
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

Add the compatible describing the combo phy found on SM6350.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index 97a7ecafbf85..68aecb638870 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -18,6 +18,7 @@ properties:
       - qcom,sc8180x-qmp-usb3-dp-phy
       - qcom,sc8280xp-qmp-usb43dp-phy
       - qcom,sdm845-qmp-usb3-dp-phy
+      - qcom,sm6350-qmp-usb3-dp-phy
       - qcom,sm8250-qmp-usb3-dp-phy
   reg:
     items:
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
