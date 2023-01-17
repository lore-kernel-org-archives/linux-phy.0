Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 529C1C3DA78
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 18:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8/r1ejbTh5qY6B06lxswB2oCk/XZQb9V1cqglCNwPI=; b=I5rSMPpgMJm/Xj
	c76bS3tc8OCsDN7FtEEDIrv7TR0kDhIusUDAv8+pwBiKfz+buYgSz2RB+FaMWpx7w8MVDAI+Gh4PV
	c1fLMqsgFV1nV1AO+KRlqP4aOY+aaE3SEs8zXtBpiPkgHYNk+28YW9LUWvIgwLZuT/3yZ/R78WcaZ
	/sducb1OrwTn83HkXrIB9BJCnft5FCfb8bdWKExBfJ7qsAt8lrCCk4uQR7eiZoOmzpF6awl1punBe
	PSNdGSWasvT5ejTbl5w8sbDnJX+I8A378SmAQACcLjm19V4GE94Qx1WLYM0FkACyGIA0Vmey4Qs3M
	48TJFCR2+h/QUrCxeY9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHqdd-00FQb3-P8; Tue, 17 Jan 2023 18:24:49 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHqdT-00FQYH-KP
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 18:24:40 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B57FDB819A3;
	Tue, 17 Jan 2023 18:24:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C2BFC43396;
	Tue, 17 Jan 2023 18:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673979876;
	bh=e/Yadhg7MhxiC6ICfyqgJNkywCHiFZdW0smgFQQj1Ig=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cWvg9UKfMMTj3rO/pO1Mra0JKxMu5xIubaxUkEzGDvQyPUDv1ud6ehrdFA1TQVKtn
	 jhiN+842WVmmNJi5uSNygHV0oRFClHoUqel4z29u1M8KvvoTzJqsPI522+G8quNAxG
	 L/vLYT7SSuKkHQKK2sUp1sLpTFyGmbQ79wrVCBJdnQQqvEwgOU3e3fbbSB+dGXq2sM
	 Ij4+5FiFWoSCUP1MLxvcBTh+VULLIeVcWhre8CYGbT9Xo2OeJBobXbHAgTHOE18HS8
	 aKNZXPiwVvFW7DXeCFYMe+PVxKA5lg4fLm4EQlIqpwAtDZS47Q1FV+wDvPkBSoRNJT
	 34nAkBoRcsd2w==
From: Bjorn Andersson <andersson@kernel.org>
To: dmitry.baryshkov@linaro.org,
	kw@linux.com,
	kishon@kernel.org,
	bhelgaas@google.com,
	robh+dt@kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	jingoohan1@gmail.com,
	konrad.dybcio@somainline.org,
	agross@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	gustavo.pimentel@synopsys.com
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	p.zabel@pengutronix.de,
	linux-pci@vger.kernel.org,
	johan@kernel.org
Subject: Re: (subset) [PATCH v4 0/8] PCI/phy: Add support for PCI on sm8350 platform
Date: Tue, 17 Jan 2023 12:24:21 -0600
Message-Id: <167397986254.2832389.9697915757914288404.b4-ty@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
References: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_102439_831644_85954173 
X-CRM114-Status: GOOD (  10.00  )
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

On Sat, 19 Nov 2022 01:32:34 +0200, Dmitry Baryshkov wrote:
> SM8350 is one of the recent Qualcomm platforms which lacks PCIe support.
> Use sm8450 PHY tables to add support for the PCIe hosts on Qualcomm SM8350 platform.
> 
> Note: the PCIe0 table is based on the lahaina-v2.1.dtsi file, so it
> might work incorrectly on earlier SoC revisions.
> 
> Dependencies:
> - phy/next (for PHY patches only)
> 
> [...]

Applied, thanks!

[7/8] arm64: dts: qcom: sm8350: add PCIe devices
      commit: 6daee40678a0868a994b2ce923694c52299dbd65
[8/8] arm64: dts: qcom: sm8350-hdk: enable PCIe devices
      commit: 186b27135a9edb5bfbdebd5fb525e3fb7eff962e

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
