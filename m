Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8035C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 14 Oct 2022 15:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6mRjWFkMDmNNJ1H4Leob77BktD6Jp3Qb2qShXmREZo8=; b=y+wsTfukiM9yy0
	tp+ZXbeB+6APcYV3ehrmss3MnNrWdB5978yRDgc3JO2svmByTDT0bOQpCHZOcXTGSwVulTpxFsAhQ
	JidCyeutzp2hQwChbBQv8649QgW5pjLMUeOgOujP+YC6qmko43hdso0JYq9q5Di5smqlZoXPMzf2b
	51smp+/BEKZ2qeBd++kFfhVZFevFuLQ8PJysGK/ehZXNOTaisAyjngwNCRSCKWfgPx8ApAmToWxtg
	7nQ25FwezNJ2hmJa7qP+DwQ+TT+napJ63WPkfkPL5HKFyrmiQlb7u3JDEmf0toDHXySOE/pLlTJkZ
	sKUZ2n19Q7RNQxrAkfeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojMsJ-00FDcQ-5V; Fri, 14 Oct 2022 15:45:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojMs9-00FDZV-2e
	for linux-phy@bombadil.infradead.org; Fri, 14 Oct 2022 15:45:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=5W2yVD4YDWpQ3CdxVHUW7qDBpRLK/GNpv3OQ8xCAesQ=; b=GDDumC8vWiKG0ox8mXjDDTIZx3
	stnQGl3aFNf4l/9qEtylWO9a6LfuBe6JRcF/u5CDmVLeMDfTTJvQbGl2nkUleyyIWKf1zkjfoLUve
	d9JbLU8wMl0cUPTlhJT4OVWgLV0fF+tSgggIPeZIUvMXFxnZfWHJRWYpRmADtEZzP8sg+lHhY6RqA
	b8ahSU204vDoXESAWIgTDCw6n0aR9CcTcngxxklZ/vJ5aqjTTAUcem24IvW4HQSqDQXZsmj3+38Hz
	y9m8BZwAidQyIjn0ojE/jnaobmZFz7X2RWrXhXd7bgSjT3TLi917PlYhS+QRKvqY9pgSXV6203ePw
	riMUq55g==;
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojMU9-007iVv-9Q
	for linux-phy@lists.infradead.org; Fri, 14 Oct 2022 15:20:32 +0000
Received: by mail-wr1-x42d.google.com with SMTP id b4so8118518wrs.1
        for <linux-phy@lists.infradead.org>; Fri, 14 Oct 2022 08:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5W2yVD4YDWpQ3CdxVHUW7qDBpRLK/GNpv3OQ8xCAesQ=;
        b=wdd/7aN7YhyT8sy0Wn7Mag45qih26IWdRYbT5Iw2wQ0ZJWbWLh1lhND7KddPc9m84b
         AZt82xojAp98dl7fArcn0k3wQxhoqknF8aTX1ZhUH/hv50S00H/MVzafj5z2u34JC3wZ
         +r4Ug1XI1ju772lSNkLc1Xmn0MGDpbwon7IyCu/JEzG/eRCyLnzvz1f0HZZSyMjWuPlr
         S9stoFaXkDAPz30zm12InbQLbXyN8wqGx7fTOCcr3UE15bpkMMJeu6wyvfeonSxz737y
         NL0EbvQeO3NufGmA0jubTXPFpkEhE3XrhSPgj8JqywzHvk45b1HhGqYdjG/D+7/WcJfq
         ZILA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5W2yVD4YDWpQ3CdxVHUW7qDBpRLK/GNpv3OQ8xCAesQ=;
        b=jwb7mF6FXN+3vbrR/e3nKfY9Hcv2hZzvFOD/3HjydOK0Ujhj956HlI2iFT2jwoyzuZ
         xvxsq2GIZPw/IQr9/K+g38fOCXj3dvRRX/u2CG9HcAHPDLw3rKKYKfsY2xyznbls4ykn
         LzGT97nz03pwoZPWWCSEOmwuurNEH0YliTDlspWomcNRPKhwbnUhc0x466ndrH7kNFZk
         MnEHHWgmB8THqpZnYSN11twB/sUDWbh/4O21relgHoVIkWZkZJlY6+lSuvWq5mD6TOMi
         IRwMpArYe7QWq8T6ZQeLL2RiJXm3af1Waufow3AqBCWNcMG222WZZ78fjIh1frjHo/RW
         uqcQ==
X-Gm-Message-State: ACrzQf1oCCnd+ujavjCjmjNrwjuvkH5xS4YbNvT63yQO4kccEUngoIwq
	XADHl2o1XiTiEzhq/pbTukBL+A==
X-Google-Smtp-Source: AMsMyM57zNuBSZSZskVONFl0D1EsJq67LXu5kElRP3jBck5MkzoVEBxigmx+zHaO7rTqRHHqajVoCQ==
X-Received: by 2002:a5d:47c5:0:b0:22e:6941:81eb with SMTP id o5-20020a5d47c5000000b0022e694181ebmr3733750wrc.408.1665760822143;
        Fri, 14 Oct 2022 08:20:22 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6241-7429-3074-96af-9642-0004.rev.sfr.net. [2a02:8440:6241:7429:3074:96af:9642:4])
        by smtp.gmail.com with ESMTPSA id z11-20020a05600c0a0b00b003c6bd91caa5sm2818223wmp.17.2022.10.14.08.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 08:20:21 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Fri, 14 Oct 2022 17:16:04 +0200
Subject: [PATCH v2 11/12] dt-bindings: display: mediatek: dpi: Add compatible for
 MediaTek MT8195
MIME-Version: 1.0
Message-Id: <20220919-v2-11-8419dcf4f09d@baylibre.com>
References: <20220919-v2-0-8419dcf4f09d@baylibre.com>
In-Reply-To: <20220919-v2-0-8419dcf4f09d@baylibre.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, David Airlie <airlied@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Jitao shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Guillaume Ranquet <granquet@baylibre.com>, stuart.lee@mediatek.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, mac.shen@mediatek.com, linux-mediatek@lists.infradead.org,
 dri-devel@lists.freedesktop.org
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_162029_397906_73775B86 
X-CRM114-Status: UNSURE (   7.71  )
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
