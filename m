Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2004C83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 08:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2P3dmdUfJcIgzBwuPoNqPzJuCETpkeKAuuUlC3aS4ac=; b=xXVKyjja9brNZC
	DHBOfBvFV3v+abdz4umZDsENL6EjqhE5csVNJeD3lSUX5SbFifaZ050q+ofXUbhWkEpnBMIYa2viD
	9uiKjjUCF2tSfgr05wg0BY9TlotUIt9hHfDO8sNseLle5ZW8OO6lPle9lj56sapx+JVgMh1QoH4Hk
	6fGCb3V+KzAtOzSBPmubha3F3Gkt5sAljCf6LHzPQ6QaxDP3sdwNZFzSi5GsvSOE0ZTfHRxQ/w1Qa
	Sazlk9IRtbGB8Ma3Ut186NkGbFA127uwPHtUH/iCVzNQDlsHX4165yxCGgzgwnP+BwrCrBZuVKCV3
	BVKJAbOpMaNVvqAOGJ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qau7K-00B2Fh-16;
	Tue, 29 Aug 2023 08:30:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qat2U-00AvXX-1W;
	Tue, 29 Aug 2023 07:21:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=References:In-Reply-To:Message-Id:Date
	:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=r/V5rq9J49dc5UWwuPPpf4vAOKHPGQQTeCgGzupRTIU=; b=CYTme+WqBoMIPr21V66glbiyEz
	W1atAMk8bNw70steXIg3Fzudl+GSMJMI+PqEE354Rqu0IU86MFfRoHTzeecu/8crfXsw5wNyJfkSb
	MdZmGopORAjcfnmiRTW2jMzPkqnzt1Nf6EWyBOft7iE3M3JJSZC2DDjpVzHSFwq9pVR7BeTZTqJMu
	cLzvag1gaLH3+XSQgpcM0NT6eulSKyQ8KozNSgrHwMbIdC/wL3XVYIFV1LOFqPOhQnJY+XyDffY6A
	1KvzjKT9Fk8sPxL6su/NGSREBhhsHGPNkfLxo40e8bwra/+WW5Z8GRx8c4xCYbFwQaUoToL1Fb4yd
	cjz9ApcA==;
Received: from inva021.nxp.com ([92.121.34.21])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qat2P-00BNdh-2Q;
	Tue, 29 Aug 2023 07:21:24 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 78951200446;
	Tue, 29 Aug 2023 09:21:16 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 08F28200927;
	Tue, 29 Aug 2023 09:21:16 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id ED59E18002A2;
	Tue, 29 Aug 2023 15:21:13 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	l.stach@pengutronix.de,
	a.fatoum@pengutronix.de,
	u.kleine-koenig@pengutronix.de
Cc: hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: [PATCH v1 2/3] dt-bindings: phy: phy-imx8-pcie: Add binding for different usecases of i.MX8QM PCIe PHYs
Date: Tue, 29 Aug 2023 14:45:33 +0800
Message-Id: <1693291534-32092-3-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1693291534-32092-1-git-send-email-hongxing.zhu@nxp.com>
References: <1693291534-32092-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_082122_007690_F4C9AB6C 
X-CRM114-Status: UNSURE (   7.19  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add binding for different usecases of i.MX8QM PCIe PHYs.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 include/dt-bindings/phy/phy-imx8-pcie.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h b/include/dt-bindings/phy/phy-imx8-pcie.h
index 8bbe2d6538d8..c8425c172118 100644
--- a/include/dt-bindings/phy/phy-imx8-pcie.h
+++ b/include/dt-bindings/phy/phy-imx8-pcie.h
@@ -11,4 +11,11 @@
 #define IMX8_PCIE_REFCLK_PAD_INPUT	1
 #define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
 
+/*
+ * Different usecases of i.MX8QM HSIO(High Speed IO) module.
+ */
+#define	PCIEAX2SATA		1
+#define	PCIEAX1PCIEBX1SATA	2
+#define	PCIEAX2PCIEBX1		3
+
 #endif /* _DT_BINDINGS_IMX8_PCIE_H */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
