Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EBBDC4828C
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZB4YHVW4jhp/LRKbAutyCSmlYhuSv3KgGsigg/LZJ4=; b=3AsW4HZL/0AnNa
	ir9xw3ZNLL2BPBFCKTD8zozyW2hLAuvSzXQvG5ARAeyrm3jmZk415vmXIc8oWfDN4keHSMBW1zjuM
	U5uqPXlccn7pozsneUKa1c0DUjpIvQupwABJORmpbJGA/WDrNlW60Mtit6N60kYDixkMNxPa6iCFd
	gucdsHybMouN/ILpI1XPhYbHKVlNwKEJdS6ASedfzWjIutKqdw6s6/WF1fr1F2s9+wWSTRzcZPjyr
	oiz6xLQDtJI1JerbyamR9rkBDCg+IK+SVhybk1SOemWIJUlZjZzUCB7H/8mv99nf/6Aqqp0ziJMwS
	mofwDl+1fnF3ZAtFs+Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4id-00000001jRl-3foU;
	Wed, 31 Jan 2024 07:09:11 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4ib-00000001jQp-1QUv
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:09:10 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6dddee3ba13so2084461b3a.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:09:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684948; x=1707289748; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4daM6StIHLffxPabzj4NBe1EGGf6BbOQFvW1iFIjsg4=;
        b=kJzoixuaMTb2q8gHvXF+sdOIgcPNqLm32CutmXjXjIJH6Efa759WN6UZU8y2kj+90a
         qwwtxi/YGKxhdMNxDLbX4y34rC1yoGT01ouCQaIQ454l8v2rfnUjmaXv3OU/YQJXHHop
         +1YYt75Yd89E5toWDm3gZRk1COro6o+/XfDOHO5Rm3hQI4POHKhp+Z8iODPbgY7vHahZ
         0Ir7wJrvwxj1Y+QQVQa13kdhMhDY4fLJUl+yCL1/U5UsYsJuoInJhhIQxRKQxAfcL+uR
         96D8m4CmJUJ3py3hb1lZXzci5BbgtidMiEQSQzk57jwZjEvX+HDxhkyUXP9LR1PguFLj
         H2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684948; x=1707289748;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4daM6StIHLffxPabzj4NBe1EGGf6BbOQFvW1iFIjsg4=;
        b=IzdB9bVcI19pBLQRV8kDXY7ZG/+wteGDGf63aHTdreBi/I8V6HtFf2M/YvYg3ZUxBu
         +qiY5PjI0XNKrWUg3FKOmOg4TF5HQ6YEr1oULZSPDAWD2rfSfAYxN64gldiIh1g5jl4N
         87qm4Fx9HQlxiO7621WoBuTCcTh4JWL0/BlCR0v+2Gn2BRMktkNYp26pQKIY20rfhzKA
         tRSrp82fD1tniRpzbkMGbfiB4MaARXTtP6IY2y+iNO6chgGX6Gt32kfDzHDZZuLLZ6yi
         MV7sAbOwrBksJrKKm/e7a71EAlzZj3fTle+icsCoWF4RwFPFsbf/s9ucLxDnX2OEA41r
         RcMg==
X-Gm-Message-State: AOJu0YzyNb9KzKquT7kwr5YIXSoD/wPV2mDhXb59eb5Cp/alMaB1ShY+
	YNHOSU0bKOY+vHE56EPj982CjiTgTBKVCLVLh0M5Hma0jQNHNPOzCZgqhZHR3A==
X-Google-Smtp-Source: AGHT+IGm8FcuKIxfS98clR7PeRVShCFt97NJGMaoSj/GD7UALSsITsodaYv3//SqjZX7X1QARG45fA==
X-Received: by 2002:a05:6a20:7aa1:b0:19c:a48b:300a with SMTP id u33-20020a056a207aa100b0019ca48b300amr695240pzh.37.1706684948230;
        Tue, 30 Jan 2024 23:09:08 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.09.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:09:07 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:35 +0530
Subject: [PATCH v3 12/17] arm64: dts: qcom: sm8250: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-12-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1287;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=vk945dDdVUzTGdi+7n851w/PBwLOfA8sY2v1ArztxCQ=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG+wgcwrzJxDeTRdFX6AuE4Vs66xfmbrM42p
 aNa75sNok+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvgAKCRBVnxHm/pHO
 9RsSCACX2/uwx+GRGiGscSgdBleYMl0xwLBg/f+KX3XAijD5mocEDvnMkX+WYZeeYbk547w1yfP
 X0LZnVw1Ie5NEcKUCLivagHkhw3ID8GKDYjaVM9JGi+RkUQ2e/xIgRilbUs0wfFcPBGSMg+bOb0
 cQ8dO1fhkM0nM21loeBfugZqvYnMAa7yafLVuJvQaUuVPD0SX/VJn4ji8eVdCCA2omTsPygGCaL
 4q+afNgOL+9J9w1oAjk9iOuAy+1U7UY6hikaodsczVmFFBLYjvW/tu1xiPs3sHqsH5Gw7PcxWAh
 steq7FrdgL3FbHXxoNVQj+XlV1NQXJ6cDq11QVRIWtsYpVJj
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230909_416677_1A173209 
X-CRM114-Status: UNSURE (   9.82  )
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

QMP PHY used in SM8250 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: b7e2fba06622 ("arm64: dts: qcom: sm8250: Add UFS controller and PHY")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 4d849e98bf9b..f3c70b87efad 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2540,10 +2540,12 @@ ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8250-qmp-ufs-phy";
 			reg = <0 0x01d87000 0 0x1000>;
 
-			clock-names = "ref",
-				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_1X_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
