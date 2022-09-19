Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D508C6FA86
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 17:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3EUmlnQCgLPz8xJMYYdIyTrX1O+O2DhT3h76zKNmrbI=; b=h0UEht8nts4R0p
	XycgRRqxZlyYfuhnnXfdgsfgqnTp+NLbANvr0/HoXgDf85IWHF+L/15DWm3mcqwqEMyBYIRN6E5nd
	EeFw+hnYpsGx9VqL3asM1+b6SGhoqeVvtFhTA32yW900wkzQXqpMKPB+40rODOlXyJYn0DomDtl4O
	CkmPt3S6DC+80f5JR9K72S0aIpF0lBaFs9lWbVMAF2Ac/n+ZRFgfjthseohul+a3dO3xA0UWMArpN
	bsVk8jTi/NZSgyIOC6lX3s8R5viCzMzbCvskWHlLgCfHk+n+sEq/fqGAS2e6Q5+/6hieNr490po8P
	an9/kgubMnJyICuYCNtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaKWN-00DFwx-MA; Mon, 19 Sep 2022 17:25:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaKWE-00DFrW-D7
	for linux-phy@bombadil.infradead.org; Mon, 19 Sep 2022 17:25:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=2Meo31PuvkGIwIM5AdXoX0Hd0Yqmep6vNoeB5sp1WIo=; b=WsmY0QPzQvr4nu4Tk+hVM36eDQ
	WVxCm0Ht6RcGlMjcq1gZ+ti/So7sCQ5mmHKeM4SPmQeLSLqQ1HuLheXSe1iidaJHBH4S14HRyUDv5
	dUn4HihXdzmPkDDNjVOx4P1coS6OAE5eTUT9DX5MtebAl/B7gUazlAXRT0Cf6Se9OqVBTILQSPXnn
	RmxKWCcCCPeZ2Fn6EJaljnKz5xJUxsDtAX+AOhB2flbmg3V7LBci42+GUEH4k5ilzdHbTXSxkjN4M
	Oki0Rsbt85PTNcynDy+EoNtzEpMnUkkWUk5hJ03NHQLphpWxnmZFsfMLtYegN29EDubNTEvjOhQRw
	gUpxwlQg==;
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaK88-004rbP-Aq
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 17:00:27 +0000
Received: by mail-ed1-x529.google.com with SMTP id 29so162150edv.2
        for <linux-phy@lists.infradead.org>; Mon, 19 Sep 2022 10:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date;
        bh=2Meo31PuvkGIwIM5AdXoX0Hd0Yqmep6vNoeB5sp1WIo=;
        b=h4xvs+f5cmaWKYK71+hYnOmPVkiLtaB2mRla9tuoCEJPd+4ppfNzN0FBFiwIs70U65
         tbJ9aJA3dpNgt1Ckv+Bx6Hc8Syb3OFhB4z+FJI0fxOKxNgoDOjZd8j6Uskwq0OWUm816
         O7xPp4SJYuri2o1ZZKVZOB4LzhA9nFL2qpDxRJhsPPzW8j/vsldo+OZmErddviwJRjTi
         p4lfIW565oRIN/c+Vrhth50HEka7xMLu+MKAjKA+FPbmPD21phAwhccqtGiVTtSD60Zd
         EGLplHMN2dasKn0QgJPqQZBi+CeACR4L5U4Dlj9odh9YO7SKHNRH5sQETerhK+QEqrcG
         P3/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=2Meo31PuvkGIwIM5AdXoX0Hd0Yqmep6vNoeB5sp1WIo=;
        b=f7th0o740UJ1jDqhffkmyKo41HODD9jOjCuoo7Y+Ir3NJBYrixJRmBs03sInYJkGSI
         B8SCY41FnF0qpMwwKOCGMpoxFns+iyPOdetA4+rlKQEIF1HeYuBn7fgvX8SfQPHeHciv
         dRh1sCo6rxZfSownaNLiJ27aVevi4WtuYiuVHb/jEnMJB1x9srhowlf7eyniUm78T0Z0
         w0T6tb6gDJ9ZJSYP1yy984ZgImJp3+aCDuXyps9H4sHFcnqNYeWQCaE0ZII5TzUTMRTl
         yY1wSMCH/qcXwL/iVARObiSA1fv1bzObB6K2YdFz+s00Qn9anXyhFTQYKVmhfb3zOXdy
         snaQ==
X-Gm-Message-State: ACrzQf30S6v+Vc3JeRySYot0vcQnrLbqJUrJmSBVh7zVZJqnHrtvKikh
	s1S8xkOpj0dBVzZtgmqhtPbRhw==
X-Google-Smtp-Source: AMsMyM4nXsx/EGy8bNgRHqGUolsSurVZgmUHv5N2kQ+oMKWiHF7U6zG3vs9wXOsAsDPUMkE0zR3f8A==
X-Received: by 2002:a05:6402:847:b0:453:943b:bf4 with SMTP id b7-20020a056402084700b00453943b0bf4mr11555407edz.301.1663606819619;
        Mon, 19 Sep 2022 10:00:19 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6340-f287-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6340:f287:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id cf16-20020a0564020b9000b0044fc3c0930csm20424246edb.16.2022.09.19.10.00.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 10:00:19 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Mon, 19 Sep 2022 18:56:13 +0200
Subject: [PATCH v1 15/17] dt-bindings: display: mediatek: dpi: Add compatible for
 MediaTek MT8195
MIME-Version: 1.0
Message-Id: <20220919-v1-15-4844816c9808@baylibre.com>
References: <20220919-v1-0-4844816c9808@baylibre.com>
In-Reply-To: <20220919-v1-0-4844816c9808@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Daniel Vetter <daniel@ffwll.ch>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org, Pablo Sun <pablo.sun@mediatek.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Mattijs Korpershoek <mkorpershoek@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, Guillaume Ranquet <granquet@baylibre.com>,
 devicetree@vger.kernel.org
X-Mailer: b4 0.10.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_180024_394813_3BBF41F7 
X-CRM114-Status: UNSURE (   5.32  )
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

Add dt-binding documentation of dpi for MediaTek MT8195 SoC.

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index 5bb23e97cf33..2c7ecef54986 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -24,6 +24,7 @@ properties:
       - mediatek,mt8183-dpi
       - mediatek,mt8186-dpi
       - mediatek,mt8192-dpi
+      - mediatek,mt8195-dpi
       - mediatek,mt8195-dp-intf
 
   reg:

-- 
b4 0.10.0-dev

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
