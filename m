Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E271F459F5
	for <linux-phy@archiver.kernel.org>; Fri, 10 Apr 2026 15:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cgI/Ryhc2HaXhgdEgijW5mXOVl9BB2XHo318lbcw+6g=; b=EtG1Oyhnv16RFI
	/EU1QHCkpW3vbpO5HHoxIiw2swRTUoDQ2ruFG8e7T7q2dAl8Kt5OmnRjmEndTTboyPpS3F+crinlQ
	LONt83UdzfCojIvvA269LIrHySFKPKfLMa7OQlYdhjx9QPI+b6lzWxRE4AnRIsU3NO4/fi4ib2pju
	KmhmeNr2g1KjHOpeiLVOyRDle4DwnImBKAhvoDsJTDLO0ufIDB2bFjAIDTkVa1MqET7dxvzIN79U7
	BaGTe+EX7iH1JlDSZwryDng46ya+4q5wvqKtiJv2JzCek4LHWrfu8VeambR1fmJpZPNpu0STOFET9
	gsFyS5ijn95pscjnlUKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBDhY-0000000CSVx-0Ge4;
	Fri, 10 Apr 2026 15:23:20 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBDhU-0000000CSVD-1JKW
	for linux-phy@lists.infradead.org;
	Fri, 10 Apr 2026 15:23:18 +0000
Received: from trampoline.thunk.org (pool-173-48-116-90.bstnma.fios.verizon.net [173.48.116.90])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 63AFIonm015842
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 10 Apr 2026 11:18:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mit.edu; s=outgoing;
	t=1775834338; bh=eTlXD+fEi5OyNbu4TxRTwpDmEzFd2ThBwniicSqJG9M=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type;
	b=VM9pR3FUqiyu4dGQLYjxtn5fwtIzfU7ySZMp0abbH18xV6/gDABRi9uB743lXz8hh
	 DLg+D58JGiw6cmfTe96qrNZsfI1LrX8CH4Z4SZsryjUI4LnJNSYnME68kmTAWN0bac
	 +APmObxjmRctPfSGmHJbriSXfrkN55pWYIbiVRfu2y0ECqpOPHSJun6K+BHM+LkVI2
	 DM7T+QYmlRWbU/sqPlO03FdXluf2F9iRmmuiDmCsbPLwL4U9izV2zs90P/AyWnNi7/
	 WJE2W3FtW9KojAgen2wKI5w3YJJGh4CS8IuF5T47bMgUta6WPQzUW9F7QaunmIRgXz
	 enYXQQPwNnobw==
Received: by trampoline.thunk.org (Postfix, from userid 15806)
	id 0D7462E00E1; Fri, 10 Apr 2026 11:18:48 -0400 (EDT)
From: "Theodore Ts'o" <tytso@mit.edu>
To: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
        bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr,
        dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org,
        gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org,
        intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev,
        kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org,
        linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org,
        linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, linux-media@vger.kernel.org,
        linux-mips@vger.kernel.org, linux-mm@kvack.org,
        linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org,
        linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
        linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
        linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org,
        linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
        linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
        ntfs3@lists.linux.dev, samba-technical@lists.samba.org,
        sched-ext@lists.linux.dev, target-devel@vger.kernel.org,
        tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev,
        Philipp Hahn <phahn-oss@avm.de>
Cc: "Theodore Ts'o" <tytso@mit.edu>, Andreas Dilger <adilger.kernel@dilger.ca>
Subject: Re: [PATCH 04/61] ext4: Prefer IS_ERR_OR_NULL over manual NULL check
Date: Fri, 10 Apr 2026 11:18:40 -0400
Message-ID: <177583430870.2758959.6171961359325912353.b4-ty@b4>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260310-b4-is_err_or_null-v1-4-bd63b656022d@avm.de>
References: <20260310-b4-is_err_or_null-v1-4-bd63b656022d@avm.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_082316_584718_C91F36B4 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
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


On Tue, 10 Mar 2026 12:48:30 +0100, Philipp Hahn wrote:
> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
> 
> Change generated with coccinelle.

Applied, thanks!

[04/61] ext4: Prefer IS_ERR_OR_NULL over manual NULL check
        commit: 1d749e110277ce4103f27bd60d6181e52c0cc1e3

Best regards,
-- 
Theodore Ts'o <tytso@mit.edu>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
