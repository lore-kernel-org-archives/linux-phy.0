Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6714AC88E63
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 19:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mfZ/Bk+Ac5Cy4CHwgxXXI1eykx4FYajLBdvl/zMM8M=; b=JBhyNrgxGjNWQy
	vPev9GTVRUmLMnnle6cSQfhJvkNhlaTq6FtCNwJMdkugh1UFX4HTmnSE2oCqEwkYkN9Ykzj5H7Peq
	ae+loKPX3RA138P3HzuT3mHwB1FRfLnbPIWiRvguTHeRaY+YwGN5V6MV432GWqJ+1EoTC8uhQTTAg
	IxlkbGDjoKxzXEDZx2VGhQE7JdXmqv7f7J88Asvb7tZCk7af+l+Oek6mBwo7+XiaqAjm9PHRXs9ff
	wJspVwXnsdMTF99iZSZU4l+ruIORTEMEUpNKag9ZuTg3pax3qPRehc5y3qanye5nUBQD3LKP6KET4
	rJgIIuFvRtzb5pqIwAVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pSE-00000001yES-01Q9;
	Sun, 13 Sep 2026 19:01:30 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pS5-00000001y7I-0jZt
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 19:01:28 +0000
Received: by mail-pj2-x01.google.com with SMTP id d9443c01a7336-2dae660f31bso18548525ad.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 12:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789326080; x=1789930880; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zQ2IdKH/7qjrKGR31C/pLtiJWP+p6fNr1pFwJZ+2Nhc=;
        b=ZTAOGCvNt9/iGz6m8gJBjNQkV2YcAgOJzw0lBbbm01fTlwVC2chNBjcHYwFzW+7CwX
         t3YgiOMf/a2D+o9ycdlfuQEMi5e9N08st6ycqr4xB+56qOikgbR96qCw+sN6YegJrUau
         tdLdpuCPy5uSJybO3398bnxmQyuSNpe8O+8rWghgpeDsP39DceVkyZMV2KiIvhl4S8Ez
         dpQBthclrXOUN5+zYqQ0WvYU6g3rA1SoXwsk71+LK6Xjf0h7gDyqNXd0NjGUV8C9npKE
         KrTrGXGcY/PiwnNmXuGliVR6shJJju4yV74f6jKowjtuNTQOLtXCyvMHTjfPMxyB9y+u
         SszA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789326080; x=1789930880;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=zQ2IdKH/7qjrKGR31C/pLtiJWP+p6fNr1pFwJZ+2Nhc=;
        b=plfKz48A1vcznhrZoyQm8yue7jz66cZLxkVhQN1VzWOq6KrmPQIUnUeE/Kw4ycJxhE
         GXLx1Q9xFB7/hwZSmaWsSFTT4bsWu0Vfo08hDp17g0uYsWRWNEi8P1E/eKLlwTyZWfFj
         IVj+IXJsKlGqBeENhAzWPhtxtkG4/MrrYi9lJfd/d1oa9HU7uJz0m8uyqEPVcfHD90mD
         F3MvE4figqUWLgxmmgiheduvW+oBBozxw7fd5LQ8vtbhlbcYtDyJjbs65eMDNDNlTaTW
         ugMWs3cyn636Nw2uZirK4++Tj+XiowfIoE9l9LuYTTdY9Pik1vAki67eT09Ipzlu4FGg
         A67Q==
X-Forwarded-Encrypted: i=1; AKwUvBwD8sOK33uSQIA9dtVCSPO9kpS5e8vEJzjpQcmT4SAkJn+w2gNcOAR5ugPZ3U9MeyQCNMPAeTuCFh4=@lists.infradead.org
X-Gm-Message-State: AFuF++mEY5V/lmnrSltNdgtR2/JJxrT3f6/sCDGpGzRf7+4KIb1RXLNN
	y9gPkT8nAwBoPz+eAkbDYgpuLrdFxtVayWPHcypVyX780ZipSNzZdoqv
X-Gm-Gg: AYBFou1qyTyVRZYL9Yv0qGPOPd1kG4TqyKjeXC/SNsUZ4tUDRXfCp2IDGKg7h3/65bs
	a8WcCpZupjwv+LwpzIbs6PtvFMuNa9GukLdbOCPf+gcW/vIlrYm2TwziiGmToupiPB9xjjnHonx
	Dij0TjtLeOaT7qzAOlRE0LK+e4biBgpw8zvmvhBpxkqUJ5fgMUb7JICC4lKrWGo/YQfvDvqR1Gy
	rIBmBu4+8UtYfcRmYWveRD/NvS4iEOVQCSolR4qaCzZqIaSXHEuWznCU5PaOyOO6fo+JHyxGvri
	GolERJ4K45ni4JipB9azqvBnNVdPqKC/UNtrgjnxDzsV6R/hPtJ8q1GuzLQVTvCIs7wVTvCFg+6
	KHyzekU+Xfw/3n0eSAyyXUwIO9UaZ0d8QsK2nP5FgpzALfE9Z+CTqHjl99fFYksIx9HwvAkc/hx
	VXTvRdX1oZHzvEwj5Y0fKpy/0Nm/Yho5WfCnQtU1pdbSGFCe3iQ6dUb9Se4Vfw3CDMa/yI/g==
X-Received: by 2002:a17:903:1a2e:b0:2d8:d4cc:be63 with SMTP id d9443c01a7336-2dd2a35aa1cmr275548375ad.16.1789326080540;
        Sun, 13 Sep 2026 12:01:20 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cca6b7bsm36808655ad.3.2026.09.13.12.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 12:01:19 -0700 (PDT)
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
Subject: [PATCH net-next v5 11/11] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Mon, 14 Sep 2026 02:58:46 +0800
Message-ID: <20260913185849.907479-12-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260913185849.907479-1-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_120123_417789_9E15D3B4 
X-CRM114-Status: GOOD (  10.23  )
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
index c2414447892c2..960a53afa8357 100644
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
