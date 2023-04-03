Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B7D9C761A6
	for <linux-phy@archiver.kernel.org>; Mon,  3 Apr 2023 15:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGKE+DfZrUZKJPMzwsmctinvcsbF+tqC+JNGIAfxBug=; b=nAP1kuprAiajJU
	8ZvJSKgPOW94tTfHfJ6aaCLeKsOLueTViuMjaNs+Q4l7qBqCn/PWXKFbStj/453+eM8XksMJYP3SZ
	2Qb++V+wioymmE3nfL33VpaiRijR1cGRQtzZgs0WXug1G2tLzRGiCVH0r3eLi40y0MdcHEqOIEKrV
	BTZZ/DOpwwyiCXS8TrOvst0/+XabniRrTM9m/49r6w4a7PmezBIZSysn09Mz6lXpY8U0U61p5mIft
	OWQHoRfxk4pRLHwetMFb2GGwNrFOtAqAPIC9cGGG2w0MR+zpAqndO39mzk3s7bSNT5ZzMslqsSsrG
	H7JcSW6sWfbQkjq9zomQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjLmv-00Fjga-2n;
	Mon, 03 Apr 2023 15:08:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjLms-00Fjf4-2M
	for linux-phy@lists.infradead.org;
	Mon, 03 Apr 2023 15:08:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4D42A61638;
	Mon,  3 Apr 2023 15:08:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18A37C4339B;
	Mon,  3 Apr 2023 15:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680534482;
	bh=Zvq9Hzpetq9+ZiBrci0/SnW1z0Ndhco9dW2OQzO42bc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LPSID/hW1iIiGUMdrfSA+O+e5b98RytK7Y34WEdMUQGE3B5wDApQjkEE5j5LWK8IX
	 iuYzO1CRQem0UBb0MQ+yHt7bysq+oQ0HzTXXWSGs9R2uWVdIVfs9zs//X59D67fOTN
	 kkR8fYsJ0VhLg6hSdwaJ5VI3mSZ2hcwWaB7MRGOqNVPFZmJO17v7EvZSXcaKhGrYJf
	 YOsayAmvzQSvVZqafUNir2ALY1AiobPKEfd52C9PVugNvVLiTefUzF8qh3pqLB9yVC
	 OJF12k5hKshsRfEzqU1EqfYrvbkZDZbVBqMlTzMVEA72PlpFMQICPWceC5MK6a/S41
	 X+dDKoQeE4sJg==
From: Mark Brown <broonie@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Georgi Djakov <djakov@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 linux-pci@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-phy@lists.infradead.org, Wesley Cheng <quic_wcheng@quicinc.com>, 
 linux-usb@vger.kernel.org, linux-pm@vger.kernel.org, 
 linux-scsi@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>
In-Reply-To: <20230325122444.249507-1-vkoul@kernel.org>
References: <20230325122444.249507-1-vkoul@kernel.org>
Subject: Re: (subset) [PATCH v2 00/12] Introduce the SC8180x devices
Message-Id: <168053447680.47740.2062036242012042206.b4-ty@kernel.org>
Date: Mon, 03 Apr 2023 16:07:56 +0100
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-00303
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_080802_807162_5929D310 
X-CRM114-Status: GOOD (  14.75  )
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

On Sat, 25 Mar 2023 17:54:32 +0530, Vinod Koul wrote:
> This introduces Qualcomm SC8180x SoC which features in Lenovo Flex 5G
> laptop. This also adds support for Primus platform as well as Lenovo Flex 5G
> laptop.
> 
> I would be great if submaintainers can ack the binding patch so that
> everything can go thru qcom tree
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[08/12] regulator: dt-bindings: qcom,rpmh: Add compatible for PMC8180
        commit: fc4fef625decc80cf3a72e884a4e37288bfa0f9b

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
