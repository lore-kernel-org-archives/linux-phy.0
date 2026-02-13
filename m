Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3393AEF48EE
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 09:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MozulfU6ZhAlvsGw+pqXc+8luX1xBAuMNWxGSv62jzU=; b=mKlk52RvvXg71C
	N8mdsQ109uHZ6N/CTzc3LaSBOGSCRE2pC2eJaNb/P+f45HqjxjhE1JYQDTGEphUxrDn+vPr/t/MUa
	87x7Y8yH15t7l9JvBPxCZVfJemgQFxXuQRYOHnGPjqp8FGvjLlyraeN44B9coX+4eGHn9ivwN320i
	4I1E8cwkyCfD8XYP9E+EgEN39NpivJOJZj/duEfrPe6ORhXyU7Hl9Q+JZrTBrLtBZNyYUkCuQ9BiS
	AyNTh8bf6ntMLmNNz2cyxfHaKzDyC5KOW7GaKL0aC1YYov0WdjyIP3RoptSkaNaVHWh14t4RNMKSo
	w5WrNh8LDJ5zVWbGbK0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqp4g-00000003D18-3HdN;
	Fri, 13 Feb 2026 09:02:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqp4f-00000003D0r-3Prs
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 09:02:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D76296001A;
	Fri, 13 Feb 2026 09:02:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80C85C116C6;
	Fri, 13 Feb 2026 09:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770973372;
	bh=GCNLHpourJK+ggk57xu+21UuS50fiPYl9qw9FnaS074=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PNI9Dw2Vzi88bVgK5GTgp5hPuv3JBV/acTEX4BdT5rlDJoJhBCCywx09vNT21WSrC
	 H+kk76KSVyTxY/uBvRctWMKzjdPoiD2UKDTciL6lnTps/+SBOMySMuiPzaecKTnS7B
	 cJH1iOP6Ijj9cqbBPDtgI/EXz9WB+vZDurh51sllJDpzAZxMd1zmE1rT1AulS171Oc
	 kdcHvO4yMB5EbK1XZfnXcLfz261Jjh6h3WBHpssFOCkcIa4efOfBeGGaxdB0fABd2n
	 abo6nrwcdYOe3pvZZPsJfoATFWqoAIva4MEdl20gmVRcDFJ3XAstezUOliEofsh1H+
	 Zf+qScQ/kDozw==
Received: from johan by rho.lan with local (Exim 4.98.2)
	(envelope-from <johan@kernel.org>)
	id 1vqp4W-0000000010y-1ei7;
	Fri, 13 Feb 2026 10:02:44 +0100
Date: Fri, 13 Feb 2026 10:02:44 +0100
From: Johan Hovold <johan@kernel.org>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
	neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v3 3/5] phy: qcom: qmp-usb-legacy: Fix possible
 NULL-deref on early runtime suspend
Message-ID: <aY7otFH-XdY0xwZu@hovoldconsulting.com>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
 <20260205160240.748371-4-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205160240.748371-4-loic.poulain@oss.qualcomm.com>
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

On Thu, Feb 05, 2026 at 05:02:38PM +0100, Loic Poulain wrote:
> There is a small window where the runtime suspend callback may run
> after pm_runtime_enable() and before pm_runtime_forbid(). In this
> case, a crash occurs because runtime suspend/resume dereferences
> qmp->phy pointer, which is not yet initialized:
>         `if (!qmp->phy->init_count) {`

So here too, what would trigger a suspend in this window? (Except
possibly user space disabling and reenabling runtime pm, which can't
happen in practice).

> This can also happen if user re-enables runtime-pm via the sysfs
> attribute before qmp phy is initialized.

This I guess can happen in theory, but you'd need to try pretty hard.

But I think the commit message should better reflect this is all mostly
theoretical (currently it sounds like something you've actually hit).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
