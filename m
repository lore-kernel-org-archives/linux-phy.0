Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B278C47DA2
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 20:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wy9oTkOk3QNMIYpGJ+Koom/4GxAqP4v2Go5/y/sDYmM=; b=iHK0pURjpWBP0i
	AKyMsBD9NJtKoOK6W3PmT3w1P7pwcAGAWS0pFyoyL1iitXHb9wn7dEXqsFSLhVCPwesI/K6bPeoj7
	eKN15S9hw4UAzadxPu0zALOO4YTys1k07tWJhYrwa4L2p1GPDIGM7cKAO7BmLb1ZcWa+kLQJE4Np9
	h64myHHpEcnX47c0YY2rCLFuS1B6/xNWZtxxBj0f0va7GK6EQMTfFx2i5EnpL8KDZ96SSrcLpeybx
	Z6/396cRo6cfCrA29aSsRszjeMmihoBPMfzwdTwsU6laBo6F+YiPFpBJNapPPCpg0Pr4ZaiCkIAzA
	2wVKKgUL0p02hmjWtN0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl35-005gol-2Q;
	Sat, 13 Jan 2024 20:56:11 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl30-005gjP-0J
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 20:56:07 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2cd81b09e83so38395301fa.2
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 12:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705179363; x=1705784163; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RnYyAOmdP1ndhCl+b/EqGIg63FmPiEn40CVrBRSgTdk=;
        b=RLPzDSaTysE9MPn24CM81X3tP/uQ4pIA2QTr67AADNOLJGxJs/IoeiFzsHpElfL3gO
         m3u23O1ls0xL1pzJzCtHO8qeZmukYtS1/yS77NSbxxOEusS01ikVCrOUY4kpKnTUMG37
         My4k3RcKW8h2cUuKYPnUJ3hSrrZyw/6BCVULYyHVx7pjvjRlOL0qRa7KkF78k5gkkeYj
         t0HpJloqE5twmfKBkXkIhbmrrrrPXzFto0BlOO9vRY2/TpWCn2PkFTvIQw3TmBFOPXPS
         oQHmf1+e8EsJ1ztImN42dAT2Nysffy76luVkYNFW7edK56rmDJghW67zW2eutykvdxxH
         JSIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705179363; x=1705784163;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RnYyAOmdP1ndhCl+b/EqGIg63FmPiEn40CVrBRSgTdk=;
        b=t3+KtrbrEP7vIYD4yu2Mm+TxEdp/FgLXs+9aqrdZn0uQIK6LtRrtUzcize/ltmu587
         +XgtCPteLuytENgDgEJkONJosqbAdaBzGMww0Zyw2+yNHfxtEZgQiSSoqql49t5gx5FA
         XxMM5PZYLE99pMru3v71d4aF7Npz7LTHqmt5LiXZ5/oct+6ElB/IfU7LOBxNJfjsyrPu
         NM1T+k7H3WxzDRMInHd8OfYElucaSrA3Lwm+4w4YTTGYe+JJPIiH0uwBmFBGZ0oqivGp
         BiOcxasVRgqKf30C7P1JU6EsVq9JRThVBEAaQThX9QSDX5FrEfkQtQNY6KFF2wlG7xWT
         zJWA==
X-Gm-Message-State: AOJu0YwrSnUAHshjz1xr7G3GRRXUBaa9KKfQHKRnCSpPmuxLQ/QEQxmy
	+Wt2cZvxCwsUlHRQMHLxyKLtNB7rQf0Spg==
X-Google-Smtp-Source: AGHT+IG5cA1EWA4duY+uo+be/bwS8pQStVj9RTEXXvd/KyWNa3i9lFiJk88dQD6iVwGTSegqTeoQ1g==
X-Received: by 2002:ac2:4f8f:0:b0:50e:3726:7036 with SMTP id z15-20020ac24f8f000000b0050e37267036mr769883lfs.170.1705179363803;
        Sat, 13 Jan 2024 12:56:03 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p14-20020a056512328e00b0050e9355d7eesm919802lfe.103.2024.01.13.12.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 12:56:03 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 22:55:56 +0200
Subject: [PATCH v2 13/15] arm64: dts: qcom: pmi632: define USB-C related
 blocks
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v2-13-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
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
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1709;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=l+v+wiM85c32Me3NGIWIsOe/VuV8zcqdzBSKd+lcjDA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlovjYwMtAuVPhsCwgdLMK4SZ050X5Jk/5KkauN
 kRhVcjPV16JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaL42AAKCRCLPIo+Aiko
 1VENCACq77+FZpxwKdW2oUH5ndplo6jw9WZjdhlTrypIe1qsCwYXUacPFtA+PfAvkxvhdsmGzea
 Wl23qcZ6EqXQV+CfcKueNse7s/lxJIl4ZSb/KwZKuYst1jNBjW/fFfuaV544A6GAYxsiaIYU/Lh
 lzfJhTCke6JG3/snHmvmiU9KBluALPyoW2LcI1aOzjhNxYRGjUCjAXNBTlLffpDWBzqhz4Bfhr3
 wUDE5ugjoWR5ebu+MxbjTEByZ5M1BkXQ95SVtLoHVPaiUimq7zFS9sI+s4h+V0auvkQKXZOIHqf
 D0MHm1NZojJt5LkwQKyr1tbXalGT12anWUIAKedwpGTnHiWg
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_125606_140982_9DBC5ED6 
X-CRM114-Status: UNSURE (   7.99  )
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

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmi632.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi632.dtsi b/arch/arm64/boot/dts/qcom/pmi632.dtsi
index 4eb79e0ce40a..d6832f0b7b80 100644
--- a/arch/arm64/boot/dts/qcom/pmi632.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi632.dtsi
@@ -45,6 +45,36 @@ pmic@2 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		pmi632_vbus: usb-vbus-regulator@1100 {
+			compatible = "qcom,pmi632-vbus-reg", "qcom,pm8150b-vbus-reg";
+			reg = <0x1100>;
+			status = "disabled";
+		};
+
+		pmi632_typec: typec@1500 {
+			compatible = "qcom,pmi632-typec";
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
+
+			status = "disabled";
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
