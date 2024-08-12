Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D024AC3DA7F
	for <linux-phy@archiver.kernel.org>; Mon, 12 Aug 2024 15:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkfDbKJUpvxCd14MSy2hJz5FZBe84lzAZgwL+LoHYPo=; b=1Rv04h41O9aVnp
	R1CLkhKDeaB+NcjMYNvZSigKGigOoqNE5OTYTM+l9pC5r+miF13aLFqlSH+oqDNyBl5qubIplsbxC
	0m5I89A8JqePHorPlDBhpUSIH7+bbT/M8KdfUPqyjF/fzOcPqezzu89RN02FY1KUtEG341MiV59qz
	dVgJeFkFaEXSkhry9PLxLwQIzylBsLS8totaVrA2kselro3q4zCrkPLRJdn9Kf1UaTSZm/A2ryVVp
	XGok1IzGQ8sZDXZxJf4p5u0KxLi5zEeYl9KJnPUmXn8kWwzr4IARGZwgbld0FZYlkZxB7uQ/uTDIX
	BBfLtiRrsSH/akZFhllA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdX09-00000000jrR-2IyS;
	Mon, 12 Aug 2024 15:30:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdVqA-00000000YHp-1OQP
	for linux-phy@bombadil.infradead.org;
	Mon, 12 Aug 2024 14:16:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SUxmYkjU52Zd0l8Y+msbh0zC3Tc3jd+DyqARUfWiOQo=; b=bb/FCfqK6wkW9s708jvgQmAu28
	b+6nNw2Uzvof5KM9KomehEFFmvYmUNWXcE3mA1Mn/LSjy1LJjP/BPaORnDf5YJ8C7XlWMmONs7z7E
	E4TZnut/oDIHnXZqG3R4jMf4vayQ0dmkDZqzN3msgw/yU9pM22BCzWUHcHEmCsjYT7xuisvuLF8ja
	dpdUNQkLOdM1uhRLZjnsHMYpg8WIUvlrYQGI8yCICtabIFm10cZGJWq1ETjj758QDe/fBstuBYo4U
	FyTHV+D/5aB1CAgEQQgMg+EofctutaeSwFp7+lV0oHlnZLtdc35BCWvENIFn76IQFoYpUhEIY6yFs
	AE+jNa8g==;
Received: from mta-64-225.siemens.flowmailer.net ([185.136.64.225])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdVq4-00000007aM0-3kuJ
	for linux-phy@lists.infradead.org;
	Mon, 12 Aug 2024 14:16:05 +0000
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 202408121415555a943e71700315b315
        for <linux-phy@lists.infradead.org>;
        Mon, 12 Aug 2024 16:15:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=SUxmYkjU52Zd0l8Y+msbh0zC3Tc3jd+DyqARUfWiOQo=;
 b=KwREujn8vgbWwSH2hoDnU+dPY7IhxRCht6L5Bsi1AczJ9+m5d3HE39FSHIZmK8JVCMwTbD
 jAAsI4TD58s7WFUDSlq8UGnWh6GGTC4tCjaLGiwM9JD3Jkb1GQsiRa7RjeEx+ipwxFvBw3yl
 oTh2syBlb+c4euHs8COS+c2C/v5vbyEZ9VI/GrNByHpUE7ijHHDmV/9bzoAK3603X/VNF772
 Hb7X9dxnoKau9p5vwGtNdoEE+BS6jUBNg/h9iDdJkc2SnvSFXuurLH67GjTfYf+QxZ6GuLRN
 jUD7gjtHLtdEnOIsf2PGapU1h46YV/ITmSMDZWzsmsl04ThQoM5XBvVg==;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Minda Chen <minda.chen@starfivetech.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dan Carpenter <dan.carpenter@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 2/3] riscv: dts: starfive: jh7110: Add sys-syscon property to usbphy0
Date: Mon, 12 Aug 2024 16:15:52 +0200
Message-ID: <699fd0f6b7271fa757d915516fed4df078fad5f7.1723472153.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1723472153.git.jan.kiszka@siemens.com>
References: <cover.1723472153.git.jan.kiszka@siemens.com>
MIME-Version: 1.0
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_151601_157683_862D66E5 
X-CRM114-Status: UNSURE (   6.16  )
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

From: Jan Kiszka <jan.kiszka@siemens.com>

Allows the PHY to connect to its USB controller.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>
---
 arch/riscv/boot/dts/starfive/jh7110.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
index 0d8339357bad..0c0b66a69065 100644
--- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
@@ -606,6 +606,7 @@ usbphy0: phy@10200000 {
 				 <&stgcrg JH7110_STGCLK_USB0_APP_125>;
 			clock-names = "125m", "app_125m";
 			#phy-cells = <0>;
+			starfive,sys-syscon = <&sys_syscon 0x18>;
 		};
 
 		pciephy0: phy@10210000 {
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
