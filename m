Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92847C83F1D
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 11:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5rvm6Hhdf+zVvYqG1wplq1T7jn4bv3naea02lhlR2wU=; b=wcnjP9Ym8jJAJH
	OqCOuVeKTNBZWF3JRx+Xba810QN94qKKMZkXC89IUng9tHL/5GiVYlRdGlXwQANJhr8t7VdOxkids
	g9lvKhQEPendliI5yfmnYpSxUhqZTeJu8Rr8JnrKbFK94gZvS8i57APfT4g2zbwI7WXAnPosyrgP1
	uX/ijiQUUeTKS8sVj3kNBFpxt5cNuiHUktOvcSawcqYozdI/h+eoMkMd0Qjf2/0cFOBkADaaB+as5
	Pd8rBES5YV7/Ha8Ya/2lIV7TbCvIW0CEPeGQSPlJaOGuK3urBPPAHUBOeJ8kwkzGO+isD2uOz+q5k
	laPCo2Hh1VziMpBASTNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZpre-0000000BgeB-1X7y;
	Thu, 10 Jul 2025 11:54:58 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZol8-0000000BWCm-31j6
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 10:44:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3000F5C63F0;
	Thu, 10 Jul 2025 10:44:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C862BC4CEE3;
	Thu, 10 Jul 2025 10:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752144249;
	bh=U76VKBh/7GQv+j5gpHmYAGV6Z/RI8ugyAsaX8iKw2u0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i8BjSbPexN3Pw3J/0hr69DDRXMjEsyoRw7xtQcuO83Y/21Fh8KGc0i2H1oh/s6Eai
	 sF9TPOHJoRBUPT1booxVByBHXGf8ghAfsIcWmhjdc4M+bKjbvyqGJGmG/9iPUd7aUF
	 Zr+p9zeH6XnUv+8RsTTqB5xd9tkZVlu/gN8enDulVMiD9MrmCPqIumzly4ibm57WZb
	 +eQMYAMwBVa84JaW4PQlcvDgjqrJmtQh9anm3kD12LWftUBJWjS8Jb1B/+iFZ6fy7L
	 bYMTHi8+zNzQysY3sA1Q7WGXQe9KUfLIvfavIQGNPvcbLfwBKr6m4LdO9FctX+QxN7
	 N52eelHZaKM7Q==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uZol0-000000008Ko-0AXu;
	Thu, 10 Jul 2025 12:44:02 +0200
Date: Thu, 10 Jul 2025 12:44:02 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
	lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
	johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
Message-ID: <aG-ZcuJXISyIZavv@hovoldconsulting.com>
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
 <20250625090048.624399-4-quic_ziyuzhan@quicinc.com>
 <25ddb70a-7442-4d63-9eff-d4c3ac509bbb@oss.qualcomm.com>
 <aG-LWxKE11Ah_GS0@hovoldconsulting.com>
 <4f963fcc-2b92-4a01-93a4-f0ae942c1b6f@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f963fcc-2b92-4a01-93a4-f0ae942c1b6f@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_034410_797899_B841A53E 
X-CRM114-Status: GOOD (  16.11  )
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

On Thu, Jul 10, 2025 at 06:24:57PM +0800, Ziyue Zhang wrote:
> 
> On 7/10/2025 5:43 PM, Johan Hovold wrote:
> > On Fri, Jun 27, 2025 at 04:50:57PM +0200, Konrad Dybcio wrote:
> >> On 6/25/25 11:00 AM, Ziyue Zhang wrote:
> >>> gcc_aux_clk is used in PCIe RC and it is not required in pcie phy, in
> >>> pcie phy it should be gcc_phy_aux_clk, so remove gcc_aux_clk and
> >>> replace it with gcc_phy_aux_clk.
> >> GCC_PCIE_n_PHY_AUX_CLK is a downstream of the PHY's output..
> >> are you sure the PHY should be **consuming** it too?
> > Could we get a reply here, please?
> >
> > A bunch of Qualcomm SoCs in mainline do exactly this currently even
> > though it may not be correct (and some downstream dts do not use these
> > clocks).

> After reviewing the downstream platforms, it seems that GCC_PCIE_n_PHY_AUX_CLK
> is generally needed. Would you mind letting us know if there are any platforms
> where this clock is not required?

Thanks for clarifying. I was think of sc8280xp where the downstream dt
did not use this clock (and therefore neither is the dt in mainline
currently). Looking again now it seems that clock may not even exist on
this platform?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
