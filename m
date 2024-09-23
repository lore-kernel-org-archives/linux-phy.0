Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA428CF9C6F
	for <linux-phy@archiver.kernel.org>; Mon, 23 Sep 2024 20:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:From:Cc:To:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rioVXL8w+Cz4DqflL33SoFpu534PXkXSQTcbx8tBHWg=; b=wbuB7t1Tj6fLcc
	7OtE1hcpkcMuVpTTV9jhcm0wCeJ3w1Ssi901vRUpGdU1h7HSstoD0RMFOhwJ7ioyXEH0KnvDyQMiA
	M25tWh5tWffp3v1CN3QbR+k3SJj3Ur3O5OzRMrroSpukEfxrNN/e1kTYYXdRBbagj3aqsRTxjTxP2
	bXLRw+Ji1Yx4n2qgaAFZaR/OjXUgQZ8Oce4XvterW64xlqm+fDGsdfma9M7amkjx5NiFn+hoeiO+X
	c9tySa9oS9GaMLGwJBBoiRxtC3p/5wFrHcibZpOxPwFe9KBA3fCOWeyvUAK/8ql9Sf60KXceLYfZ/
	guNGOSAnMG5WkF2N4ezQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sspIU-00000000Pwb-14Rp;
	Mon, 23 Sep 2024 20:04:38 +0000
Received: from mout.web.de ([212.227.17.11])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sspIQ-00000000Pvx-3CeK
	for linux-phy@lists.infradead.org;
	Mon, 23 Sep 2024 20:04:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1727121868; x=1727726668; i=markus.elfring@web.de;
	bh=NyPHHbZJt1HoUZRiEgs1U+YNuccocLd01ZpmSfeY5RU=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:From:
	 Subject:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=ALfZhqoXZdWlkpwUpO5jd2zyGQb+kNmoSM0mkPaOdNDq2iuvGbuK5QTga4edS5E8
	 Kg3jSgBtoQjw7LuDeaqmhnHHzZgFPhG9SYaS/WbsoSDozJnjR7fSC+CQCJf+zFV1l
	 xZrf6wYXO3BgCT4QsM8N6USMjWlL3lbMeVJWGXOz75+QohgVtEX5sCxSefRondXMq
	 +d+LB8pFz6RqrPoL0AHnpUrVdsujj1CYPHr6nSykLE/wug12joHUhs8ZsZlfvS6f1
	 CQKj0yFUSOkqJLhpcJrPgb411p6L7Fn61eVDy0TWPGa7/TG4cMrS3igOCbvUreSQF
	 wZub1XcmgNE20xezCQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.90.95]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MzCA5-1rxiTA3moF-011JJo; Mon, 23
 Sep 2024 22:04:28 +0200
Message-ID: <86154518-3338-4370-8fa2-80a8b0e10302@web.de>
Date: Mon, 23 Sep 2024 22:04:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
 JC Kuo <jckuo@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Vinod Koul <vkoul@kernel.org>
Content-Language: en-GB
Cc: LKML <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] phy: tegra: xusb: Call of_node_put(np) only once in
 tegra_xusb_padctl_get()
X-Provags-ID: V03:K1:LQwlz/kX37ShGSCKg+wsmk/jy5QFekqlLkEoDC2C3n6lj3Xnjou
 EKLG8jhPmkzaNK6J1fBYRRP2X8vZRqDaqi1zmYYs8ZZ2MEgAulmeSdRNWk5lvG8AsmTrC3T
 UCoTud7osP8h12SZaYl0Ax9F/oV5aglHwebeGfcbwhSrM4GgPT3BktKUM+q/85IaViOwGoc
 0sRPGahvH3/apimupIhAw==
UI-OutboundReport: notjunk:1;M01:P0:84K41IAe/FY=;YAwjXj4z+47HErv9+7gsXYuIAeD
 t6AOlRx8gIajBq8ny9tmzZK+aOdvJ8ryl+ZG10e7bal6lnpQ2hbEVN43V9sBNmyq0ZwRQ2Hxu
 uQjpeabO/dfDJ3QVlYbOr7mEdqMf2XY43PHtZxgP1xEjT5lIRb0IE0zjz4feFjP5boM7wmV8/
 R5hkbq3aHAhqOS0y/lsrmpn28c+LrUgH/ax8FEi2l3XHhkz42cELWmWBqZxBl91iNPcxFHqcO
 X/xXMvtX1B1XtuaPKV8RJtFTKBJ4JmKz6fsyzJu0MH/c+IySif5VTx4xb+gfAa3PvvDzhHgIJ
 Y53G9PPu4Fkrbgw6INVkYYRYRwOuc47Lx4TwJQvrekDANIvsmtsGajD9PdawRb7arDyp7z0/w
 8XOtNOwiRLpRFfDpwweNYIYw4lb8R79+Akm88jUYqr3Jh3BExNJTvAhL6dZBCLvVMBEK5EcWK
 etSijjq38HgHi7RALk2tZe5CiBB93oseCnBL86k1iK3X9sZgXfNYOtuIm2PLRFHxS/Dee+r8h
 PcNkoe88uJZQMeHpPqb32N3fZ8KRFdxvWuz3Smk82EMBLtBO1ogtJGD5vkO/2LVGbXAo+FyYc
 JadDEQfGuaOqhn6NPz6/1aAVnfWfsBiLFsPHHPiRDvSuk39mAYnx4x8xjU8E+2kFp06m5eyeC
 +8WtQgiI4nuNW5ojF8fTLQvBYsjMke2N6yeQdT7OtsIjL93zli2bNUnsD8z+knNhTgAym5iqU
 s799SR+SA3RkEkmq0BPqNRLNYh2+8yyKcHdJ3CjGk8qGndnfC5wOAR6PErNrfZ2Gt7N/gJpMz
 NYs+q6GJJb8VIFwfIRvbUOfQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_130435_199185_E7237F66 
X-CRM114-Status: UNSURE (   7.70  )
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

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Mon, 23 Sep 2024 21:56:35 +0200

An of_node_put(np) call was immediately used after a pointer check
for a of_find_device_by_node() call in this function implementation.
Thus call such a function only once instead directly before the check.

This issue was transformed by using the Coccinelle software.

Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
---
 drivers/phy/tegra/xusb.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index cfdb54b6070a..1a912ed52416 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -1345,12 +1345,9 @@ struct tegra_xusb_padctl *tegra_xusb_padctl_get(struct device *dev)
 	 * only ever be one per SoC that would be a little overkill.
 	 */
 	pdev = of_find_device_by_node(np);
-	if (!pdev) {
-		of_node_put(np);
-		return ERR_PTR(-ENODEV);
-	}
-
 	of_node_put(np);
+	if (!pdev)
+		return ERR_PTR(-ENODEV);

 	padctl = platform_get_drvdata(pdev);
 	if (!padctl) {
--
2.46.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
