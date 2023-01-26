Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D8FC54E94
	for <linux-phy@archiver.kernel.org>; Thu, 26 Jan 2023 13:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeXkjcnZQL3/Js10JfUZwfJMj1DSI1qUeTL84Ntn9Lw=; b=ZZNERSkHH1Zya9
	01ZRiJJ3PX0xw1CuvQZ9SOyO8RV0qClYqzGNFtBiPT7AhrB0LaIbySsBShYzmn72nV4Pq3vILO3uv
	qmoAVejfg83KLw9vkhZDFi6N3BWTOQ7oZ1kPj0su911s8WIu0tu4NNrO9492/hFrlhR8Oqh1MvzwY
	Cx5PfWVR0r4Co+0HETg/bdmOELodku/O8BY+t1Q8yokIUuHPj/WUJu5Cn9Wlz+7uw2qMmba8e8dBH
	E+LdOD8UOKUQJpeZL3P27kE0ZFM3ZXvmkxZLEWSH9o9KEvo4r/cOKfNdR1LZIsCqeb7QX5ZY+Mwlf
	/M04pOfQ4Cs7gMH2kYJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mp-00B5Y5-Rs; Thu, 26 Jan 2023 13:59:31 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2mj-00B5SB-G4
	for linux-phy@lists.infradead.org; Thu, 26 Jan 2023 13:59:27 +0000
Received: by mail-wr1-x42d.google.com with SMTP id bk16so1838385wrb.11
        for <linux-phy@lists.infradead.org>; Thu, 26 Jan 2023 05:59:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RF2YyGY2PogpnFtO0lOlawE2OSglZRNn+XgKRaj3V+o=;
        b=uiBLnAVwS2GyS1HRbMqSi5MUkD9pZgyuG5ld57sC3WW/mTf4dgApP6wJ2EFmq8pET/
         SP9jA0BkIDIZLQXu4hpWFXvU0xHcf52eS8l9tfOB53FdpHg8i4OzcAujAS1dAcJmZhHg
         ncMf7V9MexDLVepUxHRFKUa2lbtIMwPgphkd22V9dI1SczoqsjVFBE4xz4cVqE2rLzqf
         a/mFTTdPlEQbH8vZieb+eFqLVvOhDN6cqsD13UDhI7kZgULVeeOr4vVpeuhhDwFs2APQ
         TpeIkDJ0/tYN2Y6Bfj0sznfA+z42vMfi74FpI88ieIQ1ZkO+kQ4dIVfSRFZ1Ku+8OdTm
         KowQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RF2YyGY2PogpnFtO0lOlawE2OSglZRNn+XgKRaj3V+o=;
        b=I9tQJeX0+JBLktsEbkv9arAJ4qwyoO9zLeanuzsJBUsobMx4zuEIYsPqxhYL552BbM
         4RsMFAMAdt4NxD1x5YEWsj2KGGDaIUyzrpioFM3wLzb4cL7aXUNB+LjRDO/7Qg4OWSe4
         Ybh+ljUaWlO0U37j8N2zOmvP41259YFhq7Lj6y2NZGO/cmDz5JxKQh0h02FztTfi4sjg
         Us07uoz7JS/s0UNBHHHVwI/TyjwbJ50ypBbSaOGS0S+AES0lvMbERH+GRqUN1O9C8FG8
         5WXJjrxPDHztTjlsJQ54kwOUkUGPKoMbM7d1ctVoyRitkm+WqWR+z55i68Dx4y47bpP0
         OcfA==
X-Gm-Message-State: AFqh2kp3PjpSa9p4c0V0+Qv2MW3GFRUjmhxU33kpeIHrZsgdUvQXWAx0
	3aUWaL+2x5oDVVY+SHDO/y/TYQ==
X-Google-Smtp-Source: AMrXdXuCTjk6Okl662FT10hv63OmbQhiMMsNh+o2Utbekk3FmmpF/b+EF+eUGq1xlkBrh4Vkc6YuJg==
X-Received: by 2002:adf:e3cf:0:b0:2bd:c7c6:d1aa with SMTP id k15-20020adfe3cf000000b002bdc7c6d1aamr30375067wrm.35.1674741561720;
        Thu, 26 Jan 2023 05:59:21 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d6d8f000000b002bfb37497a8sm1594067wrs.31.2023.01.26.05.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:59:21 -0800 (PST)
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
Subject: [RFC v2 6/7] arm64: dts: qcom: pm8550b: Add eUSB2 repeater node
Date: Thu, 26 Jan 2023 15:59:08 +0200
Message-Id: <20230126135909.1624890-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230126135909.1624890-1-abel.vesa@linaro.org>
References: <20230126135909.1624890-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055925_858019_76E96A0A 
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
