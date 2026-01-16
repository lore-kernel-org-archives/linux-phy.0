Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68EE3D4A5E2
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 02:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpaoZOYQircJqbfZUdTxq9nTjIv5NQEjH+M4USNhPq0=; b=lf26wh6qOkdXmJ
	uI+WmTQswix3sM69StIcjeilfnj6ArcRy+BYfQ9+v2uOjdrNMceTx+5wBHHGZ4KFRY8v11vC33pqr
	lQgKkkH5D8KHwKO8GDUY05z0Tx1Y+NS63SXh9bYkjLWlb9R5mCIHcE3G6R2Lu4OauN40tzzRrBMZ8
	/TwkEFXMvV6f3ktGAVqvTaoulQaqcHDhJY2bSihTrZ58fP+QA+FMrZDY0amUFbDHS/mKZbYF5IdsI
	OeiAvyUbpnJIqx/TG+g9d24unR5R1YhcFWcl+i9u9zE40OvPQ32yFonSt4pKJU9l/n/rI5I6YEuI4
	jSUS8yLs8spc+0jc0zig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgZGm-0000000DRoJ-0bpq;
	Fri, 16 Jan 2026 02:09:00 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgZGj-0000000DRoD-3qWM
	for linux-phy@lists.infradead.org;
	Fri, 16 Jan 2026 02:08:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D577C6016B;
	Fri, 16 Jan 2026 02:08:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7890FC116D0;
	Fri, 16 Jan 2026 02:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768529336;
	bh=sno2tWjsBNPmpnaKlE6qtXy545sE4ON2GCYjm2//rew=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=cUxzyPH1/GE0ZbZk/CuOg6tqprq5nDKPLtaNV16nL6PhCDMsGPF4JERgpWvmcBnw4
	 NerEoIpBdO0aQQtqMbQW1zF/darIsPRQGttdVTiyqJw422E8tgVSCdcqFJ1gcYtGH4
	 QA529vsED10PaXQsIYI7m4BEja+zsTXygdvMKGbX9naiUsMBchvwU4M4m5aeEGVGAP
	 oP1q6+//9LFe36a+QFuxXdb8BJo2w0LGzfIkKPHE3AAgpP5Xl3kcxXlXeLi+Q6ws/P
	 6E6VcGnYdUxAE6K771ftOhrTHpudxLP5G8Qy5y3vD1Lt2WUI9Tqoe+ZXDWPV3H1vtt
	 lMP79gf5Nt1vQ==
MIME-Version: 1.0
In-Reply-To: <20260114092742.13231-5-angelogioacchino.delregno@collabora.com>
References: <20260114092742.13231-1-angelogioacchino.delregno@collabora.com> <20260114092742.13231-5-angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v8 04/10] spmi: Implement spmi_subdevice_alloc_and_add() and devm variant
From: Stephen Boyd <sboyd@kernel.org>
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, sre@kernel.org, angelogioacchino.delregno@collabora.com, krzk@kernel.org, dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com, melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com, ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org, luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com, mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, kernel@collabora.com, Jonathan Cameron <jonathan.cameron@huawei.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, jic23@kernel.org
Date: Thu, 15 Jan 2026 20:08:54 -0600
Message-ID: <176852933471.16445.12620793496789127631@lazor>
User-Agent: alot/0.11
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

Quoting AngeloGioacchino Del Regno (2026-01-14 03:27:36)
> Some devices connected over the SPMI bus may be big, in the sense
> that those may be a complex of devices managed by a single chip
> over the SPMI bus, reachable through a single SID.
> 
> Add new functions aimed at managing sub-devices of a SPMI device
> spmi_subdevice_alloc_and_add() and a spmi_subdevice_put_and_remove()
> for adding a new subdevice and removing it respectively, and also
> add their devm_* variants.
> 
> The need for such functions comes from the existence of those
> complex Power Management ICs (PMICs), which feature one or many
> sub-devices, in some cases with these being even addressable on
> the chip in form of SPMI register ranges.
> 
> Examples of those devices can be found in both Qualcomm platforms
> with their PMICs having PON, RTC, SDAM, GPIO controller, and other
> sub-devices, and in newer MediaTek platforms showing similar HW
> features and a similar layout with those also having many subdevs.
> 
> Also, instead of generally exporting symbols, export them with a
> new "SPMI" namespace: all users will have to import this namespace
> to make use of the newly introduced exports.
> 
> Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
