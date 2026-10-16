Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54FE6CCA48B
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 08:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jp3pYDnJVxE6b6LbAL8IieL0r6f1vEXw+fId9usTa3U=; b=wzPYVNslg0rhiS
	ZZLsrswE7luNqCGumd+DH60yf4NkhTz/TyF3Bqa9hmenoPiMtEj5eVojTzZBiS+4tAVY/MXif8ZZX
	LyawkDIwPizQSECc0Kc9bPPzyBf+8EPJd9qtTIsN/ZHKnRyWfpMSpysDYnaM6Y769KIfn4KBD3T8u
	5W8zLQ3Ua28MrOt0QEhtU5ZzEzooiyfb7JPjsQzUBmpY3y0vBpVvW5cTB+HfN29UYAtuv19gizeBS
	0Cnm082/gSfwgQBVAkSxLUL6f3SRZbfKPB++pUEvDmu5bMWnw2NH4xFfb55gWVq29FOj5YoBhWldz
	/leiLGInw2lju65FW07g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkK-00000002OCn-351m;
	Fri, 16 Oct 2026 08:57:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkJ-00000002O9x-2GuM
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Oct 2026 08:56:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=4t98YFhToVmXSdqpvYlx+jh33cXkNHD7dPs1AUtblco=; b=cpE4TGIK9Ve1em3ZaLyzQGF0mk
	SbBZF9sXSOJ3gXfjMsh/YHJ3OHs6PEBEKZ6N+A+XiErR+cXWfN+wBmCBFJtYImrlddlbKTH9LSSpt
	4lyjdQfHM/gGIpYhB57Eu7BPFmDqMw1C7NDM8AYCTw9vXdr0L9SnuRCGfA2JGEQ8QunVpQ1bMUZjl
	RGim9mka56sUHZ4SOFxWZ59qOA6sRD5zOg1e3MvnnUNx1sAzwRGcdVEEYZLhFFUkIxiverdenYncS
	zBuEnUQzL4/JWWl09o0rYAnywolQqqAXGTQDP85ecj9U4FsFaDS6MqpyAnBaX+LXQPsoa71Xgql39
	sspqKpjg==;
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHdkD-00000001Hrd-2TzN
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 08:56:55 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-cbe437a530dso369579a12.1
        for <linux-phy@lists.infradead.org>; Fri, 16 Oct 2026 01:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792141011; x=1792745811; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4t98YFhToVmXSdqpvYlx+jh33cXkNHD7dPs1AUtblco=;
        b=b2Wr8fHP1/ARpXnQO1CI99PtwGhY5z+RgnlrCkXgys4RaqrO3Vm7d6AKvJU1ZAKMcV
         1YfVrWWWYnnK1KglX1JbYtSk6iS6jy99QXRoQJ+9vgJqIpyCrZVJw00gW5mdJdN0xzN9
         WmJHOZO5T0Lq+tIP79WPkNSwM4TFBGy8ntPgfiumXX9WJlbv5w8VzO3qfOCcJwNFH55w
         V9KIpiVENDVSdmQA7S4J4SfZWyGirTNiYlZCJ1JIIebj1B2XZ0rEoU6t0AwyV61c/Rpp
         UgObuDWdGrwSbJoF/k88467yJWd7NOuh3pfZU2ycQuRmrLJzDo6n3qf9WKqwtkzTJD6/
         VcAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792141011; x=1792745811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4t98YFhToVmXSdqpvYlx+jh33cXkNHD7dPs1AUtblco=;
        b=t8VnUFO13tkG0msN7EMAlrdQMBYIx7JLqvxBO9+CPGgg0nFb9YzLYMTNUyWFls5ov9
         XXkSzn0yKH6KfHfqETYSz+xGBQ65zm4NnOtCA/EL6X4HR6bQihDJEdvTDLxXOWW12iof
         rGFW4Efg6uTF1owWqbLu2EdWoSdNxrIKwxeRIRMVJnlf1W/o2QhMTDZjXbH1goIBJcNE
         3YYFmfY7J3CkSkYSvFY6wNBw912eI3MbApbjLohkIb94bmZjqJCVkuHIJhnVHUq1jCYp
         JOM9Jaeu46ip4Psfsrgu4SE8t2aFIIufG2O5SRQZQvFYyOLeKs2vFisprhVqCMnhtEd7
         0bQw==
