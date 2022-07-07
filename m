Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3988EC43334
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 07:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cGf8sX60MQw18JlNk5i+NhJOdeHc4qsczw4dLUABg+Y=; b=omAa6YQ8r98PjG
	moUJxfs0kC0NrTO5gA+J4glvZ6ER2eS3TlEJvmcBrBjl+CPgHAYMuQJTzGvn5E+tsEGurnssFs9oL
	ovID0Zq0wm4dJGqYQOyCNXz8NdQx4jUuL9QNNaVI7M8Z0kTOinuUP4mmo3VD5MuogYyFVAG5KGS/8
	/huL5qSxrp7+XgWJTZQWRGu4gQvjPdrNUiyvYsLdk5Nh186bUn1j5OJDq82ThqELLWOoUXY+0dcyk
	udmW26Q83EzqnqnBk9gJ6N4eelvzXjDZ98Wsm0MgPKCLlBDxK7xBSg1chkptmbFovreE2hlLZ5yNT
	GAur6nEXTkAKvCAmZplg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Lma-00EUjT-Bd; Thu, 07 Jul 2022 07:18:40 +0000
Received: from www381.your-server.de ([78.46.137.84])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Llc-00EU9K-5s
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 07:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de;
	 s=default2002; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=MJPV5Myl89q1Pdm5JQQ2l5ux800gix73SPG5yjAFSCQ=; b=mtZu3jLli0SPSBEFBIu5blBxwJ
	w4pfuRgobdWMMXOh2K2rkp/NCbqf8iK1t+IWWT0cjk32czJ9Oa4VzSRJc5lJgh//ndrDFcN7qy6Fk
	O3Sjxdbb70c54hJ9X4GGIV7MXJyOn1Y6DpMs4CEL9YHJ2/EWQfDaZX5VMyqHWmOBXbECh/YbXaVtZ
	OQVFYTHH4g1faJkMqBNgnNf+6u2KTu4Ver+pT5u9YAlmTZP/ukSN8PSWL4cvZoxYbnvK/3RQMfgWy
	W72ZM8A3yTbKw/HkGbigWE94KFtmCrcHqIf/sXsrBkch6/2AoCgBlxBOaWXa4fO5N8fqYFuDQ514b
	vos5GSQA==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www381.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92.3)
	(envelope-from <lars@metafoo.de>)
	id 1o9LlS-0007JO-1Z; Thu, 07 Jul 2022 09:17:30 +0200
Received: from [2001:a61:2a49:8301:9e5c:8eff:fe01:8578] (helo=lars-desktop.fritz.box)
	by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lars@metafoo.de>)
	id 1o9LlR-000PXX-SA; Thu, 07 Jul 2022 09:17:29 +0200
From: Lars-Peter Clausen <lars@metafoo.de>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Swapnil Jakhade <sjakhade@cadence.com>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Lars-Peter Clausen <lars@metafoo.de>
Subject: [PATCH 1/2] phy: cadence: Sierra: Remove unused `regmap` field from state struct
Date: Thu,  7 Jul 2022 09:17:21 +0200
Message-Id: <20220707071722.44201-1-lars@metafoo.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.103.6/26595/Wed Jul  6 09:53:23 2022)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_001740_273445_5B90C9A4 
X-CRM114-Status: UNSURE (   9.89  )
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

The driver state struct for the sierra PHY driver has a field named
`regmap` that is never referenced. Remove it since it is unused.

Not that there are separate fields of type `struct regmap` for the
individual sections of the device's register map. These other regmaps are
used and not affected by the patch.

Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index 73fb99ccd525..6e86a6517f37 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -348,7 +348,6 @@ struct cdns_regmap_cdb_context {
 
 struct cdns_sierra_phy {
 	struct device *dev;
-	struct regmap *regmap;
 	const struct cdns_sierra_data *init_data;
 	struct cdns_sierra_inst phys[SIERRA_MAX_LANES];
 	struct reset_control *phy_rst;
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
