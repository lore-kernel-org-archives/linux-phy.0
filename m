Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5767C43219
	for <linux-phy@archiver.kernel.org>; Mon, 25 Apr 2022 21:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dxte2WfaBWYqj9eerU8bIM64EM9aLX7OOUNQgZQOFM0=; b=x9HmlAkbL5sr/c
	tthnIADiQfEErhyiVTD3rcHs7gHN3gjt+Ez0QWU8IsfnckLcOC4zkrPEdvD86gx/aOSsA6N2pWXRY
	CpPbhCVVS1DhzWf+XFBm13la04qORaz+Bm1J3OeMx2EXGQtyxKgJ5HWV4lIgAp/54HtbJx3hknICi
	Hk64NgByLExLTj9ebM6IUlWMz8suFmaJqUXCbpSzQjNnhtp0w98bUmNKPkcN0oWCotJn7ut94RnRq
	DhuQLRpaRdVqmQazcE/XM8cwjZpAUjOVx4zVelJf1v8ORx90vEqywhKGNYQtzEKm2ntbUc8Q0MEAt
	i3B1yL8JfMarvvDMIhOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5vW-00BS6A-32; Mon, 25 Apr 2022 21:07:22 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5vT-00BS2a-6G
 for linux-phy@lists.infradead.org; Mon, 25 Apr 2022 21:07:21 +0000
Received: by mail-pj1-x102b.google.com with SMTP id
 n33-20020a17090a5aa400b001d28f5ee3f9so547394pji.4
 for <linux-phy@lists.infradead.org>; Mon, 25 Apr 2022 14:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7pa6zrNLxEFTJIYew9I+MslyE/BqjUU2Vfh9xpblR54=;
 b=Shoz3tJtEfbeJHLbZbbAtm+y0n+qLrUd1IsVnLxx+HlgH0lU5Bzat9UjXBvtUxxkcZ
 fWVUxh4HAjy8+bLXQnIQG4pqK/T/ki1Ts5oXpNSWDKVq5nlj2zefrPxGz04zSJctnqww
 MdFeL7gkO8jwSYpuKBh4ELKQF7TnQPSYm6R2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7pa6zrNLxEFTJIYew9I+MslyE/BqjUU2Vfh9xpblR54=;
 b=mFts2Q+GAcF6HvrT6IhGNlb60tJZyLTYqcdL5x/vQ4Ppp/UBh8VuYlkiSmyurcWSR0
 ZgYb9BvBxhpxE8hB2KhxDtkiirKdPFzQ/48+ATxvSc7uJRNwdm7uXjgP9SrZ7Ezivbjp
 nMQfdfK2fA4+0CyhikdhfNJdK59ulnDSMMy8U6VVODH1BdOoQxBa+2ueRVtNdwDn+aaR
 7Urzp1H/uJLsZ65lPa2MrV6SCDDzDJymVRmyVRNYmOJyMWD0E/awol+4NIwPw7LgzcxY
 KzOjncMoPbnqGA6TnxUsvbsp13igatJv00Ab6B0U1WejroWHBdnGaL51QTCB/JLVwPAZ
 hKxA==
X-Gm-Message-State: AOAM532/6z7ySy/+lF7MwH2xRAFgtUIDAxNp3lJzVC9XST/4fFhydH75
 oU9vuShRgXwznYBdY9tpV/jIQA==
X-Google-Smtp-Source: ABdhPJx+uxbkSaPe2+0BH9EheOMTgYzUOtVzJymppogmrFVLTMjQ1PWdb8ch86SegBtXfRZtKHInSQ==
X-Received: by 2002:a17:902:cf0f:b0:15a:24e0:d9b0 with SMTP id
 i15-20020a170902cf0f00b0015a24e0d9b0mr19745380plg.42.1650920833478; 
 Mon, 25 Apr 2022 14:07:13 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:201:b820:7f63:f3dd:3da])
 by smtp.gmail.com with ESMTPSA id
 b20-20020a62a114000000b0050d231e08ffsm8523202pff.37.2022.04.25.14.07.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 14:07:13 -0700 (PDT)
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
 Douglas Anderson <dianders@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: msm/dp: List supplies in the bindings
Date: Mon, 25 Apr 2022 14:06:42 -0700
Message-Id: <20220425140619.1.Ibfde5a26a7182c4b478d570c23d2649823ac2cce@changeid>
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
In-Reply-To: <20220425210643.2420919-1-dianders@chromium.org>
References: <20220425210643.2420919-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_140719_257020_D0FCD9C1 
X-CRM114-Status: GOOD (  11.91  )
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
none in the DP controller bindings. Looking at the Linux driver and
existing device trees, we can see that two supplies are expected:
- vdda-0p9-supply
- vdda-1p2-supply

Let's list them both in the bindings. Note that the datasheet for
sc7280 doesn't describe these supplies very verbosely. For the 0p9
supply, for instance, it says "Power for eDP 0.9 V circuits". This
this is obvious from the property name, we don't bother cluttering the
bindings with a description.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 .../devicetree/bindings/display/msm/dp-controller.yaml      | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index cd05cfd76536..dba31108db51 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -76,6 +76,9 @@ properties:
   "#sound-dai-cells":
     const: 0
 
+  vdda-0p9-supply: true
+  vdda-1p2-supply: true
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     properties:
@@ -137,6 +140,9 @@ examples:
 
         power-domains = <&rpmhpd SC7180_CX>;
 
+        vdda-0p9-supply = <&vdda_usb_ss_dp_core>;
+        vdda-1p2-supply = <&vdda_usb_ss_dp_1p2>;
+
         ports {
             #address-cells = <1>;
             #size-cells = <0>;
-- 
2.36.0.rc2.479.g8af0fa9b8e-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
