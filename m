Return-Path: <SRS0=Pm1K=PO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADFEC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 26 Oct 2021 15:48:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 98DCD60EFE
	for <linux-phy@archiver.kernel.org>; Tue, 26 Oct 2021 15:48:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 98DCD60EFE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dd/Kz28vgizGUYSJ2MQ+1kSbHDKQNGXuAqYUblGmdGc=; b=SF1mHz5/XkkcKp
	4QfTk4b3vpr4znfpHb2he/6IX4P1CJzpCLLotOlYPuM/IE53UVCihEUEQtSOjd5+BeI3KqhT1fD8j
	BwK2NzETFKmXr7eV3Tk2WRzyOG8k8bxr+OpFkd9TqiAtpIjJlhUTzdmZfbV6Dd2US5zfpiNQtG0bu
	Ttqqs0wWPSxvqGMOIrOLtGUaT+l839jn6trxjc4o+FyyUSx4tnVSee0JRRYa7X/gok0pKAl+r407r
	HBUEphN3zUsDVohB55wM9cjmk5JroHrgDe4O7ogdX8Bs1dFq+Fwmwf5dULczZnz2zyxqI4H9UhCt1
	a4AGCIa0nDuzEkw5IOHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfOgi-002F00-3A; Tue, 26 Oct 2021 15:48:32 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfOgf-002Eyh-3r; Tue, 26 Oct 2021 15:48:30 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19QFC8TH014888; 
 Tue, 26 Oct 2021 17:48:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=selector1;
 bh=Z4tfzYw9eG2voXHJI5ARvyFBLH00E40u2YN2hzN5tg8=;
 b=VQ5nMSkpJtvX3Z/QafgaV8pPl1N/XYcPzuK29C80bQRADauKVHjo7m6sWzDeGnp4lzwc
 EsgMvP0R1RYf9PFNIiW4KyXSFU5LGSzhWspUD7nZ4ix9gW2SK6vME6EzIoPlYooOM5gl
 Gc/t7t5sxWlj6fjsBJ/qGqKoofNUIEsJU49UxkRDAXD2EwE4JBozoOAu+DqfkG38Camz
 domycwJsTx+CO1Dogr/3j/CoYkJxnQhpfANweJr34cQCB3uh6XV37O10pybb7+WUQ50Z
 uBz4Ih1L4MdvlLtOrC8PBJ62o4vv6gRIdJGNyM9dn65mGvGETN4NxoZ7X36sdBn3MMaL dA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3bxm40r8hm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 26 Oct 2021 17:48:19 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 67987100034;
 Tue, 26 Oct 2021 17:48:18 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5F39524FDE1;
 Tue, 26 Oct 2021 17:48:18 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 26 Oct 2021 17:48:18
 +0200
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [PATCH 1/1] phy: stm32: fix st, slow-hs-slew-rate with st,
 decrease-hs-slew-rate
Date: Tue, 26 Oct 2021 17:48:17 +0200
Message-ID: <20211026154817.198937-1-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-26_04,2021-10-26_01,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211026_084829_567498_C27F14C9 
X-CRM114-Status: GOOD (  15.26  )
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

st,decrease-hs-slew-rate is described in phy-stm32-usbphyc.yaml. Then
fix the property name in driver.

Fixes: 2f5e9f815a2f ("phy: stm32: add phy tuning support")
Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
---
 drivers/phy/st/phy-stm32-usbphyc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/st/phy-stm32-usbphyc.c b/drivers/phy/st/phy-stm32-usbphyc.c
index 7df6a63ad37b..e4f4a9be5132 100644
--- a/drivers/phy/st/phy-stm32-usbphyc.c
+++ b/drivers/phy/st/phy-stm32-usbphyc.c
@@ -478,7 +478,7 @@ static void stm32_usbphyc_phy_tuning(struct stm32_usbphyc *usbphyc,
 	if (!of_property_read_bool(np, "st,no-lsfs-fb-cap"))
 		usbphyc_phy->tune |= LFSCAPEN;
 
-	if (of_property_read_bool(np, "st,slow-hs-slew-rate"))
+	if (of_property_read_bool(np, "st,decrease-hs-slew-rate"))
 		usbphyc_phy->tune |= HSDRVSLEW;
 
 	ret = of_property_read_u32(np, "st,tune-hs-dc-level", &val);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
