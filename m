Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D46A0C761A6
	for <linux-phy@archiver.kernel.org>; Thu, 16 Mar 2023 03:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37HozUc2S0DJcSK+7ozl/rAiziyTGYglWIz78yDR6EY=; b=a1N9E/CzeMTtnL
	5jvIewUmA+f5qMeLgfVTy3l84dxfJJGBkqc5V520JqpQqYOmFAuClLIlWnWNdQF9zvoQx4W46db1g
	qXyVdsqVFLFS8twYPwCfLiAz19S1a7dFwR8AxUTF5cLWGYaKWfkpiDFmbHxR7Uni2D+qyuGIHmkFL
	LvOkuueFZkuqWcsqIeOgb5O+9sas9YHSvHHnNfefOmwA12XLD2pbtFVY1SfX+5oehbXBJAfgxlv4q
	EM7xwfpMjbhS7XlaIWV4HlmYkD5jXSXwPod5qeM9kNZPzFm+Ef0q+q/S4tt31ZtRlW69/27HUzdVw
	z4R2oxZOMqpuZxcu/bcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pce7p-00F4jn-1S;
	Thu, 16 Mar 2023 03:17:57 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pce7n-00F4j3-0g
	for linux-phy@lists.infradead.org;
	Thu, 16 Mar 2023 03:17:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A1E97B81FB3;
	Thu, 16 Mar 2023 03:17:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 148D1C4339B;
	Thu, 16 Mar 2023 03:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678936672;
	bh=484wecaX4E5d+zm2WfN26QVdRPnNsyO2G41Wq7DM2y8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Gj99j3Y24VYJd/TMUGaWBlz3JK3pXgTlNjR4RIMiMuB3re4HRlXBqkvlhmMZnoKkT
	 eBHYmch21HAr/z0nVjx0m+f+lYv3XtAtOoZ9GfJiTKUtPzFSYeAaCejDcNgxHat7PP
	 +p3+N+LIsRM/0qZrcixzr6o5s4VM8HyWpYCuEw1htwgVX7mpEjo8k//0trz9Zp7xPW
	 Vayg6d6rattLApJj/06hKtpM7EdSSEXMWogEgopS5TnhzecdvepRpQzQaLJe90iflY
	 +mGZnNAq5tq4dJdqs09x27bSgV0wyaFV7tenzT/loQVfDbQy1nuYhTzpYIvBYPX3Gd
	 TqdCa9SnaCG4A==
From: Bjorn Andersson <andersson@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	lpieralisi@kernel.org,
	vkoul@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kishon@kernel.org,
	konrad.dybcio@linaro.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	bhelgaas@google.com,
	linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org
Subject: Re: (subset) [PATCH v3 00/13] Add PCIe RC support to Qcom SDX55 SoC
Date: Wed, 15 Mar 2023 20:20:56 -0700
Message-Id: <167893686410.303819.5208981481540188437.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
References: <20230308082424.140224-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_201755_389008_91FC69F7 
X-CRM114-Status: GOOD (  12.88  )
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

On Wed, 8 Mar 2023 13:54:11 +0530, Manivannan Sadhasivam wrote:
> This series adds PCIe RC support to the Qcom SDX55 SoC. The PCIe controller
> in SDX55 can act as both Root Complex and Endpoint but only one mode at a
> time i.e., the mode cannot be switched during runtime.
> 
> This series has been tested on Thundercomm T55 board having QCA6390 WLAN
> chipset connected to the PCIe controller. For powering up the WLAN chipset,
> an out-of-tree patch has been used since we do not have a proper driver in
> mainline to handle the power supplies.
> 
> [...]

Applied, thanks!

[05/13] ARM: dts: qcom: sdx55: Fix the unit address of PCIe EP node
        commit: 3b76b736cd9933ff88764ffec01cbd859c1475e7
[06/13] ARM: dts: qcom: sdx55: Rename pcie0_{phy/lane} to pcie_{phy/lane}
        commit: c9f30e3dd92ba779c9cb8bb694ed7a8e2c9f0bb3
[07/13] ARM: dts: qcom: sdx55: Add support for PCIe RC controller
        commit: 2b20437e67a4b74b990d19d3dbf55388e941f30f
[08/13] ARM: dts: qcom: sdx55: List the property values vertically
        commit: f9364a7ced5e6e36904c359cafe23cbf03645884
[09/13] ARM: dts: qcom: sdx55-t55: Enable PCIe RC support
        commit: 046392390884c9dead1d3703fa60dff97f22857a
[10/13] ARM: dts: qcom: sdx55-t55: Move "status" property down
        commit: 43743bfa36daed8f31860ad889a1413f239bb2f2

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
