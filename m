Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E034FEB64D9
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jun 2023 22:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQNbcRkMOlddnBk3KW9C9KJtoz/QN0SGQ1wrxblPF/M=; b=eVADQEvH5olCzZ
	LXGlh5Ve27wm6jQ8hsg8H6IbCKiUZiFe9O+Es+AyFhg0FJoQaypsfB1CpqlHyFwJg/DTAx0CUnduw
	5dbcqb8VBn+/NQQ6M3YK/804lAObVDR1BeLecFtRyJJ7vytWEOnTFk+I4IifK6m/Fhn5LtUC28ppN
	tB3HmINBaJ08D2jQW6YAEFqmco9D+fOM3p3wESMjqnhM90t2HlsOx+4Vs/l+yp9sP5N9rfkobuEvN
	lXfJE8ic06XRNoP7ubaU4Wto2mf/PSKTo0xiBe7uDnAEZ0vF5reWXUXo13nPd5hvo/zuP60D6Dv9t
	3jGgQZPJFqQ9d0ttqMSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEHYZ-00ELWY-1e;
	Tue, 27 Jun 2023 22:53:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEHYW-00ELW4-2O
	for linux-phy@lists.infradead.org;
	Tue, 27 Jun 2023 22:53:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9E9FD611D3;
	Tue, 27 Jun 2023 22:53:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7679BC433C0;
	Tue, 27 Jun 2023 22:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687906383;
	bh=KSJ/CrpZ4erhUoV/q7ajdRaNy+k6LuISa/Yrsa2n3d4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rvkRfGoWP9kyANS23r1P/v1HIUYUZkstu/uuADlj4RS3ZZAkgpAiwRDUVPgX8ixz0
	 jj/jTOQvnLzlfZfyFGaAHYhRWTKlGrx1incoYX2Wa6X5OTM5XhgTpRtlcW5g9Xr7nn
	 XjQDcf7nApZKG1AN/nHjB1GiT2o+z7EHoT/QAoG+5Ndet3RP1Y+BhOKDT5F4DC9l3Z
	 H6jPVqZBTrXlovhiK4uVHY5rwWhbsqQ6ZD+dWJ0BH8noyEPr+J6efdRiX/UTWg4qIk
	 vGhDmAV1hHtCluqvCLrNw7cL/hOP/zqyAyIwAQcplgLYZiPiwCh071JHvBTqcdzP3M
	 2i2ewoot34jUw==
Date: Tue, 27 Jun 2023 15:56:55 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Adrien Thierry <athierry@redhat.com>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/3] phy: qcom-snps-femto-v2: add system sleep PM ops
Message-ID: <lgikty7hqbysz42zpfyg6tymylijashhz4ask6q362cicogg3u@xnsruoe3loof>
References: <20230622194021.80892-1-athierry@redhat.com>
 <20230622194021.80892-3-athierry@redhat.com>
 <52qapxj7sdearduro3iiqqpekrltc5zviwgq3gz4j4lne6cp5b@phikpenjras3>
 <ZJsmnTKFJMb4rBeR@fedora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZJsmnTKFJMb4rBeR@fedora>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_155304_839707_DE983CB4 
X-CRM114-Status: GOOD (  15.79  )
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

On Tue, Jun 27, 2023 at 02:12:45PM -0400, Adrien Thierry wrote:
> Writing another email to not muddy the waters in the previous email.
> 
> I discovered that the femto PHY PM count doesn't seem to be right. Even
> when the dwc3 core runtime suspends and calls
> phy_pm_runtime_put_sync(dwc->usb2_generic_phy) [1], the count equals 1
> after that and the PHY is not runtime suspended.
> 
> This is because on boot, the count is incremented twice because
> phy_power_on() is called twice:
> 
> First:
> phy_power_on+0x120/0x184
> dwc3_core_init+0x68c/0xda4
> dwc3_probe+0xc84/0x1304
> 
> Second:
> phy_power_on+0x120/0x184
> usb_phy_roothub_power_on+0x48/0xa0
> usb_add_hcd+0x94/0x604
> xhci_plat_probe+0x4bc/0x6e4
> xhci_generic_plat_probe+0xa0/0x104
> 
> That makes the femto PHY runtime PM impossible to test at the moment. I'm
> not sure if this should be fixed on the dwc3 side or the xhci side, but
> this should probably be a topic for another patch series.
> 

Thanks for digging into this, I had forgotten about this discussion.
Unfortunately I'm confused about the (lack of?) outcome:

https://lore.kernel.org/linux-arm-msm/1648103831-12347-4-git-send-email-quic_c_sanm@quicinc.com/

Regards,
Bjorn

> Best,
> 
> Adrien
> 
> [1] https://elixir.bootlin.com/linux/latest/source/drivers/usb/dwc3/core.c#L2005
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
