Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24DF5C83F1D
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 11:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DfYhEqSgJIKZvRHH6XZXIaogad8AupGQUfXpPAbo+70=; b=uvSeYWzbFHj/Up
	bhE7rerQLxBVuX8sceVOSEuxLykt5v70f3bZGOjQUMRp7J8hjAH5moeI73UQ9wDEK36ObWgxBMavd
	LKClaAooHvgErQsIDVB226DHLTTkL2nAf/Lm6xhQ0wRWHZsABipDJn5qPU3Exf8ljHqZVBCTgGos7
	nIXVn8vi1N0WRDxc+qxj4Ey3X138u7+pnKPV7GOnmxk+1L/fvmnQ3k5Wl42PEfEWmMMAUarWX0IIw
	ldb935P4H+znY3KlExxVJfsbRli8GMIe6uleFLcBZ2eexX2DmzZ3fc1Ccz0Iu6TXxfkFS95tMS54m
	oyQOcf63eJB1eESwTORA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZpGM-0000000Bblg-3pV2;
	Thu, 10 Jul 2025 11:16:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnoy-0000000BNMa-1SnW
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 09:44:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 644615C6C0F;
	Thu, 10 Jul 2025 09:44:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01BF7C4CEE3;
	Thu, 10 Jul 2025 09:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752140643;
	bh=OU/QsfAeucBR7oxpGsODCpofrzQWdr3cYK9kvHOY4ZY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pvzNd9W7F14LZ3NMVuHlyMTdYHIrwMlvFjwNtGXVr4y167/5oI1u7CcdXC/sjHx71
	 hUQtWyFvsO9ZuR2nf10JExVRH+94fBSNGCHWwJ+42/sl9pTzeEnvcGMoFQY2k2JRu0
	 z4SqFNbCK1nBpztddMsK1cV97KkcJz/xxpxctuMFxXGDMP00Oe3P+r5z7Z7QSBMuiH
	 BmPTJaERj5540O+cAS0L8YzdbfBiwglRH+jR470UksWJGPCZApPAwTlygv0mdGphjj
	 kcDiEe0VAJsfOx42rnaiIei/vb6JzitZnmxk5ceHRQ/S+cfYqqpZnF9U2/gGTecjCb
	 tUdHzPBAIN1yA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uZnop-000000007hu-3HaY;
	Thu, 10 Jul 2025 11:43:55 +0200
Date: Thu, 10 Jul 2025 11:43:55 +0200
From: Johan Hovold <johan@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Ziyue Zhang <quic_ziyuzhan@quicinc.com>
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
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
Message-ID: <aG-LWxKE11Ah_GS0@hovoldconsulting.com>
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
 <20250625090048.624399-4-quic_ziyuzhan@quicinc.com>
 <25ddb70a-7442-4d63-9eff-d4c3ac509bbb@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25ddb70a-7442-4d63-9eff-d4c3ac509bbb@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_024404_432464_A5F89A5E 
X-CRM114-Status: GOOD (  10.72  )
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

On Fri, Jun 27, 2025 at 04:50:57PM +0200, Konrad Dybcio wrote:
> On 6/25/25 11:00 AM, Ziyue Zhang wrote:
> > gcc_aux_clk is used in PCIe RC and it is not required in pcie phy, in
> > pcie phy it should be gcc_phy_aux_clk, so remove gcc_aux_clk and
> > replace it with gcc_phy_aux_clk.
> 
> GCC_PCIE_n_PHY_AUX_CLK is a downstream of the PHY's output..
> are you sure the PHY should be **consuming** it too?

Could we get a reply here, please? 

A bunch of Qualcomm SoCs in mainline do exactly this currently even
though it may not be correct (and some downstream dts do not use these
clocks).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
