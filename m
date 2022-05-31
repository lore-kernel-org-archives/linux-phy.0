Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B991AC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 14:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ek0k2kLYT6R7y+ntAnniVD7xPAKvqXFJrS98BCUZJwM=; b=kYAyb8lbNfqSdQ
	oKkY1p+ijJwDk4w82z5CP0v+qqn8w7aVzG6ikk3YyHYFP9OlxzElO7mCmVUQnXLJ71SrOkB7vB8iu
	FCS7Wsb55etq2MXCdQf9ltiWa5p1oI6HqMnQNOCcqN3kJCpPs2u7Uvubji081sj+XJdKJdIA6yVH6
	aDlLDhtjK4gkl8hRK3J/2lCZsPGjTeK2qd5cUU5zhfpPPexJn2HZdLQ7t4XYJvFbsJSa23burd+g2
	SXOaNAI4RqpllNDhGvrV2VaFNNXtTXi+rdbh3Eb3RQzjPnPgxyXLVTEx0HXRRts6WVtot/ZQrGPKJ
	ACYT4d+qK4gVuZvacutg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw34C-00BJUy-4u; Tue, 31 May 2022 14:41:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw34A-00BIzQ-15
	for linux-phy@bombadil.infradead.org; Tue, 31 May 2022 14:41:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3wGkmcChS3N6J5I1U5dOklUlfdbKJPPT1/iNxESisgg=; b=HwQTK5wp3Rzqh+elgwVA96A7La
	WrEu22Ty/5zaH9xcFi9CFdfobOOUdP8OyQ5NDOUB7gF79HGcb5EgUpRXfnCFkfXxbMIKrUq125ZPr
	f4/LePWgMNjzL6+lJJ+q0Ve9x55qt8Nu+4pw57Yldi+sCdq7QVwOwzol/DuijcQhizXfwiSnbp+v5
	HYSxQqJhafz/thRblYL71MK3pdtL7gSjk4AIEubQbDh6f7WiJqVK5Af/kFtokR50a78YC45dl2ieg
	lPT7f9+W9ZbMxk3aC2h5aSVvikKKAMKkeC0mJfRgJ3OSVjCm/+LJ6wHOMsbHuo3ODv49LXPk3hUQF
	KRCQhBWQ==;
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw2H1-003Sdb-4k
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 13:51:14 +0000
Received: by mail-wr1-x435.google.com with SMTP id e2so18822056wrc.1
        for <linux-phy@lists.infradead.org>; Tue, 31 May 2022 06:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3wGkmcChS3N6J5I1U5dOklUlfdbKJPPT1/iNxESisgg=;
        b=fikIkFwWuhYcaTcEmINCMiakOznAvwOTyoARO2Ked0fxXRKlokFWxS4v+L3ZHkVXNE
         KJo6JQRplqeWtr7bcHSDaD9wimVN6J5/aFLVwkOlxuupl3wfaWdmJLh5kAYbdtTckmjS
         7ZGd0V7af7yBcvxj28ftOe7vntKmkUDl58co3QLQMh7EDttwJw6VIn65mWVSUtVSY17w
         C+pC6wz1nhlOvs9cYDgkL55ay0oOBepTQ5OOmFShvRgJzHHRi41+K+1jqITOGGjVGPtn
         sjkv7Mviq+G4VnQO6P1IU33v5RSiZUvtdFZ0EWYtGwnjrF0dBp7r7qRY6vrkRwHkHUXK
         npvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3wGkmcChS3N6J5I1U5dOklUlfdbKJPPT1/iNxESisgg=;
        b=c5ZL1kbqKlK4YpPAOXjKXrBEtGc3ot/2Os08ML6TqIDlUjgOA5SUqldzSUxvT8wAw6
         J3FeA0U6Jxr7BiICOkEpmiCAzUuJc0Zow8B7GzVo+rYdGU3gw9wzq964AhqEVKnyFF6p
         1Esl8E94LjglPhgNFZDTg8d2Iq2FCZsR6nKah0SAWr9xQrVBElRcfSnmu3Zt6x5egIy0
         c6ZC05ueGsGfp1YoonYB2+ey1vQpMy+cyMRBhZYo/VypxQepJiQskoXO757hcJsRx1+G
         6IgzJ5yAq+KJKflGqL83kGAk/v8QdQLO3l7PBS3ZuQBuUyD7Qh0ubT55lDmQ//ivwvXt
         q9Rg==
X-Gm-Message-State: AOAM532fkodOUcLNeahHk+1jIs9Vlx+AQNUgFzVXfTjWQzkkX55sjh/K
	jKJfJ6kdQXO/Xi4suAyW2tBaEg==
X-Google-Smtp-Source: ABdhPJxcPkJR1D9vj54qvl0alyjM+fo9L7Ht5RN1swDsTiyvQa4xekfb3jUiJKdRl+jEckFF9F7nug==
X-Received: by 2002:adf:e0c5:0:b0:206:1ba3:26aa with SMTP id m5-20020adfe0c5000000b002061ba326aamr50251741wri.645.1654005062859;
        Tue, 31 May 2022 06:51:02 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600c1d0b00b00394351e35edsm2404806wms.26.2022.05.31.06.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 06:51:02 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org,
	qii.wang@mediatek.com,
	matthias.bgg@gmail.com,
	jic23@kernel.org,
	chaotian.jing@mediatek.com,
	ulf.hansson@linaro.org,
	srinivas.kandagatla@linaro.org,
	chunfeng.yun@mediatek.com,
	broonie@kernel.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-iio@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 13/17] dt-bindings: usb: mediatek,mtu3: add MT8365 SoC bindings
Date: Tue, 31 May 2022 15:50:22 +0200
Message-Id: <20220531135026.238475-14-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220531135026.238475-1-fparent@baylibre.com>
References: <20220531135026.238475-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_145103_787774_DD0A6B67 
X-CRM114-Status: UNSURE (   8.75  )
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

Add binding documentation for the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
index df766f8de872..9ede6069d9e6 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
@@ -25,6 +25,7 @@ properties:
           - mediatek,mt8173-mtu3
           - mediatek,mt8183-mtu3
           - mediatek,mt8192-mtu3
+          - mediatek,mt8365-mtu3
       - const: mediatek,mtu3
 
   reg:
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
