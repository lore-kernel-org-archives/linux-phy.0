Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14969C7EE32
	for <linux-phy@archiver.kernel.org>; Wed, 24 May 2023 09:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TvW9Xu4shhQKocN2poeFgCWse9KD5eipcifgksjMCUU=; b=FHkQdR4K22h5WW
	7MQdwwE64ABa8a0yENcPvrlrGuujWLxlixUWGIvJU+3sQnaivoJLgpjG/tstLrGmsyo0GldgW2Rms
	xS1DvRPT+G3dgpNQ2lpMD3aF1k6nMPm6C5a17wfhYb18Rk68tyJMheZBTcHP2Hn6QkhNLHTFqIex1
	UiXTSjfQvVH/3wKn+TTcfJTxxEW1ZDgERIbFyX6aVeFFmqxP0Kus78iaNyH5T7I/1E8tITFwxecsH
	77wJqZth/Gq89qxBQjSihlvZ4jDyk3BLX2mZep4sk1IsQvYQ0LxTiLRtPns3ptfujuwAy/F03PR+F
	oHZO1G7T5OD1N6B8z5Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1ktj-00Cz7C-0v;
	Wed, 24 May 2023 09:35:11 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1jtU-00CmZB-2Y
	for linux-phy@lists.infradead.org;
	Wed, 24 May 2023 08:30:54 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f6042d605dso5702665e9.2
        for <linux-phy@lists.infradead.org>; Wed, 24 May 2023 01:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684917047; x=1687509047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GFkeXmTsUMY8GSw8DO1YxsHt1wzgz+ONEfDUI+8GUAE=;
        b=Ky164TgIAjXoNCRewjAvpvhOJ4Fq2aqesYTLjaP4MsCdZWaK7nNI1q4ACUHyf0yARP
         khE4z1B4Wq3htHoGGiNu+1mMFFRKUkdv/98piGwOHRcsYTzoseEHnt4dQ+gSAMSTXTSb
         1j75EhptJA+nEMLiybke6sENFCRCPbdkvcEZISCZtt8Ps/JPEsyGSZrxNu9oMC0r5Ecz
         9O72t84s/Ms51QhGIloJa0e3TS2IsckqzZwn1CpJz4yOfg0/yCZbJbjr8Q0u71l0fRdV
         HudbAm0rHClx0bTFzAbc85WUmKaoTxiHzJUYrkQYS5aT4NIx1ofDL7RZIuX5kDA6y4nB
         IbMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684917047; x=1687509047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GFkeXmTsUMY8GSw8DO1YxsHt1wzgz+ONEfDUI+8GUAE=;
        b=RUgZe4Sn8QE0agcXMYKcdKh826RR1OcTxpUKLDUn6SKuZYCXtheqaIskVuJBvcneKh
         zQboU6IPbFv34LFEI/QPNhO9IKkskh/6NY3pznr+D/5zcCS7WF8UK/y3SjbwZ704rdGM
         /gktpUnd/hxL5CocrukFo/SL/hr/zNs4l9sndcp7ev63AlWrqbyC+n5Voj/7vAxOQj59
         S07+RmiDiI90wNK4zigM+VibMAkXDxF3nSrQNRQE7kqA3tFoG8WbncNvTqe4p1TdmUJN
         OPCtm/7VhMcBVtJKXSP4uv0S/loScjoBhx2JNVgFjUR5433kjoVI7lLhzjZALWY8ARre
         KUWg==
X-Gm-Message-State: AC+VfDwCaeBcqQVncwWTY2P4tWfUMJpzutRUNU/93qgehIcs99RfH24W
	9S9sInognknk0ZK4dBzDWeBiBQ==
X-Google-Smtp-Source: ACHHUZ6JqNOn6TctkUQ6E/Zh8dcU2trBSmopBqGdD7CTtYD4boZi1njHtt373XgOG0bq+Mr+DhVFKQ==
X-Received: by 2002:adf:f80d:0:b0:306:4613:e0f0 with SMTP id s13-20020adff80d000000b003064613e0f0mr11012487wrp.68.1684917047325;
        Wed, 24 May 2023 01:30:47 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d484b000000b00307c0afc030sm13871832wrs.4.2023.05.24.01.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 01:30:46 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
To: 
Cc: mkorpershoek@baylibre.com,
	khilman@baylibre.com,
	Julien Stephan <jstephan@baylibre.com>,
	Andy Hsieh <andy.hsieh@mediatek.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 1/3] dt-bindings: phy: add PHY_TYPE_CDPHY definition
Date: Wed, 24 May 2023 10:30:30 +0200
Message-Id: <20230524083033.486490-2-jstephan@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524083033.486490-1-jstephan@baylibre.com>
References: <20230524083033.486490-1-jstephan@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_013052_830184_950D850B 
X-CRM114-Status: UNSURE (   9.34  )
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

Add definition for CDPHY phy type that can be configured in either D-PHY
mode or C-PHY mode

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 include/dt-bindings/phy/phy.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 6b901b342348..a19d85dbbf16 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -23,5 +23,6 @@
 #define PHY_TYPE_DPHY		10
 #define PHY_TYPE_CPHY		11
 #define PHY_TYPE_USXGMII	12
+#define PHY_TYPE_CDPHY		13
 
 #endif /* _DT_BINDINGS_PHY */
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
