Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B600C6FA8A
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 13:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qxnXl6R3OZuCFYjFFGrbz5uktbj9qwEVvgCMtuXqhQ=; b=36ZwMyNW5Kwx18
	6TFPHISd349e4qqvKrowrCqbCI7YJTBMNPFX0b3NfJhZQ2rQKfb7dOsZdwfppdLF63M4fe7S/GMf7
	8RHEwdT6ivUaJirT7y6A7aoys9HZaxgWn7Dlipv7fti+XqJOs5H3nwpHIbpbWHQZ47NNKZkxCL2Gj
	g+l9iaohKQHSzPA2Rs2168xcV3tzbqxi+Xzdtuwa60z/+lMmIXBd4LivEEpnxxKpLK68gXzlJbRty
	8/AW6F6kh4YPDBbnzWrS+CtKpWpqJ3Oel5Tz7EWI62lj/jG21bmqWiaEiCmTiCYbPxBZfE48CDKMg
	Q62k5jHqEZP4n7MRerzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdvg-00GIBE-0J; Fri, 09 Sep 2022 13:20:20 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWdve-00GI8L-0t
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 13:20:19 +0000
Received: by mail-lf1-x131.google.com with SMTP id q21so2710150lfo.0
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 06:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=bIrN4HBc/AYGCl/WYc4FxOd962UU6pFyVULMpckCoQk=;
        b=pxzBrFpNtHosMV7i78DEHCwxMYggP3WVeivwnsk6B+ewCoMKvQMOweLZP523y15Mon
         HxZcSiqLY0Iej2R2PP0Xb7i0PQlzUNDZRm/GpdtfpcIuOSpkGqBLdSkk5gqRsiPq+6Pw
         8adgD13HpRC3HmkuSSF8LPzbIbXNWnptwWonW1KxZIip+BNDK6s19HGp/a4d1PMQLT20
         xpwm1LvOAHrcgfpFDko6iTqtv8zw9JdHGotT5bigGQOS4M6LnirutwfSadEo4qufJhcA
         IzRRxh8oK9ylNSbU78dDlgxeyeDRxcryqo7qXupomWlZ/1HQQWYiw6mSF2ZO4KBjgnIx
         7pyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=bIrN4HBc/AYGCl/WYc4FxOd962UU6pFyVULMpckCoQk=;
        b=O0L0p2VDGuD8VnSdjs/epkgwXuz4rzZBgS6/Hoh3u1UdwnM/vTZGyLlz8bfh7VE/wp
         x+yaYeQ080Tezxu6CMrRvsklaXArir9R7eKm7V0GqUFrRKGd38XAxrK1mBp6uNiiUYaa
         baEQlEB339h6GWwVk1itiaY2fF/TByjc0O8/Cxt6G5biY0fV1FFe0N+lXsEG6+9cpDLO
         YSLdOdWptk5vOopF7rsDMGQK2BYuLrzIC9xWV+74L7av/e7B68NIK7CkyToP5vYCm233
         lpzfAZScxfKQT/p6RQKAzvxDtsRcNmN8emRdkR3ux+Aec36fm/v/pXxucUdieprNgv0F
         GOiQ==
X-Gm-Message-State: ACgBeo0C2LGhv/yIUV1Pcsq7qviGpzV6Yt7dV8PABEJgQg7JucDJrfc2
	pEsYyGBcmEG+veKf+8Iq72QynQ==
X-Google-Smtp-Source: AA6agR7N9g6t46znk386NL63YSGUp1+CABCFlUVyWPq2XvlE6HVpWv46O3t76Qeuqpn2kZECBBukSw==
X-Received: by 2002:a05:6512:4024:b0:497:4db:6ad0 with SMTP id br36-20020a056512402400b0049704db6ad0mr4674150lfb.637.1662729615738;
        Fri, 09 Sep 2022 06:20:15 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v10-20020a056512348a00b00498ff4ae746sm71729lfr.294.2022.09.09.06.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 06:20:15 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 5/6] ARM: dts: qcom: apq8064: add #clock-cells to the HDMI PHY node
Date: Fri,  9 Sep 2022 16:20:09 +0300
Message-Id: <20220909132010.3814817-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_062018_084464_2A6BB31C 
X-CRM114-Status: UNSURE (   8.41  )
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

Add #clock-cells property to the HDMI PHY device node to let other nodes
resolve the hdmipll clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
index 942aa2278355..decd18217523 100644
--- a/arch/arm/boot/dts/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
@@ -1498,6 +1498,7 @@ hdmi_phy: hdmi-phy@4a00400 {
 			clocks = <&mmcc HDMI_S_AHB_CLK>;
 			clock-names = "slave_iface";
 			#phy-cells = <0>;
+			#clock-cells = <0>;
 		};
 
 		mdp: mdp@5100000 {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
