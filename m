Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6DB3C27C50
	for <linux-phy@archiver.kernel.org>; Tue,  4 Jun 2024 12:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YFZB07LALkxy+8TZpMfsEMhO3leYeekVv8eEegDVCO4=; b=U4BBP6J3cjqxIG
	UzZ3aa/U/DcFooC2t+lA/pEDSKWpX5mxOtdv+b0C13emRlxTWFeTxCF0gwGOSAM25/O/RmJGndx+f
	bAYA4N5QPv8Tp/xg6cNNYIJIq5WDtKuNHz2dgG0PZ51dKXTDddSGtcX/YGXT2JSuf/R7xtuHJHaHQ
	V4uTORpZetkbtuwIsYAc9cJMhZY6+UFBLMgOmbcedhAmnW3wOonASIh2+K8ivgnv+AULoXxuNf4Eg
	r6Ca8y+S9uZ1IhATApuB1xWKRjEFKguBClO7obENjZR4E0MHj0/jGtJRUkUdS1G5tKOZbZ14juo5U
	SZRxireTtVFz+9Fm+/iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sETZi-00000002M3j-1sGg;
	Tue, 04 Jun 2024 12:47:38 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sETZe-00000002M0N-3uhb
	for linux-phy@lists.infradead.org;
	Tue, 04 Jun 2024 12:47:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6D7F0CE0E76;
	Tue,  4 Jun 2024 12:47:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFCBDC4AF09;
	Tue,  4 Jun 2024 12:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717505251;
	bh=rdj7NjUA2e8kdTVCfbHCdHY3DC1PZ42LL1L5p9ecFaM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cssoYtmIOvOjotRBfBJ8ooWx6Q+a/lrXI3INmmSN55NAp8Et+jvl8yaUeqAbexC5o
	 eurd7z6rAtBH7zxOO4XfvWjn0pY0EnNtyOoqJpA7Voq90KclyxV77FhU8xsVSiaIqf
	 sAp/k0ylo48DouSSf9i/PI2RzMihI3Fy/FyRBbvqspMvDZjz3cV0zcKa2qrBMa8wTj
	 oqNEr8ihwsO8Ehz1TuxHIajyKbTdM2pwGoj3m+U1wZCy398532ERBh2EfxYWJ3pu99
	 rvrKDtjwMDt11tm5/izgU1k/daYIL9VRfKdNI+ShrtY42bGpUYTjhu6gcaKEiPndhT
	 /x8NHNhpzBwhA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1sETZa-0000000080f-18hx;
	Tue, 04 Jun 2024 14:47:31 +0200
Date: Tue, 4 Jun 2024 14:47:30 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add X1E80100 Gen4 4-lane mode
 support
Message-ID: <Zl8M4mPjSjWxrSkN@hovoldconsulting.com>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
 <20240531-x1e80100-phy-add-gen4x4-v1-2-5c841dae7850@linaro.org>
 <Zl27FJVU_YHokCiD@hovoldconsulting.com>
 <Zl8H0KOrfuF91kpZ@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zl8H0KOrfuF91kpZ@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_054735_181979_63D6F82A 
X-CRM114-Status: GOOD (  15.93  )
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

On Tue, Jun 04, 2024 at 03:25:52PM +0300, Abel Vesa wrote:
> On 24-06-03 14:46:12, Johan Hovold wrote:

> > I tried this patch along with the DT changes and the link on the CRD
> > still comes up as 2-lane:
> > 
> > 	qcom-pcie 1bf8000.pci: PCIe Gen.4 x2 link up
> > 
> > so something appears to be wrong here. (I noticed the same with your
> > next branch last week.)
> > 
> > How did you test this? Does the link actually come up as 4-lane for you?
> 
> This is the PHY part. The controller needs some changes as well.

Are you sure? It wasn't needed on sc8280xp (except for updating
num-lanes in DT).

> Yes, as of yet, I'm not able to bring the link up in 4-lanes mode.

Thanks for confirming.

> This however doesn't mean the PHY sequence is incorrect.

Not necessarily, but it means it hasn't been fully tested and that it
could potentially be the reason for the failed x4 link up.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
