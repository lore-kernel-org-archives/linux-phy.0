Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9310BC87FC9
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 09:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6I8YRU+vToknmtUAsqMM8nw0Bc6tWkIZRVZiztt+oE=; b=N3Nf1SIKo1r1zj
	F00svcQaorHDS4yk6kdkkZSpSoAIsZrKTdLPceqBaDWsWzrWCPHQjtGWXO0pxzEyL7336umxyK3Jd
	Qvjrse9cD+iUE4bOozeprNLTn2acyM9X00zMl5wmVzOFdIgbfWMrmSpTWMmMyGWBiVaMfz0Yl2/bm
	e5mJ9Z93huLmxluKrQN/jh6p5oXijGywv16vpciVd0mhhIGn9BFhe+xJvtRWSIwr4qtvUH1UuHhfO
	z/NzYLIjdUAqZkb7ULCGHa/JPquJXL+fXKZFQlgZw1aeYCzMqtwY5voJ6ox8FmS0jqHAqWP5WeOyO
	53sC6s1ngvkVWCcWr/6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh3Mi-000000019Mb-1AmP;
	Wed, 30 Jul 2025 09:44:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh3Mf-000000019LL-1z0s
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 09:44:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 35AD845B95;
	Wed, 30 Jul 2025 09:44:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A945C4CEF8;
	Wed, 30 Jul 2025 09:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753868688;
	bh=3gbYmPhcx8qD++tA3CAoIbyGPx2C4HSjIfSsdy3LXHk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aZJdT2gLcJWX1FifCJ1BZjfIUx6sOM97Gyq6ZIrg7xeDEJCinPLTMZorl8mQEG5dF
	 sYQxun9szJ2zXtYqVeDYvH6RnIQmQcQ/S6lUkgingAB4J6uEtrE1WCctb9/gXmnQwk
	 DF/jrGQTVDQQv52Pu5RWW4Jz95m8MRudbR/0v4wjwtmfvqrghwUUxXKl+naBIJmdlh
	 1WignbenJNKbPwc5qFIWiGOOUj199t2wk3eBRBB0TRwb/VeP28yL6et7bC/oVw4jxz
	 6Su+SYzk3YHAt+9rLx+8wMYmCzj1Y32P3A24tqXPWTdQvrViKIhcL8PMrtM8UZNsh9
	 EphX/U1ML9xug==
Received: from johan by xi.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1uh3Me-0000000069K-2uuW;
	Wed, 30 Jul 2025 11:44:48 +0200
Date: Wed, 30 Jul 2025 11:44:48 +0200
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
Subject: Re: [PATCH v6 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings
Message-ID: <aInpkGotRQcsRBdo@hovoldconsulting.com>
References: <20250725095302.3408875-1-ziyue.zhang@oss.qualcomm.com>
 <20250725095302.3408875-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250725095302.3408875-2-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_024449_527912_305D8C67 
X-CRM114-Status: UNSURE (   8.63  )
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

On Fri, Jul 25, 2025 at 05:53:00PM +0800, Ziyue Zhang wrote:
> The gcc_aux_clk is required by the PCIe controller but not by the PCIe
> PHY. In PCIe PHY, the source of aux_clk used in low-power mode should
> be gcc_phy_aux_clk. Hence, remove gcc_aux_clk and replace it with
> gcc_phy_aux_clk.
> 
> Fixes: fd2d4e4c1986 ("dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe PHY")
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
