Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 349CCC83003
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 05:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NXtSrv33hANtmv64VKJzxPOPbt6Iqg6nQJlzAccBuI=; b=3L1ujk8dtcjgmk
	W4bfySaI7tejvBzGYivnqxESkckfTjIr+j3SSy1THuf4XYlWdpCjhfHN+6k9tRLVIy/8+eUCQvcsc
	vO1JKmrM70ZZOihrPW0Ke8ZCWGkuCr5dOzimHE5+BDleM62Ss7+wsyQAWnD8sXIGtuJH0lgwwD6MY
	RHbIx9cKr6urEbFMrbfIW5muqe06xwXsWilTs819Fa8nMHaVCKFOi49VPS/XHVyHZdkxq7JsNobrG
	p75yQ+64sKcN11JfxX0YTXf8pxuKIn9SxjDzE3RuyhPCOljNK8CvBWvSzb4+Aocq63+dsXLubnbE0
	TwSZArFWcNIkPDLuPi9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lHh-004MLQ-2k;
	Wed, 07 Jun 2023 05:00:37 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6lHe-004MJK-29;
	Wed, 07 Jun 2023 05:00:35 +0000
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-75b3645fb1fso9014785a.1;
        Tue, 06 Jun 2023 22:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686114032; x=1688706032;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l9dG+oN5uOmuQYXLewl1nCF0/Os/UQTTZl0+MY2RxWE=;
        b=SdrAJREOI+sSk3AZUFjzv72WSD27GpJcA1nyiB2724Og5P+HW5QX9Xqth8+vQZtcEz
         mSZ4whmu3dTlsuDUt1TwUohJ3ksU37hR2kVL6IXdIqh6PlQ4gPyNqgjgDlv7OfkscSUm
         XodMdWWWj3Uh04ktiIZZkgHQTmppAyN07Cd+5/DLQNtlQ6BGz15H6z3G7A6uNJIH841b
         vIHs/j1KCsJ3z5lPEU33IcI098Vh2VfnLR9/i2NOg2CZ/y5grw3UZh5Iza7ww6QfwgwR
         Wf58VXE+D11mgZ3zpK+hZer6i08ITs8T+HbD+adeHSdpXpd/5QXwSctLmGAn58wrUZfN
         A3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686114032; x=1688706032;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l9dG+oN5uOmuQYXLewl1nCF0/Os/UQTTZl0+MY2RxWE=;
        b=Mr3qQk4Ta4RmCJ4vvUX61in5k8hyD80lOy/LYrxfL/8QI+Erzs42v/YnpkzSnCrVjX
         5bXuNcheflFzyX4FHClallmVhJt4pg18CPAaxXv1vNELKUcj46xabqm9MOPLvjLHWKn0
         2BDfFEpvvc+z/Zs3Bjc9MNc1IoklY8TEtfRVacttSNp31RqSt6AdmBnDgrzgotri4UfG
         ymmUhxGqHCzLwnQJIV6V/Sbs6l71d7f4In0aYh2X29pdZPZwSP16Dz2lf3OAlyG6y30R
         kVyLuKmgRRwApPN2uWTkVGwNjwjEFGmL51g7YsqyRjoOR7Y81hyjqudmixo29E2+WlvY
         k0Og==
X-Gm-Message-State: AC+VfDxy4pVCcExtmXYqhcGRLXGSJvL/BEcbtxIO9H2hRwsUhYX6IUaK
	54ehKaamCtteMCkUuEi7pys=
X-Google-Smtp-Source: ACHHUZ5C7dMvWXGT3YbALPD4bql/TD9qfA1bGA2rfy9uV4o0Ujf1mwt/wVFq0zAMLR6tB3wYq6eQnQ==
X-Received: by 2002:a05:620a:888:b0:75c:ca53:d5fd with SMTP id b8-20020a05620a088800b0075cca53d5fdmr587802qka.27.1686114032458;
        Tue, 06 Jun 2023 22:00:32 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:c358:f4f2:89b6:ca7d])
        by smtp.gmail.com with ESMTPSA id m1-20020ad44481000000b00621430707f7sm5848980qvt.83.2023.06.06.22.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 22:00:32 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org
Cc: Rudraksha Gupta <guptarud@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/4] dt-bindings: arm: qcom: Add Samsung Galaxy Express
Date: Wed,  7 Jun 2023 01:00:20 -0400
Message-Id: <20230607050025.86636-2-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230607050025.86636-1-guptarud@gmail.com>
References: <20230607050025.86636-1-guptarud@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_220034_698094_AC77FE7A 
X-CRM114-Status: UNSURE (   8.98  )
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

Add a compatible for Samsung Galaxy Express SGH-I437.

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d9dd25695c3d..133d69b2b73d 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -191,6 +191,7 @@ properties:
       - items:
           - enum:
               - qcom,msm8960-cdp
+              - samsung,expressatt
           - const: qcom,msm8960
 
       - items:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
