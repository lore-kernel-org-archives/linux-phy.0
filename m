Return-Path: <SRS0=TOd0=OE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04C0C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 14 Sep 2021 14:53:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6C765610A6
	for <linux-phy@archiver.kernel.org>; Tue, 14 Sep 2021 14:53:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6C765610A6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C+pappBT0atdzCc+fnYTZ80XcIAedeDzx3wXzK4dfok=; b=KG0cikDl6gaqDL
	EIx5X8AjLVvPk8jZVAFq3lgWCuy4GsJ0GP18x+zsgph5/PEoN0BkzeTiUFw3WZsMfIQinYzRSHk6v
	IhhUXK8VjxBsWxNzaWurEeWfLmDxy4UAwAnf4vfpaSqseZ05G5yJPVriKuGkc1VHNhOK5ee3+3+PZ
	G6uuWjS6ey/7LBeL9m2j8SqTeT9ll2IhGLK7k9CanAjQbzlDTVdI+/6Nu5ueSsyWQEA9v3QUaC45g
	LJV1LuzMqAuKqt1P8NeUdlCl9fsevt7SdsPOFC1RMeuIrCFnBMqgeL8aoefyhzm0C1T9oQNaNT2/a
	rJG8OjltLwju8IwIERJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ9oM-0064Jg-S7; Tue, 14 Sep 2021 14:53:26 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ9oJ-0064H2-7E; Tue, 14 Sep 2021 14:53:25 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18EBDrHY000403; 
 Tue, 14 Sep 2021 16:53:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=selector1;
 bh=+qFVp4UXzkSb0mMkpWZLVTLTNn7vjALA3GybZVUT//I=;
 b=h1L0OUknaHle3dCsARhQ1qyqg2RaznxiQUGVKwjzkVE1esr8DbMjZWUkzYBtcsZ8FgGe
 OQxSh/+/4OKF6Saxyki18O/fNnN28uVC7ZxTnRmV7Um+WMgedZCvOgjPr3JMgGx107jp
 NBxSOfqpyxeSIIV/g+J4iVTxlKDiAv+1zeiHd8xbw7fVr9mv+GoJKxd19MlIw/dNt+K0
 gQ67n7Z/F45TMRWfVwUhu0sPiwvUCIacaeDovBuP8YP6x0irhat6mCfUiV46U0SpB8de
 1rdcaAUTSxLpSa5dC7hP4p6gH1e5NwRHmCbhXjEdGLLejEsh6hhDd1JdieIjsxhrW7QE cA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3b2tpah6jk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Sep 2021 16:53:14 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EB60C10002A;
 Tue, 14 Sep 2021 16:53:12 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D83A421A229;
 Tue, 14 Sep 2021 16:53:12 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 14 Sep 2021 16:53:12
 +0200
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [PATCH 0/3] phy: stm32: add phy tuning support
Date: Tue, 14 Sep 2021 16:52:53 +0200
Message-ID: <20210914145256.243869-1-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-14_06,2021-09-14_01,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_075323_723059_5DB381BE 
X-CRM114-Status: GOOD (  11.37  )
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

This series brings phy tuning to stm32-usbphyc with a new optional
device tree property st,phy-tuning, the elements of which
(st,phy-tuning node properties) are also optional.
A prior patch add resume routine, which is used to restore UTMI
switch and phy tuning configuration, as they can be reset if
deep low power state is achieved.

Amelie Delaunay (3):
  phy: stm32: restore utmi switch on resume
  dt-bindings: phy: phy-stm32-usbphyc: add st,phy-tuning optional
    property
  phy: stm32: add phy tuning support

 .../bindings/phy/phy-stm32-usbphyc.yaml       |  68 ++++++
 drivers/phy/st/phy-stm32-usbphyc.c            | 208 ++++++++++++++++++
 2 files changed, 276 insertions(+)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
