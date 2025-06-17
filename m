Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8849CC71136
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 10:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9rc3nbQPnGsGPmYf8TwUHSJx1cS2mG3KuXy08u6cP8=; b=hkeY8EJM6Hjln2
	JpKf9tD8PPAnRhEUHLCbV/4RzzxZJnB+lyUVaBH2aBbJrI8QdHGnGoejiKfJEZLr8hVHdxiHn6rlz
	Z1a2dbXbN3W16ZLdwnK6fd8qhgc8h+TYI/PYQ2JdvntHYomS4Pgqk2niZueJ1yt83TCt0TDiQODs8
	6+GtenXucXLaOazmE6e8GXvdHcwptjnmhwkYW/gw4B6Q8xI2XEUejUyWpBzaTnIlYbfrCB2c2eX7Z
	SYpJddZqE6mdZUw1A5yggYJwb+6lh2lKtMXCJArSqnxvNso+eD6BCi2F9Ta8D6izSzHDnCUC2katE
	uwZHcrjhp4B/7ewA98SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRTgL-00000006wUI-1HkZ;
	Tue, 17 Jun 2025 10:36:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRTWP-00000006upr-3p1H;
	Tue, 17 Jun 2025 10:26:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BD2895C6368;
	Tue, 17 Jun 2025 10:24:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F16ABC4CEE3;
	Tue, 17 Jun 2025 10:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750155989;
	bh=7I8alF2ILUvUHx+QjI3iVi8WpDwqkJW3CHPDKoHRIV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j15v7lxKclzCiL2kWBBMhwCLbNxZHB9h1DwKXVFYW2bf20nEnJj23/Nxu9Nrarp+X
	 Vt503sC1Q0RU3twD2EnRj+FIiuyS/L1rC3HT7We7ZdmkEH++lhjBEWhKNKkfm8Sdb+
	 ptdvNaUStMXEAbofOxa5W5nN56HUNsq4oajsWy9sv9IoLhZE8cCZz2RbxxhSMK10on
	 sI/9SRINHVq9V4dFBCoZ8/DyuHrJaJsSIVIIh5jHqXrEZsNtFJ9jxFq/FLRPYIWrPl
	 N+s0w79Om5DGl+f8PnjsX79EqSdK/DpEZayo3NfKIfGC6lSGCf7D22nm9uTc7KMaIt
	 rOHmdRyQWeTGg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uRTWM-000000005Wb-3JzH;
	Tue, 17 Jun 2025 12:26:26 +0200
Date: Tue, 17 Jun 2025 12:26:26 +0200
From: Johan Hovold <johan@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
	will@kernel.org, linux-arm-kernel@lists.infradead.org,
	andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org,
	sfr@canb.auug.org.au, linux-phy@lists.infradead.org,
	krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
	quic_mrana@quicinc.com, quic_cang@quicinc.com,
	qiang.yu@oss.qualcomm.com, Johan Hovold <johan+linaro@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v4 5/5] phy: qcom: qmp-pcie: add x1e80100 qref supplies
Message-ID: <aFFC0pngCDIYkDvD@hovoldconsulting.com>
References: <20250604080237.494014-1-quic_wenbyao@quicinc.com>
 <20250604080237.494014-6-quic_wenbyao@quicinc.com>
 <aEBh2xHu3QDtUrxe@hovoldconsulting.com>
 <296a9ab8-04e3-4623-8246-c8fd3fca8d98@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <296a9ab8-04e3-4623-8246-c8fd3fca8d98@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_032630_037023_68E6E077 
X-CRM114-Status: GOOD (  26.44  )
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

On Sat, Jun 14, 2025 at 09:59:13PM +0200, Konrad Dybcio wrote:
> On 6/4/25 5:10 PM, Johan Hovold wrote:
> > On Wed, Jun 04, 2025 at 04:02:37PM +0800, Wenbin Yao wrote:
> >> From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> >>
> >> All PCIe PHYs on the X1E80100 SOC require the vdda-qref, which feeds QREF
> >> clocks provided by the TCSR device.
> > 
> > As I just mentioned in the thread where this is still being discussed:
> > 
> > 	https://lore.kernel.org/all/aEBfV2M-ZqDF7aRz@hovoldconsulting.com
> > 
> > you need to provide a lot more detail on why you think modelling these
> > supplies as PHY supplies (which they are not) is the right thing to do.
> > 
> > Also please answer the question I've asked three times now on how the
> > QREF supplies map to PHY supplies on X1E as no one will be able to use
> > this binding unless this is documented somewhere (and similar for other
> > SoCs).
> > 
> > The fact that you so far have not been able to provide an answer
> > seems to suggest that these supplies need to be managed by the TCSR
> > clock driver which can handle the mapping.
> 
> To emphasize, we apparently can't do it, because there exist IPs
> where the QREF *ref clock* is not expressed through a bit in TCSR
> (which we interpret as TCSR_CC), but the *supply* for that clock must
> still be described somehow, as it obviously needs power.

Are you saying that the refclock cannot be gated? Doesn't that mean that
the corresponding supply needs to be kept always on as well?

> To add to the mess, it may be that there is more than one supply
> per reference clock required (which is not necessarily an issue
> when the driver takes care of it, but something to keep in mind).

For PCIe on X1E it seems there are two or three qref supplies, and since
these additional supplies correspond to the supplies currently managed
by the PHY driver it happens to work, but I'm not sure if that's
guaranteed to always be the case.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
