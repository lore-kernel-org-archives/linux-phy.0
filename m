Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0A50C87FCF
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 18:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpkGJ00MbhBZdfb58YK80pvrztnYu3al+IvUwU+IybA=; b=pEA6bMmYLOEi+p
	IpmR9JHsJ0KP8GIdNdHgfBVV9yoFev+DHkq/cnD4J4NHYIGssCRbRmugRZMw30R4v9CvV5HGjT76p
	HUcMNm/vSBzUTQNV0FODZc69y6Ajgvs2pxh3Fekl6zOFAhY7h6uy0ENOsNqHuDsuxe5xNkaj1wYGG
	sgbyjSQ9JnN2ASJKqnnWr7hSyggA3z2lfQW0SR13r1sVFA4jOx07BMcdCElEzxRspzHG6+bx6wn1U
	WfSAS9wGpne4V6Ke7nHmUNRYwVMryi7RxnVwK3blNtdPkiQbMU615+nOJRldM9k5i+Rs8UFPlmgGA
	pyfJ/D89aHsg5/CbGA7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uf0lg-00000008Cse-20bk;
	Thu, 24 Jul 2025 18:34:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueyBZ-00000007vCT-3I2q
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 15:48:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 32A6C4675A;
	Thu, 24 Jul 2025 15:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C86C2C4CEF9;
	Thu, 24 Jul 2025 15:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753372124;
	bh=lH1XSXqQUGAtq8HOW5s68WiNc/pAyr9wB95TqUTEN/E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AD2GMLMX6lnHDFEIAFLLklPm6wbgXcxaPLx/FrFtHAG4+0aJYPPeWANfhiThSbLVx
	 pZWbfFfmt+8mxuWHg3TAphxKkw6PQBjJysJB2xKTvbOv1/LIN7K+e5X4Ip9QcASAM/
	 3/8rUh83+qjT6DZ9k+zFn8xziRyxVJBm0hkh5i4rgvzd9WwOeVPYfWUu1Kp9MLjm44
	 iIYmrzIFkCdJ262p4BQvGpdSox0V/8yDaZdLjdX1+BHODxmNgNcylHdR8I09kVuJaL
	 qwkk6IrahFbeLXn1H58No7AKi+P1VI3r2RC5LDsArzFiQ9P0JK1/EujFj7ePSNeGRU
	 Gddh+HhYragLw==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1ueyBU-000000004B6-2gxo;
	Thu, 24 Jul 2025 17:48:40 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Justin Chen <justin.chen@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 05/11] phy: qualcomm: ipq806x-usb: drop unused module alias
Date: Thu, 24 Jul 2025 17:48:17 +0200
Message-ID: <20250724154823.15998-6-johan@kernel.org>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250724154823.15998-1-johan@kernel.org>
References: <20250724154823.15998-1-johan@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_084845_915114_62E62BBD 
X-CRM114-Status: UNSURE (   7.81  )
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

The driver has never supported anything but OF probe so drop the unused
platform module alias.

Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
index 06392ed7c91b..f22c0000479f 100644
--- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
@@ -559,7 +559,6 @@ static struct platform_driver qcom_ipq806x_usb_phy_driver = {
 
 module_platform_driver(qcom_ipq806x_usb_phy_driver);
 
-MODULE_ALIAS("platform:phy-qcom-ipq806x-usb");
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Andy Gross <agross@codeaurora.org>");
 MODULE_AUTHOR("Ivan T. Ivanov <iivanov@mm-sol.com>");
-- 
2.49.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
