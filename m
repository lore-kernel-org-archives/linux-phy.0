Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92D8BE7718B
	for <linux-phy@archiver.kernel.org>; Fri, 27 Dec 2024 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQ7q1Qe2tQDy1FXXj/Yu+/fu/uHp+4rOjDVptqCIfZ4=; b=uwZ3sCEurdjzeN
	RVLdevKKHblPQgCwNHxJq6MCnuRcl2lNhC4Nzx91iTwxU9uwqC85izSOeCUhNPvQh4qfkIuKRHS0H
	qfoIe6tsAQCQmcg9xlKWbDIqQkzO58avbQfTwn7GWZyOnMn2SHbPcViC/SAS4s+YV7QRI+j8ed3VF
	Jk58/5CXCMmsyS/PAUNPxZrBVWGhbVBroipphV+Lon9nAr+z4KvJBVCXygIxerOZtYF7zg5PweiXv
	bmkIHNKOyyiZ2VhVBWkKKH+wsbdgCu5uqZ4EY7zJqayCbczZtiKC+q3NfEBVLKKmMeub1DKifk2Ot
	Vqw6WBIaYwM3fjYrprow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRA7B-00000000FQk-1TDQ;
	Fri, 27 Dec 2024 13:10:53 +0000
Received: from omta034.useast.a.cloudfilter.net ([44.202.169.33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR9yZ-00000000DcJ-3pLG
	for linux-phy@lists.infradead.org;
	Fri, 27 Dec 2024 13:02:01 +0000
Received: from eig-obgw-5001a.ext.cloudfilter.net ([10.0.29.139])
	by cmsmtp with ESMTPS
	id R3OGt0UjqrKrbR9yYtXKSv; Fri, 27 Dec 2024 13:01:58 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R9yVtb5kjmNYjR9yXtAi3L; Fri, 27 Dec 2024 13:01:58 +0000
X-Authority-Analysis: v=2.4 cv=fb9myFQF c=1 sm=1 tr=0 ts=676ea546
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=YmDlHjd7AAAA:8
 a=vU9dKmh3AAAA:8 a=L4MHaItcyTsGJ2lxC4sA:9 a=QEXdDO2ut3YA:10
 a=jsfG_yEu7aiiUYXEnMLs:22 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VrQzcpsEZrRxzYneklGMKbZSVevXccoK1hLw4KZeU8Y=; b=a51Ou5ltEyha3iBDcWn5xra+V2
	vQqFzERbZ0rt9kFCqc8w9FX0QEAQtgrqs5g1gddGdvGTCcSLHCYT7ITmAlacFjuMXMdfHHYHK9CEP
	drLxhQ6lB8Cxl8t04881yaMHOeYKO6QvZdyyEOAw06RY9wfa1xWybD58toGKC2qOVIhqkVSP3yfi8
	zxtb5loyiAZXpRv4SNL2HfSrb2QMJsNoADJuZRYTXCBJH2klz7k3zKkFv0Eja0rt7eCFTqmdC7O0W
	zsKsxyD1CSkeP2UKzED8LmD8An4/zhqrOcMvudDcGI6veQjrZs5s5WNeZOBblI5gMr/Nen+ARAcBk
	RpdZ8QBA==;
Received: from [122.165.245.213] (port=58270 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR9yS-002EaQ-1d;
	Fri, 27 Dec 2024 18:31:52 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 18:30:56 +0530
Subject: [PATCH RESEND 07/22] dt-bindings: vendor-prefixes: Shenzhen Baijie
 Technology
MIME-Version: 1.0
Message-Id: <20241227-a133-display-support-v1-7-abad35b3579c@linumiz.com>
References: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Parthiban Nallathambi <parthiban@linumiz.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735304469; l=835;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=jfPsPwWKRhhV21IwFSRmL+uw8EZXVaV/9179PemDy/M=;
 b=lni39rwU25tnv69AAsJH7qvLK1kIIdxSq3e/GX7rwvDNC4wilfdY+0MugpYhJrowi/F9+Z+cz
 48qgQQ/WM3lBnpd731RdJZrm8k03+QmqRSLDdt6rDXXjsYlKkYZ0T7K
X-Developer-Key: i=parthiban@linumiz.com; a=ed25519;
 pk=PrcMZ/nwnHbeXNFUFUS833wF3DAX4hziDHEbBp1eNb8=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1tR9yS-002EaQ-1d
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:58270
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 230
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfKqnI3VykDXyHATfBd9k+NzC+p/NYE5LSn/LMy6jTxMQuAsL/p3z0rGje3j9nGOAf+Bb42D1YTsVSzAmSdzu1p0RF9b4IMoKyAIW8LIh78oRRH9LCp4M
 ecamMv5dW9bHVsw+NNs+qfvzu3ZLUM5fzWdzifcD5a6ozBrEiFTtlNzADZk2YlDRykJFTRg5pco2PnaKNi9ix/Ee7ibpKZPP/OWJDx0a3U2G+zP/xwazVeE2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_050200_018465_22D84791 
X-CRM114-Status: UNSURE (   4.04  )
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

Add entry for Shenzhen Baijie Technology (https://szbaijie.com)

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index da01616802c7..81cbc8b6b195 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1466,6 +1466,8 @@ patternProperties:
   "^synopsys,.*":
     description: Synopsys, Inc. (deprecated, use snps)
     deprecated: true
+  "^szbaijie,.*":
+    description: Shenzhen Baijie Technology Co., Ltd.
   "^tbs,.*":
     description: TBS Technologies
   "^tbs-biometrics,.*":

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
