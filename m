Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2902FCA0EE4
	for <linux-phy@archiver.kernel.org>; Sat, 23 Aug 2025 11:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2DTmQvIpIQUuOlc5PC1+xLxhl15pNAza0DP71KJJrw=; b=wC3+WktwDK0en2
	RfnmNTx7fhHgVAARi7Getr8Aao4gltmkBhqes1mHvBUMzXs/3PhVjJw13qeAK8GTTh7DXEQzrGmnf
	jgCk91249qdTx25rUUxBlpHR7PP0QxDSIXbYKu+T4ipVGnLzKLhfnEooDimM4Bc4G+yAVHB4eJ+lS
	CpGKLuubX+4IZo3Os5H8dwRz16eD7fDgsfZ+jEIsYjg0/+Qib+sWwKE4ayYh59aa67oFlGzT95h/c
	svkZsttYon7U0VDe4YlxzO0aveL8pYtBu9padVLClhFqZtpK6dmbedtqZWGltzljFjwwevpaHnzlF
	P5vglbqg4p76Gs8u4ckg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upmgD-00000004iXP-31Lw;
	Sat, 23 Aug 2025 11:45:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upmdb-00000004iSR-1P3N;
	Sat, 23 Aug 2025 11:42:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=E51kPBdhUQijxtoJw6uBFTsKl7ZXyNBPSRKE2x+YTGo=; b=YuePUSqDPNB6PDOFlArFjgcP/V
	GcpNgwvidd7hbBYpuMA+UTUMuFCHCI6aRdz/NiRKqZ/uDrYHCVD78fFUx1J/Yc6OpxzYY+dshP5SK
	caw3M8ZoFHWd7nlHfwWztgLga6wrTT32wO4eY3pG72ZZxrhYtgAhRD3RBgoTCN9VdJQXBM0P52fvf
	7kEFW12/d5VidmFiyh8UXDT7CuVmPFz6xx9pvz6TEjR3mvMCy5Uq6mFz/tAJGH2vTkJzCnaf0gFe4
	D+J8sGpd6uby8pDwl2g7q6GadRymkFy7WjT0m99Mxb2X+RttvhJXZfJlGBBI1s18KanmhP1Npj2a4
	Q03PuAwQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upmdX-00000001Qvy-4Abv;
	Sat, 23 Aug 2025 11:42:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EC6E55C3EF9;
	Sat, 23 Aug 2025 11:42:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0C4DC4CEE7;
	Sat, 23 Aug 2025 11:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755949335;
	bh=Z4TA0OORd5nq/VOXrmsLKOQ3PrHPQ4mtK8elrLgVns0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AjNwp0ui/uADg+X4ucpgn1s6FF8CXSUBXc/Jz7Ak4Z+Q3bcm0tDi9nuRj0ves0dwH
	 c34w/S5I1jgXInE96uhXZeOkkNwvuyxGfVIz9aEJmJRIfWmgbsUDHAOfPOIxfiZzLW
	 JpPI9tBgizTCPSqqcD/SYXA7tVG9xCtttIkTHrYZDzDEw1NlXXpCh9/XE7j8Nnjgb+
	 H4xz2GVXRNrqp3aJmEFBbyzEwb5skBgFkpMxe+lOBvwUfEzAq5QeSiUX1wa/tMs4uH
	 vqbmqQrbMQ8mr78GOJPNKB07GWoiyBF6XUyi3vOVd+cBMbayP4x96nOZKzt6pkGEL6
	 zdfg6ZVOhi+Vw==
Message-ID: <c052860b-c239-43a6-b05d-c8495bc1c731@kernel.org>
Date: Sat, 23 Aug 2025 13:42:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 05/22] usb: dwc3: apple: Do not use host-vbus-glitches
 workaround
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
 Janne Grunau <j@jannau.net>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "asahi@lists.linux.dev" <asahi@lists.linux.dev>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
References: <20250821-atcphy-6-17-v1-0-172beda182b8@kernel.org>
 <20250821-atcphy-6-17-v1-5-172beda182b8@kernel.org>
 <20250821222842.fqrxjp56czc7ubok@synopsys.com>
Content-Language: en-US
From: Sven Peter <sven@kernel.org>
In-Reply-To: <20250821222842.fqrxjp56czc7ubok@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250823_124220_316217_D3EBB6EB 
X-CRM114-Status: GOOD (  10.11  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 22.08.25 00:28, Thinh Nguyen wrote:
> On Thu, Aug 21, 2025, Sven Peter wrote:
>> From: Janne Grunau <j@jannau.net>

[...]

>>   	/*
>>   	 * Some platforms need to power off all Root hub ports immediately after DWC3 set to host
>>   	 * mode to avoid VBUS glitch happen when xhci get reset later.
>> +	 * On Apple platforms we must not touch any MMIO yet because dwc3
>> +	 * will not work correctly before its PHY has been initialized.
> 
> This doesn't make sense, the phy should've been initialized by this
> point. We already access MMIO before this. Even your [PATCH RFC 7/22]
> attempts to access MMIO before this, yet accessing here causes problem.
> Do we know when the phy get initialized then?

You're absolutely right, this doesn't make any sense!

dwc3_power_off_all_roothub_ports uses ioremap which will map the XHCI 
region as Device-nGnRE. That just doesn't work on these machines and 
actually explains the SErrors.
Resources on these machines generally have the IORESOURCE_MEM_NONPOSTED 
flag set (via the nonposted-mmio dt property) and then use ioremap_np to 
map them using Device-nGnRnE.


Best,


Sven


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
