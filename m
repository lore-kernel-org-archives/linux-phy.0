Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D499CC6B2F
	for <linux-phy@archiver.kernel.org>; Thu, 15 Oct 2026 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IglimPgRj8cblGOWqx/dZIl++efzTEcdfgJteIaYWNc=; b=L14UGMw+RaLIZn
	RYUPnf8dhIbcNpODg4YBbwfQBZNrODPRPQcW5B7gB27nLwgxx98C9OVZi2dQKZTvje0e1vfjKYb2x
	HdTpNZx9oOxpaW8hjMAKJ25hHonS+CP8Wh82GsnnLs+N3OdW0xzX3ieVKwESgJ5ZfXL1L5Lo0VCvK
	Uv+gUtzAhT0I308XgicRDNGUCU5Vq1CF8tXyy9CJut6WEaGFgOy4tfxXKS8FKRUfff/8TVJr+657V
	YXFRLHEgA0nPgsT2ufN4Uk8PKAYiscLvUsLBoH0FuvKE9K2frBrmcpjb1vjoDHAyTqYT2cKQqY1tp
	D17UbRHAxPRElRx87Rlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHBxc-0000000Gikb-26Zk;
	Thu, 15 Oct 2026 03:16:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHBxb-0000000GikF-3oEb
	for linux-phy@lists.infradead.org;
	Thu, 15 Oct 2026 03:16:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DF2A6444FA;
	Thu, 15 Oct 2026 03:16:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B60F31F000C4;
	Thu, 15 Oct 2026 03:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792034209;
	bh=2ou87yQuIEg2z7mT9ieRZYq1trZ1IHgqCJodj9CZDBs=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date;
	b=Pi7XzO/zUTN1unENBI/pj2wA7Mr5dc3U7XaaIyECGU5gB3+XfUjcU4JOkpTy+8oDe
	 y7EYQ+gVO581hDokD+dreZABYwcx9ijoQkU69wUblPq3CIs+hWboglgAZRh8+nTlzD
	 MJ1yQ2+mlu1flVdZKFH77UMusmFgkTa1+Q+YZD75mCaCaeWutm8178dkjrigwQzFVf
	 ZLyUJDEwce/K6dGaC0py/FnJEWPYbCmmLpITDilXghJyCOG/4VcmeK+0wkLPI2UszR
	 S0JpaMeUURQV/wLefMeVvevTReV1cqupGgPIMKdLHFGa4uRlRJxlM22EXO2wzx3Ii7
	 L47pBRvDOWdAw==
MIME-Version: 1.0
In-Reply-To: <231214ab-9ae9-4e3f-a75b-d65a597e9956@collabora.com>
References: <20260721093626.96264-1-angelogioacchino.delregno@collabora.com> <231214ab-9ae9-4e3f-a75b-d65a597e9956@collabora.com>
Subject: Re: [PATCH v13 00/12] SPMI: Implement sub-devices and migrate drivers
From: Stephen Boyd <sboyd@kernel.org>
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, sre@kernel.org, krzk@kernel.org, dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com, melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com, ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org, luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com, mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, kernel@collabora.com
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, jic23@kernel.org
Date: Wed, 14 Oct 2026 20:04:49 -0700
Message-ID: <179203348991.5720.8006688809115365098@localhost.localdomain>
User-Agent: alot/0.12
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

Quoting AngeloGioacchino Del Regno (2026-09-17 07:45:06)
> On 7/21/26 11:36, AngeloGioacchino Del Regno wrote:
> > Changes in v13:
> >   - Removed `if (IS_ENABLED(CONFIG_OF))` check in spmi_dev_release (Andy)
> >   - Rebased (though still applies cleanly) over next-20260720
> > 
> 
> Is there any further comment on this series?
> 

Applied the whole series to spmi-next

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
