Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E500C4167B
	for <linux-phy@archiver.kernel.org>; Fri, 30 Dec 2022 11:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1VF6VW0SHH+rGqt7Z/N8z3dz9+8yqtL1SSh20zBZ0c=; b=Zg+Sx6iRn/JmGK
	fahwLZYDBCTj0lC5vq3fwxOi9GsnRJo7qa/lsBlCNihII8nCtTXYGAfzrtKb5nHDK1NWWKP9kBxlh
	5WEYChN7iJb5D+69oBTcu9OpZxSW4ro079J3zPE54UYN3ZumObDVo1J8MnsCz7TdRzxFhDOQUTM1z
	c0uUMrPJ/9qCHqvoWKnEf8XXofWI5V4xDozL62SG8MQFZnurkbhjKtSJPV41VLJEnpdK4+yJCpkjn
	v0D5owK93iaT2OenCIIdZfS9y7TXk5SeVXT9JOgMPwkkuKagZAGosGg3TWXSrNgTfihEzbG7s+RPj
	w9Ux8LLGCXrLHgL6q9lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBDdj-008Zdb-U0; Fri, 30 Dec 2022 11:33:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBDYS-008WK9-HQ
	for linux-phy@lists.infradead.org; Fri, 30 Dec 2022 11:28:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EF0E360DE0;
	Fri, 30 Dec 2022 11:28:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE979C433EF;
	Fri, 30 Dec 2022 11:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672399682;
	bh=W7YVzAO2mDuYN8n742hVF6/sjZKRdGp2qmdWhfD7pHE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=do70DYj28a0bbgOeoAasB5LC5Y+qLgYm10Rfby4djmnm96ENUiptyeyOqu2Qcn0sz
	 TZllCbG+jXWc9eN/WAzUcpzxNmKj6RkJR2u1AgHv0XKHiukj4xWj6VGHEKYx7yfoy5
	 2S9gfZy9YsMWJrMdZ/WRrLtwP1xyxe8+kKqKoh1ZMCppqXmzFe16GuGFhFG5osluXj
	 793e4jpH8uO6PxqVo4581Bkd1aYAV1g0fMpMynxJQDr1yuKIcEXrUb2TWQo+cVnru0
	 PEwg4uux/4m43h2l7nyKSWV5L46uCSO6ZdhsSoCSqiaWvqmh51740M0uy2DfAezfjr
	 pZZREgw8zHN7w==
From: Lorenzo Pieralisi <lpieralisi@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Andy Gross <agross@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Johan Hovold <johan@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: (subset) [PATCH v4 0/8] PCI/phy: Add support for PCI on sm8350 platform
Date: Fri, 30 Dec 2022 12:27:53 +0100
Message-Id: <167239965740.745771.6371707855803359101.b4-ty@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
References: <20221118233242.2904088-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221230_032804_674014_01089C19 
X-CRM114-Status: UNSURE (   9.05  )
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

Applied to pci/qcom, thanks!

[3/8] PCI: qcom: Add support for SM8350
      https://git.kernel.org/lpieralisi/pci/c/a39fb9fabdb7

Thanks,
Lorenzo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
