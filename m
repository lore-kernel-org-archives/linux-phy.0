Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3B0DC636D6
	for <linux-phy@archiver.kernel.org>; Mon,  6 Feb 2023 09:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKlANO7pto4SPdBsriIGmdv1goJWMbR+2VsNphYBIcY=; b=3lU0zObaBtCNT4
	UstCNNryiZQAfIpqXBzjyBl1h4Siyd024K4meNH7fUV8wr2WHr67h3a1unX+ipfMIkGtaXS/pgseb
	jYveqptdFwtLIzPPlaLeCeO9ldtttdb2w2dcn0k6xF/q+KK0CWvJ9ZPtZhZYja7Vj9mJDcWTZPxy3
	Ed8iA3ejvEaUuxlefpEtjWeGUim2h7hUXUH4ZCmMFctehDuUjFu+hecK+eHqR+HCx5I8aGu13NDMa
	cKv/ktaiqLIUpCGpoWbCmG2lfYNjqoxy5gIij2UqNzLZ+vbEhC6VPcHme0Scu7O/sPS0DPFeuWYmI
	X9JKYEVpEFiclFTZUnyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOyHB-007yff-Aq; Mon, 06 Feb 2023 09:59:05 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOyH8-007ydZ-TZ
	for linux-phy@lists.infradead.org; Mon, 06 Feb 2023 09:59:04 +0000
Received: by mail-wr1-x431.google.com with SMTP id m14so9760842wrg.13
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 01:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oaz5GNbnasZfy2Q6/rylECmgs8GsTdSUSl2LIwJLhJ0=;
        b=MLI0Ag1bzBf0dSos2kvp7aqLYAfZvtTDxbu9CvmmHJ5L1967+N1/ByQ04Lk7cFbs1U
         HGYTxBtkUuJJbitYSEml62yOdRumzh3RXGrmyUHOiFm9wp//jVmGaJxiyrblda1CZ5oc
         yrwut8sTQQZAa1Vnuvav+nvhuz+2vAAI4aRkxJr0mGxU6g72xMEml90o38D2sDMvJSZC
         AGtA0GSuM3KUVXjmKRpyTTm7IdIvavDpTFsTpXkHgIBWa88PSiM+A1cqdN+oxchJQVPU
         X3Ub+9ncQLJntsPhl4ghgHe9K3+qnIY4wK/g1NHC2HXww4hS2G6mPKHSEfjGSIr/KNc2
         JG9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oaz5GNbnasZfy2Q6/rylECmgs8GsTdSUSl2LIwJLhJ0=;
        b=nAle2bYuDSvWRvEyauamAfMMNeHk1PzgNXxeFPuT0rOqgKW/51MPXAHmY4KTWHiHly
         mJ5IDo4SuRb2r2LSzRu3DKte3vFGJwDs8kTmuxHXDTrEHKIBDhfrtH1cDmUvOeYn2faJ
         0EKbKk+8oWZXqlCxLDXEJDxe8gpLD/UyiNSCyftFzWwTcaJ9eIXq9oUD6a9U1OT0zDBL
         gaTsHJHx9BleWbAGFJ+ukzCUxkTJ/BmwnfK6UMt8PQHonkxiR6JeZisaxS+MbOi6Gy2x
         ai8X1qrPjV7/LOY6wd7vFn0h7j+tuQSZmA03unycP8jQEg+1s6VgnzO0+gX7+Mf3uYTW
         4irw==
X-Gm-Message-State: AO0yUKVowMqjRn8dczvARWev+BZhcGjtdcM8mep5gTHfBNliZ7b64Ci1
	mqhZevX53tZF2TKTuKIsPbJHAG4lO6ZHNUPw0Fc=
X-Google-Smtp-Source: AK7set8X3aT58X3nMw7mpf6ZoJc72P7PX9MBoaVjbih2rhd6t9j7hoZTRZao7tZbc/D3PCaBQLPrJQ==
X-Received: by 2002:a05:6000:8a:b0:2bf:f44b:7a1e with SMTP id m10-20020a056000008a00b002bff44b7a1emr15386186wrx.67.1675677540171;
        Mon, 06 Feb 2023 01:59:00 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id i14-20020a0560001ace00b002bfb8f829eesm8839304wry.71.2023.02.06.01.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 01:58:59 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Feb 2023 10:58:56 +0100
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qmp-usb3-dp: document sm8350 &
 sm8450 compatible
MIME-Version: 1.0
Message-Id: <20230206-topic-sm8350-upstream-usb-dp-combo-phy-v1-1-ed849ae6b849@linaro.org>
References: <20230206-topic-sm8350-upstream-usb-dp-combo-phy-v1-0-ed849ae6b849@linaro.org>
In-Reply-To: <20230206-topic-sm8350-upstream-usb-dp-combo-phy-v1-0-ed849ae6b849@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_015903_002589_50B1138A 
X-CRM114-Status: UNSURE (   7.52  )
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

Document the USB3/DP Combo PHY compatible found on the SM8350 & SM8450 SoCs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 0764cd977e76..52ab7174df85 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -18,6 +18,8 @@ properties:
     enum:
       - qcom,sc8280xp-qmp-usb43dp-phy
       - qcom,sm6350-qmp-usb3-dp-phy
+      - qcom,sm8350-qmp-usb3-dp-phy
+      - qcom,sm8450-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
