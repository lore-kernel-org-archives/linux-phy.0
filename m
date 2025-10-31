Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4057ECCF9F8
	for <linux-phy@archiver.kernel.org>; Fri, 31 Oct 2025 12:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5s6OoAEnmPHcpUOfM33/mfoGf+Rig+qIASTSWqtua1c=; b=KVBz2AAjXXCVjU
	nKi9M7ckPYrHHGglTbwfokk2haDNwjZmvbcBXZJohCi7f7yNvoLGLEicHbaMaz0Uf40B9MugIPFrv
	Ris8++acyZni6GyNQTkynCUX0FhYdVcUwc4AccuDSnTOFYfPRd2+gVdpm4lcV8eyFk102ocIkGhoo
	Tb2BgSk/pUFx47DHMNEvAZDM5Rq84iy+eei6DCenqDSMK7adRdyQUx3At4JyZlwdkFGk49hQApdGr
	SihJKQmpy/Yt8QyRYc0V9Sdv467gm2yFigM8UUAWzgCmCxrGWy1TJccal+iO94yCONq9nk7JoUTyP
	HSI/wm4oa/MfC1A9WczQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEo5d-0000000648O-3EuR;
	Fri, 31 Oct 2025 12:18:45 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEo5c-00000006480-1YaP
	for linux-phy@lists.infradead.org;
	Fri, 31 Oct 2025 12:18:45 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-b626a4cd9d6so267428466b.3
        for <linux-phy@lists.infradead.org>; Fri, 31 Oct 2025 05:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1761913122; x=1762517922; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PzKiSak3H689Kj/X1O/4ml5yQuQJC0SG0bQRjKYqUog=;
        b=ZmVXWXNf1sc2y6n7+Og0Hw0Njy8WfcO5EBm6rlusEursx/dAbO+sF4g2sR+YPgg2VC
         Z4d9tNYsrwmemaiqhJAPeqVZgvxFCIgoa2EeuY3IyYYVwi7axpGFos7q5HJf/OTN3R1I
         0pg1YuGKLJVexynYTsvY9B0VbdV691BO+7uFlbZcwDfbJ09llqDdC59Ec31vtxFutTEs
         1I3oSnDw8xDj+5glm0hbI++FlVeeE3860mODj0DGhuL/wzanoo6CU2sM/RFxEG4h2OxO
         AJknhwLieFV5zFpNYCI4h4T94lc/P24nty/9Wu4aSfjNpuROMVpznvcZfRF7vMTQMhKr
         Twgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761913122; x=1762517922;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PzKiSak3H689Kj/X1O/4ml5yQuQJC0SG0bQRjKYqUog=;
        b=Ml9DDUA31Bu6GnFpue5JtLZYLxM33GYY/akwTQ51jvkDcoNE8es1TKhlN5mjPqr8Ao
         yZM3k31lpfX2KE7JhsC+80cxownJlop9B5uXJMxSmkEoROlzQs2g/ZZNlDm++TYx7OF7
         63nfri+k1qcelCDxGAVkb8Z25avV5RHzKrjtshNuEBbyiIOzLTrxr80q9XmGjBgFfLzR
         TMGD+Wh5va4858nHLUtfNXENPI8wpLMykzsj/jKy61N30Lk+rBgPz4gWY4+NI6bZwii0
         elJevS9mpG/eg+HiW/t4sJLnm1cfS7CY4Zd71axPgCp7+iq8S+e2XSLMrt6BXKmnunCY
         YBxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUE63PcnoDoE1bXV0yjuU35p2Dt6AQ8jghUreaHSYMhh0TpMKrtFO1rkhlNmVgKCXa43Dvs9EcjW8g=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxi0ZTTO51XVlNgZKBFBY9U3ll4s0ZZYWXKMSC0Xfvv77UFZigb
	V9gOX/zkn0VXECL436P+Ik68SsfvI1SpLtYgXfYLTEWDs6Rh71NA+N+zZEhtnCInSJQ=
X-Gm-Gg: ASbGncsTbPPLck+zHwLwBM+8oclAbiWTtqrymcC/jGFln/k84lMQSnt/mF1L4zNcpkp
	nnINDb00A1i3PbJHvy1qwjwev/Erii7+DipilWJrG+Z3dAGKf2KVRQIX1PehIW76O1kzGR4q9Y7
	MpBdBQUtGq/7AkutZLL2X7LcDnI2A9guU6b26vtKAyuPSSSz7M8NMsBQ1tO3WQuFxbmItMNy0bg
	uK3M2f9/87wqkZzKCTs+VDXBcS09ilwb3B6j1tzfcF3+NXEQLkZ7Esmkrlo1DBjj4VEwtz9Ag5f
	EB03VBRqz48NWY9FrOg/DK4s5bWmNTX7H+rXs+mmjT4qG48WqrBwrHXP62s+XCSV5TgEX7nuQ3+
	Y9RyHsFxEnUOAzj7TbU5Nmu+gjzrwATjWjGCtpjEI4K2P1QTfK6K3cprHUWQ8DhAfLY02H+J/VB
	DyyuRyvUe+nBRij1Fv7yu8
X-Google-Smtp-Source: AGHT+IG/jTXCewNozopd7/aZCUUfDCbJQWXqJ1h84YETMOzj3GHZCqpEJTDBqjQSWUIN5XPosC+pEg==
X-Received: by 2002:a17:907:d8e:b0:b6d:825b:828 with SMTP id a640c23a62f3a-b707019c787mr347754566b.25.1761913122141;
        Fri, 31 Oct 2025 05:18:42 -0700 (PDT)
Received: from fedora (d-zg2-227.globalnet.hr. [213.149.37.227])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b70779e45a2sm160253666b.31.2025.10.31.05.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:18:41 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: vkoul@kernel.org,
	kishon@kernel.org,
	geert+renesas@glider.be,
	herve.codina@bootlin.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>,
	Daniel Machon <daniel.machon@microchip.com>
Subject: [PATCH v2] phy: sparx5-serdes: make it selectable for ARCH_LAN969X
Date: Fri, 31 Oct 2025 13:18:12 +0100
Message-ID: <20251031121834.665987-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.51.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_051844_431800_78E535E9 
X-CRM114-Status: UNSURE (   9.10  )
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

LAN969x uses the SparX-5 SERDES driver, so make it selectable for
ARCH_LAN969X.

Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v2:
* Rebase onto next-20251031
* Add Reviewed-by tag

 drivers/phy/microchip/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/microchip/Kconfig b/drivers/phy/microchip/Kconfig
index 2f0045e874ac..2e6d1224711e 100644
--- a/drivers/phy/microchip/Kconfig
+++ b/drivers/phy/microchip/Kconfig
@@ -6,7 +6,7 @@
 config PHY_SPARX5_SERDES
 	tristate "Microchip Sparx5 SerDes PHY driver"
 	select GENERIC_PHY
-	depends on ARCH_SPARX5 || COMPILE_TEST
+	depends on ARCH_SPARX5 || ARCH_LAN969X || COMPILE_TEST
 	depends on OF
 	depends on HAS_IOMEM
 	help
-- 
2.51.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
