Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EB3CC79FB4
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 09:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44CkLLTvbGj9hPzdri6E0WrMP2Y2zPS2Iu41ITR8PEg=; b=tAkR6VkMUKh/bH
	LxiOTGVM6lwaw6ewjN3+UEpO/rWqSE8lGVzDU4RG4ERku41C0NqA1ToK2qpdDS5U9HvUi5lsXY7KV
	OFnihQ4JNyJY7VkfI19b/h08Vy0IU7Hor96nSlNKnWQHg3W8ceKQZ4qwyibg0EjhdxCKWG3S8f3bU
	2E6tdqW4K/nO1dj6PQEbYseWqfldhuzw/PoJOrmjy7OYPLv4+JmMwuOOiPAa4LZe9Hp7tuK2D+CKd
	bVNTRLDVbkbG78jqHiFpT53v+imulQM1Tn9VOJ/PTGX81cSFDqa6dOsR6HU+nuizBR+KHS6zEFD+a
	Jyg+rMMj7ZavlGVg8bLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKz-00000008dtR-3mQF;
	Tue, 08 Sep 2026 09:41:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKy-00000008drJ-2mmB
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 09:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B4D0447DB;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3CCC6C2BD00;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788860516;
	bh=uWZIHL2RMVsnz8x+iZFwErDd550WZ2Cci9TFAmY6WQk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=JAL2JtmpRRNA13Kt3DTbQkNYbJHVZcl6FKbOGltm24A7BA0i/g5Izl30h8F/A61JD
	 3jfzlyD+WsWbh0t/cPjFwKmmX8iq39cWLMOwNLIXRluAq6Sg8kzkSMfurc3JlxAK4H
	 D9dp7gU3EesnFl6D8xvgxG8/XYPVfSu2ccQ5G05wDpatXuXoGizX3GSPPYSyNesWPY
	 TgatRavAUHQZmM9CWE6vz+U6A/aB3XQZ5KnhBm3kvQBykddMAKLBeZcC0vjZuWJOCG
	 MNkzpUDArFVHNV5cbZRgD5OFwBWchAQgq5gw9LFWObSBODS92qY5Gxrvlq28akJK8e
	 v626PbWCDSKEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29FB1C79FAE;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 08 Sep 2026 13:41:00 +0400
Subject: [PATCH v4 07/13] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp: Assert
 reset on clock enable failure
MIME-Version: 1.0
Message-Id: <20260908-ipq5018-usb3-v4-7-b789702f0695@outlook.com>
References: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
In-Reply-To: <20260908-ipq5018-usb3-v4-0-b789702f0695@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Praveenkumar I <praveenkumar.i@oss.qualcomm.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, Stanislaw Pal <kuncy7@gmail.com>, 
 George Moussalem <george.moussalem@outlook.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788860513; l=945;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=Xt9077phHCqVPqMVNZVzBLq0pYjZ3VnSS927ST8gSWc=;
 b=AIvUePJfwwQReYU60ZhpE5aFQZ4csdMBGKGnxFwBKh1Lt4PYR1ueo4LZpPFkx4/d3/w64mEWA
 Oza4apZiP0TA+sqkwp7OeyVBpJW+NfuQMyYtbemzANyG+LTdKMQ9qR3
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

From: George Moussalem <george.moussalem@outlook.com>

When the PHY fails the enable clocks, it leaves the PHY out of reset.
Fix this by asserting the reset before returning the error.

Tested-by: Stanislaw Pal <kuncy7@gmail.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
index 0a50eb44c0ce..15b17044fde3 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
@@ -164,6 +164,7 @@ static int qcom_uniphy_pcie_power_on(struct phy *x)
 	ret = clk_bulk_prepare_enable(phy->num_clks, phy->clks);
 	if (ret) {
 		dev_err(phy->dev, "clk prepare and enable failed %d\n", ret);
+		reset_control_bulk_assert(phy->num_resets, phy->resets);
 		return ret;
 	}
 

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
