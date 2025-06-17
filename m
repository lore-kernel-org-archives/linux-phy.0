Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C82FFC71157
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 10:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hg9CoNA9egi6g5h/+v1Dha7E2QFjA8Bcm0Z1Hnk/7z0=; b=zJoofFhSc9vL0c
	YsrqGd13tq66AnPYhmzt2vxKs5s3jvdUx5OlKdVerN2DTw+68F5jhamz/rxpLAVJgjxtUYIVdX8JI
	FwjgDduvX+szlcxT4T93sp12QVIgkCPEwaeKWVcN0eO6An+J3tCRb3haGpK7o0Hc3eRKGLlleJNCl
	6d9S6/agGE5TddySrwx+VzsW/Kl46IYHg3+0Y9UPZQNYhbYy+iV0XVsRuaqfb39bo8w1vzG7Hqipg
	hAm4a+VwZ55kfz6QzpfwlO7C94kdruzdBmPtRj+o7DnRxb7jSPrg1TCYsN3u5FzEYWXoNy1iooNKj
	O8uD5V4/ZroiZMysWNAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRTZY-00000006vQ2-1rzD;
	Tue, 17 Jun 2025 10:29:44 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRTQd-00000006tdU-1WTj;
	Tue, 17 Jun 2025 10:20:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D4AB35C6582;
	Tue, 17 Jun 2025 10:18:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0ECE7C4CEED;
	Tue, 17 Jun 2025 10:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750155630;
	bh=ShE75AzzcjMtFveguCfs50L+tbA1hP344vJlSCdWg5Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rHED9/FG0fmuUoq4vdCO8uCeFLdJ/PDuIFbE+dRFUsFpqyRI/eXUdtCiRQEsLQOCa
	 GZGy22OTcbJoYqdPgheZ0jMD13xyWzgDY0Nu89PNkdOKVbBYkIwq4pchZni+NbvhQZ
	 xV2l+kCNBEYlEM3NS9TFCrbsXZhidBtGMcfK+FpYmTL3mbF9QuxwFj9UvH9NMv2I+A
	 DaEjWaCnJlmnl9PX8/w4c8pd1V+nRvYjJkVc9kOFVjEKEBiq65UVx+/t2ye+6RIsXo
	 +PZS1E+CnK0OqRTiimOV/WSQ3qxVxprHnscyq+5t8xpiD038xAt0nNZf+O5HjYCSti
	 X0bk1Uw4f/IBA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uRTQZ-000000005RT-0bGw;
	Tue, 17 Jun 2025 12:20:27 +0200
Date: Tue, 17 Jun 2025 12:20:27 +0200
From: Johan Hovold <johan@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
	will@kernel.org, linux-arm-kernel@lists.infradead.org,
	andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org,
	sfr@canb.auug.org.au, linux-phy@lists.infradead.org,
	krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
	quic_mrana@quicinc.com, quic_cang@quicinc.com,
	Johan Hovold <johan+linaro@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v4 5/5] phy: qcom: qmp-pcie: add x1e80100 qref supplies
Message-ID: <aFFBa9ZESDheGAhr@hovoldconsulting.com>
References: <20250604080237.494014-1-quic_wenbyao@quicinc.com>
 <20250604080237.494014-6-quic_wenbyao@quicinc.com>
 <aEBh2xHu3QDtUrxe@hovoldconsulting.com>
 <aELATuLue/Vs8lHz@hu-qianyu-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aELATuLue/Vs8lHz@hu-qianyu-lv.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_032031_497295_8E15CF3D 
X-CRM114-Status: GOOD (  26.06  )
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

On Fri, Jun 06, 2025 at 03:17:50AM -0700, Qiang Yu wrote:
> On Wed, Jun 04, 2025 at 05:10:19PM +0200, Johan Hovold wrote:
> > On Wed, Jun 04, 2025 at 04:02:37PM +0800, Wenbin Yao wrote:
> > > From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > 
> > > All PCIe PHYs on the X1E80100 SOC require the vdda-qref, which feeds QREF
> > > clocks provided by the TCSR device.
> > 
> > As I just mentioned in the thread where this is still being discussed:
> > 
> > 	https://lore.kernel.org/all/aEBfV2M-ZqDF7aRz@hovoldconsulting.com
> > 
> > you need to provide a lot more detail on why you think modelling these
> > supplies as PHY supplies (which they are not) is the right thing to do.
> 
> TCSR_PCIE_xx_CLKREF_EN is not always in TCSR, they're custom
> bits to enable pieces of the distribution network. We always classify them
> as "TCSR" even though they're not always in that module.
> 
> So even if we put the QREF supplies in tscr device tree node, it still
> doesn't describe the hardware correctly as the hardware itself does't have
> a unified structure.

It still seems like a better approximation of the hardware.

> Since the TCSR_PCIE_xx_CLKREF_EN is only required by PCIe, why can't we
> model these supplies consumed by TCSR_PCIE_xx_CLKREF_EN as PHY supplies,
> treating PCIe PHY and TCSR_PCIE_xx_CLKREF_EN as a whole.

First, you are only adding one qref supply to the PHY binding, but
apparently there are two or three supplies needed per refclock on X1E
based on the mapping you provided below.

At least on the T14s, these additional qref supplies are identical to
the "phy" and "pll" supplies currently managed by the PHY driver, but is
that always guaranteed to be the case?

Second, the supply properties are supposed to reflect the actual supply
pins on the SoC, but the mapping from the qref supply pins to this new
"qref" supply cannot be inferred without access to internal
documentation. That mapping could go in a driver with a new binding
describing all of the qref supplies, which an integrator can easily
look up from the machine schematics. That driver would also handle any
ordering constraints between the supplies.

Third, what about the other TCSR reference clocks? On X1E there are at
least eleven that besides PCIe are used for USB, eDP and UFS. Don't you
risk disabling a qref supply underneath these drivers as well? A
complete mapping in a clock driver would take care of this too.

What does the mapping look like for the remaining TCSR clocks?

> > Also please answer the question I've asked three times now on how the
> > QREF supplies map to PHY supplies on X1E as no one will be able to use
> > this binding unless this is documented somewhere (and similar for other
> > SoCs).
> >
> 
> PCIe3,
> VDD_A_QREFS_0P875_0,
> VDD_A_QREFS_0P875_B,
> VDD_A_QREFS_1P2_B,
> 
> PCIe4,
> VDD_A_QREFS_0P875_B,
> VDD_A_QREFS_1P2_B
> 
> PCIe5,
> VDD_A_QREFS_0P875_2,
> VDD_A_QREFS_0P875_B,
> VDD_A_QREFS_1P2_B,
> 
> PCIe6
> VDD_A_QREFS_0P875_A,
> VDD_A_QREFS_1P2_A

Thanks for providing these.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
