Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE165C71151
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 15:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ezn13OKiuEPJfz5c1/md/4houSSBIRKf5ZlFLgM3UcQ=; b=LLudk8WX4/irWl
	AUhlVs9Db8tKuXxAJY2aU/I5SZbHdYf2WpB6eYMcEiww2nrAzggp0fOA6gKJHlL5iCyy5s8pJjC7u
	sY4kQRaAQHF5FcXMi6xAwLBBYo1IpvTHFhru7X5NVYSDDODfLnaWOjcS8DtkSAAdrEQJEweYRiiel
	giBUonEbpHBAi6lvveR1epw0lXBaIL1cQOpR+en92UAImkDx4aNGiIlsaWsbXVK7LNhFm80EvXKnA
	bAyxFWKcnWZvbKCMC2AZlYf2QZwfDho2lQTyJFXsMJ9mRGlk0F+ZcW+fihJ16+bcqdzuAtAWaLzVC
	MOwvdiAvgaotZA24sTyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ6cB-0000000GwkE-2kLG;
	Fri, 13 Jun 2025 15:46:47 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ5cB-0000000GjGn-0Xqv
	for linux-phy@lists.infradead.org;
	Fri, 13 Jun 2025 14:42:45 +0000
X-QQ-mid: zesmtpip2t1749825713tbe4f63a0
X-QQ-Originating-IP: V63lOhA8be4jkOMxbffSjrLoj7ZrMWN4e7cYEOp3Yfc=
Received: from [192.168.30.36] ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 13 Jun 2025 22:41:51 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6568943623001376254
EX-QQ-RecipientCnt: 9
From: Xilin Wu <sophon@radxa.com>
Date: Fri, 13 Jun 2025 22:41:48 +0800
Subject: [PATCH] phy: qcom-qmp-ufs: Fix HS-G4 PHY init table for sc7280
MIME-Version: 1.0
Message-Id: <20250613-sc7280-ufsphy-g4-fix-v1-1-1bf60744f5ac@radxa.com>
X-B4-Tracking: v=1; b=H4sIAKs4TGgC/x2MSQqAMAwAvyI5G2jTuuBXxIPUVHNRaVAU8e8Wj
 zMw84ByElboigcSn6KyrRlsWUBYxnVmlCkzkKHK1NahhoZag0fUfblx9hjlQkO+8hSdjWOAnO6
 Js/63/fC+H2qSSPVmAAAA
X-Change-ID: 20250613-sc7280-ufsphy-g4-fix-024542f31fac
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Nitin Rawat <quic_nitirawa@quicinc.com>, 
 Manish Pandey <quic_mapa@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Xilin Wu <sophon@radxa.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749825712; l=1667;
 i=sophon@radxa.com; s=20240424; h=from:subject:message-id;
 bh=tPl/PEIb8eSUeiYkBoCGfQu4ggnOVkwSBcpHJFJlX+E=;
 b=TjZ2DBGaELqKjKwUCVZYItwat+JLv7VGMiBu46gSHT+NLI6IL6S34l0NvKdoZJLxA8weVyFov
 WSnE5vBfj2jDyLaAUmZ8l+7kXNOSyBxXAyUwGUW3+lBIHjNo2Aa2YH0
X-Developer-Key: i=sophon@radxa.com; a=ed25519;
 pk=vPnxeJnlD/PfEbyQPZzaay5ezxI/lMrke7qXy31lSM8=
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: NDaL9YIDjH+JVfTGJPjC0drK2S3l6oMd3sX5QMU8QcrEPwj//KVurX/4
	x0DMEfg89F9b35oZ9c/645mhKqkHufdB3p5lsOx5BTfK0nzNtXtpxF6a2/qJASpGgm9MNg0
	gSCLgEXzBS3rmhN+WQRwCHxIPH6A1wsTNakGcW8sLQT8w1N0lsS3qMN2gFEIogU5ft6P1+t
	5rfuzVvbHj1o+uIgDMIgnNikl99dPglr9t8+vvJqtU7ao6LsalmBL6Bz2R0QXTZXKLC9fic
	gmZ0SvoxkpaWm/0Y3DNpIDZXUceHfb4gtA3Kq8Il6ap1QhU1smk+aGN5dTkFlWNiKfhULYu
	g4rjGIaAnmYfrHQ660CxqoTehbkPJgIF7Vk/fe9eiHlwHJ0mF+8m5HnZccsdJBdqw0lmBqo
	1UHMSgDV4QJVmILNIxTIWOx1LKR95x5vvyZGmF8TZGNhqtdcn8U8Nj6qZiTnbAfC88ela0+
	rRdkUk52HlMIFsNu3DVaVNARhMdVYqEQihjz8eOazgmcAzqV2VzJO33IHqLN9ksd+R05zno
	BFCpJQ/ipPD48oFmdR5D7+lXqyDlDi4Wil2zlfamtcVbIZ2/PgDKpPlEz1m7AeGVKJfnJiJ
	pE/fdqIH+2lNzxeqiyzFBAwwyM9D0lyxmFk7tVDv1+wJN4nIPF/pe+ARNtBPNhkuQOU6YbY
	DUSuGymQJSksdGXMhlCLMnm6nTf3Blf6ZJZhctVzbQjEQ0/ONnTZZbjFmmD6LAL2/NBpVcS
	h21EliiOMyQODF6ZSaOaLemTJY+B3kuVw4wt/2U2ePiQDcAMzyrYn5K6/JPQUjhcLdWLRKt
	QYj4zgMIwcvyNNOitsGbxtzVLkRXI310oowqxbkvXBSq59JD2yUO09BQzrJDF6wiKLHcFeb
	qlqBZLebPGJLbag/52GexvAAMANYiBdQMoc8lwPhNSe79BaBVUSFqOvLliiYUnBe5PW72TW
	CZceVTKkF3nL3ybBnyB9l5BZBzLuqdreD27Y8BusDvmi81IoZvxOk3+dy
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_074243_591212_F746D339 
X-CRM114-Status: UNSURE (   6.76  )
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

The PHY is limited to operating in HS-G3 mode during the initial PCS
registers initialization. Extra PHY init sequence is required to allow
HS-G4 mode to work when needed.

Fixes: 8abe9792d1ff ("phy: qcom-qmp-ufs: Add Phy Configuration support for SC7280")
Signed-off-by: Xilin Wu <sophon@radxa.com>
---
This might need testing on sm8150, sm8250 and sc8180x as well.
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index b33e2e2b5014d3ca8f19b623ba080887f53e616d..7797be329d75f95c80863e05351d0cf55fdf38c2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -570,6 +570,13 @@ static const struct qmp_phy_init_tbl sm8150_ufsphy_pcs[] = {
 
 static const struct qmp_phy_init_tbl sm8150_ufsphy_hs_g4_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x10),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_PLL_CNTL, 0x0b),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB, 0x2d),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB, 0xb0),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_PWM_GEAR_BAND, 0xff),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_HS_GEAR_BAND, 0x1b),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
 	QMP_PHY_INIT_CFG(QPHY_V4_PCS_UFS_BIST_FIXED_PAT_CTRL, 0x0a),
 };
 

---
base-commit: bc6e0ba6c9bafa6241b05524b9829808056ac4ad
change-id: 20250613-sc7280-ufsphy-g4-fix-024542f31fac

Best regards,
-- 
Xilin Wu <sophon@radxa.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
