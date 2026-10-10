Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C389CCA9EBE
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 11:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19Ayn40eXMUuT2kLLy805FnizBqCItpDBLEQj/wE6q8=; b=JlQmQmZXniNutt
	MEezCQnorOqRqLXfZuncBLLCalIZq1txvOjzrhRczp7Di1Zrx4HME2tOH5Rv/eLyU7TkhdtRcoZQw
	S3Cxdm1UhrIZJTEmCQu8Z/TIGRdqjBwpS4Iw282oKj9/t9ihGh7oBpEVkvbN0eUUQ/raB8zpeBh98
	ZkQ59e8EuCCxyQsU2NZnvEOAlgnFF1WvcUb/D7eQ6oDF3e6jehzIgK+czKK14TNSg8kYiKo+VJhLT
	pzuu0mjZSlahietuGquoEdkDZ9RU7A95SijlQQm4bMcQC0ZSx3/0uRzGhGyz3SmqCZucgg0NFvCBm
	bQRIWrz+gS+PDnEzc5vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVgW-00000007y3c-1nVp;
	Sat, 10 Oct 2026 11:56:16 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVgA-00000007xma-2aDW
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 11:55:58 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-48bbb06e746so292456f8f.3
        for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 04:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791633353; x=1792238153; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yWSkHUKka7QH4eH23AR+aM1Gs2nsmpiVfZDP2dicIho=;
        b=F0Ez2enbvg4wRs1+fz+JxL6bo5NF3hR4o+YH3c8l4MylYyo/IxcOVgZrWe8seD3wWH
         J3ugqhfJWbyMh1QBW+BxAi91Pwt6cvVHIWxHfJMd/Hsm6OsgIdjW1dD1dU0K0oR5dn7q
         NZGqgZNcP2QifkbxtmDv2BITdWtOotaAnHYsOqSnc9ZZv8wHTlOgPsG/WSAKjO0+6GX/
         MtMgvaQEwvOA2zJlN+rG8bKqgzktDbJaLDqRTodaQwb1T/kHtNk6Fow+gMvIhdhBQ/8W
         gmnxcdf05YuRUzo2oBObB0RlmafUeGx1ntNPQaM693vV5KX8d8RfVq8CuA8fjdMPI+b4
         QG1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791633353; x=1792238153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yWSkHUKka7QH4eH23AR+aM1Gs2nsmpiVfZDP2dicIho=;
        b=r2pm2tIEuxUa1KHcyk1LKzdS04k6F128NVBHNSyqIxiaNMleOWl8u4wHMi41MKZu8r
         4eqekB9u1EjdYT2t/VP18ldAwQa+VmJHPhI1y4LIDhcqB5gWzAbBGTABazewxRvu1Bqc
         JZ3ay7L/e79SK/zel1gYUBXLwyXcweTNmx18whPMQlnAeoUdXuKgziczqSjIq2qM7X1S
         pUAMm1Sqkg577ZN5fBmV52d3jwxByzp5pkB2IXLVIBZkmmnnAdq/oDuL7Hwk9FGzGfzv
         6C5ym1ED8Ny3KO/bT0wRMYl2tmMY6FqmOuI9kZbaf67uFDgRu1/MrRxCahrhDWfq+3ct
         Q9mQ==
X-Forwarded-Encrypted: i=1; AKwUvBxpa/DvXbKNTQqY4nvkctdESzxbuE66A+TIXeDWp3qzmjMMLcq1ZAOmWg3mE2suQ/bdx/g1C9VBfWE=@lists.infradead.org
X-Gm-Message-State: AFq9FYJfD0G7ookHMDX3ME55cKD73FCXYO7LFOhnq4ISJLrcCaD30GWZ
	i/2P3rbWkSnWlBsfXoXePQz5Cxhidn3NvkgZqX5O/CnvUTga/drDcxzW
X-Gm-Gg: AYBFou1YeS1yn4QC4LQ8Mn7zQmOxnpBWq2azhOZxqIB2ZnIdqU5hBpd9bW1zwAnQ2PJ
	smdIDsn0D7kL/dboK5AXGkk7c8i6iRp/0KtYlxhmDRrlBduhlbHd2nfSoP6IdXeLSNAHQyBzAfs
	B84J28NbWMX03jNRRD/T8FgCFJ1EmPBaiUb1/ZAqVizLZyx3TOkVFMJZY8wgf2NNfAZBZ1nzA1M
	rhbozKiLZ3Et8u3mbdrgl0p2paUD57cZDcArBvro03tAW2UmVoYd7aLuiH32aI9hIx61uojqgOV
	xbuInXVxLfStD0Uc0KWdfW5bVevUWTfbacFYD97Bs+btzzExNyHIRUE+OmdWARNzf5bpybIy463
	l5yC7O30lmi+6sc2au0Po6E36Dk1i53y3YOwrWT4h+nI2GZHZVjJRKaJok09LqJf/Eq/IkjGkAO
	WLkACkL06rID3kPJjHxWZf4jLfSmUgJTri4MiK8lg/imWPw/IIsbTg8+LxiUqMY+pBpA==
X-Received: by 2002:a5d:444d:0:b0:48b:fdd:fbe4 with SMTP id ffacd0b85a97d-48dba9c7d29mr7028135f8f.21.1791633352509;
        Sat, 10 Oct 2026 04:55:52 -0700 (PDT)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48db9aca657sm8746340f8f.43.2026.10.10.04.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 04:55:52 -0700 (PDT)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Fabien Parent <fparent@baylibre.com>,
	CK Hu <ck.hu@mediatek.com>,
	chunhui dai <chunhui.dai@mediatek.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 1/7] dt-bindings: mediatek: hdmi-phy: Add compatible for mt8167
Date: Sat, 10 Oct 2026 13:54:01 +0200
Message-ID: <20261010115539.9237-2-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261010115539.9237-1-l.scorcia@gmail.com>
References: <20261010115539.9237-1-l.scorcia@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_045557_270209_3DFFDEC8 
X-CRM114-Status: UNSURE (   9.80  )
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

The hdmi-phy for the MediaTek mt8167 SoC is not compatible with any of
the existing hdmi-phy. Add a separate compatible to describe it.

Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>
---
 Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
index ac93069f4801..f0c8ea2c72b1 100644
--- a/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml
@@ -31,6 +31,7 @@ properties:
               - mediatek,mt8188-hdmi-phy
           - const: mediatek,mt8195-hdmi-phy
       - const: mediatek,mt2701-hdmi-phy
+      - const: mediatek,mt8167-hdmi-phy
       - const: mediatek,mt8173-hdmi-phy
       - const: mediatek,mt8195-hdmi-phy
 
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
