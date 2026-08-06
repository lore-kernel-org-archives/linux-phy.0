Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12486C56205
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 15:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PqIm0YlIVnwYGDegCUrrd09b0OKWIiVc4vZUKRZPj4=; b=lyL5mTvmPbGgCs
	h3vWejw/GTH/d6kSYGRGo1oWwDA1gsgilI0DlMxMj0DuESV1hLkv+IHLExwl3DXAJ9i3dyVfXvipe
	8ep3T1PrSBK/vu3UnxWqs9MuTTLtzGoBfsQOZWz6XNLv0SJ0sbL4UQmCpLYKJ+H0PTDRGJq8KQvAv
	9K5gTmVX6ed7yvFubfpK9IS2rNd5zmgsoJk1cczljKKoIfz+oAilGcXO2EXmNcQkCN+QKcPT+h2FD
	FUWwJTW0X7QhW3xuPbSR+ULRhkon2nwUr7Zatl+2EmPQCwOrIFpr9bUgE8ijDn+ZZwFuyO5di/pB7
	kYA6aUg8ylxCrvZgTmmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws08T-0000000672o-3AEU;
	Thu, 06 Aug 2026 15:35:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws08S-0000000672e-49TM
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 15:35:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4A43A43C7F;
	Thu,  6 Aug 2026 15:35:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E0BE1F000E9;
	Thu,  6 Aug 2026 15:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786030556;
	bh=rTALtVCTWiqqvu2b5JHcdJ0kQIZASw+ob8p+ahO3JL8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fTvH/wTS3GJdsfzZSBY8DNgaOPK8tS0wAVq6u4Ri99+UQNrVgSC0win7XrCqGcdBn
	 LfH+MjLuTxBTL0anHAud5qifSlhxn6C7S//Y9ukufU8AOxMhSO3DwQA8TLx/tndKzn
	 jsta7oksmM2CoBwh0QwB130sKtxn8ILRg7A7fwqDZk9GXHwipYqxhAUVjJwBUwUeeC
	 7wYZdRcp/OE8BRgsSS/bG2rCDntdMTtW2RxpPPqNzxlxLcIvdHIgYOQ7kHa+KFstP1
	 F0Ttg7FtNheDGfudK53BzDbJRkHU3dNbEA3KOiDYbtw8uU8nl6FOhsu29yvNZ9aC+0
	 JiA7p8DV0tVnw==
Date: Thu, 6 Aug 2026 21:05:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: usb: qcom,snps-dwc3: Add Hawi
 compatible
Message-ID: <anSp2EbXtakSWvmq@vaman>
References: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
 <20260803091441.3040830-4-mukesh.ojha@oss.qualcomm.com>
 <anReh4gzTjkD4u7c@vaman>
 <xd7gii4lmzv5xm2xylt53lnp7l5clerjxrei5cdu24mbdktzaf@do5ozmvodv3w>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <xd7gii4lmzv5xm2xylt53lnp7l5clerjxrei5cdu24mbdktzaf@do5ozmvodv3w>
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

On 06-08-26, 17:24, Manivannan Sadhasivam wrote:
> On Thu, Aug 06, 2026 at 03:44:31PM +0530, Vinod Koul wrote:
> > On 03-08-26, 14:44, Mukesh Ojha wrote:
> > > From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> > > 
> > > Document the Synopsys DWC3 USB controller found on the Hawi platform.
> > 
> > This one fails on phy/next :-(
> > 
> 
> This one is supposed to go through USB tree. Too bad that cover letter didn't
> talk about it, but it should've been sent separately in the first place...

Yeah my bad as well. I should have checked.

Good news 1,2,4 applies :-)
Should be in pipes after my builder finishes... Later tonight

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
