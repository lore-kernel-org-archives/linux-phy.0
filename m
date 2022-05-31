Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09EBFC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 31 May 2022 14:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/iiHexYYGdHeRz3RboJ9BFQHCfVaJ6HoTO1gymXH+w=; b=MlGkpoykubNrwu
	qXrM0BxwAgEliSZiYf2m025094TMxfAziRvo3voyhPrY8Yv1EL2CIELQHIkqVI8ExaNn1iZVXAGgb
	xNNm8kZZbloOssvWXJyugLJef+0ZaQB3b8pshWDKCl7YuCTSnp+O6+Dv+dYSJMuXuvHRHCAXXkO6/
	CpAlajUZRNA1KdaGVdTOjWPKJYTfM4mervTmfWWFbHJKoy95jRRmAhT2OV/SvrVMCNSm8N+KHEWEP
	+T7qvFJY244OWqocWCpZDzwGNzy19d4t1b/VtcsdXjF/XTFfSLqZLK1JrBopwHAfvr071jRK2b5gz
	O7u6V//1U/ZOxUkR07Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw2Q1-00BCbR-EV; Tue, 31 May 2022 14:00:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw2Py-00BCaq-KM
	for linux-phy@lists.infradead.org; Tue, 31 May 2022 14:00:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 211E561295;
	Tue, 31 May 2022 14:00:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CA15C385A9;
	Tue, 31 May 2022 14:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1654005616;
	bh=q/6sgbATI5IGKHza9C0MgvErESqSH3PyBoPWgxa+OIM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=CX/ReGNQTm/xRh0Gu3mVUAMSIxbKbyeaz9KU7M9FazOhhK8BFzC+T/fsJEwCh3YUp
	 pQ9U8v2JwbvcH6PKll7nIR70yaZMvzebvClMn/TOXwRqM/2MdCDOCxrnbt1lrNtkdQ
	 yK8AQawwlqeAGY4JvL3Mc1AlqFK3Omd6OPByuRu3Jk5FcF6hBMYGEYAr4nj/wAcYMF
	 4drs03/YHZqud99fhgVGvZWrJxtln/YQm6hSbRZePCy5cnb9d+Mct2V6hTEip1DmD4
	 xY/urZXJml2htgPtFgKEFjgUHU3dxX3uyc8PAKnWDi3vYkrMoFipWaFAKLfluBf0QT
	 yNIBgRDMEPAZA==
Date: Tue, 31 May 2022 16:00:12 +0200
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "pali@kernel.org" <pali@kernel.org>, Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220531160012.1e7e1b48@dellmb>
In-Reply-To: <20220531124159.3e4lgn2v462irbtz@shindev>
References: <20220531124159.3e4lgn2v462irbtz@shindev>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_070018_796097_071FBFF6 
X-CRM114-Status: GOOD (  16.16  )
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

On Tue, 31 May 2022 12:41:59 +0000
Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com> wrote:

> Hello Pali, Marek,
> 
> I have an ARMADA espressobin board, and I'm setting up SATA drive test
> environment on it. Using that board, I observe that SATA drives are not
> detected after merging two commits [1]. They were merged in the kernel at
> v5.18-rc1. With v5.17 kernel, the SATA drives were successfully detected.
> Reverting the commits from v5.18, SATA drives can be detected.
> 
> [1] ee995101fde6 ("Revert "ata: ahci: mvebu: Make SATA PHY optional for Armada 3720"")
>     934337080c6c ("phy: marvell: phy-mvebu-a3700-comphy: Add native kernel implementation")
> 
> FYI, here I share related kernel messsages:
> 
> $ dmesg | grep -e ata -e mvebu
> [    4.007130] ahci-mvebu d00e0000.sata: supply ahci not found, using dummy regulator
> [    4.014963] ahci-mvebu d00e0000.sata: supply phy not found, using dummy regulator
> [    4.022596] ahci-mvebu d00e0000.sata: supply target not found, using dummy regulator
> [    4.031123] ahci-mvebu d00e0000.sata: AHCI 0001.0300 32 slots 1 ports 6 Gbps 0x1 impl platform mode
> [    4.040180] ahci-mvebu d00e0000.sata: flags: ncq sntf led only pmp fbs pio slum part sxs 
> [    4.050150] scsi host0: ahci-mvebu
> [    4.053949] ata1: SATA max UDMA/133 mmio [mem 0xd00e0000-0xd00e0177] port 0x100 irq 30
> [    4.388934] ata1: SATA link down (SStatus 0 SControl 300)
> [    5.239165] EXT4-fs (mmcblk0p1): mounted filesystem with ordered data mode. Quota mode: none.
> [   10.751378] cfg80211: Loading compiled-in X.509 certificates for regulatory database
> [   45.727407] ata1: SATA link down (SStatus 100 SControl 300)   (... I connected a drive to the SATA port)
> [   46.497413] ata1: SATA link down (SStatus 100 SControl 300)
> [   47.267411] ata1: SATA link down (SStatus 100 SControl 300)
> [   48.047412] ata1: SATA link down (SStatus 100 SControl 300)
> [   48.827416] ata1: SATA link down (SStatus 100 SControl 300)
> [   49.597411] ata1: SATA link down (SStatus 100 SControl 300)
> [   50.577414] ata1: SATA link down (SStatus 100 SControl 300)
> [   51.357409] ata1: SATA link down (SStatus 100 SControl 300)
> [   52.587418] ata1: SATA link down (SStatus 100 SControl 300)
> [   53.367419] ata1: SATA link down (SStatus 100 SControl 300)
> [   54.147413] ata1: SATA link down (SStatus 100 SControl 300)
> [   54.917412] ata1: SATA link down (SStatus 100 SControl 300)
> [   55.697410] ata1: SATA link down (SStatus 100 SControl 300)
> [   56.477411] ata1: SATA link down (SStatus 100 SControl 300)
> [   57.247415] ata1: SATA link down (SStatus 100 SControl 300)
> [   58.017413] ata1: SATA link down (SStatus 100 SControl 300)
> [   58.797412] ata1: SATA link down (SStatus 0 SControl 300)     (... I removed the drive from the SATA port)
> 
> As shown above, the message: "ata1: SATA link down (SStatus 100 SControl 300)"
> is repeated. It looks like the function mvebu_a3700_comphy_sata_power_on()
> fails to set up SATA phy correctly, but I'm not sure how to investigate further.
> Could you advise next action to fix this issue?
> 

Weird, I tested this. I am taking my Espressobin and will look into
this tomorrow.
Marek

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
