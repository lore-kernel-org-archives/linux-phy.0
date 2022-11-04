Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1423BC43219
	for <linux-phy@archiver.kernel.org>; Fri,  4 Nov 2022 14:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mRjWFkMDmNNJ1H4Leob77BktD6Jp3Qb2qShXmREZo8=; b=PH/Yd6jSXHuNaa
	+s3v+VtkGrzNsXFHzZQT9FGLkkgH8/ngAbxj9yindAWogQrQAXVe4NTrfZ4YzjVsaFwucJqNYHQ7t
	TJebitV9AnKXxLdP4+ZPtt7bN6jLxSHQ2B/0B/F9yOB0xKyrkhM/hBWBfzuqQrxgfzgFtLnwaZDFY
	mze2ERy1zGwZU8QkMslNurOxdpE8z61AAfZtEajA5r2eZSRcYFVO9fhdZzdg19wiAWAgMt0RxOAIR
	4+RZK5Gp0mMGdTPss3am3FCJuC8A/mu3K4sEOnVCDddOw2vH6vR2nzyKeBS77luGtnAYQGHz82oDH
	2xVO4ENECteeMqzbZ3NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqxnX-0041mN-An; Fri, 04 Nov 2022 14:35:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqxn2-0041Uo-Kr
	for linux-phy@bombadil.infradead.org; Fri, 04 Nov 2022 14:35:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=5W2yVD4YDWpQ3CdxVHUW7qDBpRLK/GNpv3OQ8xCAesQ=; b=XCYPyIrsBvaHI7FRkUeYngkoFh
	r59wlQAskJz3zW8/kkpMTFgwNPiLdGhc4x3HQzUJ02PT+NT/mpLFXkTHRTQUtrvpG8eXCyE2sOY+Z
	egrz0xtN46c4EgIZ+4G9u+s7/+HL6xYNqqHyTCdQ8+DGk3mzlAWoNtGC3QRAW1Jg99jH2S5M9g+sV
	EbR/HKZ2aDq8+oAYAJsHcpX3shhSQRCFr5ApomfIzZjRfnGm19sMjqi9zJWfO+jp2mJlJ+dsMNAmU
	oH7XHNxc8urLTOm4TJlH3O0Vo075+/tAgCNOReomzI5dc7256iAsKc0C9sW5oMeCMnObGLd7RPW97
	BfWMj9Ew==;
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqxT1-007Ppq-Qs
	for linux-phy@lists.infradead.org; Fri, 04 Nov 2022 14:14:46 +0000
Received: by mail-wr1-x42f.google.com with SMTP id z14so7242808wrn.7
        for <linux-phy@lists.infradead.org>; Fri, 04 Nov 2022 07:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5W2yVD4YDWpQ3CdxVHUW7qDBpRLK/GNpv3OQ8xCAesQ=;
        b=ZH2Ico95zCvYIhFHVP6NHK4O/87cVBVR6I9hbo3P/sVcFSUVcKKppKz+maSYGYhi/D
         NpWIm0t4PyoLdvM/bAya2RMTCsQjh6R6c4Cjh5iAX7AqelzO7RmfgrbbO4RPVAVa2tLJ
         jZXhQukTuY9Rt8GMWWEbmF706RL02veZ71ZVo6MaEMeUTUXpBedIdFTivAIRSJ2s4zFp
         4RdZPY/12nY/Ezf+WkzWCrcSR/n/J/gf34saIWlVTQkuIwNvronXLtYil6Uj0fCmtaK7
         7Fq4nsJoJFqqaloQGy2CBzCrYwLCoJWdRlm94Clm+S2A/n7/ZOj7+mtuj2MKfs5XUDQ9
         MQrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5W2yVD4YDWpQ3CdxVHUW7qDBpRLK/GNpv3OQ8xCAesQ=;
        b=GyQmmB7L19ne46yJWWu1l1lLdIDrW5r6fQ2ShKP0sWLPupVqubje7TTcNN6nPB2u07
         Pz2otgxZZYmkkg0OZYRgvbu0ZXUI4fOtkuWDtWZqrCQ//xyaGj8Trd8rWk9mlrTlKWMM
         ejkS2Dt7kEQeaFQ+gncJTCeY1bxIVw4mlW/7+fNR/gotoZQWBzZo2daSJ5tajvXvVSjP
         Y3RH3/X2YkVC1/At6Zt2MxDT8b1yoZ2STuCkyXKREEYdOYADhxXDvpMNvJbcziKbf9gS
         ZdOP3XqoFgSR/1AQ7/nae5Hhsw827A6L3CMoDUfP0eUMcEffvQtOzY9s+A9AHtHSgZhM
         x+MA==
X-Gm-Message-State: ACrzQf1JWbtMUpI0iPVMc9XKBdy39O0pqVgvX/G0DVGzPRvyQAM7QShk
	VATHfe2CsYCSOeZN5X0ksDtzig==
X-Google-Smtp-Source: AMsMyM5UgSNrJdjJbaWkNmPYq6dn0dMCmkzxuRJCJIVsuSJ/GH354TzUrpT1mXY6Xoiz6vRA08LnyQ==
X-Received: by 2002:a5d:59c5:0:b0:236:cc8a:59fd with SMTP id v5-20020a5d59c5000000b00236cc8a59fdmr17239311wry.426.1667571267873;
        Fri, 04 Nov 2022 07:14:27 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6440-7fff-3074-96af-9642-0003.rev.sfr.net. [2a02:8440:6440:7fff:3074:96af:9642:3])
        by smtp.gmail.com with ESMTPSA id bj9-20020a0560001e0900b002365cd93d05sm3594512wrb.102.2022.11.04.07.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 07:14:27 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Fri, 04 Nov 2022 15:09:57 +0100
Subject: [PATCH v3 11/12] dt-bindings: display: mediatek: dpi: Add compatible for
 MediaTek MT8195
MIME-Version: 1.0
Message-Id: <20220919-v3-11-a803f2660127@baylibre.com>
References: <20220919-v3-0-a803f2660127@baylibre.com>
In-Reply-To: <20220919-v3-0-a803f2660127@baylibre.com>
To: Rob Herring <robh+dt@kernel.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Jitao shi <jitao.shi@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 CK Hu <ck.hu@mediatek.com>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-kernel@lists.infradead.org, stuart.lee@mediatek.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, Guillaume Ranquet <granquet@baylibre.com>, mac.shen@mediatek.com,
 linux-phy@lists.infradead.org
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_141443_934209_7B73B880 
X-CRM114-Status: UNSURE (   8.27  )
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

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml | 1 +
 1 file changed, 1 insertion(+)

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
b4 0.11.0-dev

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
