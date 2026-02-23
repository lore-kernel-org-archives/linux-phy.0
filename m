Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9800EC1104
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 16:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vs1G6XPJd9G5RMyP+VxdVjF1Muyn39469A+7tQa2FQk=; b=PdtanJB+prY7Jf
	r1Yu93hszDl8tWPR2QYH2u0VySZTDAqZGCpraFwMzPaPQ2uVOveDE/D/wbbwoZeVT6KK6xxNv6aQj
	jzFzd02N6E3l+1w/oWPrdweya18fBQ0eEYSOu/0AiJiREqDxeCZuUC5aopX6chK3iJa3aT0xIIdjv
	wYh3y/1ppVvwQqOsXi/aDuYqRWBzx2CkgFln3JyW7cZBGDqyRdVNkk6ZbXzePV3jtEJr0IHGfzQU7
	FncUjJG3Zx6HeouHDG5UMrHDkrqelVGcbs+XPUb9JqjIN7hTlsGU+2ZPBnVtGjb73c2jrEStAGGZ4
	Wm5oY8TzcehrH4w7sALg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYlm-00000000fv1-2GrQ;
	Mon, 23 Feb 2026 16:26:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYlk-00000000fsD-2IUy
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Feb 2026 16:26:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Qf/+YOrO2BrvqafNFjJO+GVFFHfE339w5tpogT6PGGo=; b=XdXCMfqZDbVcctFe54/jgbjBAF
	X3nMasA/oE1PyOmKZoZj0fFX8rGDng2/bTN9qsW+V8TGJXAdHY18l7jFSSsH/CHaYs0bomSUvwyov
	urEgOc5xfV66AA9Y4U5KbmqgG3U226GKbJP/5ZNJpyfpH/0Vf/Rne3NYBYXtvLfHNs2X9CRD3cmpI
	psntsQt+pvQLrtLIo38rm3dTF2panw2DbBOthbMP8OKUXeilmrWT25XsEIYakfPowdS+JlDUwqzGw
	UqeB0fo5vIOoMOoMexEfcBseuohjKsSTMnZw29bb7mzkbU8qdyhFEAjlADtHjDQ17wX5pxnMzQhj4
	cQn6v+sw==;
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuYle-00000005T8W-38dF
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 16:26:45 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-4327790c4e9so3435903f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 23 Feb 2026 08:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771864001; x=1772468801; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qf/+YOrO2BrvqafNFjJO+GVFFHfE339w5tpogT6PGGo=;
        b=ihDIAxiOO9nI+uM9lyJcPG9SYKKB/7tM2eOjwgFP6pal6MzPi3ulYiBIqZ3m+lrJGh
         qAIZHa3qBDJgYC859wDtp8JKirBaXNojkRDBBVkkZGVn/uw8fKLaU0PnfCnJDDNCu6bF
         2a/cHB8k6RXIjncbKaCcexL3pPCnXY/erDuWKg3m8EdSM11zKmVgPJBfo4NST7Bbmx78
         7opDOdrm44JUeikJhlxK/YfrL+i1MIQrIvvIxRDH60rI9oX1kN5uP5zDJHpclk8QCvKS
         jj6yUK6cEXl9e/ziZ2+RIhxOaJ8WOCZVY42lWCcZ3nqxKdymCz1faFy2r1g4p8bSBj3q
         3aPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771864001; x=1772468801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qf/+YOrO2BrvqafNFjJO+GVFFHfE339w5tpogT6PGGo=;
        b=ZdgkN/nmBos8pIrepVL4JwBAYhasc41DuDcU6QLqkanrhvnNI+WXsRDJn6cI+Nsrlr
         LZdytFOsmXkI5pEAnejXxb3S6GTkp8hvl5qfEz6B7V9vimgnopTG2nw0uP7JDqjBnt0G
         /sFQdlbASm3gUNStuFdOarNvuItztZeWhNM2q9EwBjjRHWago5Z+CVCStCwYyWXPJhUj
         +Uve/ls7BVG+8UB3Nyj88H41W+fLe/wsUcXxtfkbqKC7tMW6KFnDkSzTpWAw2OVL1c9A
         xgYhG/MfncE0SyXxVc+YND0fmbJinS8fnRmGDcNZjunnTqDQgWA7ICgWbDlOjzOpMt0T
         NDLw==
X-Forwarded-Encrypted: i=1; AJvYcCUyznrb7o7qFslPzyZ0kx4OtozOGuVxf/BOhSfy6fToZg7E3SOR81XxIi8IDSQelkuNMjV3Hu68y/k=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPaj00LeH4tGOQQoiWF44fMTfgJE96cYsNkOlM1etmifULoRRk
	QGoK7L25ird+eLRI9fCCSithAhgqT7j7YWMzBoYgib53yYN0nBvGy1pY
X-Gm-Gg: AZuq6aKnrIOyZayx7tfwPKW0vdM6oECJngvDZaIDd4tBWeQERID1YPmF2ymDXehFsRZ
	JDeQqDFhiD+ev/w7dN+Jka/SrkG9fGwGvkCSw3zpY/8Wma0uNk1dXxJGFcfosX6Yq5I37tukODo
	qYuTzVHytYrPxDgKgKJwu1qWjgs4Ezfe8jwXv/Lf8i08n3Gl8kKJNj5in3CpVpkeqVMYfJK/aFV
	3I7i3B6SA/oO9cfqHSe4Jz+/9MPxS5Em4snU9ZVCjUZyrm5wd7iMohp3UqH8Z2tjt/A/czdYP54
	IPjuB0PnLiVSa2PZP/hR9inSGjKX938n9KxDB+amEQAFFaK3nRy9uwXFOrBb2qrbP9NZPvcnhZJ
	hw4GVzl9gR0Z6zP2usZf0xO46scCa/9jAH9tOio33/tsFStrTgtm+OS12Eee1OzxV5m6K67i0lj
	xQJ9x8Anx13o9csVRLJDY=
X-Received: by 2002:a05:600c:154b:b0:483:7ae2:1737 with SMTP id 5b1f17b1804b1-483a962e486mr129723295e9.17.1771864001041;
        Mon, 23 Feb 2026 08:26:41 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d5463dsm19120357f8f.34.2026.02.23.08.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:26:40 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 3/6] dt-bindings: phy: mediatek,dsi-phy: Add support for mt8167
Date: Mon, 23 Feb 2026 16:22:47 +0000
Message-ID: <92530e0a31eca1feb822f5c5fd4ac894937dd6c7.1771863641.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1771863641.git.l.scorcia@gmail.com>
References: <cover.1771863641.git.l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_162643_104489_DE0D3335 
X-CRM114-Status: UNSURE (   9.22  )
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

Add support for the MediaTek mt8167 SoC: the DSI PHY found
in this chip is fully compatible with the one found in the mt2701 SoC.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
index acdbce937b0a..c6d0bbdbe0e2 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,dsi-phy.yaml
@@ -23,6 +23,7 @@ properties:
       - items:
           - enum:
               - mediatek,mt7623-mipi-tx
+              - mediatek,mt8167-mipi-tx
           - const: mediatek,mt2701-mipi-tx
       - items:
           - enum:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
