Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31060C25B7D
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 17:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ql1lpqontI1NZuVsYyZ6KymW5GReJGHGNtG/o/S+O0=; b=oeQPnPBuYOFjem
	aUoirhCbNvmCXM/6hORdi+jUU5DFKTMhs5oona5RfCryeuuljviUywKyqJfNBsBvvdshP+Yauw1c2
	x3a6lCofRvSG+0twcWg0gBg9WbAPaTbEd5ghO3NlVJAiYbrZ08qyox6AivJ8AfNqc7u/ywMUhxhlX
	IPi4115K0Adp0E6BB4UVl/2Nakbrw3WDsduOLRXGpQlRUcl5SK9Hn/aLah5D4zY4X3EhYWuvB4ozq
	d6v++TFdp6CRVmVz5gOsYogA+qoONcaEoGv022OiKxyD+lkmv07pK2zSZLYCK5k6pXgMqvO8+0Xs/
	cteJ/MZCh/djC68uU+Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfq-0000000BSpS-3G5h;
	Sat, 25 May 2024 17:59:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfm-0000000BSmy-3uRF
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 17:59:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 725AB6357B;
	Sat, 25 May 2024 17:59:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21370C32782;
	Sat, 25 May 2024 17:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716659954;
	bh=Q2ceOV02t0UpAKlBT7IZDlFZ4VK5kxjOlehGgDK729I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IFamleQCqmp4hyGizraruuelpC4DJCrYrItyOCkcLvJntK1R56HyMM4DQDmcwqX0R
	 MmaFhQyHZJgcNiD5z2cDx69DM7nOVYtH3vpHGsqTfBD9yAv15nrCaTXrxVhS0AdNRI
	 HUzwTVncXZQUsT+HUtnk8gExkQx4muPO4cmYo98JKz6QOC1ScNqnflq3N4dwPIKEp/
	 Sz7/4jngiErm1QwRko1llqbHWR22/FvrR5r/ZeVUL4JfqKR8xvQWHkS49jhnGvCKky
	 y138ESwFXKWrG7XFHD8zlMmnO2pvaCOMbinmSbBoayLL6Yf+5NUzBtU3FLVUg0dgPU
	 l9VzZRJIVwd4g==
From: Bjorn Andersson <andersson@kernel.org>
Date: Sat, 25 May 2024 11:03:57 -0700
Subject: [PATCH 04/10] clk: qcom: gcc-sc8180x: Add missing USB MP resets
MIME-Version: 1.0
Message-Id: <20240525-sc8180x-usb-mp-v1-4-60a904392438@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org, 
 Bjorn Andersson <quic_bjorande@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=938;
 i=quic_bjorande@quicinc.com; h=from:subject:message-id;
 bh=iUm27Y39fR9WTb3MyN1jhNQc6XLpkUGGL3f13Lft8RM=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBmUigMcLXih/lldJjCgFL8NnxiZ8IM0Tbfl9WVQ
 fy+uETiTgeJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZlIoDBUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcWsIg//fclC9y+rIhNKjYnJBEFmB1IWTkQ+5fXehS0dHCT
 CxUILyOOXF8ypStrb5gyUvFowWCzB1zAUaOyVFDpIBWTIVYUL1OFUxEH4Y/VpqD2tjjrNj659cT
 SWTA/W0m/DcLC4gyujCMzz5YyLkV4V95Q/l+AnxzR9Q6cizGzT87+kQmppIHpap1xdUwDwFER/J
 D0wvqaAAxTlrq7UCizBkDI4/H/9tUj8lreyDnclg5QN8txzltYHyDnDMSiMrTT1njMcmkEGv6MQ
 VvtedNa6sstvrDdIQ660nfg3/7SjyqLWv6TUSGpYsG7YM2NwLniPKRpcaqvyV5Yz+lvKE8ju7lx
 BKsYvq9Ly+za4F812S73ZYhmXZvvap6IvBK8to18Zh45VcwOv7487heXPJnTz1aRpxTBwBnaowg
 PhnWm/Ds520AQ0kDvq+XKqAra4JpCG++4Z+yHVWF1hh85jC5jPXk/RlLnlNL+rcGLq7RQILlL6T
 tPFNTfEG+B8T0G05XXILuGbsDtd6pns+SEtJ9Ube10+126ECR7waYHv8/xWbjaZiLedmka+aY+x
 OnXrsPbpHU10z4xukO+5YvYzkII0esDTOagXjfAvziPdrNSzaBFEg4igsGvu4TL2YXNM64jcJhQ
 lRt0E1b3ft+xY+czul9WwOUwjj1FlQ73mJjA9RkW5ox4=
X-Developer-Key: i=quic_bjorande@quicinc.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_105915_107200_7CC5C168 
X-CRM114-Status: UNSURE (   9.17  )
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

From: Bjorn Andersson <quic_bjorande@quicinc.com>

The USB multiport controller needs a few additional resets, add these to
the driver.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---
 drivers/clk/qcom/gcc-sc8180x.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clk/qcom/gcc-sc8180x.c b/drivers/clk/qcom/gcc-sc8180x.c
index 5261bfc92b3d..f77578e98ca7 100644
--- a/drivers/clk/qcom/gcc-sc8180x.c
+++ b/drivers/clk/qcom/gcc-sc8180x.c
@@ -4546,6 +4546,10 @@ static const struct qcom_reset_map gcc_sc8180x_resets[] = {
 	[GCC_USB3_PHY_SEC_BCR] = { 0x50018 },
 	[GCC_USB3PHY_PHY_SEC_BCR] = { 0x5001c },
 	[GCC_USB3_DP_PHY_SEC_BCR] = { 0x50020 },
+	[GCC_USB3_UNIPHY_MP0_BCR] = { 0x50024 },
+	[GCC_USB3_UNIPHY_MP1_BCR] = { 0x50028 },
+	[GCC_USB3UNIPHY_PHY_MP0_BCR] = { 0x5002c },
+	[GCC_USB3UNIPHY_PHY_MP1_BCR] = { 0x50030 },
 	[GCC_SDCC2_BCR] = { 0x14000 },
 	[GCC_SDCC4_BCR] = { 0x16000 },
 	[GCC_TSIF_BCR] = { 0x36000 },

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
