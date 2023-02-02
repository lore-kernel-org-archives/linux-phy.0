Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BA5CC636D6
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 13:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeXkjcnZQL3/Js10JfUZwfJMj1DSI1qUeTL84Ntn9Lw=; b=GNvoiHy+Czoo1i
	zZ0VfPBTyJWNf9D2527EJwbTtlnUPOHvKQeSEAJcWD+/KZJLl9K4thQOo8U5NIFV8etjF4dlphqT5
	KY1O31xfpIShrXMrlMRC0q1DXzdHj77me2dat2HYH4jI0w5pt/jBjQafoWiV2ibYn4Aryp2LcFDhl
	6IeysvPPXtxmrXiULnANvq4LoRfFU456Cxduj9CDKIXI10IrDusd+qSR9MmRs41kn2UDzNqLWBy5P
	saEgPlpe3LVGgAhlp/KXNtu+Z+tE1HZDBQi7kseEE73/FzmqJSeOLMPWbaFwNqaMW4Gb2urkw65FM
	k+MyBnbvwRKgJgOR0U1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnS-00G2Zl-Fo; Thu, 02 Feb 2023 13:38:38 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZnP-00G2XB-Ns
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 13:38:36 +0000
Received: by mail-wm1-x32f.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so3751094wmb.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 05:38:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RF2YyGY2PogpnFtO0lOlawE2OSglZRNn+XgKRaj3V+o=;
        b=B493GU/HRGCE8RL1MHvOnSUSqvtSnxbtJL9m8fVcRc/vQZCUyKjIfw+gg1ks9KsInD
         FSkPV/E/cm+OMAHpgokPniOm0vKmEr7gcFwMbqnMaZ4U3Cl9TZaffN1SY7Eh3m8EVXRF
         I/l5W8hHGTnyn9rRUeWeIN+LzEECgQOoAFiQ4jWfJVfYCBjgW+8NerlXiAXVdIGGqEEe
         tAm/XmQAveY/FQLanOeVnQCL3bTMcTcbfKDx44oU0hJJ+fkUIgIpvS3gX18p7yyEEd1S
         CXDBd3yQVL16zyLhWLvoySJcm9qgKERq6GmOZ4RFtAvwvhSbrK2Z8B5IB2Vn7PFXWY75
         XMZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RF2YyGY2PogpnFtO0lOlawE2OSglZRNn+XgKRaj3V+o=;
        b=ZF77j8+KiAY5AHuOFRI82N3mYMJmkffYtSXwgpqktGau6DISO5BkrTYuERsF1eCJ/r
         7rPk//yq9OiBY0RhcYKH0O3NXOY/5LtFYQ1OhJJcxd19snraakMmrmCmw/WbF5LTfZYq
         /ZgsSxEdtINkET0q3jhQPD0bx1gCsw3i8ikkDrTeNcEGfBgULls2jBNRIz9uoZJtzL6u
         Evgs7mQymnPUWrHYAKhPg+pe9klPjnQKqtWiewzFFUbyBQQldqaBPCIT17FpnOq0OiR/
         b4LnTf8oY796rurBbYEtcAhnKZnVWLPDGBdFSGZ/amcTK2Qo2XV6WEQcDEer3VJ8h/4K
         RsFg==
X-Gm-Message-State: AO0yUKU/sdvemWqWuNNRG2MNVX+eXq0WU74wdedmUhs4d2kEYF72xwIQ
	qA8a7x0TGXPsy3sHssXrowhsOg==
X-Google-Smtp-Source: AK7set/3dxyCvIKg/OxhNHZc2h8pfCZ3eo/m5fmRMmCuySaaZQRcSkDBXrbDfs60V1JHNXj6RsCgfA==
X-Received: by 2002:a7b:c38f:0:b0:3dc:d5b:5f6a with SMTP id s15-20020a7bc38f000000b003dc0d5b5f6amr6074422wmj.30.1675345114293;
        Thu, 02 Feb 2023 05:38:34 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id y10-20020a05600c364a00b003daf7721bb3sm4672657wmq.12.2023.02.02.05.38.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 05:38:33 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [RFC v3 6/7] arm64: dts: qcom: pm8550b: Add eUSB2 repeater node
Date: Thu,  2 Feb 2023 15:38:15 +0200
Message-Id: <20230202133816.4026990-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230202133816.4026990-1-abel.vesa@linaro.org>
References: <20230202133816.4026990-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_053835_793705_3A9FDA93 
X-CRM114-Status: UNSURE (   9.32  )
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

From: Neil Armstrong <neil.armstrong@linaro.org>

Add nodes for the eUSB2 repeater found on the pm8550b SPMI PMIC.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8550b.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pm8550b.dtsi b/arch/arm64/boot/dts/qcom/pm8550b.dtsi
index 16bcfb64d735..72609f31c890 100644
--- a/arch/arm64/boot/dts/qcom/pm8550b.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8550b.dtsi
@@ -55,5 +55,11 @@ pm8550b_gpios: gpio@8800 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
+
+		pm8550b_eusb2_repeater: phy@fd00 {
+			compatible = "qcom,pm8550b-eusb2-repeater";
+			reg = <0xfd00>;
+			#phy-cells = <0>;
+		};
 	};
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
