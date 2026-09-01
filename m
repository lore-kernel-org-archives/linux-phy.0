Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7D35C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 15:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wf3y8oMlivFO+PbmhkTDMvBVZAtPqrJ81FViFUxSJoc=; b=WtP0Fcmcd2ks8P
	WGWKrdvCtHkUaDjMK7uEkToYT1H8tX+EzGUSobUa3n6DECXMYt8prWYFYG0OwIEbkwTLT850hpV38
	2MTRGzCRHwc7La2q3m0AOLLahQQkwwuJ2KkClue4J19tq0fDrACW0iA81JPbnshzswZra33E+gEKp
	W55a1VZTuVxk8VUZYD2DXtOJBHuYijKC2LDEL/T9Q6ul/kTKFDwoj1Od0T86ozel3Z+nO240zVgrg
	NVCWKfUKF2welO4n3lKbze9DN44GimQf13pFEBbfA1H4Oeo42e02LQXz7ziyPPWO9Y8bcrJEheECu
	WVgLzpKDHMzGAbYfwCWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q21-0000000CQaJ-2MAL;
	Tue, 01 Sep 2026 15:04:13 +0000
Received: from mail-pz2-x0b.google.com ([2607:f8b0:4864:3b::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q1z-0000000CQYr-1Bcx
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 15:04:12 +0000
Received: by mail-pz2-x0b.google.com with SMTP id 41be03b00d2f7-cc1631a57d2so2431876a12.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 08:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788275050; x=1788879850; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jFOAryefyj3E8LprwQb6zM23kP14ZZpWJUCwFcY71vI=;
        b=Y5NvBfyK3Pnmfc48bz/ehKJ9YNyK/5B6mXjkW2tSZbxy5fu2UmB3hSrvzd1qv83Vlt
         XzWQndJpfqsxBYPJCwB/tVBXh3mlX+67/B++gYvRcWmsxKqcSyJttn+M4gHixULfuZXL
         dA4xBgu1+ulXUvB9myV52u0lWuCe/srNgwmrnWA16syfplI4gXSK3XP+NQ+6BiCsWxKX
         Z+95jP+wV7/sdsiLHpWl9QdziAxcGrLANDdBJylb6tx/9nmi38c1h3Xxb7ZZOrrLX0RW
         rHRefUhqc4P4g0yFolqeE6X9vop3TlmMsTM+FXhsyOPg0wLUwO4Dv17c07WZt68v2yYP
         orvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788275050; x=1788879850;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=jFOAryefyj3E8LprwQb6zM23kP14ZZpWJUCwFcY71vI=;
        b=XytjVMoTSgCNlb7i7KUC7Znvsnr2Rk+3W0LvItm8wS4Am+fVLIFEdIg4Oeur06OPK3
         m5d9EdgRK/bk5afVN/pDtOumcuxV7k+s08SsJx2nUzf0xz5BIO8IwVGilJjgHokCrdxf
         NV+1N5+hy6trmYOyW5iSH1VGRmRrvVWYl71DNGaBJqbLP3W/sBwW2f/bNyMU1BkmCtCg
         sLlk//pqi7W2wa05Uef+DYvP8Z9dzfBekwrYQBh+dFJex9cgr1n/olkg1ez9dLGAfqHQ
         5OxtC1qYJRTY9ZN9UdCMNYJq70kkCq28Jo4DguMaR1I75VDlJrjHTUagb7+Jq2ZGX2MB
         Cbpw==
X-Forwarded-Encrypted: i=1; AHgh+RrZyeHhk57Odj6MG0O2CPjvu+NTT9sMUztJX6m7Mh6DA8U9Uakt3IDzuBHIBklCnG5odAgIds2U31o=@lists.infradead.org
X-Gm-Message-State: AFuF++khHlzfDq1Ba9wLsrc/rmgSWqMVWJKBz2tDVn4692UN1ZTNmFyh
	G0ZoKbye0kwxK3GJWaWLet/ajSjXga9IC2GrIzaLxx8A8/1hu7i04X8G
X-Gm-Gg: AR+sD1080CRmxNbX6v4XhTq1uwjCAJs0J/WYEcY6SbFenpzS4hREbhLgDXWvuvJYcto
	4ZO5seJF9RKQ0kpoRhezPzO+mgHGlPxgCfke5XNwj6sNPUIZZ11pYYmCQE0ZlFX12P9ZHs+XH1h
	0AfdfFK0V/p/+bQA7p3Dac7CZxWJLIumHjcORHm+i2e4x7jag8rViB3ifl7Kj8zVVl4Hsnpr7a5
	yTxfpJLIR5OYrFSLUNYaCxNKLuhqjbbTHngXjxeLoEg/9ALZIIGtjxj1kTxynO2mp1AhQbJnWbU
	W7JqDLlSW6IbsQ8uPBEi9+afxqdemSZfxne9PzVStsQP6+xyIvVnXs3HVonMoulknlyjxKyK+Xl
	mvGukTgLF3y5RJWzw67pbxjzPjWiyHmSaurMiJD4PSK2uFXL39VeYacuRTvTFuvWUVhlZKl6tDg
	6RWjvEVlJ6TiY9kp2tDacF0v1ujDtpkkKjwLHkfnjl9hOYsTW9k5t+352qvAw=
X-Received: by 2002:a05:6a00:4501:b0:857:72f8:dc91 with SMTP id d2e1a72fcca58-85772f8de55mr39669660b3a.18.1788275020723;
        Tue, 01 Sep 2026 08:03:40 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:03:39 -0700 (PDT)
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
Subject: [PATCH net-next v3 10/10] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Tue,  1 Sep 2026 23:01:10 +0800
Message-ID: <20260901150111.141037-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080411_334987_5A647F26 
X-CRM114-Status: GOOD (  10.55  )
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
index 3a19da74d00c9..c3b17752cc817 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23744,6 +23744,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
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
