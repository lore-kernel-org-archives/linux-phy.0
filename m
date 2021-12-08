Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1968C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 18:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xtu34DBmiRdjYp++LgJjDHeGN8Mu5IrVk3ufFSJbT7Q=; b=u+lwjyKE8kQSQm
	uvXzXMykvo7XkycQOr54WZmp3fdm13wTC68Uwntz0eFzRcsAEYdNXBRRUYHOV07fyF2cDXm2mKfOI
	VUJKZGRASJAD7O6wNX9d/R17OrKkY/zZOlNixwL+jiv1UDeg5brfXl2e746CsXO7Y9pBhQ94lwbqv
	rgaDFERyQFM3T0DcjCfOKG6sIxnLkszVWz+0RFCHqxTp/p4e2/BKGdaEErdhpaIVdhiinfclg2I/l
	tL6MKKvoUIW04ij/SaTc6jFmt7g5mQj1NmSmu6Zh38SUGOLkyWchhXCOkd7VSryDf7CSuO2WNz5UP
	wdZadxA3NuU1g9zZ8E0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv262-00DwQb-FD; Wed, 08 Dec 2021 18:55:18 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv25n-00DwJy-01; Wed, 08 Dec 2021 18:55:04 +0000
Received: by mail-ed1-x52f.google.com with SMTP id z5so11681927edd.3;
 Wed, 08 Dec 2021 10:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r2KFZ69t1/696UTdyUen1WkYuVyfWbC1SxhC6bkU9vU=;
 b=Y7NxYnZ7I8yFTdefJinSE3jW81dH3xBPem5Djjox1JKJNOV2TN5G04JI7ZxgVEy7Fz
 iwDmTOX5sgG7khvVXLqV1pqFMsfgXBo9Qo4GTK5R99snfdtpP0iTHAaIRb5GUvMZpoOH
 QQkxgEATj8Uqr0vJXX0uHxbS3tCDQbyLhx3+or5BQm5JRDZhkFNUDv0/lPTYTNgTgs9M
 4Mw9mmfhXt7jfz+i1wojCbAhURhxLUMy4ROeNZyfMe41ClOaOEeCH8zTioGq57slnt4k
 W2RAwPYub23hR7f4NdPXs7zvoxqvjeXWmcaxgM/RLAd4dESnmLjBTkijLXTyLjgsE/RA
 mnwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r2KFZ69t1/696UTdyUen1WkYuVyfWbC1SxhC6bkU9vU=;
 b=2W0CdxQooXPMgukS1c0MXzeundopTIwWFE+9J1oSZLG2bwWAOiskeDGyp5mzdlpxyZ
 dh9KgG8SWz3IRorH8kPzD7piW6pWw04kyKD/yijsZcK4HmBgPn8JO8rLB8xeBXNSF90Q
 9guViIVU2oNF3aW76gm7hK/zujypWk3lrugJphaKcZF9/sQQ5pT6M0sfuWFIJNuZqUIA
 +UuMhOUynKE2ED+lgWzViATcj9CY5FYh2tFZtctJ/buCohkqFoc5UZNAnZ7atqovNOrf
 0we8ziOd0fq0MQGyv/YmdTdqTrAtZWlGPWcBuMqnr7lr7mR0jyc+ZSyTHR3ZylQnk7ZQ
 Enaw==
X-Gm-Message-State: AOAM533HzbCQeDOM4sNJCBWSTeKbNObGk60djgiVu/YfdH9LLvml7vNY
 aStHsw/HIsV7kU6vTUAXGSQ=
X-Google-Smtp-Source: ABdhPJw0v6t6h30G+ShdLLU1olSh9d5rWV5SFj1vm8f7Y0l++eItxwnVQa9tQMXNuAirVao5rQqQ4g==
X-Received: by 2002:a17:906:2dcd:: with SMTP id
 h13mr9419142eji.135.1638989701773; 
 Wed, 08 Dec 2021 10:55:01 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g18sm1862273ejt.36.2021.12.08.10.55.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 10:55:01 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 p.zabel@pengutronix.de, yifeng.zhao@rock-chips.com,
 kever.yang@rock-chips.com, cl@rock-chips.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [RFC PATCH v4 1/4] dt-bindings: mfd: syscon: add naneng combo phy
 register compatible
Date: Wed,  8 Dec 2021 19:54:46 +0100
Message-Id: <20211208185449.16763-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211208185449.16763-1-jbx6244@gmail.com>
References: <20211208185449.16763-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_105503_057492_73B7B03E 
X-CRM114-Status: UNSURE (   7.93  )
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

Add naneng combo phy register compatible.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 5de16388a..9f0c8aa81 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -52,6 +52,8 @@ properties:
               - rockchip,rk3288-qos
               - rockchip,rk3368-qos
               - rockchip,rk3399-qos
+              - rockchip,rk3568-pipe-grf
+              - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-qos
               - samsung,exynos3-sysreg
               - samsung,exynos4-sysreg
-- 
2.20.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
