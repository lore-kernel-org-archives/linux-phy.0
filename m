Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3DA0C433F5
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 10:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xP7adFGqclzrAdLn5SNMvGdO2sPcYqTzLFx8lPGUbNA=; b=h+GMHmOCv1/NMf
	8Q+EBOCZ2hhWFydcb8TpBDJVUUmjL4Yt8L4ONJcevQiUfZUj6ZKGEtxsn/yEVJn9ZbYEwGt0n40ay
	LckSkI96aGDW2ICeyxHZ5sOitP1nh1KZIwIfGM5sxlSCOKbIywpPZjZhD+uvsqXl7Dj7GDyLXBwqt
	rxGae5APdM5MqDIPNcNFywAEh8GlCEr+Tg/iSPrpw1R0VwiiSpB3DRx/EkGrNBTVYh5W1mad0Xq5F
	q1o3IQK+A7PTB/++cdGaifDmH0QzZXZz3LuEonkyb64NFdGpOHHUajGyVLAgcGHY4YvwAZrLO67yR
	FkZxWSoMMV8QCJJWQECw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlT0e-000ljj-3Z; Mon, 02 May 2022 10:10:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlT0b-000ljF-Hn
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 10:10:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1E63161215;
 Mon,  2 May 2022 10:10:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A25B6C385AF;
 Mon,  2 May 2022 10:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651486224;
 bh=TMRGhDsQ5rlUJNgc/r4GHPu8kNEPVqY0brpK4SH6Z4c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ammL2rugX2l643ddfB4/HsVMRNkcmuAcjYQirLhDVjU1GT4dSxbv0oAb4IlAQh0au
 1y9UYsfTZOhUPGiaOfUgiW9cD9HyN558tJFO2zQCg7cij+BymxfjMKk2PximvXXKC/
 MdTv+cg1OKsTIW2mxrxIKWx2txT+YcWnWBJeYDMyT+WKPefZUmoy6YgwaJRVhf+6bl
 WLDEBH2JqffsBuQYd8b9V/8MFj9wVC0bDh+ssR94no3JR4o0i2An+xaN0+SRmvJx71
 6HN2fCHb3tpzzCOg7uncUmAd+usYzhDN0ZoA8QwM9zobDgMasvJU2Pl+D3klWBI2kI
 OXQbdXs+W0lZg==
Date: Mon, 2 May 2022 15:40:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: qcom-qmp: fix phy-descriptor kernel-doc typo
Message-ID: <Ym+uC0eDP97q+lyy@matsya>
References: <20220420152331.5527-1-johan+linaro@kernel.org>
 <20220420152331.5527-2-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220420152331.5527-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_031025_674937_3F09AC52 
X-CRM114-Status: UNSURE (   6.47  )
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

On 20-04-22, 17:23, Johan Hovold wrote:
> Fix misspelled "clock" in the description of the pipe_clk field in the
> PHY-descriptor kernel-doc comment.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
