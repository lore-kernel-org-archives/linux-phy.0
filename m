Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26048C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 07:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SvXixAvYy1tAcJX009nb6DXtnQJtBbwyssihOWqR/Gc=; b=jVCbwMC5XcjPox
	yBjpP0NsklxLHW3XAnu1QBUaG/i9FFIEitvXQ1qjqSDCl4rDNhhdtH9UQPR8zUjkPUX98k9qcP5Yw
	f0nPmwpjh5MRbQIwkmRDyLLbxjkzc1OX2ivMK4f24+WGAnCv/hOh0Do51ullQSDwfbAC5MbzWxckq
	BtYG8NmGzQOboXI4kLQYUhImGkw+eaPReYa2VGUrXiWwpRHQaRJWfv2NF+rOlYzqpflLlivUxnoaV
	OOW7Z8hXiASbYyfHft+rbHPb6kCO7G70bTduO1vfNgVHtXkvkRdNYsgTLbdV32thO4HPrwOKr5OQW
	MbCAX0gF7wqgsRkeY1Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTJ8-005Jyv-1P; Tue, 07 Jun 2022 07:07:18 +0000
Received: from smtp1.axis.com ([195.60.68.17])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTHu-005JNQ-7F
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 07:06:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1654585562;
  x=1686121562;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jWbsuIHrJN+5cFdPKLPeOfPe1+7UnUxLU2zZVZpE3PY=;
  b=iZKzIadM4Yt8N9jf5HhWmZtoLR0EZbD1xCCPt3dSubeKDlDQPd41qIlE
   XjTdTrMCxxnDwDUKFZ1uvjz/IurOEYE+WNPtSg8GGnYPvxkPniXfEQDz6
   umNZ8/voOoDc4wGmN8i6PMU416Nkq7/nbY3jPzFczB3S3OhegPQzreBMQ
   8T6DjiXvxRxyDr+SnQByf29lvo/N+qM4A5EznT7AYPGchzxynOYG5YXaJ
   gwmfGhipgEu5yqWxHFpwxzcTcgMcw9Hp7GAyle9jU80/oy04LVp6qNd99
   Kk37GXjhQGg1ziEIvYNjrcoJtd4FPZ1IJOJ9WCtOd4XF4aMS8u7Ws/bwZ
   A==;
Date: Tue, 7 Jun 2022 09:05:58 +0200
From: Jesper Nilsson <Jesper.Nilsson@axis.com>
To: Bjorn Helgaas <helgaas@kernel.org>
CC: Wangseok Lee <wangseok.lee@samsung.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Jesper Nilsson
	<Jesper.Nilsson@axis.com>, Lars Persson <Lars.Persson@axis.com>,
	"bhelgaas@google.com" <bhelgaas@google.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "lorenzo.pieralisi@arm.com"
	<lorenzo.pieralisi@arm.com>, "kw@linux.com" <kw@linux.com>, linux-arm-kernel
	<linux-arm-kernel@axis.com>, kernel <kernel@axis.com>, Moon-Ki Jun
	<moonki.jun@samsung.com>, Sang Min Kim <hypmean.kim@samsung.com>, "Dongjin
 Yang" <dj76.yang@samsung.com>
Subject: Re: [PATCH v2 5/5] MAINTAINERS: Add maintainer for Axis ARTPEC-8
 PCIe PHY driver
Message-ID: <20220607070558.GZ18902@axis.com>
References: <20220603024347epcms2p48d01596e10b251bec077581a6c609c48@epcms2p4>
 <20220603160913.GA80202@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220603160913.GA80202@bhelgaas>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_000602_616626_BE2940F6 
X-CRM114-Status: GOOD (  12.79  )
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

On Fri, Jun 03, 2022 at 06:09:13PM +0200, Bjorn Helgaas wrote:
> In subject:
> 
>   MAINTAINERS: Add Axis ARTPEC-8 PCIe PHY maintainers
> 
> to put the important things first so they don't get chopped off by
> "git log --oneline" and similar.
> 
> On Fri, Jun 03, 2022 at 11:43:47AM +0900, Wangseok Lee wrote:
> > Add maintainer for Axis ARTPEC-8 PCIe PHY.
> > 
> > Add Jesper Nilsson <jesper.nilsson@axis.com> and
> > Lars Persson <lars.persson@axis.com> as Maintainer for these files.
> 
> s/Maintainer/maintainers/
> 
> > ARTPEC-8 is the SoC platform of Axis Communications
> > and PCIe phy is designed based on Samsung PHY.
> 
> s/phy/PHY/ to match other uses.
> 
> Rewrap all of above to fill 75 columns.
> 
> > Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
> 
> Obviously we'll look for acks from Jesper and Lars.

:-)

> Also would be good if Jesper explicitly acked the fact that his
> existing "PCIE DRIVER FOR AXIS ARTPEC" entry also matches the new
> pcie-artpec8.c driver:
> 
>   PCIE DRIVER FOR AXIS ARTPEC
>   M:      Jesper Nilsson <jesper.nilsson@axis.com>
>   L:      linux-arm-kernel@axis.com
>   L:      linux-pci@vger.kernel.org
>   S:      Maintained
>   F:      Documentation/devicetree/bindings/pci/axis,artpec*
>   F:      drivers/pci/controller/dwc/*artpec*

Yes, both the ARTPEC-6 and ARTPEC-8 models of the DWC PCIe drivers
is intended to match this entry.

It can be made explicit if that is preferred.

/^JN - Jesper Nilsson
-- 
               Jesper Nilsson -- jesper.nilsson@axis.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
