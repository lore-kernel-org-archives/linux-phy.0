Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED1D0C25B75
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jun 2024 12:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2OjygZayH1urS8cPlMTCB/HO5MIxpE4N6g3WXLywLUQ=; b=suii+mkuJOsX5v
	j6bpJmvyX/ajQZhxIgqSKcTvFuU2AgdpX6fuDBkGMMBiYmtHJ96pI3wNZVoSl6QKFR6PVy2UE/3oS
	xMSvI68NWkwaSngpuJ/2JNdIXa1p39BBIVdH9sUl5Wx5UnbkiwhFIKylO9CuChbOYECbYgY4JKyRF
	3ZxAICdmQEO9kr4n6UiE48zfxWzbaeJ2fedUNoM8YWgb61tBGRw1BaqgYzGl31MC2ufWOGkb2atnF
	Q271QW+pCcpPsf1yr3QeM2O7XTb5HBM0K0Irzs7gy1LLpxpBnFOR52CmplL00ejOPtWPYxWEQrutY
	rxyyGPKkDHUIaeZaRQzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE74u-0000000Gjjb-2mPO;
	Mon, 03 Jun 2024 12:46:20 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE74r-0000000GjjE-3LMR
	for linux-phy@lists.infradead.org;
	Mon, 03 Jun 2024 12:46:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B9DB0CE0C29;
	Mon,  3 Jun 2024 12:46:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62CADC2BD10;
	Mon,  3 Jun 2024 12:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717418774;
	bh=4RsD9/C3pEBXc6FiOISGRqAdcjs1/UJEsDEwucWnhkM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ssboo9KIENmb5gqh+naudYKIJ+9RWIpHdaOIXmtVsWHL3kLHI3zxKd8E671GAccVs
	 /UN76bXZeO5KUDuLi8QHumctJ6pw2U96o7qAG6oHtKDtl1gzglObXGYY0+3xbfq48m
	 wDlRDLR47Kp5lnh6fPck8e+V8eWFHMkwU1WXCRGIGcwKjJzdEP9MgqXN+qm9Vlfn74
	 VpCiER07m726Eq3t+m+cyLn2X3mnbDWfMBzJLoYhfqGOnXJkLKFS9P1JvSz0PuZu8o
	 g+tosvKVkqjCN1bPwUhOpMAFJMQqsYeuqjfRD5dntj2wF/uGIWpYEdzuSued/aHjpN
	 Hm3/EYfjqXCNg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1sE74m-000000000jf-1Gj3;
	Mon, 03 Jun 2024 14:46:12 +0200
Date: Mon, 3 Jun 2024 14:46:12 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add X1E80100 Gen4 4-lane mode
 support
Message-ID: <Zl27FJVU_YHokCiD@hovoldconsulting.com>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
 <20240531-x1e80100-phy-add-gen4x4-v1-2-5c841dae7850@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240531-x1e80100-phy-add-gen4x4-v1-2-5c841dae7850@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_054618_037880_AA08599C 
X-CRM114-Status: UNSURE (   9.96  )
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

On Fri, May 31, 2024 at 07:06:45PM +0300, Abel Vesa wrote:
> The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or
> 2-lane mode. Add the configuration and compatible for the 4-lane mode.

Same language nits as for patch 1/1.

> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

I tried this patch along with the DT changes and the link on the CRD
still comes up as 2-lane:

	qcom-pcie 1bf8000.pci: PCIe Gen.4 x2 link up

so something appears to be wrong here. (I noticed the same with your
next branch last week.)

How did you test this? Does the link actually come up as 4-lane for you?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
