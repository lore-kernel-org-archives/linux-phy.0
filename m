Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18BFFC79FA1
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 09:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Je2OUx7kfLiieJ8eH/AaLMfD1Tkwy+gB5akXwhOo4FM=; b=c6vPvOQXA5GPNQ
	tNNKVVXBgaPWGTvk1o5oNPc0BS6w5Y/NfwpSvZy0NhXEJ2auoh7LwhgYden4fHTarBD1jL5cYt7aQ
	CsRWtmJSbo+SECJs6BzvD8+uzP86KZf+HqtStguDvMa4metCkbdUlPTXrP1EWECDotf6NahoZmozM
	Zz7wdVYjF+czVgfe3QpRrTfmuhkDk7ZMLVJMNfCSLCJZgRqLfIwVxC35hRPL5rRJoWNwfMJM/o02F
	9T5jk9H+iGn6LdHHjjRp+guUC2AVwxC8LGeXpm3tQFpRRMshvRGs8HXStoMx8nXfbdSC2XeyBHsPU
	yG5kcBCPVUEjhcUmmsLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKz-00000008dsH-2LwB;
	Tue, 08 Sep 2026 09:41:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3sKy-00000008dr0-1Z3t
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 09:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 26AE1447A9;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0194AC4AF0D;
	Tue,  8 Sep 2026 09:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788860516;
	bh=vUrdouI6geIRrhvl7FMUbnySUDBs0we9z3aR5YMU6zs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=JKhqAIjw/3Novblg8urc1LS9uF6ZHOnbMnXARtaAduLCNUkAOGFeul8TpXFw7e6te
	 3eBvaeHhsKQz6RcWMOr+p/ZkzzsaCB0UTJCDiaNXtck9OhJroioI9TXX5GVQGW+cEo
	 sbWgtXPrixcx7NpNmiG7ffWJjkK9gMkXkSW2FRdX95HZL0t0OQ6YkX8+/N63PFg0GK
	 ElVzjsolP+Jq0apJGPxpj+UNIZq0i2frZAenJ5/m+cZO8/4sHKosRyJKXE5FKW9Pwe
	 c7wS4ebC1mt6puS/kaAe/hsNcyOnnwnX0zLm9xJuNe+hGi1d4rBYOwfmOiAI7imBcK
	 h4ef08ZM+Rzjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2475C79FAD;
	Tue,  8 Sep 2026 09:41:55 +0000 (UTC)
From: George Moussalem via B4 Relay <devnull+george.moussalem.outlook.com@kernel.org>
Date: Tue, 08 Sep 2026 13:40:57 +0400
Subject: [PATCH v4 04/13] phy: qualcomm: qcom-uniphy-pcie-usb3-28lp: Drop
 unused phy_to_dw_phy macro
MIME-Version: 1.0
Message-Id: <20260908-ipq5018-usb3-v4-4-b789702f0695@outlook.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788860513; l=847;
 i=george.moussalem@outlook.com; s=20250321; h=from:subject:message-id;
 bh=IZ/hjxmEdOnTJTDZazw9P78aJ5AEBePKGFMJqAXOe5s=;
 b=94b2fzvuiH7G5zZammgV57trIIoPK4mwZqfHv2tpEyLyAeIpxfo/xe/+DsS2EFQY4eRxD2v08
 ZWuehp9sx54DjPwk2XmsfBYVjKTaJMsL7x8hSrAFF2Qjl/52zzElgX5
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

Remove the unused phy_to_dw_phy() helper macro which is not referenced
anywhere in the driver.

Tested-by: Stanislaw Pal <kuncy7@gmail.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
---
 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
index b9ca6c1c177b..0256183fbcbd 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy-pcie-usb3-28lp.c
@@ -72,8 +72,6 @@ struct qcom_uniphy {
 	int lanes;
 };
 
-#define phy_to_dw_phy(x)	container_of((x), struct qcom_uniphy, phy)
-
 static const struct qcom_uniphy_regs ipq5018_pcie_regs[] = {
 	{
 		.offset = SSCG_CTRL_REG_4,

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
