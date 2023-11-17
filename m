Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE36DC5AE4B
	for <linux-phy@archiver.kernel.org>; Fri, 17 Nov 2023 20:17:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6+J+oye+nDA8ccmdWyjO83PoJ7jpWZBXL8Pyoe+2AU=; b=jgTahQtovY4PtJ
	W0pauAUkL//JQZ1MU9jbK/5TbKcoMnwOBbJ6kJYiaQbUPC42PWISI7mHvWtzorPV2y2ayuI2CVpZJ
	FHO+Nq+CTzDjwybwy8eGn8wkgQE9r1pfvn1eGjt2VNe3Gg1cUeio8gp+0wlD/bJ+6MprQSIPf9tks
	qzCsD20a7BBjw1VbG8fbbuvc3iPQ2b4CC/VyQ9eWp9Eg3HJWVMnCxDrQLZ90dMdIFIvM6DCvkeCDV
	MyW/m9a6V2cIv+/wlUkInbXC9rMPjpj9X4aqvRdxygcPEisH+kePXTIPmYrM7WPVXulfSV5sHSThJ
	ZujMsUmCqYNpS/dMELOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45Hi-007DnA-1n;
	Fri, 17 Nov 2023 20:17:50 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45He-007Djm-2C
	for linux-phy@lists.infradead.org;
	Fri, 17 Nov 2023 20:17:48 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9c53e8b7cf4so323193066b.1
        for <linux-phy@lists.infradead.org>; Fri, 17 Nov 2023 12:17:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252264; x=1700857064; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0FT55umVdQ3ABR+ChZLMcI5+8wttiT8rkJ6vkSExahQ=;
        b=f1kvp/jU1xn1lywHg4lhZrj/TtNZ7ZgjlFwMZfi2NaSk88I89XdL5e03T/dm1i/QlK
         MNM1hU/tdpYwWdI6r+prIqL+P5PxMOd/EsGIW/xZWiynvxGIpagtlLjBN/xgA8eKaJcB
         OJTMj5vwR6zONKCgJrP/AxDS5HdnPWMJ6q4NEqfjLekcITfILLi0nf2YVjljOYKeHotu
         bC51ZHBE5dIA+Gr1udhmMHH3rzNJjumt9qAGKm9020epBGH6gw7M1CWsDmu3lbtj1L/C
         qPZxtPN7NzDLnmjmGfWQRKIXbQfClfnpL5krObaaaA435VWJWSdXRO+oFe8yo1mbRHU0
         vhyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252264; x=1700857064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0FT55umVdQ3ABR+ChZLMcI5+8wttiT8rkJ6vkSExahQ=;
        b=lQAgep/oKJVm8aj+804GLAep70K2VzTsfIMrkrELVr1uN8qVdY2RgVESmghKEADOaX
         FysaM3teSr/jOOm06O5CHBMDpCjYaDhe/6V1WzCqMbBet3mRUIkuYjNOnp2zYIlqSVJT
         L536qx5QPD//Z+WZ2FWHZaIsjzgdaTULPjcc95i2dH9lBN7uuC2fc0o3lmpW8DjguQ6j
         Sl3yCmxtlPK6fMxBYBDn1+pgN6Z6SXyNAdw3Fh8KqXMeS+yKXzWM0fSY2G2CyYJWT85/
         o8J5m4vj3AXJXZXe+UiwlAeRHVhSEUnnWU2YRfk/RasIXR2CfhEDLC2Mg65bzilvW9pf
         jH+Q==
X-Gm-Message-State: AOJu0YyOUxJ78ZNugkHxNWRiaM40Iagp6XCKim6NEVgwxDBdp2127BLP
	dXyr6ePhYS/msU3iZVqSa1E=
X-Google-Smtp-Source: AGHT+IFMq1o0Se3JMQMNhVwxLmvjAdp1t8mKGcqp6ikQODtj4GRKfY2136N2S3IHAcnlzeOIfjkJDA==
X-Received: by 2002:a17:906:260f:b0:9be:2963:5669 with SMTP id h15-20020a170906260f00b009be29635669mr137097ejc.68.1700252264337;
        Fri, 17 Nov 2023 12:17:44 -0800 (PST)
Received: from david-ryuzu.fritz.box ([188.195.169.6])
        by smtp.googlemail.com with ESMTPSA id e7-20020a1709062c0700b0099d804da2e9sm1130630ejh.225.2023.11.17.12.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:17:44 -0800 (PST)
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
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 4/8] dt-bindings: arm: qcom: Add Xiaomi Redmi Note 9S
Date: Fri, 17 Nov 2023 21:08:36 +0100
Message-ID: <20231117201720.298422-5-davidwronek@gmail.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <20231117201720.298422-1-davidwronek@gmail.com>
References: <20231117201720.298422-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_121746_720305_D21987F6 
X-CRM114-Status: UNSURE (   8.92  )
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

Document the Xiaomi Redmi Note 9S (curtana) smartphone, which is based
on the Qualcomm SM7125 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 88b84035e7b1..9a4e71279bc3 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -994,6 +994,7 @@ properties:
 
       - items:
           - enum:
+              - xiaomi,curtana
               - xiaomi,joyeuse
           - const: qcom,sm7125
 
-- 
2.42.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
