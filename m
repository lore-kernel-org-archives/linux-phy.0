Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BAA9C19F2D
	for <linux-phy@archiver.kernel.org>; Tue,  9 Aug 2022 09:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hddy+etW7QEbGSmK6EdABg/hbeIrY3GOb4ripvb4pg0=; b=FJuxQEEp3i7MXp
	G8U0Ctm/Pa9Qw1dzXZ1KF2OgDlhv08qfELc1ammf872Tem6Cw3hzKIcPz+x12+m12qr+1PR9E4KSQ
	ATQEXJFo6jwJfgqhbnJL9etMPz3r8kkFiRowGVP20b2G/F7ZKAldOSi39sopqH00zaDB0GDEB4OZy
	zIXBkelsznBpM8U0QhnrM+4ob3bppWIFxW/3DILCIpk1KoVGSvCdKoO19lTWWiFk+Ef23+gXbta9Q
	LUbJ1VJwokpEgfRqie8KjCyE2CjRtKtx9cPjdrP5X9rvyhPihFgHVXOyFwMhkr0M3mBT1uNp1GR3c
	W/ZSsKSfiipcKK0drZhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLl5-0036kV-11; Tue, 09 Aug 2022 09:42:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLl1-0036iv-O7
	for linux-phy@lists.infradead.org; Tue, 09 Aug 2022 09:42:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DFA9360EC2;
	Tue,  9 Aug 2022 09:42:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02190C433D6;
	Tue,  9 Aug 2022 09:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660038158;
	bh=yrTC5lG95FezWCC3yhIwk2qKIfOA5AOZ9OMNk32yPdM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lz6pMdk/J3AmOb6c1GRp2UsuW802QAVvsZm9TXHZnlMI7hWW/+N5JWd0LNGcZAdjg
	 XsLEIoc8B1+KyU9uG04yAerbYIHdjf7vC3hfGQqnbjHxGma/YixCjXF/mb0FZ2Mk1W
	 W3pgra6RKPAg/iVE7ljVL0fSVh8aCMlwGGIqhkAC7ZmDlxzwxn91UkSamZLIuUYvxg
	 Sa+UqzcT6rA6qUMWGrCe+f8nyC9ydpem2p/cBqAfAl2JmuaEIoMpjygjGNeZ1/wMNw
	 0mg4SAvHpD0x0qJeT/N2MwJLP2RmcKzNzY3h3X/ZNJZOB3MlZba7ef90OaQHHpI26J
	 BD99snpUwb+tg==
Received: by pali.im (Postfix)
	id 69DFAC1F; Tue,  9 Aug 2022 11:42:34 +0200 (CEST)
Date: Tue, 9 Aug 2022 11:42:34 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Shinichiro Kawasaki <shinichiro.kawasaki@wdc.com>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"kabel@kernel.org" <kabel@kernel.org>,
	Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: Re: ARMADA espressobin SATA drive detection failure
Message-ID: <20220809094234.cpv6tdpmqfb3cfqq@pali>
References: <20220531124159.3e4lgn2v462irbtz@shindev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220531124159.3e4lgn2v462irbtz@shindev>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_024239_886845_F3AFBB91 
X-CRM114-Status: GOOD (  20.69  )
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

Hello Shinichiro!

On Tuesday 31 May 2022 12:41:59 Shinichiro Kawasaki wrote:
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
> -- 
> Shin'ichiro Kawasaki

Sorry for late reply. At the time when you sent this message I had
issues with office station and was waiting for repairing support. And
after that I forgot about this email.

Now I have looked at it. For testing purposes I took Espressobin V5
board and some random SATA disk (some Samsung SSD). I installed latest
firmwares (secure-firmware, ARM trusted-firmware and U-Boot) on
Espressobin's SPI-NOR and Linux kernel version 5.18.16 on SD card.

Disk is successfully detected in U-Boot as:

=> scsi scan
scanning bus for devices...
  Device 0: (0:0) Vendor: ATA Prod.: Samsung SSD 850 Rev: EMT0
            Type: Hard Disk
            Capacity: 238475.1 MB = 232.8 GB (488397168 x 512)

And this disk is also detected by kernel without any issues:

[    2.423191] ahci-mvebu d00e0000.sata: supply ahci not found, using dummy regulator
[    2.430964] ahci-mvebu d00e0000.sata: supply phy not found, using dummy regulator
[    2.438650] ahci-mvebu d00e0000.sata: supply target not found, using dummy regulator
[    2.447164] ahci-mvebu d00e0000.sata: AHCI 0001.0300 32 slots 1 ports 6 Gbps 0x1 impl platform mode
[    2.456230] ahci-mvebu d00e0000.sata: flags: ncq sntf led only pmp fbs pio slum part sxs 
[    2.465125] scsi host0: ahci-mvebu
[    2.468938] ata1: SATA max UDMA/133 mmio [mem 0xd00e0000-0xd00e0177] port 0x100 irq 30
[    2.960244] ata1: SATA link up 6.0 Gbps (SStatus 133 SControl 300)
[    2.966674] ata1.00: supports DRM functions and may not be fully accessible
[    2.973640] ata1.00: ATA-9: Samsung SSD 850 EVO 250GB, EMT02B6Q, max UDMA/133
[    2.980774] ata1.00: 488397168 sectors, multi 1: LBA48 NCQ (depth 32)
[    2.988461] ata1.00: Features: Trust Dev-Sleep
[    2.993153] ata1.00: supports DRM functions and may not be fully accessible
[    3.001374] ata1.00: configured for UDMA/133
[    3.005991] scsi 0:0:0:0: Direct-Access     ATA      Samsung SSD 850  2B6Q PQ: 0 ANSI: 5
[    3.014943] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    3.015285] sd 0:0:0:0: [sda] 488397168 512-byte logical blocks: (250 GB/233 GiB)
[    3.027885] sd 0:0:0:0: [sda] Write Protect is off
[    3.032832] sd 0:0:0:0: [sda] Write cache: enabled, read cache: enabled, doesn't support DPO or FUA
[    3.044390] sd 0:0:0:0: [sda] Attached SCSI removable disk

Could you please check if you still have these issues with the 5.18.16
kernel version (IIRC it should be the latest 5.18 release)?

And could you please check if your disk is working fine in U-Boot?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
