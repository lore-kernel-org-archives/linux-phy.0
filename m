Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F69BEF48E8
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 08:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtrMZgiuOhXJMZuKUlC263NF2rL/Di1HRk2UCWbt0Ek=; b=p+DSu9qOxANtfk
	iGXf6f47SHsxrSLabEJ+t0Im2luKINtT7yh9NcFTsfdHuvU3L4evI0Q+braq+BJ/m9IXA8ll7vlI8
	WLOJL7kk7LDU2HV9+pmzZ20/5BmGwglQHzW6TAZR0zqubryxFkD7EsQu6FUds3YZwFH+s0F2fDVei
	j+PIg/03swwiqJLsuP7di0vdIdEwPpbCMDux21oIL9ElsgvLr54hLZsLcQKUw8g/xByLz6BxYLwYt
	C4kz+KunDlB/KKxdsvup33oSF7+0yrI/Rx0Eg0sT8JzaBzlrMsNacS2woDbMObdxEsuFUILuHz8wz
	LhgH9zi3W7B3lPO3UJXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqoqN-00000003CCu-1erw;
	Fri, 13 Feb 2026 08:48:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqoqK-00000003CCS-1rXQ
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 08:48:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4B37B437B3;
	Fri, 13 Feb 2026 08:48:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26643C16AAE;
	Fri, 13 Feb 2026 08:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770972483;
	bh=sYVPcY0W5aokmXXau1LiI58XbehQLsCoQ855DU9hmIE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FIEKyZ5r/uNPJ9Vd0kESgfL8eu0ddYOGmMO9eBDw4pvtJ4iRAOHK1QHbZ56ADdNlp
	 U0sl+rrUJeSOpm2efDE0bxRpLvIsUNg5R3Ba4dAZsj9EsHUzBcJRiyW1nU9UsMpi3w
	 rQ9cIsbs6FZfPAuFgtM7eQihknk/A/50dRHDTXc0Yv7xNi3Uc/KJsk2VZmMKNpAYFJ
	 Okow9mMImpT0kujkfr6NR4AOuuAw/zZpnhV8Yz6gin8Q1YfdfuB9lRaoaEc9A67kuZ
	 FrRPuHnwgwtS8DUF/SVOxFCuDHgmbhjAMxTBhn7BXch8wS8Bxj2T8HKGXoXsZnu/ul
	 C1wnMmWbmjW+Q==
Received: from johan by rho.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vqoqA-000000000YZ-175U;
	Fri, 13 Feb 2026 09:47:55 +0100
Date: Fri, 13 Feb 2026 09:47:54 +0100
From: Johan Hovold <johan@kernel.org>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
	neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/5] phy: qcom: qmp-combo: Prevent unnecessary PM
 runtime suspend at boot
Message-ID: <aY7lOq6jOwTEsrZW@hovoldconsulting.com>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-2-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205160240.748371-2-loic.poulain@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_004804_527132_7E920D33 
X-CRM114-Status: UNSURE (   9.00  )
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

On Thu, Feb 05, 2026 at 05:02:36PM +0100, Loic Poulain wrote:
> There is a small window where the device can suspend after
> pm_runtime_enable() and before pm_runtime_forbid(), causing an
> unnecessary suspend/resume cycle while the PHY is not yet registered.

What do you think can trigger a suspend in that window?

(A racing user space request to both disable and re-enable runtime PM
could theoretically do so but not in practice.).

> Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
> this race.

I think the commit message should reflect that this isn't really an
issue.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
