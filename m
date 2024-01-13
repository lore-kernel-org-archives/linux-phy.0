Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E007C4707B
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 05:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAFBSzAr6Calv0oReLJTcRzRLsK3FA9WihUIcMsKgz4=; b=3/Cnn/AmuFp6G1
	mAddreDkh1KKve5kqOBqEK7lSxTEFWQiDe2gvwONkeMwtjCDriCpKtTdZw1hPBM0R9JZft6xv+z2H
	Yd55/Ao/ASS2CS36FYFtoI5V7Amu8ZZcP2CVi2vCcgrs2TvgxSsBgTf7kPG73HAjKiCkxHn5vuVpI
	REUd1wCSlzxOqm1X0oUHYD+oUzuZQiKjHaB4aH7jl6nGgUx55hunGaFSK7ENiOiS1FO7E4UMQD/Vz
	4Rkm+lMYzPfNBt2yP6g+rPCND1tcmBF6MjdSyq+iquSlKHFjDb/XriDU/9cvqr0sNy9kZyBKzmnqf
	Q2vGtI0tBrW4Y5E5rOsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnI-004Zid-0R;
	Sat, 13 Jan 2024 05:42:56 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOWnE-004ZfW-1p
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 05:42:53 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2cd2f472665so76977241fa.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 21:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705124571; x=1705729371; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rt1Fx2eXQZUxhHw8olyy9wzj6/smMSugyfFHU2p7CSk=;
        b=HtSVdxdiMPt1AuRdo3pImfC/8rfLxg//M294+kYzwEt5HnGf8W9gF1rq5i+lHcNiEv
         h5d03ERb5YybdP8oYkM7spqqpp9zftS7xC57fJ1zl+fzgepeaJO9bCFpzlvk+CkwZkw6
         NuG7L2ZLpkFa/GThaNDcmwhs0b4TxljkFIBju7Do2vUhai5iOg2+NpIpdVga0iP1PB2s
         XfXqRHayHsT5xgyyFtC6rNSb9UQoYs5N211UWtWVx/oQPUxUBG2sngdX8aD8T4UYPCTF
         V9TGpjxkyJnV2fLHy41kHXBWO71vSwdmYWaKbiB16oYpC4t5dHajntRsLKKSNkDgFmrw
         nl6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705124571; x=1705729371;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rt1Fx2eXQZUxhHw8olyy9wzj6/smMSugyfFHU2p7CSk=;
        b=Dt+268sOdzPNqI6ygAOSl1dyVqv3MnLQySFJg/HFcGcQnywS44qshWnmnpb1TsiZJ6
         2ae3+7fIFH5qjCVm1vkDvyat0cWQMWlEcvm73/rwXnPk0A1dhxM+aXBiuo89jTJH4xGx
         dSFobqd7iuPr7unkcXE6f7G5ZX4HYJ236pTjl7JOeJMuTWEgvhuPB21bZnRk0k6y//VK
         8moRSX5PXlkuwsa4dhx9K4mKT51Dn7ffEzL/0nKM7bn+Ta4NWk0pnchPfzrPVC5RyPMu
         4L6V5TV0JOq0ZJ1JS4P9foNNXtf+0qpaWtAedmhrNUpH79yAw8RCWYfjG2tS1FWXBKoE
         7jFQ==
X-Gm-Message-State: AOJu0YyaqTabdN8uXNogrxhFG2SNjSHL5sK0T9bKnOqU8GgFvSmsMuRZ
	NLRTDI2Oqq/Snp3pvnpvOucL5oPg4Trp+g==
X-Google-Smtp-Source: AGHT+IFYL7r0H7cOwUhVd8updc6YFb5OB2cs2sH8xDnwWH/pCAT17TOk/6BBLFhB72M2J7+rrNndjQ==
X-Received: by 2002:a2e:8906:0:b0:2cc:932e:6bc8 with SMTP id d6-20020a2e8906000000b002cc932e6bc8mr1154677lji.6.1705124571279;
        Fri, 12 Jan 2024 21:42:51 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r22-20020a2eb616000000b002cc71e9168csm677719ljn.129.2024.01.12.21.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 21:42:50 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 07:42:48 +0200
Subject: [PATCH 11/13] arm64: dts: qcom: pmi632: define USB-C related
 blocks
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v1-11-de7dfd459353@linaro.org>
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1645;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=b+2xLC1HSDWyK7NfHL7Qb4D4Cu0c6AyLWzMpnVJ2Bkw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBloiLREn5R2vwCLilh0Ije+tbpYax/p/jUu0bF7
 p0wrWOrQaOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaIi0QAKCRCLPIo+Aiko
 1ecTCACcoT9cfmlWMLg7FWQiVgL+vtSXFyl8GY+TiV22QRdlsM0tocTnhHu0JSgfzbuuvPiMvUb
 hSVUr56DA1TauYDZa+dGPwkdEcxp0UvguzxOuy2Do6eW3Hlm4gIMAuRDzoBP0eVsSEmgascPf0l
 fWZpUiZkBPgdDWoyWHEM93ggm+Y5evMgSLUZfk3/rV8KyxhIEnuZGYDMCWGg7WpLA8tbclnE7g7
 l3Vb8YDQM2ZKUxmH4AiAuxGCx3GvjBMmFqcnGs9scaSavroMrH74upYoHMvQ6Xym68WTnaHfATe
 xdVOOWg1BFJAj2jJvKzJSPkeZBY2frZqHRl90ZL0X6MaeyuR
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_214252_609054_8AA5305F 
X-CRM114-Status: UNSURE (   8.10  )
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

Define VBUS regulator and the Type-C handling block as present on the
Quacomm PMI632 PMIC.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmi632.dtsi | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi632.dtsi b/arch/arm64/boot/dts/qcom/pmi632.dtsi
index 4eb79e0ce40a..ccf288ddc987 100644
--- a/arch/arm64/boot/dts/qcom/pmi632.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi632.dtsi
@@ -45,6 +45,35 @@ pmic@2 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		pmi632_vbus: usb-vbus-regulator@1100 {
+			compatible = "qcom,pmi632-vbus-reg", "qcom,pm8150b-vbus-reg";
+			status = "disabled";
+			reg = <0x1100>;
+		};
+
+		pmi632_typec: typec@1500 {
+			compatible = "qcom,pmi632-typec";
+			status = "disabled";
+			reg = <0x1500>;
+			interrupts = <0x2 0x15 0x00 IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x15 0x01 IRQ_TYPE_EDGE_BOTH>,
+				     <0x2 0x15 0x02 IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x15 0x03 IRQ_TYPE_EDGE_BOTH>,
+				     <0x2 0x15 0x04 IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x15 0x05 IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x15 0x06 IRQ_TYPE_EDGE_BOTH>,
+				     <0x2 0x15 0x07 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "or-rid-detect-change",
+					  "vpd-detect",
+					  "cc-state-change",
+					  "vconn-oc",
+					  "vbus-change",
+					  "attach-detach",
+					  "legacy-cable-detect",
+					  "try-snk-src-detect";
+			vdd-vbus-supply = <&pmi632_vbus>;
+		};
+
 		pmi632_temp: temp-alarm@2400 {
 			compatible = "qcom,spmi-temp-alarm";
 			reg = <0x2400>;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
