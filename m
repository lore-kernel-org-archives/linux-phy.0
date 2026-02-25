Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55460EFD20B
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 09:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=geMdRVmP18lGH2Py8bsLJNoBmI9RxJwFZl9Ga7wKMWM=; b=XSNacjwV+FFVL/
	uxG48MQtUswaDw+t/ba9t8egmS20jIqhTeLQxfsbSPP/GxJFrNdhf+SiqDwQdYcc7ztdlDtNQA2hY
	v0ICRN77mXE85uZJkAsiO9hC2RIpJV9aBZtJ3rMq3CLodZBgyBMLkX++PBD1yRjA16cNxF+vVBNx+
	08EPR5aEtWrlviMb9VsMUFYApZyys0Apaq2V5/lic8Xdm6v9kQTimpnYWGnmPTjCvaTtqVF28rm5L
	Wtbi6qRlzMgI6tbCBeiPFaZP4F8UmB+PdlkfbiHkv/4AOyYmsf4qW6mrc7M2J/HOniHCwsz5AY+6w
	jyOGcklovNlOGjC0RkwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvAmz-00000003cWT-421F;
	Wed, 25 Feb 2026 09:02:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvAmy-00000003cVj-4AUu
	for linux-phy@bombadil.infradead.org;
	Wed, 25 Feb 2026 09:02:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description;
	bh=GxfcZEUseWSWgXEfUJ/x192G0PkidFc23RUS1GJAT+I=; b=osWp3Ve0D7Nufwy9ppPrEszddY
	y4OVZRfhApF2KdN5BM4TWNk5RDj7YCMKW47hMLLH+oGngUiozitm6VHeyeCquj9p5S0c3vxW9o1S8
	+yUp8IgbRxAdBVLnequEDkMsP4D44EHzFIf7jSdQmhXhHGYkHSBMf3aOPqFe/VcsYu17edssfU/cK
	AKW6S+vZgs5kJOHcXhl4f4h3c68h8KK2eZIh4ct4Sb3eugnlSKBb15GRv2rNXJ/C9L0Qrn+aQbTJ/
	VBs6ebV7L9zE1xb8AxujY6EI1zglrLVs9RmNcTkCVHGVuCckzrGHHuQo3jNt410yWo0JinVZNXrII
	0VK2vFQw==;
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvAmw-00000008cnI-12sG
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 09:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GxfcZEUseWSWgXEfUJ/x192G0PkidFc23RUS1GJAT+I=; b=vDOGVCSMGr69yIy/suPL1pISws
	RmW19k1yD6J+GTBuDf/PxC77XsQ7azhEIXw2l7yxs3HBOHTd0VYOfnMtWJCSm2u5ONhhG1s6kBnpF
	Ipci1PIhcSIP9U6jhCM/3TFZlLXQc64mKCItbb9qqkTF6h8N31eNkBbJXqEjcbKUFdXiVrYh2Uimn
	+9ewVZFm8q4bCCQDSOqbSa5BPAV7AqmEzHmV3qFI3rug3CBJVty+UHmSkzVZ5BsIKlGFmE4H4LuFC
	2dSdS/JBM/SArfhfAW168tpi0Fs90D4a3FO+UcS2zqtQPGIrQBrJbrPA++6qgI6KH7JGJ8CZgwkip
	W8o/ywSw==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:41382 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vvAmu-000000006Gl-1y4w;
	Wed, 25 Feb 2026 09:02:32 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vvAmt-0000000Aqp3-2uwS;
	Wed, 25 Feb 2026 09:02:31 +0000
In-Reply-To: <aZ66OT9scKipRRu2@shell.armlinux.org.uk>
References: <aZ66OT9scKipRRu2@shell.armlinux.org.uk>
From: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH net-next 7/8] phy: qcom-sgmii-eth: relax order of .power_on()
 vs .set_mode*()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vvAmt-0000000Aqp3-2uwS@rmk-PC.armlinux.org.uk>
Date: Wed, 25 Feb 2026 09:02:31 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_090234_368577_359E687A 
X-CRM114-Status: GOOD (  10.99  )
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

Allow any order of the .power_on() and .set_mode*() methods as per the
recent discussion. This means phy_power_on() with this SerDes will now
restore the previous setup without requiring a subsequent
phy_set_mode*() call.

Tested-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
 drivers/phy/qualcomm/phy-qcom-sgmii-eth.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
index 6332ff291fdf..f48faa2929a6 100644
--- a/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
+++ b/drivers/phy/qualcomm/phy-qcom-sgmii-eth.c
@@ -271,8 +271,17 @@ static int qcom_dwmac_sgmii_phy_calibrate(struct phy *phy)
 static int qcom_dwmac_sgmii_phy_power_on(struct phy *phy)
 {
 	struct qcom_dwmac_sgmii_phy_data *data = phy_get_drvdata(phy);
+	int ret;
+
+	ret = clk_prepare_enable(data->refclk);
+	if (ret < 0)
+		return ret;
 
-	return clk_prepare_enable(data->refclk);
+	ret = qcom_dwmac_sgmii_phy_calibrate(phy);
+	if (ret < 0)
+		clk_disable_unprepare(data->refclk);
+
+	return ret;
 }
 
 static int qcom_dwmac_sgmii_phy_power_off(struct phy *phy)
@@ -318,6 +327,9 @@ static int qcom_dwmac_sgmii_phy_set_mode(struct phy *phy, enum phy_mode mode,
 	if (submode != data->interface)
 		data->interface = submode;
 
+	if (phy->power_count == 0)
+		return 0;
+
 	return qcom_dwmac_sgmii_phy_calibrate(phy);
 }
 
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
