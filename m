Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37712C433FE
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 17:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pb++jjfSZ5H9agPa6LbWNe2xGnd4fpEFAAEB6qZuDXU=; b=ZgRjz85jDKb9tK
	YXHXTt1RpVhAVviW97ZBu8s1fZpmzxwZ5aTq87G0RBCT14Khw+OEc/bi3nOK93Nq8pKU2s3/JwMz/
	WjaesI6e7gjuMTMhdYC/8taEmU5b0sUUcEwKek/HmZ4UItU9ZNgIDIkaZ+RpHuckcfYq5oFg3aulc
	j/xE+DnZnz1f6MUurfVQur6O+PXNQdQE/9AeN4VqsRUq/8eKjB5zXu/xpvBeyQDAmUPu7eOOOwqPb
	dCJUDaQAmsMRS6blmH/Hpl5MYuXaxYOaCPOcpWXNBePL9/q0KynJK5hxinOSFO3jZZv+B8HFcBPcj
	9jiJu+WA0dCdFjTimrPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msTrC-009dSm-Kn; Wed, 01 Dec 2021 17:57:26 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msTqo-009dJl-6t; Wed, 01 Dec 2021 17:57:03 +0000
Received: by mail-pj1-x1036.google.com with SMTP id
 nn15-20020a17090b38cf00b001ac7dd5d40cso2297046pjb.3; 
 Wed, 01 Dec 2021 09:57:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=01hLkNW6U3CPpS68qnrfuu+pdGd+j2RGBLQC7jYPJ7E=;
 b=LGFmv6hvr4XYmTujm0fajcm1lO45kdBhoHNt2JqP/aw3ZvnY6U59KycxvJxbRP9jdA
 RDRNyNydD4be81R+3/h1ihoPmxmQLXgzTIRg7zxVhROjFJNE5AYCneblWvKjRFa/p2Dj
 pqAmax9lMNCUscMTPwX8H4mXwj556+f4PPfqOV4R2ZfZIDs589XWVEB4VCpS/Wa2bYLr
 qE1tsFeZubdvN14tGvjoyi4/C7hm8gcLpsaZFwhSaOer3M4/ZXqkB6LNP5a7jLFkG6h6
 M6dV96v3dGLHBX6mSSHLqjXSt7UHrCRysLXhwXP/x1/08R21YbEdGpJfY7WIDUVnxIL3
 y2ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=01hLkNW6U3CPpS68qnrfuu+pdGd+j2RGBLQC7jYPJ7E=;
 b=bfitWZcK/RAXX48FoiEGlrKLbUHwqk9215qUQRrGy4ofqqrg1JLMNH+0ftWPnao/PR
 HLW59f5grrEX5+19b3UuVUOdQcSeAjms9HFIntjXAZW5ECyef/c6asDj5mn7mbNT8Q8O
 so6mps6U2xiKkRJUx/wQ3iwpV433kDJfpnKn9qNdp3hlbDCDqOP1VmuSbjQdOtuGUVnE
 wP4Fc3se4hA9KMFRZFyX5LHoGoG6mU9aTOj9xFVriDMwI8q7AXYWut1gDnCVrZazhU1/
 Gx7LjQ4WbuTmZSg+yCWlew9iGgkLpjwrogZK6twI3jP+CZh9IQN5fsU5Hs01AzT3l7JT
 QHYw==
X-Gm-Message-State: AOAM532pK4hUMBAJtJcWEBDdTIl0XSml3/PjUwSrGuPOFbRXA55DWDS5
 yGmVAQhz0Dut1qiwC5nADuY=
X-Google-Smtp-Source: ABdhPJxwejBZAQbi2Bm8sAB1y0DrRWCAn7pPr7nzDhzzY7gu8JIeoa7SjaOXvXEPZxeHjG1Qjx2I1w==
X-Received: by 2002:a17:90b:4acd:: with SMTP id
 mh13mr9504069pjb.230.1638381421139; 
 Wed, 01 Dec 2021 09:57:01 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j13sm471546pfc.151.2021.12.01.09.56.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 09:57:00 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: netdev@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 bcm-kernel-feedback-list@broadcom.com (maintainer:BROADCOM IPROC GBIT ETHERNET
 DRIVER), Doug Berger <opendmb@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM IPROC ARM
 ARCHITECTURE), 
 linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK)
Subject: [PATCH net-next v2 1/9] dt-bindings: net: Document 2500Mbits/sec
 fixed link
Date: Wed,  1 Dec 2021 09:56:44 -0800
Message-Id: <20211201175652.4722-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211201175652.4722-1-f.fainelli@gmail.com>
References: <20211201175652.4722-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_095702_271486_898D8FAD 
X-CRM114-Status: GOOD (  11.02  )
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

There are Device Trees with a fixed link rate of 2.5Gbits/sec, add this
value to the supported enumeration of speeds for a fixed link.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/devicetree/bindings/net/ethernet-controller.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index b0933a8c295a..ff4909e1fdda 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -178,7 +178,7 @@ properties:
                   Duplex configuration. 0 for half duplex or 1 for
                   full duplex
 
-              - enum: [10, 100, 1000]
+              - enum: [10, 100, 1000, 2500]
                 description:
                   Link speed in Mbits/sec.
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
