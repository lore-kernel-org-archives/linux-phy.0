Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 068A4C88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 20:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkzcUNQmaxIuGgUN0oarGeQgTpwPkPRg/3oeL0KIZCE=; b=OPwU7LYKpNcvU4
	x8sp+7eptEhOQfBrXJM3VDiF/3S9oi37131V+oLQqnqPPREcLA5APm3m1lAm3EMC9oYa8QhldU7ka
	ICeUCSIY/SuIQsuP8VhLHYGCN22Y9dRHuOFXCgdbEwSVAMkNTcJzqh53hb2TSzMenE9gspf0tREIf
	YsQpmf2NMikC+Q2BLTBH4L9PckAAaqV4DQpFQUwor1H5VoRzufOngXeKMTBMO5ZyVvZ1Cr5TZUoGi
	ri8o00nkjQgNwrRV0JSPiqK2p0l/ny2RiFhTFlDpQFStwP+hUByegAEJuH/PAbaxg2EzGOCKr8khB
	vBafOSQ43MR1jgG+GCyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J2D-0000000CTtB-2ueA;
	Thu, 17 Sep 2026 20:48:45 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J2A-0000000CTpB-1m94
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 20:48:44 +0000
Received: by mail-pj2-x08.google.com with SMTP id 98e67ed59e1d1-398b9f722abso39752a91.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 13:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789678122; x=1790282922; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rQei+xFrWR/8tHZU0Qo/Qb7KMibEAMjL/DUhroeeXK4=;
        b=Y15GQ6VzrD0ggjDrRPwiUzE0ctJhFohOVCaawQ3zJOpULxqQMIuP9Fizb1Gyia53BL
         0P6JY9myOFN3oE2RXpGjyuR1Ck3lx1MAELry28xoVPnwfSkZRouMuwq63nDtxddUJJO+
         MRZxFrrt06RJI3Sg86OKn6ijS3hjFrMBB53gVIZ5iN7SzRQtitgwuAzccKUZicz76oV9
         MjiBM0KZFn7n5llpQ/uIPi57gKaHEmcs5Pq/yTlHNuvACeot6GbbYAx3cOwZ+anTDrjN
         2eleoL5/G6jap+OrM8/U4mz2GPeL67tnH/1vfiTFOCeaQkJxMaV4LDyq0tJq+ti2jmcY
         1RjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789678122; x=1790282922;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rQei+xFrWR/8tHZU0Qo/Qb7KMibEAMjL/DUhroeeXK4=;
        b=bddesVBvDPQYR/Fak8BSlOys1LUPNd4DuZtfVpZtgm6hqoZff4IrrFXLSrnGfqR0bT
         68BL6kuUco0nMu7TSITtddN6tEeIPujBVeYWInBXUfsAWmBZoR1q6McbIa8C3sEQ2Mo7
         RoyFpl05HypjJnkf43h6LS/JMH6Yo/OQtE2Qn3noirK383MFypSUdzip5mNVCCvRkGQM
         cP8v7BgLOR+AwUPDjQUpgqq44mWcWRz5mlGRkrefZYuu5BAZ/lBxEyE/byqNs2r9S0ET
         +SC7FxOLF1vPc3tZW3o27gDsrTJ1Mx3ta/IuDfR87q1eEq3+Fmc291SehBz+o9ndmU9O
         mO2g==
X-Forwarded-Encrypted: i=1; AKwUvByovaK6ntB3Ttam5YYlR/yLM9TIq9qqMesAvD1Fb8ZbHx3knxyarr1dScnpQv81uABLCSf4+OzmdAw=@lists.infradead.org
X-Gm-Message-State: AFuF++msRnYLjpLJyoHOm+h6uc1mIwfQTjvTftjso1yq32z4lQObFLeN
	N79EFyeXh56iY+n2slBbLRToe9fxW+xGKNnOZm5kcNpK6F77U25nInfF
X-Gm-Gg: AYBFou1p2gM+rYn1JfKmIvs3RxZb4erXHxsePjqI/9JHBTAMvq9hoXR2UODRAl/68E4
	+s8bWYbvaX6rNsisqTSBQnHdBomRqvrTw5zzrkt7B/Qf0VQV/cMfzZlrNf3shBOut/zpHj9LOaE
	jgYPCxZdaU4LmhR4jYkkyzMdkgnkBNTPzW/ewfuBoX5yDfR7105gN0rE1FjvmXKjL9xbEkUlb4X
	NWEmnYc1XJixo5hFjAPKDDPN1//4q5IC++AyaSST3VUqGmVtJgvxx2qdfmkXiGUUgcx9+aycVAq
	pAVCWC7cLwcvxuGxAfOriJO4/DP3LRd2KO8aEhUDq/XLpQcL75UVl9gqtx20ii3D/JcgKZpwU88
	zp5XoCNo3sNz2HLPxkGhokfTxTYS/8GsICRSUfGmIkA4e3W6uU4wD4s7qcg4dLRbxF3H5OXPvJ9
	O2aNyv4cRIjk1fw/BJiHdhDCqIZx+mTWBFY3bc90Jw7GychmaruoTxnwzHu6BWFZVy64RiTA==
X-Received: by 2002:a17:90b:1cc4:b0:39d:f351:8f0c with SMTP id 98e67ed59e1d1-39e54dcb193mr699171a91.13.1789678121557;
        Thu, 17 Sep 2026 13:48:41 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e50a4bc22sm1232196a91.17.2026.09.17.13.48.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 13:48:40 -0700 (PDT)
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
Subject: [PATCH net-next v7 11/11] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Fri, 18 Sep 2026 04:46:22 +0800
Message-ID: <20260917204624.2427486-12-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260917204624.2427486-1-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_134842_477470_7E2FC605 
X-CRM114-Status: UNSURE (   9.60  )
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

Add a MAINTAINERS entry for the Rockchip RK3568 XPCS platform driver
and its device tree binding.

Include the relevant mailing lists (netdev and linux-rockchip) so that
future patches are properly distributed.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3b2eb2a7a89a8..f53a519da6298 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23739,6 +23739,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
+F:	drivers/net/pcs/pcs-xpcs-rk.c
+F:	include/linux/pcs/pcs-xpcs-rk.h
+
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
