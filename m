Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ABE5C87FC9
	for <linux-phy@archiver.kernel.org>; Fri, 18 Jul 2025 10:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cy/XDnA65KzABt7ZgRrEQKEYu/8pXvAI9b6yxXHQ5PU=; b=l+YPmCfsuub2SG
	4nHiHB0KUeBWa/+VsrxtoML7RJYqzPzqsmIwmvQHtcbXD4St+/IJAQ2FuZTY4qcgzVnSy9+i322uq
	yyaanIi2Kc14pMmiwwa/SHb0koUynjVU72BVXZ2yZMBJDwMfqe4isk+TdTWyljk3HcftHwk+mIttA
	6sbzWAxFvc3m0cS4KZVKt0MTQjoxqtLzVZuBwQ394WqZ1TWfMF+T/iqzV8BLrO6M5eZlmN3BEYP55
	5TEshjlv1Yxl+j3Y0hnCCX5618SuSWFvI9H3/rmyBkssJodowG4GBiasXBJxE2kSV0xeLyqavLsew
	6qjeWU4kMSGpdOa7JU9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uciQJ-0000000CJQa-3TPV;
	Fri, 18 Jul 2025 10:34:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uchsA-0000000CFhy-0qNz
	for linux-phy@lists.infradead.org;
	Fri, 18 Jul 2025 09:59:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8A33C5C5DF0;
	Fri, 18 Jul 2025 09:59:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2836DC4CEEB;
	Fri, 18 Jul 2025 09:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752832761;
	bh=eMUkr54lkYoKQmZN2GMHBPpSnw2Q4SW0POsRqEonAvE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kXHLIMzUaarVTFKEETAaC4ekSCt5drsqnhxPQifyVVyWq7T/5RNlRKBqlaSOdKvf+
	 mcRV25NMpnoijDgs/TS0Unz2p8L7xJHlREJMq0xDDw6dkWuRSyVVm3T3F/rZg7D9UO
	 8EqD1OVMuXipifavTghH3kykTdG4eXWrLsipdcDlR1rabHasR98YNsoADfSDVp5tE4
	 V0XARyBzKjeclZEvAyUn+CF9/+k+ErzJAH9ZEm3a7r6tlA0TnxDkdf3XQOj2yGTNU5
	 emguyoscBqB/X06asclvbcuNq0+IQaABRmTpPfMAm5zdCdf5DEQQ9yFqmyO8Yb/1k1
	 aHTar4JaaiGqg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uchs1-000000007oH-1DEc;
	Fri, 18 Jul 2025 11:59:13 +0200
Date: Fri, 18 Jul 2025 11:59:13 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v5 2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document
 link_down reset
Message-ID: <aHoa8fgIsPY3no3Q@hovoldconsulting.com>
References: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
 <20250718081718.390790-3-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250718081718.390790-3-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_025922_284227_DB6B63F7 
X-CRM114-Status: GOOD (  10.42  )
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

On Fri, Jul 18, 2025 at 04:17:16PM +0800, Ziyue Zhang wrote:
> Each PCIe controller on SA8775P includes a 'link_down' reset line in
> hardware. This patch documents the reset in the device tree binding.
> 
> The 'link_down' reset is used to forcefully bring down the PCIe link
> layer, which is useful in scenarios such as link recovery after errors,
> power management transitions, and hotplug events. Including this reset
> line improves robustness and provides finer control over PCIe controller
> behavior.
> 
> As the 'link_down' reset was omitted in the initial submission, it is now
> being documented. While this reset is not required for most of the block's
> basic functionality, and device trees lacking it will continue to function
> correctly in most cases, it is necessary to ensure maximum robustness when
> shutting down or recovering the PCIe core. Therefore, its inclusion is
> justified despite the minor ABI change.
> 
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
