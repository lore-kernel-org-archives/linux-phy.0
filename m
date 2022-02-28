Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12164C43217
	for <linux-phy@archiver.kernel.org>; Mon, 28 Feb 2022 12:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXzMrYXOW/brgfLRp1Jvdklq9LCyC2vl7BNV7aZs8YI=; b=2DeEfvn69/+8y5
	A+BxJIhcDbXnOSKj1ubml9l4xc5OWfKrCB784CxgP6XJbT9Rtd1xEEtks9CMCx3o16fV/PKQ2UJSQ
	AHZtk+2RppB7OiDjfYuVRS2wR1HniJJUV/b/jw4ruawkEsv0dbg6/xImZBLR+iVERW2MJl++LPAvW
	x1u7CTa0h/zxwCvyc5LixwEFVtbLL5DE68mkftiytDSop1DdLruO1VtgzXT5H9KhhuHMCMVu+biDZ
	jkszWGw/6rfJMefGMg5WfEUrxSkvoWPuMEolqU2CaQ+rdHTXHxjXN/EX5bp1wviVw3PiQaZouzJFP
	8i+K/f42FD+2fI/nPyYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOfSU-00CKUe-8T; Mon, 28 Feb 2022 12:48:58 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOfAs-00CDaK-4M
 for linux-phy@lists.infradead.org; Mon, 28 Feb 2022 12:30:47 +0000
Received: by mail-pl1-x62c.google.com with SMTP id h17so5007657plc.5
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 04:30:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LTdaYyO7BCAGNKSC2MWHao5kqhDNJ7241TMEcNLnGmI=;
 b=xZXFG6gst/2wMMOV4VQQwCn7XSlZDiwhGYdG9ZITVuWzvnuJFIBRLdDhscattRJNA/
 0iWcMIJDnOF9hd+BekyVX9ZxjCWlDgTIg+QD0Decxvz+S7mrT2R0FNBuwOuPEibxX2+o
 yEOE1gk4mlbFJOS5V31W1eiwm1fOupV7/5S8CUBJmpyYNhuCmN2UbS+JQypm21CiqyrO
 t6+Xyett1/j+jMd4G+Wlpk/T42/Hac6zHWUrf78Vhe57b5TYAbzqedODBg+ChyXjd1eQ
 V5IvYHvINDFDZjsnDU/3w5phflJJr5/EWlncmUXNBWtZTL+oUDsHK9By6utlWqeMzEEX
 a2Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LTdaYyO7BCAGNKSC2MWHao5kqhDNJ7241TMEcNLnGmI=;
 b=tRP0NYawRdSAJboYJs1SdYM4taU2dFhTtqYefbTNaktzGN/QWbqqRsoax4gr0d2gGv
 0SDMxZsIyCXfGIQQDcbvm2VWrtYpo5AayRY3mIdHGUvSs7V0v/E6Ql4LrPjSZhIDL/+M
 HE/S7EOrIm/K9qUjUPKxttlAQ1NmmAoIDi4YUlulhH/mb7QriH9gYWeN9j9Pe5GbHCq3
 qg/+JYSeJ0fws6DvVo4MwNkX9GnVSK/4/wfGwwGOVsMSXojYZ/xrnGKYYGzm9Y8lDhxV
 TW+KizhSl+XQRxTDev3X+96+vSGOJfFsOBBC7vGw7jnDISJ9RmGjRl2LiX3KUfoHJyZn
 Ybcw==
X-Gm-Message-State: AOAM530KI3Ut0Z5k3Ky0ipwHHc0Tyx68+JytiijnMcwpdGJQriQViDWl
 bO+q9XZ8KscjD5Bz7IYcMmxCpQ==
X-Google-Smtp-Source: ABdhPJzKsV3eHjoLgbKe7QfzMGneFHSKdf+oVN9ovRH/PBzA2MPzhkXuzpM3u7iZYV33pewy/PyGKw==
X-Received: by 2002:a17:902:e5d1:b0:14f:f8b1:a9bf with SMTP id
 u17-20020a170902e5d100b0014ff8b1a9bfmr20646551plf.35.1646051444962; 
 Mon, 28 Feb 2022 04:30:44 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
 by smtp.gmail.com with ESMTPSA id
 f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.30.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 04:30:44 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 shawn.guo@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v2 3/8] arm64: dts: qcom: msm8996-xiaomi: Drop max-microamp
 and vddp-ref-clk properties from QMP PHY
Date: Mon, 28 Feb 2022 18:00:14 +0530
Message-Id: <20220228123019.382037-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_043046_200313_A1CB7D76 
X-CRM114-Status: UNSURE (   8.44  )
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

The following properties are not supported and causing dtbs_check
warnings.

    - vdda-phy-max-microamp
    - vdda-pll-max-microamp
    - vddp-ref-clk-max-microamp
    - vddp-ref-clk-always-on

arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dt.yaml: phy@627000:
   'vdda-phy-max-microamp', 'vddp-ref-clk-always-on', 'vddp-ref-clk-max-microamp'
    do not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'

Drop them from QMP PHY nodes for 'msm8996-xiaomi' dts.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
index 7a9fcbe9bb31..f6f6b2e89a36 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
@@ -337,12 +337,7 @@ &ufsphy {
 	vdda-phy-supply = <&vreg_l28a_0p925>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
 
-	vdda-phy-max-microamp = <18380>;
-	vdda-pll-max-microamp = <9440>;
-
 	vddp-ref-clk-supply = <&vreg_l25a_1p2>;
-	vddp-ref-clk-max-microamp = <100>;
-	vddp-ref-clk-always-on;
 };
 
 &venus {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
