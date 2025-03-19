Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE5E8C35FFB
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 03:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAGK7/HlazSUtR4Rl2+iU7zqFNH01WehJMBUGvxua+Y=; b=EQ9ZE0w0qcbgXG
	7AddBKcjVCsk1m85fMkBUAFPs2Zp+d9i13bdMdCR+qBE8Ps1QCIkJnaGPLNRXPexy2YcXG2ZBxPH3
	LN1/dvJAgwJ0KiH2b6rEV2FjP8ZX+v/a1mysePkDkMOWGRduWkuPu0tGlP8/vgZQ9/hmOi2O+oYZc
	Qv2kidbf+EdL+fvwgT0LsFarxYwE3I5GQhWHlB7engd9bzPQdtH/h6RulzBppcLLDWS04pTPCraun
	wo7/aHRPrb/2CbxDFPQwm9Zf0r9Jb7pYGmEm2Al8FvrYuCCNUwKQgapsDG9iZ8xuyS/3yWEJjiJtX
	C5BI6mJ4N8fLy9uGGB3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuk1F-00000007sz2-1Hcj;
	Wed, 19 Mar 2025 03:23:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuk1C-00000007sxY-1f7X
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 03:22:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 643525C5A0A;
	Wed, 19 Mar 2025 03:20:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4FE5C4CEEA;
	Wed, 19 Mar 2025 03:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742354576;
	bh=cYuwxdwZwNpptSRKnZ3r6sjUWtozhGMOY3iV7LMaXhs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=R7XJZyOamyfTkXqyqdTEqs9osfuLhbaH+y+EqJ8mzkg0TxkpVi6etvIIkKBgr3zIC
	 6129mlqzMFC+3gsSPovOo6XzjZGYwwdCVunoFm/kyDjGHiNkOnFpv/CxRgN3MmR32d
	 QuxA8pdejZU1JS5eNJP3zO0h2a1JhmHhFI9d13WTtmW+LR6SwPky2yreUhY7JqKV/A
	 3zUxdvPpjX+i1vLbtfkr8YyyXJ7Vm/7EVCXVbIQFiLrHtlk9nJKZkewdVKaiQfN2Br
	 4EVh4TCKiVWJOI7lxOsYPMagcumag1+ACQFXYd0hMdQJzmEUn3tACiXZuHtwH1rNCF
	 lSGUj1jtCpMVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A617AC35FFC;
	Wed, 19 Mar 2025 03:22:56 +0000 (UTC)
From: Bjorn Andersson via B4 Relay <devnull+bjorn.andersson.oss.qualcomm.com@kernel.org>
Date: Tue, 18 Mar 2025 22:22:56 -0500
Subject: [PATCH 1/2] phy: qcom: phy-qcom-snps-eusb2: Make repeater optional
MIME-Version: 1.0
Message-Id: <20250318-xps13-fingerprint-v1-1-fbb02d5a34a7@oss.qualcomm.com>
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
In-Reply-To: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742354576; l=1783;
 i=bjorn.andersson@oss.qualcomm.com; s=20250318; h=from:subject:message-id;
 bh=F7hjgKZGyX/2eLEjN8svonHsIEOir26AqogeCcUlWcE=;
 b=rYdWDRbOX/8sX0ywyxFrEIdhuYcea6Fgdn0JHBSHBmXVsYtepF/Etfb/31gQk04mSVN6QgPpc
 fkCi2bLlQ6fDEq3EejcttGvRSFjO2pPHKcYGnSYCJIVFBXUolthYW3u
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=ed25519;
 pk=rD3O9C9Erg+mUPBRBNw91AGaIaDVqquHZbnn6N6xh6s=
X-Endpoint-Received: by B4 Relay for
 bjorn.andersson@oss.qualcomm.com/20250318 with auth_id=362
X-Original-From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_202258_540458_FCCD05F5 
X-CRM114-Status: GOOD (  12.68  )
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
Reply-To: bjorn.andersson@oss.qualcomm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>

In a multiport configuration based on the SNPS eUSB2 PHY it's not
necessary that all ports are connected to something.

While this is allowed by the Devicetree binding, the implementation
current fails probing for such PHYs, which also prevents the multiport
controller from probing.

The lack of repeater does not alter the fact that the PHY is there and
attempts at describing only the used PHYs in Devicetree results in
failures to initialize the USB controller.

Make the repeater optional, to allow the these PHYs to be described in
the DeviceTree and for the associated multiport controller to operate
the other ports.

Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
index 1484691a41d59a7eaf257ef44300827c668bf7e0..8897d2072ccfcaa5b4a510c17761dcdeed5bad0f 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-eusb2.c
@@ -401,9 +401,13 @@ static int qcom_snps_eusb2_hsphy_probe(struct platform_device *pdev)
 				     "failed to get regulator supplies\n");
 
 	phy->repeater = devm_of_phy_get_by_index(dev, np, 0);
-	if (IS_ERR(phy->repeater))
-		return dev_err_probe(dev, PTR_ERR(phy->repeater),
-				     "failed to get repeater\n");
+	if (IS_ERR(phy->repeater)) {
+		if (PTR_ERR(phy->repeater) == -ENODEV)
+			phy->repeater = NULL;
+		else
+			return dev_err_probe(dev, PTR_ERR(phy->repeater),
+					     "failed to get repeater\n");
+	}
 
 	generic_phy = devm_phy_create(dev, NULL, &qcom_snps_eusb2_hsphy_ops);
 	if (IS_ERR(generic_phy)) {

-- 
2.48.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
