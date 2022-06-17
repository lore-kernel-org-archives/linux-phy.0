Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45EB7CCA47C
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 10:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDLps3ZSg54FZgkaLd9vn1pHNTNcgz3VPmP6KE4y33A=; b=wniagq06HRoeuB
	vzWCyfEn/ADxJ5RpXtXp0Ojxz9c+fZMcPY1Dx2R69YJD+IxtOBbmj49rYBFdBsiwb8noRnGEThKxi
	Qod8fPC99D+DsDGUe6+xljfY1BkAeUesJrePXiMTQVRmlChFJxYXG7AH4ICnRNVYGXjM6q6OqMBLC
	bbPS/vQvIH7lcNYPmQIsZGNjHM8xuaACYTq7zOFR1OM47/pL+BwJIMsGdQg3BgFcHZlpCPHv5Bkh2
	vWXM47YzdIPjqK1zbTCIefDBZSzqDmONsiGeHaqTDAPQsZg8VJDAyuZiQWmSAWupBKUht1vDsJ+Qw
	JqDbDwO1izt1+dbtDbAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o29Kx-006z45-Kp; Fri, 17 Jun 2022 10:36:23 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o29Kv-006z1R-6j
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 10:36:22 +0000
Received: by mail-lf1-x12b.google.com with SMTP id e17so3473707lfq.8
        for <linux-phy@lists.infradead.org>; Fri, 17 Jun 2022 03:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+mbF+CT4pj0sqOG4T30LpuUV61IhgblfEF1NrGou+hc=;
        b=kx4PfLy2XLmc8jxKBvCw5y+bwlmV5LhtLO3ZV3A/LS5GqtkQDVOaiRGkIWzZIoVFsy
         ETBCtf0RCSBO4mgakTkVDr0ZCygFPtjWf1pE6rPf7dxjqEZyNszlv2709v/GZkwauE7z
         HWndjnaUKvNquf+3uL5laRFKMqMBp0Oia50ho90s1CAYpW0tIOQHilUH7NwnzVPXjuTv
         h5w9MepAt61gsMO2hA57hk4h28oW8of6+JvN1jhBNHdyTLTQ/RSeZciiOJ/Z711E45t+
         mg72oZRK6I2dDL1509XFIuZthHQUuU1vdJ2C0oK42L2z8UVUHs9w+UcQeQa6FT2E4Sh0
         ChSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+mbF+CT4pj0sqOG4T30LpuUV61IhgblfEF1NrGou+hc=;
        b=7btyxPxO5w9kbS6IVlHRryZeOml42fdJsJymIlZpFfrHI3Slce4F2vgP/RuxZmlXpi
         2uW7NqV9Ueh7RP/DUrDVUYHSoo+cJCkqpWRxIHgfrrkiyl7egQBBT/RYVmr4DaSp/c0o
         445kKL1GV3ITfLod/IE5vWC9yBQudoFuOshTKajF0wXdApxz73qst3jjzsmQdF+iJMfu
         DjQ0XO09QDAx2xqg2UdODJxVvA18RwLX5EiIAVPdJ3glNLunBxdZXjy10WA1B3niuD6l
         6QRq+jQHH73gNCShg9bvpUSRceqGxwwhUq9H5UiPpEZnP0RVzjWm4G5Dp9sVcwhgP2RV
         kMJA==
X-Gm-Message-State: AJIora/2btk/3lcjOzGuzkMwLZyhb1jDsTBK6UTFev9U4EDv1upfiONt
	XGkNoJDCoPdD9yoobwTVOi06Sg==
X-Google-Smtp-Source: AGRyM1sKdiIYMNjTRBjuxiCZLxXGBdUfp5MBs0U9Q+lvXrTgNjerprVbhOZjK57i7s5XIItJ9Jcy4w==
X-Received: by 2002:a05:6512:3a93:b0:479:76e7:3861 with SMTP id q19-20020a0565123a9300b0047976e73861mr5188182lfu.446.1655462177295;
        Fri, 17 Jun 2022 03:36:17 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d3-20020a056512368300b00478ff020832sm591803lfs.106.2022.06.17.03.36.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 03:36:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: phy: qcom,hdmi-phy-qmp: add clock-cells
Date: Fri, 17 Jun 2022 13:36:06 +0300
Message-Id: <20220617103608.605898-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220617103608.605898-1-dmitry.baryshkov@linaro.org>
References: <20220617103608.605898-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_033621_288132_A2E5FA9B 
X-CRM114-Status: UNSURE (   8.69  )
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

As the QMP HDMI PHY is a clock provider, add constant #clock-cells
property. For the compatibility with older DTs the property is not
marked as required.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
index eea2e02678ed..1ada0d9857c0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
@@ -44,6 +44,9 @@ properties:
   vddio-supply:
     description: phandle to VDD I/O supply regulator
 
+  '#clock-cells':
+    const: 0
+
   '#phy-cells':
     const: 0
 
@@ -78,6 +81,7 @@ examples:
                <&gcc 214>;
       clock-names = "iface",
                     "ref";
+      #clock-cells = <0>;
       #phy-cells = <0>;
 
       vddio-supply = <&vreg_l12a_1p8>;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
