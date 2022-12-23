Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80CA9C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 23 Dec 2022 16:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pssru1s2p+R1uJaUmyMLxyEvRlPxrJB/ExwGVVrbLc4=; b=kRp0Bkjpa+ysqD
	TzDLw91PZ2w/WnLdtxiuiZwrnp7Wn2G7cIt9G1YR1+StZNsCPF35J7dT9dfwz6kwjrFqD00bK794M
	EgF1ZiWmXzY6ScypGEEgVpXgDg0vUGJToG2ipBNCcSt5S5ZOjUH0NY7vulT/KEWf2velEEXB8eRVp
	x8e6XkM6G2gQow8vwGoKkkzkk/J+fSijmPT8amvu3Taq+Ru3eIMAAE6qt+0+twikcbaXSSk4zJKRu
	0ntUU61PhAAZ2Kt5qrqXYmnQfrYu4PeYjiNjtj4Bre0r9Pz8i3AxNMk4zXG2Wc+/kycoV7tGGdNRc
	XQJpydJJZ5u7wf2Ydxdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kl6-009u3Z-QQ; Fri, 23 Dec 2022 16:18:56 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8kl3-009tw9-1k
	for linux-phy@lists.infradead.org; Fri, 23 Dec 2022 16:18:54 +0000
Received: by mail-lf1-x131.google.com with SMTP id p36so7592998lfa.12
        for <linux-phy@lists.infradead.org>; Fri, 23 Dec 2022 08:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q2dybpJartoWoPXcU0Wb+VV41JBJbl5xyHqkJgWwAug=;
        b=jq/Fbk3Fh5QkfX73iAPuw7M33yxBkGSIycgvMjDtqmwLCqJZdEr9Zzb1L9q7aJOgBM
         9wm0et0Yjx/OcH4JzGuFB5F9lTb6um1kcnB4wVJZjYgopZLEpasKs2pebECvOY4reD5f
         HZm5gsooFlCds26tH/9Efo2R9KyIMHmcyGZ1fneZm7ReIsInx5Ivn3atTAo3RSC9XUXH
         89Hi6ftSCv2cxhKIVJEgb+dUGwJRWNjlDrLnP0CGOH4z1pgcHWvgN9MKoWj08/nKAF/e
         AoYNz4dX/6ttanwryZal/TD3l679tf1H61SL61Dh4IZ7iv2ilhF7J1PpbZmmptzzM9Vz
         UU2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q2dybpJartoWoPXcU0Wb+VV41JBJbl5xyHqkJgWwAug=;
        b=x+WGCGeVy08sLpuzsC2xepnys2et+hmD8pwO9iLX+9gnX4nVYH5Imbw1dOPusplMTS
         IVBdlTgIzc0kuXzZtEHa6PZ0tjS/Pp/H02n0Ujm8uKwNx0ATHtmtEBx5S/0iNU5nQAgE
         lku9QCQ3jSvMSYtIXpXBuRY35S+u9I5CQ21R/RhG+aPhse/DaegaJLPg6juiR8siMDvM
         BNXUOif4+WPjwb5PiehGPY9eCbTCyPS5HLm/oeAFBQz3PdiN4EhVEuLad5OnvCFevil+
         Lh638xsWK+7npl90ZsNdkfEe2bHcSlSvj1FIQroVJaSD/+JlGqkDkrvX/uQm6PZUIo5A
         dONg==
X-Gm-Message-State: AFqh2koYi+Hv9ZVEZ9xhUxsypcvtZhGdoTI9RjIAQSAY9K6rhsSgWCXM
	NGWXLtadb603rpqlSFvVjSV89Q==
X-Google-Smtp-Source: AMrXdXtHDJxI5zFf+FFwfsqeCuYnfESSR9XcvRGr/j1oz2zabffurZifOQB3vInoBJ9xLLgCLAVqBA==
X-Received: by 2002:a19:6508:0:b0:4bc:8c94:82f7 with SMTP id z8-20020a196508000000b004bc8c9482f7mr2621466lfb.13.1671812324547;
        Fri, 23 Dec 2022 08:18:44 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n18-20020a05651203f200b004b4f2a30e6csm581360lfq.0.2022.12.23.08.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 08:18:44 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/4] arm64: dts: qcom: sm8350: align MMC node names with DT schema
Date: Fri, 23 Dec 2022 17:18:35 +0100
Message-Id: <20221223161835.112079-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
References: <20221223161835.112079-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_081853_206152_CA14FCA4 
X-CRM114-Status: UNSURE (   8.99  )
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

The bindings expect "mmc" for MMC/SDHCI nodes:

  sm8350-sony-xperia-sagami-pdx214.dtb: sdhci@8804000: $nodename:0: 'sdhci@8804000' does not match '^mmc(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 245dce24ec59..18aa4bd073f3 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2369,7 +2369,7 @@ compute-cb@8 {
 			};
 		};
 
-		sdhc_2: sdhci@8804000 {
+		sdhc_2: mmc@8804000 {
 			compatible = "qcom,sm8350-sdhci", "qcom,sdhci-msm-v5";
 			reg = <0 0x08804000 0 0x1000>;
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
