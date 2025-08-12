Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16CA2CA0EDB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 03:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DceAV/VtRp7d3BAUTpy/LtMh52S8U5VK6vvXkCFq/0Q=; b=HDjs1WmNIUOMdQ
	P+Lm22N4MdLkb9eY1CY37Tf2uKLfyKC0Ht7UZZOinkSKTZry9ez7zym161xMeSJmOnr+mfxq/8Avn
	Xo3W5jCmGB65PyQyuF5dTutYnrJhaXOe6c6WRqrZ2iKY8jwiJ8ryPpItR3gUYCHm8XzBTBzxK3XPP
	IRH3Y1pZsTGTSNN4Nypj69Rg/vu7WACsWiettktsf9g4Yc5N8slaqsin3QzIBtSkQDNiZHc7YGpPT
	kPY7J68uXH+gB2S+54fWBGEjf2iyGEQGWqPkJXP6VgBkUVCVz9evOde1hgp1hVBGXtW5yGEwYeAF4
	9tb9Xy6JLwMJ7Qpi2CyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulfK9-00000009fl0-3aTB;
	Tue, 12 Aug 2025 03:05:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulfJw-00000009fgw-1d6q
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 03:05:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DEEFD43694;
	Tue, 12 Aug 2025 03:05:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FB6CC4CEF6;
	Tue, 12 Aug 2025 03:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754967903;
	bh=+SYEc7mcuPezHlXmlPDvheE/ZJqUSaIeGVyT8sV6eOM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EqCTkjqgz/U0F0HowmywnKuw1f3Cx7Bo/4UcfPNM6MwPp24J2KxTZ5TDxETt+OJS/
	 VMZ+dRwfCNtYtAvGHmbpSyPy1B+K9jjDXUbrQoOwvMQALH8f/ZcYxorDOnGuSFD1fW
	 KVPrT5lG5illSdZCAQ3hbV6OLi37fLX0l0hQyD2mwfcntSOZBm9UukXxchsWAZeFdi
	 vRQHrGKGQ9XXXnztCJqMC1xqCEznPG4xr1fDoST8XMBzIKIjG6kyttkK1FFUPwWzTZ
	 p72jj8sV5XmPneO+2SiDNOge1pi4GImMWmmFnFaJZGvOs9WbM/jTY/RiJFa9RFhAmZ
	 ZPEfN1bUW2kFw==
From: Bjorn Andersson <andersson@kernel.org>
To: konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jingoohan1@gmail.com,
	mani@kernel.org,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	bhelgaas@google.com,
	johan+linaro@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	neil.armstrong@linaro.org,
	abel.vesa@linaro.org,
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com,
	Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: Re: (subset) [PATCH v7 0/3] pci: qcom: drop unrelated clock and add link_down reset for sa8775p
Date: Mon, 11 Aug 2025 22:04:52 -0500
Message-ID: <175496788924.165980.4310613357045244026.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250725102231.3608298-1-ziyue.zhang@oss.qualcomm.com>
References: <20250725102231.3608298-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_200504_449729_AE4894DD 
X-CRM114-Status: UNSURE (   9.12  )
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


On Fri, 25 Jul 2025 18:22:28 +0800, Ziyue Zhang wrote:
> This series drop gcc_aux_clock in pcie phy, the pcie aux clock should
> be gcc_phy_aux_clock. And sa8775p platform support link_down reset in
> hardware, so add it for both pcie0 and pcie1 to provide a better user
> experience.
> 
> Have follwing changes:
>   - Update pcie phy bindings for sa8775p.
>   - Document link_down reset.
>   - Remove aux clock from pcie phy.
>   - Add link_down reset for pcie.
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: qcom: sa8775p: remove aux clock from pcie phy
      commit: d41fb878adf64ef5dc4b4c25419e875483f62fe2
[3/3] arm64: dts: qcom: sa8775p: add link_down reset for pcie
      commit: f0370265b1d7fc169956927aa62c3abc375743b5

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
