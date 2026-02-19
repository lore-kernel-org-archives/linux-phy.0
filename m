Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E432CE9A048
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 12:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4AJBaeDYEXW7bd41uQGRAc0TLC58GbbZ1bg9x+w9MzQ=; b=eg3k+hFB792z/X
	rYN55l8Pjub/+aLohBOkWCSHiX/iDrsjfHFWMrbBKE0fdQ9PAx+IIXzAhKfnzMLvzlbm36zI5IugE
	ChuWo/Q8vDUKT4tp4/9tYDwlBNqU5QWxINeCLFeKlcN1RYj7Tt0RO0HrMMnKOuW2OdmYy4xgC3KTR
	GtS//Jcf6nTa5yfAudF+smZlqAMXUFCBh2mu1ZkKjLe71mbJZxVj/m2NxNpOZTFN6UNFUxNSf/R6d
	KZ7hYHYMQ6I1CjpxV0wuGLL8v/VD1pXhwGgkbqVojC/aF9/+1liTsz4UKQ7peBd1JnTLKBXuDJNbo
	HynhnnSF0QBjiQpCkHmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt3V0-0000000BMP5-2FWy;
	Thu, 19 Feb 2026 12:51:18 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt3Ux-0000000BMKm-3qzh;
	Thu, 19 Feb 2026 12:51:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
	In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=WigBpR2LUG+IwR0uFA6Lmf6TgmmsDesfHsCPHW4cIWU=; b=jlvSrfEi6DwoArdUejrqsgE5X7
	rAWXyEL64r3eED/+vfawNnuTLY7pEsFsXTYNiypjyOB7RdmY8oKl+2BXM1xjZi/l05jXG/UcV02tX
	FAa7YQim6/K/WfnKI8c1124lRf8FTuvuFr6JwsmX1BcbTfyY3iJJo9QFTSnzqD4Kw8JXOlhmvJVWf
	O/jG5cwOAGwqKTb0A6jodWMvgJVTX7KZYLTXexWFM010+npYzjA2IAIkxwld3eujXPE30bKrA0AJl
	tSPIhN/U8AlmDLNIXbYyLaN3F4fYt1/Wgo5QMqjQyCDXluAVKyGpWQsJ4Y1AL3ZvqeALL+I0Mz5jo
	KlHfw8EQ==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:46446 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vt3Up-000000000tL-1LTQ;
	Thu, 19 Feb 2026 12:51:07 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vt3Um-0000000A5ec-3moZ;
	Thu, 19 Feb 2026 12:51:04 +0000
In-Reply-To: <aZcGxDBwfMXHbo_O@shell.armlinux.org.uk>
References: <aZcGxDBwfMXHbo_O@shell.armlinux.org.uk>
From: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH RFC net-next+ 8/9] phy: qcom-sgmii-eth: relax order of
 .power_on() vs .set_mode*()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vt3Um-0000000A5ec-3moZ@rmk-PC.armlinux.org.uk>
Date: Thu, 19 Feb 2026 12:51:04 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_045115_956103_839D82D9 
X-CRM114-Status: GOOD (  11.39  )
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
