Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8622DC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 00:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pTuGHYsc9XPaFnQfyqYsTQNRfF5y7VzhWye5CCwMys=; b=S5VR6LWM1OaENv
	0+ft7Nml/a9QIb/obpYIz326UVDDXHvjKBEqgNrs8X9jnSBwWtUB5bmLf8rxk2PFYSjrm56zk7zMi
	MVbqHYjDDU+vthZe8HOrp5C7YbKHybx4OSlWyS/Y4pe8CGOmvkidhdJ4xzl93+rp7HHmAP/PM3itm
	HF4cYkyOsrV2dWMb67VN5cyQEbXdNcdobXpg188bgPOOip0co/H/pHwIGEp05Ie+bXrc5mUrVLfbL
	OmzgkB+p+qtKxAVAnMGpFoz37G9P/fx/gmt2Er0xKLLfC+LrtBSaxOHfFgM41zMK4e9/WKlj8LuYq
	tu0iKID5Evp2LxSbi5xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHECK-00C2fv-0p; Tue, 08 Feb 2022 00:17:32 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHECH-00C2eo-Fk
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 00:17:30 +0000
Received: by mail-pf1-x434.google.com with SMTP id i30so15868838pfk.8
 for <linux-phy@lists.infradead.org>; Mon, 07 Feb 2022 16:17:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ump4WlSip5V2JlqWQTgJOZSUupb4pYUV+n/5B2TGlus=;
 b=iaHPcaPkhBgkbkHPw3lGkAeU7GfjdIaqcg5gfIllnqQXy+yFLmejaQasUxyh+E0t6V
 SoWmD8LzI/NWCJAY+kb9S7b3QKo6nmxuUGgn9DlYbhP33gnbjeuwH0rs6opMWpwZRd84
 OSKxOvIWXeoxsMj/3FJxSJVc/vvuEWExu2ERY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ump4WlSip5V2JlqWQTgJOZSUupb4pYUV+n/5B2TGlus=;
 b=M9W+iGTEHQkK30uWSDj3i2nFCWwdP1C3NQpK8Hx1FZanAWo3IurTMOE9UiQaxOQar8
 a4S9BasWNcDIZYA8OUEA75JcKkiox/Y1R0AKSFIyI4VZmJXyzm3XNSXwxyiAv5bchdjY
 Xj/E2VCCbmgfj9BKbV7I3EpaLnTSxZeq6gwJP4gEPQJFhAkpeFTkMbe5AGDEbBZuVxM5
 95t2Gg2qgPEFZCnXLp7Y5aNSmyTvYl6H/THFlSbSOMhrqsvIDnZQS2eGZVaeHkKgNsW4
 4jRHfQM7otJJZidKnAMI58scF6Xd5QDd2/CTFVwUN2tuQX2o68B+yRhh+2WbPrNHtllC
 ImAg==
X-Gm-Message-State: AOAM533qBHP5kxfNTjRmtZ/LvZ89crA/Xnu6IHANGxVBH2tf8RUXSpmV
 6d2kLtCY1SrC0k0Z7gWYsusRVQ==
X-Google-Smtp-Source: ABdhPJysUN14OWRaS0gjx3vzBZsCwjAimW7jy/Y/9xx2AVEP2bk4Yk+URPQwsV73f1oA9YO2VwdQmA==
X-Received: by 2002:a63:4605:: with SMTP id t5mr399414pga.41.1644279448156;
 Mon, 07 Feb 2022 16:17:28 -0800 (PST)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:201:6c4d:c442:5b4:f597])
 by smtp.gmail.com with ESMTPSA id mz4sm456185pjb.53.2022.02.07.16.17.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Feb 2022 16:17:27 -0800 (PST)
From: Douglas Anderson <dianders@chromium.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: quic_mkrishn@quicinc.com, linux-arm-msm@vger.kernel.org,
 Sankeerth Billakanti <quic_sbillaka@quicinc.com>, robdclark@gmail.com,
 quic_khsieh@quicinc.com, quic_abhinavk@quicinc.com,
 linux-phy@lists.infradead.org, Stephen Boyd <swboyd@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [REPOST PATCH v1 1/3] dt-bindings: phy: Add eDP PHY compatible for
 sc7280
Date: Mon,  7 Feb 2022 16:17:02 -0800
Message-Id: <20220207161612.REPOST.v1.1.Iee1d505f0a35c2805f0468625b117d2e0f0ad339@changeid>
X-Mailer: git-send-email 2.35.0.263.gb82422642f-goog
In-Reply-To: <20220208001704.367069-1-dianders@chromium.org>
References: <20220208001704.367069-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_161729_547756_4E0BF208 
X-CRM114-Status: UNSURE (   9.63  )
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

From: Sankeerth Billakanti <quic_sbillaka@quicinc.com>

Add compatible string for the supported eDP PHY on sc7280 platform.

Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 9076e19b6417..a5850ff529f8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -16,7 +16,9 @@ description:
 
 properties:
   compatible:
-    const: qcom,sc8180x-edp-phy
+    enum:
+      - qcom,sc7280-edp-phy
+      - qcom,sc8180x-edp-phy
 
   reg:
     items:
-- 
2.35.0.263.gb82422642f-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
