Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66D5BC4332F
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 05:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nkzPa4E8SpJ7njnT+Gr98Y2L8WCuXI1oLkI1mO9BQMM=; b=m4QIVdbhAZh2FG
	B/xD00GiOlbOsWEDQ+nnZ3uWK6osRLkvaFK8IMw3q0RrelcUihDHPJDvexPMPj/D+jUVYSd4j+SVk
	aOlAoZ3ucsEpr8/giKvQWWmXmWUw0sg3lYQnUi5UKi/nvtO1upTND98WRJZcU6lVQKElYIqeCG0TS
	WERFoq+6QrjvwRpsptnrmtl4fu80gylYORUv7ZmRDuPn1dzCDdkDWFt9kHlVkjBs4S5VTyO2iXdd+
	UB/njyhH+oyUawBl1YYi14faMVod0OZL0+VaINFhdFTRgfUWNmoF2+VbOcnkaTl1lvi+nl/8zVUEm
	8ZhdXR+NJ6NDSkEXnVmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHJ81-00CWeN-Qc; Tue, 08 Feb 2022 05:33:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHJ7y-00CWca-Se
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 05:33:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DD5C861589;
 Tue,  8 Feb 2022 05:33:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1258C004E1;
 Tue,  8 Feb 2022 05:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644298400;
 bh=GvMavZdaXd2dac9vDfywbs/WRakU62/+ADWBjauPTEM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FyCVw4UtJlJfJfVzCSbizSNBkVvOKCYXhvaTXsaRckYX3CEfCeicvgvj2h6CIxDMz
 F6ME+Ur9ZyNzCJedKadFMjx9Kp6uTlSzobyQOBQRN5PbL4c8Jcn4qdL9jXU3vWtdFS
 OYfOpqdp5ZcwLsvY2ZrHqJpCGwZkIcOxfx5LsbCfCYcnecKaa5dRoQRLUNNo2/k5gc
 Cs6zIT+MkB4+2KcMpd8III82vjMz30p98XB9YQMmLzUAZUk/dLlReYEgyP7j2spHQ1
 Me4ROB/HWfD9APk8seBn+VP5mz87gJ6TqT8yG6vl9c/bqblGSSMwf60C/thKTI71pG
 D7+SpyITIm1nQ==
Date: Tue, 8 Feb 2022 11:03:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 quic_mkrishn@quicinc.com, linux-arm-msm@vger.kernel.org,
 Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
 robdclark@gmail.com, quic_khsieh@quicinc.com,
 quic_abhinavk@quicinc.com, linux-phy@lists.infradead.org,
 Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [REPOST PATCH v1 0/3] Add support for eDP PHY on SC7280 platform
Message-ID: <YgIAnNlrwVZOvWPM@matsya>
References: <20220208001704.367069-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220208001704.367069-1-dianders@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_213323_003284_D2D3A47F 
X-CRM114-Status: GOOD (  14.64  )
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

On 07-02-22, 16:17, Douglas Anderson wrote:
> This is a repost of the patch series that Sankeerth Billakanti posted
> back in November. As Stephen pointed out [1] a few days ago, it wasn't
> posted to the right place.
> 
> I've tested this and it seems to bring the eDP up on my sc7280 board,
> so I'm re-posting it in the hopes that it can land soon-ish unless
> there's something terribly wrong with it. ;-)
> 
> If it makes folks happier, I have no objections to Sankeerth's
> original patches landing. These are the exact same thing but simply
> with the addition of my Signed-off-by.
> 
> [1] https://lore.kernel.org/r/CAE-0n50sONq+URcWwvDH=UPshgy6+XZEB3sK_4n+5jNktHsEhg@mail.gmail.com

Applied all, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
