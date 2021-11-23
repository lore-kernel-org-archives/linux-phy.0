Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2436C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 06:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCZWXR31Nkkoh0c8ziz1El2Zh9IOPfh6QM9LzYOYJTE=; b=wE4tA/UhwTnwjm
	uPn6F9jwWF9IfNvfxWGE+YNMHLUCh5NrqfogfXw0gfVAq3iVeN7QoS0XCKhjsBoWfRPZHwlaVGkzf
	YwaMKDxhvekr3I7/X1b/gVld1LedmENhg7A62h++0+OEUPtvuMWvrgn+9/rTUIrCVNHcycJuaHBIf
	rzMdryE96JT6baB9W14Y6hT2+UTMEg6AKDRNXiFnbv88bPEG8fHH8r1pvllZGGE2rXLyXIpugVgSJ
	wpF7LJQ0TwpnF8TXCsQSXT96nLOlC6UnG5NImI0NToxbW8H1ARuxFEmU/N7J3lyY3BQWKVEMCNmVj
	SkrV8X840k6QU/YzggZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpPYR-001101-5z; Tue, 23 Nov 2021 06:45:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpPYO-0010zL-VC
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 06:45:22 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2DE3760F45;
 Tue, 23 Nov 2021 06:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637649920;
 bh=peZWcZ5QzAiCu4/DFD2OrH+VwPz/oUU+/hf9z8zwbo4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CeW0zFmLnXzu1wS3gRdj3/PzvQG9Lm3F2fta/BIXqluVtNzX+cDJT5axm00T7B7VV
 wCMxhrJr7hMJU/hDfH47LRRnm/0qiyz7jYUkYNJf5kChoHmCSqDGSxP3xX72+1prUR
 6j8hVfxqfZLjsAP3Zzw3h+P7j0AR1eeB+G+Jn7G8OpYcsyeAF3EY+WcOR+AX8itufF
 s6+oViumAD6lPzeRgTwtMUwhLKHetHy3EWC7QYyPGet/fcRW0xzUsM6iOwsWdesmu4
 WlSY0EJnxAyWwmio13YoYFP2PI2L4nYgSBzLntFR+shOUE8ch/xTL4P4+k+IDoFpu4
 PZ8th2JFsF7yA==
Date: Tue, 23 Nov 2021 12:15:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Aswath Govindraju <a-govindraju@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-can@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: phy-can-transceiver: Make devm_gpiod_get optional
Message-ID: <YZyN+3e717rJ8Ktu@matsya>
References: <20211102112120.23637-1-a-govindraju@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211102112120.23637-1-a-govindraju@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_224521_069562_85B22258 
X-CRM114-Status: UNSURE (   5.40  )
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

On 02-11-21, 16:51, Aswath Govindraju wrote:
> In some cases the standby/enable gpio can be pulled low/high and would not
> be connected to a gpio. The current driver implementation will return an
> error in these cases. Therefore, make devm_gpiod_get optional.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
