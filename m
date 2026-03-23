Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A598AD58CBB
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 01:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFV7klq98hOOTLzvxv0awYQ2w4SIBlA6PUUkge+UA1U=; b=wYru4nmIZoD5JG
	4OB6tfH9WmOsLdZaQSVWKADkvky1EnWRkVOazNK2diuBvXwRRekgPGy56amuQEI2dtoz4F4J5zDAK
	iFC9DlVgwSaIwE+jQiGiWkWtgk6s2ORqn36XJ9SA3xKXvbRDcRW3Wz8vKT+I0txkhFkB0xLC6sZNS
	G1J1ADvyjqPPi/vunP9lpzaqvpgncF6kgvNEP1huSL22LoksgvfIXYBqLv3+UNE4uCL/1ICI0wlsy
	+287g3WWerjNqzoaKR0WGFGNc7foKsJHYbDd5foMxO75tgHeVzY1gHwyW74itgsiawtZGZnRzxHku
	YO8w/Ba9qHn5uzBAUJXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UV9-0000000FsAA-1ern;
	Mon, 23 Mar 2026 01:54:43 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UV6-0000000Fs9F-359D
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 01:54:41 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-2c0ea57fea7so4332631eec.0
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 18:54:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774230880; x=1774835680; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PnwwlSjzqxBbkaN2QOiq4ejjgo89iMENabtsUNWy5zQ=;
        b=CTW1PkqJH7DnLY/fS/DkT8YYwCPEQsou+MI2+x73kflVm4sM0WhAJA10G/G4IEJD/4
         BF61JocKm2eZj/ZkbSoJpb8dUte9mTiI9jbTNWLpHa+33Cx76spcL390UXJy45c6HdlI
         q0WvhJtZk1pzPc+GNCsqQuX1NiHu+0F0RwjstNURZdAN/egQOwVHx4T+pPU/GWp9HIyF
         mK888B98qI7P6HljLqm+yDYpUbWjEqnj0o4+kY5ELoy5EP6xzwY1iSE48W4dxufPsesT
         Vj62p/V73/u5sRgOQszv3ovkJXxfnyvcOzLKSmPnJBOpkWdRymGW73XNASl6mU4GJmsg
         baeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774230880; x=1774835680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PnwwlSjzqxBbkaN2QOiq4ejjgo89iMENabtsUNWy5zQ=;
        b=eHkkehwvXx9uV2GRsMp2H541mTVsHflvqW2zfHnnS5EIXXNs19okHnizU7xQt6qLio
         DQG67gngbpqZ6J1MVLBanQkuy/ESVcKEYPuLD539/XSpF4fGLbk4zjtbA1h/sfrMhjAq
         TVaomvuDEfU3sYE29JzwYBjBfRxecK4ICK/ykbp6UUrlNCSSdsja6IE8e5ufocSYbVIQ
         713x3X2JDK8xZMl7dYd+HyvaXS1xpkP0TNm98WFlB+8LbtQKiXT1TZ4tMZQ91z0fqMof
         sLJInrL6Ef/XsxTX2aEfcPai8ZROnG2GEqFpCdckJOj0yV9ZKrfyhGGc6SS6YeOVJDc+
         kUBg==
X-Forwarded-Encrypted: i=1; AJvYcCVeSMypuD3Pfm1VEqmmQ3X4pEpXQ7dwMgDhCZedXVB21gD140ED3oUwMcQITHYhjUuNo8fg/q+MXGM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzff2YAu2EEg6UPkzhQNlMGs4z4SUV7fLbaI4ZPsu6EazlaUn6C
	NxpVEMVLhM8nRffv71U09XKNGykCrw01de94rHVNmbYiRDCXMOqp4cDu
X-Gm-Gg: ATEYQzySQq2Z8crY2Jwe6aiFxIigQsa/NhPWvBrq4tXKTNZxemuiXxrIQurpfmGi+p4
	jc98wMVnt5YoK6v3q4l8wK41xNrOu9R9hDn05AJKaHZlGb1565sN5I/AGPSQxk3eTtGCYAwvh5K
	Ej2J8i+L83d1O047K9Fg5SxN+agjQC2Hi+3n7W2MGlzqoA50MZdSEnHQVzhhaCi1CpwFlMJSrqZ
	RIjo3KDJ97o68w6JD4tJFgWt/bTo0xF+mi4de+yK2TtxXLthkW+vNH8yHVHsWhz52o7TWOJ9dXU
	enZQQStb8uzdDpqbYcAkY2K3Wt6cpa8QC8dlzkOpPxRQTZYz5pPCNNsKqdZU9jL/+nG0KOl8oKV
	dpRxP3faHoRXruy0Qz5pB+DYvDdejxgyeUIcgAOnM4wjFiFY9Z7Q9hdezbM2G5yU/BlrNx78gL3
	jISbCp9Xu0pR6GvQNV9POBvfDg/X9MgJnwhUSx8nr99rSK2KYt58VjNG7fWmyhLZcFHhAhAb0cX
	XELpCknpuGh9Os=
X-Received: by 2002:a05:7301:4198:b0:2c0:c415:cfd0 with SMTP id 5a478bee46e88-2c109666ba0mr4196054eec.15.1774230879729;
        Sun, 22 Mar 2026 18:54:39 -0700 (PDT)
Received: from dtor-ws.sjc.corp.google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cf068sm10976952eec.22.2026.03.22.18.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 18:54:39 -0700 (PDT)
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Moritz Fischer <mdf@kernel.org>,
	Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-spi@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-fpga@vger.kernel.org,
	driver-core@lists.linux.dev
Subject: [PATCH net-next 01/10] net: wan: framer: switch to using
 class_find_device_by_fwnode()
Date: Sun, 22 Mar 2026 18:54:19 -0700
Message-ID: <20260322-remove-device-find-by-of-node-v1-1-b72eb22a1215@gmail.com>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6826
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_185440_783741_32B775B5 
X-CRM114-Status: UNSURE (   9.04  )
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

In preparation to class_find_device_by_of_node() going away switch to
using class_find_device_by_fwnode().

Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
 drivers/net/wan/framer/framer-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wan/framer/framer-core.c b/drivers/net/wan/framer/framer-core.c
index d779b03a9e1b..77ef1bfd476c 100644
--- a/drivers/net/wan/framer/framer-core.c
+++ b/drivers/net/wan/framer/framer-core.c
@@ -745,7 +745,7 @@ struct framer *framer_provider_simple_of_xlate(struct device *dev,
 {
 	struct device *target_dev;
 
-	target_dev = class_find_device_by_of_node(&framer_class, args->np);
+	target_dev = class_find_device_by_fwnode(&framer_class, of_fwnode_handle(args->np));
 	if (!target_dev)
 		return ERR_PTR(-ENODEV);
 

-- 
2.53.0.959.g497ff81fa9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
