Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34476C36010
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 12:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Th9I5sTTZlnkXZKvcsgHYY4gAJ/30c40yDBizyGTIPw=; b=fDMVTuco614M/f
	yGGajg7Lr0QLzxaTbNc2pZYftNOCKF67tKeAo9Qa5cF/yHY0jRLTlf7VDey+hekHebWKt7S7P5IFW
	dlIL1UNFgRZXv4Nnr8pbEgHwfzLqcOM8POCgZpJgT/zJ8GFQI1sm9nRnjyuiKQzYc4ILM06eq/Ujz
	G9Q+CsVkW5aUWg7WBSBvc7gOZ07gt7QSno7fv2LT114QXSMewtpy+X8nuJkN1RtXb4pPbLUS5OZ74
	EH4wDUz6aXNsH7QlA7TrbNxWtLpkxa5bbN/G8KzylWGmXnK4b3sJuok46VqRWtRa2AVE7+nrgI3FM
	xTwGVWxA4RqJcSCp+sxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DDG-0000000DgUJ-43dZ;
	Fri, 11 Apr 2025 12:10:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3DDF-0000000DgTY-0VlF
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 12:10:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E0FCF4A4EB;
	Fri, 11 Apr 2025 12:10:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 757CDC4CEE2;
	Fri, 11 Apr 2025 12:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744373424;
	bh=qXkPvfz3L7QpP8yVqLZ0PU/tFO/qVu8LhU3z4fOHiro=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TWN2NuBdVDDlw3kPSmU0YMURJZS1GCuKN7uiC7/aztJz0NLViIJIOmRq1+ficTjXL
	 bY+9dTyD5rvl1zPjLrS3+qqlQNFcqO1DMIqo6fqeU/pfYn/n4LYXAXteAnndXFtspL
	 d5s/7ZEBGSJjpb7nCCa1j3K+RDa6zDRbnU6z+MWORYiyzXLsMKYEko4tPJXmgorYMR
	 TMT/lXOP25xwZL6QUZX/c0aycsGcV9eCPdvqmtW37FnPHz/3cd1T8hZZjL4AdOowAv
	 exwd8vw0fz4J/e4iMp/tuNfiNckeOhdC/exsKeFDDKF/9Erkol7OCvZVFbsve/VJOD
	 ajDbGi0+0n/7w==
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>, Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Aswath Govindraju <a-govindraju@ti.com>, 
 Biju Das <biju.das.jz@bp.renesas.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <3d7e0d723908284e8cf06ad1f7950c03173178f3.1742483710.git.geert+renesas@glider.be>
References: <3d7e0d723908284e8cf06ad1f7950c03173178f3.1742483710.git.geert+renesas@glider.be>
Subject: Re: [PATCH v2] phy: can-transceiver: Re-instate "mux-states"
 property presence check
Message-Id: <174437342110.673813.5478003699967879937.b4-ty@kernel.org>
Date: Fri, 11 Apr 2025 17:40:21 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_051025_184444_23D80D3A 
X-CRM114-Status: UNSURE (   6.20  )
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


On Thu, 20 Mar 2025 16:15:42 +0100, Geert Uytterhoeven wrote:
> On the Renesas Gray Hawk Single development board:
> 
>     can-transceiver-phy can-phy0: /can-phy0: failed to get mux-state (0)
> 
> "mux-states" is an optional property for CAN transceivers.  However,
> mux_get() always prints an error message in case of an error, including
> when the property is not present, confusing the user.
> 
> [...]

Applied, thanks!

[1/1] phy: can-transceiver: Re-instate "mux-states" property presence check
      commit: e153fdea9db04dd0e2e536e2eb125b16bbbc2af7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
