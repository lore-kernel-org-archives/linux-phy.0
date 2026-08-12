Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85CB2C5CFDB
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 09:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/Fy6gfOPTePUxgyosZGSe/S2gOz0oPv1QEbQG3h+j0=; b=XbRQLFJzR8wn3V
	h+D+jPmT/OwfiubhlSncDsBX4G+cNRixI1aCZBR8ygw8SSfN/7iYHUSusIkfHKVwL3uOsW28vm0MZ
	83ZEluh0+/sM0RYH5QMLztSBKW1yp1xJ0pbtAFmYEyoiIjK2h8mjfNSG0Lc/FNzTvZl2Q0LxCYev7
	gb1ntOLeyf7N0cymN5mgpSZ1lNUHXMKtK58iZqDCkfDbCx5tCKp/rFNKeaYIUS2RAqtdGDaamXtTJ
	GgodnAXgEVPtfmq/ouAbW2xFhIugCfsbc2QO92VI6V5SD/iBwMT/YHM2heHvCLvw8V/QKSa9CJA7N
	CIXDun92/tzgDHbyJRnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5MM-0000000FllI-1dlL;
	Wed, 12 Aug 2026 09:34:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu5ME-0000000FlfK-23bO
	for linux-phy@lists.infradead.org;
	Wed, 12 Aug 2026 09:34:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7D97543D2D;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 56E19C2BCFA;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786527285;
	bh=3BaE5P2Yt8vo4lMA9XvS6KLHXerUNkBfKwoyVyjmA2M=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=QOgtpdKBhUVwrobCMyHPpRFKKiJ8O/LvuV3+ZCE445xSr+8Uxw+0VBlOHmUP6ikef
	 heWXkFmdnR4s2c0AfNm2DIE/8ZOH6IAQLD15u1q4JE8fqiAqKqkEQSbZAqYkJWDYBC
	 C1oSjExbS/ks6cG0vyJqQ3Ri+l2m7RcC4P1GzbHc2j4nlIG+/BAcsdKM+R0yZ/UUSb
	 DVH1m9RPVCtFzWV6i/bJCfvOtrIr6WrWsUeBeeE66hJG4gNEA5ZlQ3HCTDCR4Vyo2S
	 GK3kiZ4vilPPZMX+q1KuQquLUo1E+Vfh+FKeQXphFbQ134bCciH9nVm0S2n/Kw5Uxo
	 HAOTbTv/CLbYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39C24C5DF61;
	Wed, 12 Aug 2026 09:34:45 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Wed, 12 Aug 2026 13:34:49 +0400
Subject: [PATCH v2 14/14] arm64: defconfig: Enable qcom USB UNIPHY driver
MIME-Version: 1.0
Message-Id: <20260812-ipq5018-usb3-v2-14-8f355d7ff0ef@outlook.com>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
In-Reply-To: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <quic_ipkumar@quicinc.com>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, George Moussalem <george.moussalem@outlook.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786527282; l=798;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=zrQ8Wh0YrykyPakfOtquLxPzDH9GvGWTD/vsNafpQc8=;
 b=e9MkbPrNY2YklKgVhYOaKoJ5dXbJojlUCPnLDcEhKBulG4jA8t21WWO1+DnxQQtgv0YiS6qxj
 ZDo7mraPW5aD8eNg1pBlWWiYj75/iR1D+A+LEhMhM5dMQQqD+3aVBv0
X-Developer-Key: i=george.moussalem@outlook.com; a=ed25519;
 pk=/PuRTSI9iYiHwcc6Nrde8qF4ZDhJBlUgpHdhsIjnqIk=
X-Endpoint-Received: by B4 Relay for george.moussalem@outlook.com/20250321
 with auth_id=364
X-Original-From: George Moussalem <george.moussalem@outlook.com>
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
Reply-To: george.moussalem@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Praveenkumar I <quic_ipkumar@quicinc.com>

Enable USB UNIPHY driver present in Qualcomm IPQ5332.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 6ec8d3a69c98..301cc21200bb 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1782,6 +1782,7 @@ CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_EUSB2_REPEATER=m
 CONFIG_PHY_QCOM_M31_USB=m
 CONFIG_PHY_QCOM_M31_EUSB=m
+CONFIG_PHY_QCOM_UNIPHY_USB_22ULL=m
 CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