X-Forwarded-Encrypted: i=1; AKwUvBwEsWzuuWIUYLcJ1Nb44udv5X2BFC7dkmpGZF5sDshE8jPTIRcRbRemGVHltTRdIGgiiPGCgZu0Jhc=@lists.infradead.org
X-Gm-Message-State: AFq9FYJMZ4W1wgnoxKaXCwS/r7PZ9U/08B29pzE7tz7YUpuNfaZh0uWN
	74WZDoVNExBJe5+2V/PkJTLcpaSeMj2ei4+oHHMuBXOq/JVjtTHu9IVC
X-Gm-Gg: AYBFou0l7hAneO7/7NFhG28Ry6x46N2ZRM8MTqvhGaGupMgFL33fg6ZUjesm3QRbc6z
	XE0EVDidkJdaIEtTIqtPSikRCxtItj/gLWLFGzrvMPGudH92nKzkpB5Lma0bVUaMnp6PM2VkpI8
	7Q+a6ont5+I1q7wAxdci8wD1qjdM90GL6dXVwMMyO0KhBwxGcNxq+ZJzkTvMJmoHJDNIWgsE8AN
	fQkOs9y8pxIHJ6ETx61347gJKv68TkVCYQ8aF2DS8mQXkVV+3syoO+aMycJGtB46CNpfQa4cwpN
	Un0BGXX8o5uVb01/HHaU13E9gQJ/ypooGfG2bbQ9CnCSqNetZnXchmiSQyD0ILNG8mKgcB9ZR9b
	L2yirtoRs6XqHeB2u2XvW+yPULcJeS0EyA8mGBniBfn4Q5oMR75TiaXZ1gJXiRB8dERblkxGnTp
	czftBJx8dNNKQoa4LJPbrnn+LeyKcOAytNYmWTIXZsTtofMjdVbVUIirX1VRORMoUbzSHgnOEAD
	OYlHsWXLXKo9lHdmthx70EDBzStzg==
X-Received: by 2002:a17:902:dac2:b0:2dd:b95a:e1db with SMTP id d9443c01a7336-2e8429a9f89mr307105675ad.3.1792141010736;
        Fri, 16 Oct 2026 01:56:50 -0700 (PDT)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e882a20sm6971025ad.62.2026.10.16.01.56.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 01:56:50 -0700 (PDT)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 16 Oct 2026 16:56:35 +0800
Subject: [PATCH v5 1/8] dt-bindings: phy: Add PHY_DIRECTION_TX/RX
 definitions
MIME-Version: 1.0
Message-Id: <20261016-dcphy-rx-v1-v5-1-e63b49eabe2d@gmail.com>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
In-Reply-To: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792141002; l=1157;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=YkXszimtwNYxX/s0QEul4OMgnFGKSMEKdd1MDqGTukk=;
 b=LEId1ZHxKIWdktOliHM+CAcf07+0pEcd9I8lHvqF1BdgteiRACfEYBQ+XTP3tpx89PFHzEumx
 aaGdm4smqtiD2t/AMT7acnwO3RJ+9CO4aUpskESVMlXGNjLOdrzRAUn
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_095653_906216_6AE961BF 
X-CRM114-Status: GOOD (  11.15  )
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

A MIPI D-PHY or C-PHY can be a transmitter or a receiver. Some PHY
blocks have one of each and can use them at the same time, so one PHY
node offers two PHYs. The existing cell, PHY_TYPE_DPHY or
PHY_TYPE_CPHY, selects the mode of the whole block, not one of the two
PHYs.

Add PHY_DIRECTION_TX and PHY_DIRECTION_RX for a cell that selects the
transmitter or the receiver. The first user is the Rockchip RK3588 MIPI
DC-PHY, where the transmitter serves a DSI host and the receiver a CSI-2
host.

Suggested-by: Michael Riesch <michael.riesch@collabora.com>
Link: https://lore.kernel.org/r/7425ac83-f6d8-4443-a26e-a47f9306aa24@collabora.com
Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 include/dt-bindings/phy/phy.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 979b5dfd8353..9ead74d9a172 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -29,4 +29,7 @@
 #define PHY_POL_INVERT		1
 #define PHY_POL_AUTO		2
 
+#define PHY_DIRECTION_TX	0
+#define PHY_DIRECTION_RX	1
+
 #endif /* _DT_BINDINGS_PHY */

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
