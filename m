Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08637C4321E
	for <linux-phy@archiver.kernel.org>; Mon, 25 Apr 2022 21:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jgk0s0oOJw54mwZPgOafCUu1eCr+H5ZjOFbiLBKPeeg=; b=CVaLzJZvx9wIn+
	/xtkA/Jb7+aNAFRLRNge/lXNiKj+ZlMgoayeJc+OWmstk1WSFTU3PSY/cbp3pcwH8FTWxJ9Z/g60N
	DOYSSVmIzr6JiEJsRhtTOy8bP2U4nE3pTutW7hyyZoCuh5PlcXAGlSWnBrrlbguhge8oZnlZfiYkJ
	WLIJkjmM2A03hBLnnDx4V6HzxBSu7c8CvxDetfZ93VvgSPGDmo6ozAPeHjNFrgcXPfXRgCnIWZWtU
	V2OioD+33FS89Yh9u94z1C7LWmHiZHPO0c8ApV5XITlpR+K/22Ny5oOZf6jlkWbhxvv4hC2iXN/TW
	nGqRroHVgIrRBqi+Meaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5vW-00BS6Q-BL; Mon, 25 Apr 2022 21:07:22 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5vT-00BS31-HH
 for linux-phy@lists.infradead.org; Mon, 25 Apr 2022 21:07:21 +0000
Received: by mail-pl1-x633.google.com with SMTP id p6so446195plf.9
 for <linux-phy@lists.infradead.org>; Mon, 25 Apr 2022 14:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fYD/F2OSbA7Q4eCV40OrtxHiQtAfyrFTFEIn6t3W6f8=;
 b=WvFR64qpnd4yCLm8ubU/W/DeKgWVe5sf1D05fbZmkSyTq8yGSG6v5hnDff1XSYazp6
 83XXw1NiHbANd+TaAV+ZBDA2iYhNtL67l2+aocpmUGDCinB5/oxcsmHaIHzPCmL0lSdx
 g5TTDnxbPbEk7GACTTB9R3BKu9hJsSL5XH2GA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fYD/F2OSbA7Q4eCV40OrtxHiQtAfyrFTFEIn6t3W6f8=;
 b=YMTozQQAC+n5GokRwMl+FfwPJVnSqEayYShIgjVCd2u7x6rTyMxu47fC4tPFty8VBt
 aaKtmmmKXWWUJduysZdThseL5bDw+thD98BvIcI4L1gesb2dxS8pXxDv/FcucTe0Bbms
 TuO7VBbLZLlZQMRQjJrvuDuVlo6VyECEftQFivNEiF+0ri4Wel9UzfhNFJfJXVKKx7kC
 RzbW0PV2vUilmWgG6K6Z1l6M6sWl4YdieNhbaavz3hOvocq9mN7r66FiTGFhKvYSw8wX
 8+wqirXuETDU/CMnqfkcrCYDn4XsuMDv+nkssdCgaeDs+/PHxpRM0VLpUYPEgPhfBYYl
 eUBA==
X-Gm-Message-State: AOAM532m2EYQxN7unQm9NTSADDjl7kzn05+SxelfkM15/MV3/QDg7ES0
 c38231Bt1zrUBkrlw3cLV4eGMA==
X-Google-Smtp-Source: ABdhPJyG9Xx7/t8cUKO2ub7bBhrSNggYmBrlKgygY827SF0gU8Mp7i0d+ErwAnNSiBQq7WdPpARN0w==
X-Received: by 2002:a17:902:ed89:b0:15a:d3e:ada6 with SMTP id
 e9-20020a170902ed8900b0015a0d3eada6mr20094621plj.94.1650920835532; 
 Mon, 25 Apr 2022 14:07:15 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:201:b820:7f63:f3dd:3da])
 by smtp.gmail.com with ESMTPSA id
 b20-20020a62a114000000b0050d231e08ffsm8523202pff.37.2022.04.25.14.07.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 14:07:15 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Rob Clark <robdclark@chromium.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, linux-phy@lists.infradead.org,
 Stephen Boyd <swboyd@chromium.org>, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, quic_kalyant@quicinc.com,
 Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Douglas Anderson <dianders@chromium.org>, Andy Gross <agross@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: phy: List supplies for qcom,edp-phy
Date: Mon, 25 Apr 2022 14:06:43 -0700
Message-Id: <20220425140619.2.Iae013f0ff4599294189f3a6e91376fad137bbabf@changeid>
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
In-Reply-To: <20220425210643.2420919-1-dianders@chromium.org>
References: <20220425210643.2420919-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_140719_607740_D8EE4F83 
X-CRM114-Status: GOOD (  12.58  )
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

We're supposed to list the supplies in the dt bindings but there are
none in the eDP PHY bindings.

Looking at the driver in Linux, I can see that there seem to be two
relevant supplies: "vdda-phy" and "vdda-pll". Let's add those to the
bindings.

NOTE: from looking at the Qualcomm datasheet for sc7280, it's not
immediately clear how to figure out how to fill in these supplies. The
only two eDP related supplies are simply described as "power for eDP
0.9V circuits" and "power for eDP 1.2V circuits". From guessing and
from comparing how a similar PHY is hooked up on other similar
Qualcomm boards, I'll make the educated guess that the 1.2V supply
goes to "vdda-phy" and the 0.9V supply goes to "vdda-pll" and I'll use
that in the example here.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index a5850ff529f8..cf9e9b8011cb 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -41,6 +41,9 @@ properties:
   "#phy-cells":
     const: 0
 
+  vdda-phy-supply: true
+  vdda-pll-supply: true
+
 required:
   - compatible
   - reg
@@ -65,5 +68,8 @@ examples:
 
       #clock-cells = <1>;
       #phy-cells = <0>;
+
+      vdda-phy-supply = <&vdd_a_edp_0_1p2>;
+      vdda-pll-supply = <&vdd_a_edp_0_0p9>;
     };
 ...
-- 
2.36.0.rc2.479.g8af0fa9b8e-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
