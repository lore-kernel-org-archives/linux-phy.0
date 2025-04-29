Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 087FBC369DC
	for <linux-phy@archiver.kernel.org>; Tue, 29 Apr 2025 08:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f20FCH4y9eL3LZE/aejkRJ/YCFXi1047c0BFCfuYU/E=; b=aRBSoDkoUUlZgG
	IN2zXNfaNcG4vs8yQUJ1dUWIG57893SqjNfU0/TtZdw5hJDgMno91T0qWkXoLkUTy6d1i3Nmglee2
	kjDdnR2LDrCgf2+CXSXjRaDBL9bGZgXaA2keQ5UYsTJtV50oM1w5N4stl0sRkS3RLERTR2ToGxr+4
	X9JNx1k20VgV5ixNlbZyVbEJcG15G/1W3oKVXEO46o1yT5s2K/o/fgCDpsBnE4VLxzs509+5CEjl9
	bqkLgg+TVlkaPz0HWyS5BTgLvFne+Zl4D8FmQvlD9B7LVJtLpMtKfyRExyoztp59NLnMv5Z0QKSrA
	BWkP5sQSe/ZIhpAbM2kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9gcz-00000008zed-2gQB;
	Tue, 29 Apr 2025 08:47:45 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9gcz-00000008zeM-0V5p
	for linux-phy@lists.infradead.org;
	Tue, 29 Apr 2025 08:47:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8A8A268434;
	Tue, 29 Apr 2025 08:47:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEFE5C4CEED;
	Tue, 29 Apr 2025 08:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745916464;
	bh=0JH0Z7oTPN0PihVowtifv52lUTa+jlkr/MLQBRnPoFc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bwu95V8Jxq0ApZ/A8MUaQ76OxAAD8CpamSIc8KQkl61x+99eL7RVBgCEw4bqJUphg
	 t6QF65fNipJ00S0Kf3VhVkEUWnUpK8riojOzxwlo6jeJCpahPvyOC3GA0Jc5cDJBJr
	 vF1ZNdDh5oVjXNtCab0Y/1P+bgZ3d7US27chWydRXBVDwIgm5scEWGtqZqgZpPZFPj
	 ncWFnLKXoYlGO16/XznYJMYEKZzGHUQVVyzG87F04CF/4g8I4eT464a3Sh3cd6dprp
	 Ofgw43I7VZid7Ly6zlTSiloN04N368hqq3KMzmNgSBHBrlUbCzabz3iz2Rs6GpTc/p
	 rY3r8f4MJ+SuA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1u9gcz-000000008FN-10kp;
	Tue, 29 Apr 2025 10:47:45 +0200
Date: Tue, 29 Apr 2025 10:47:45 +0200
From: Johan Hovold <johan@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: qmp-pcie: drop bogus x1e80100 qref supply
Message-ID: <aBCSMaZ7_tl-dEkB@hovoldconsulting.com>
References: <20250429075440.19901-1-johan+linaro@kernel.org>
 <f44722a5-25b5-409c-baec-13d19af61d43@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f44722a5-25b5-409c-baec-13d19af61d43@quicinc.com>
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

On Tue, Apr 29, 2025 at 04:24:19PM +0800, Qiang Yu wrote:
> 
> On 4/29/2025 3:54 PM, Johan Hovold wrote:
> > The PCIe PHYs on x1e80100 do not a have a qref supply so stop requesting
> > one. This also avoids the follow warning at boot:
> >
> > 	qcom-qmp-pcie-phy 1be0000.phy: supply vdda-qref not found, using dummy regulator
> >
> > Fixes: e961ec81a39b ("phy: qcom: qmp: Add phy register and clk setting for x1e80100 PCIe3")
> > Cc: Qiang Yu <quic_qianyu@quicinc.com>
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---

> We have QREF for each PCIe port on the X1E80100, all of which consume 
> the regulator L3J. Although the PCIe PHY uses QREF indirectly, this 
> creates a dependency, right? 

The PHY binding should describe the direct dependencies for the PHY, so
the addition of qref for sm8550/sm8650 was probably also a mistake.

From what I could tell there is not even a one-to-one mapping of qref
supplies to PCIe ports, but perhaps you can provide more details on how
this fits together here?

> If PCIe doesn't vote for it, how can the 
> PMIC driver decide when to disable L3J during system suspend or runtime 
> suspend? Is there a chance that L3J could be disabled while PCIe still 
> requires it?

If the QREF supplies can be turned off, you may need to mark them as
always-on until things are described properly. But whether that's needed
is not even clear at this point:

	https://lore.kernel.org/lkml/17a1a4d9-fdc5-477a-bf4e-91cae5a62479@oss.qualcomm.com/

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
