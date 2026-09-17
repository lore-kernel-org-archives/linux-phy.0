Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E08A7C982D0
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 20:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2jiZMogwjNQmC4X/dWl3qk0eVKtoth5ApT+xAZK/kg=; b=NoBRVGz53fMU6v
	XPusJuybF4zoKh96E3pVB3n2urBVDVfclLCYuO5zv6jfa1z7bUIcbz9Q92Ygag58K2eIoI6EX/tEn
	lyDi/9nlw1/39zQgCq0cGevaNqL1Mses4LTijMEiSHzFulUkHDv4y38voNaRjP1LYuKvdNM6RgCPx
	UZR/wNGz4F34WCjqjCNG0e/I95Bvy88/E6iEjlR7VPaEL+Ufve7xNPcFMaBDb3LK8bK/Euj+4J9Y/
	WZF7XmUFVSI4phyDfoKmz3Vxj6TC8/dp5NuzIz75RAAcfRqFN47GFdDnLE/E+FcQR7tLs+IU8bCip
	T28yUit35LKJa/5NUCVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1n-0000000CTQJ-2MlF;
	Thu, 17 Sep 2026 20:48:19 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1l-0000000CTNE-0IKq
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 20:48:18 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-398a384b5f7so56548a91.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 13:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789678096; x=1790282896; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=sTtk+t2CidXm6Xqh4tKpQv1YWm3cv4NuNJmY8DG9hT5osOyEdUJzgoUrihQEpda1Kx
         Ih8ZIOr6ZFhTMwvua3UNGGHw1T1Gz8IviidK2KfsRRu5j3elV/cgLak2korzdnazuaZt
         aQ89GuqBNLCwS+SJvjoNQ6xWuGdQXseHW1tkCTVP3ZvzSiYl3JqU8Uh+hUBUjC1zqGIL
         ZrCBlu/rnzNmcEtzuzOdsQvBmtBMoqvPkb0yvvwFy5RJctYlRWf9IpXEiqUC02tyah6l
         mJP8IU9gtZnd3Ng2fE8+0cErbP+q1Ae/BHMhkBqYmREpY/FQeK6hPmT20jcspaIa1824
         G2sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789678096; x=1790282896;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=Pf9O+bk2oSGAPxL5qjQexv2x98SjHyVjaLKQD/BLGqLPqoS/MO0LhYy+qLHvoODzS1
         TbJk9HXoiiyGA5tc2zvjdao87Vl76w2RFN153ZIMMNiATi+y0o1qR4dai3MqLFxBcSon
         BVC8u0eoPeLUwBVdD4s1YkTviawigwves+0on7jbXpWYP/rOtrPW3d7HK8QEJasr1t+V
         3KQW6JFQoaRUisjOUb7VjFTwjWlvZuZ58wflttSGuXd4J/aCBz1omsJtKB01XimvLP2X
         08GGxQU1LWjaqrfbQQBihqbYzrN9M4/Lgeu4EqDXoD6ZDddHXVHyFWpAQVGDVWRuqIfX
         iH4A==
X-Forwarded-Encrypted: i=1; AKwUvBx8qnOtE958MNxJt0ApI31mrYg9IDqmx/237/7DAzLIVZtLv4o9kUXQCv0Zeo5YwsWEGwekS4dp/u0=@lists.infradead.org
X-Gm-Message-State: AFuF++m+efuj9NfLXxp1XIIlygQG8U1jPCNRPrssFuFUWEub3aVH3j6d
	TD3APurDaYAQy6ZAKvnhC0dleO7SFcHN+HUTbEAejfzj83CKec6bhWv+
X-Gm-Gg: AYBFou0fCmgSuo/gT7g4pSF+PqafKUd2VnJ9zPam5J4MUAcnxwZIzYIvhIX3moQqxE1
	cvg6myK3QstA1d3YGiTVvpfePXoOT8CX0B7MUQxuwlxa2xd/IH+aB33mIxkZWC8AWmgJ6uSUmcu
	dpbdB19hxTtsX3h0pGzeWD1NjNpeuwWuCkp29p2EPfTem8oDdHfhvjEH1g8IuVI+kRMrWUMZyOO
	9FGhXKxsMP26LlK+Ug2tOpe4OXqJICSsJ+d6/AoxXIrQF2PREr1wByAyjyckuU3CNJfBDgmLCXE
	PgRVjswT2yMfRt4JHaUCmokK0XBRnN9tQhElDPBMkhoP4GyB9kV+pfAxPuN01RvT8pDapebBMbl
	ZkxFca/ne4TSubPKfIP5R5MjvYP9ppQNYrTNGSwLvoVZL9AX8g2reArZItB+ePsWbHvvLmVpZ8J
	SZ6vTkoy9fWRPv7qCvTBKoaSgE6ylc5yjJwgHJRP1jf9QxLn7AhJ5pgj6FAhUofqW88Q/De1dpt
	yBQmGj7
X-Received: by 2002:a17:90b:5305:b0:381:6c5:3f63 with SMTP id 98e67ed59e1d1-39e54dcd917mr1044616a91.6.1789678096241;
        Thu, 17 Sep 2026 13:48:16 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e50a4bc22sm1232196a91.17.2026.09.17.13.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 13:48:15 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v7 08/11] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Fri, 18 Sep 2026 04:46:19 +0800
Message-ID: <20260917204624.2427486-9-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260917204624.2427486-1-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_134817_128285_6C4D0208 
X-CRM114-Status: UNSURE (   9.81  )
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

The Rockchip GMAC binding needs to describe the PCS reference used by
the SGMII support added later in this series. The property will be
parsed by rk_pcs_init(), and a missing phandle fails the probe. Add it
and require it when phy-mode is "sgmii" on rockchip,rk3568-gmac, the
only SoC in this binding that has SGMII support.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/net/rockchip-dwmac.yaml           | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c..bb7540e838033 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -120,6 +120,12 @@ properties:
     maximum: 0x7F
     default: 0x10
 
+  pcs-handle:
+    description:
+      Specifies a reference to a node representing the PCS device
+      connected to this GMAC. Required when phy-mode is "sgmii".
+    maxItems: 1
+
   phy-supply:
     description: PHY regulator
 
@@ -159,6 +165,18 @@ allOf:
         clocks:
           minItems: 5
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-gmac
+        phy-mode:
+          contains:
+            const: sgmii
+    then:
+      required:
+        - pcs-handle
+
 unevaluatedProperties: false
 
 examples:
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
