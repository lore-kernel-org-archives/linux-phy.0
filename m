Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2DFFCD37BE
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 13:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYZRwtcz1xtdY4xusjC1UZu5l5hLOp+o+0JPoNRKEG0=; b=q2dKm05NB26T+I
	bStQoQivaWOIW3parSIhIuPFot2pNr2NziGkBVqdqlHpOQ3RYWlX390BRIztUP6Q+ESJXfgYoCda/
	bZlW/9WyybBUStQ+QcTtMngAk5IgnR5qcIlMwwDmwnauuCPEO0+FUjDfiSi8o3gpkvq0CewA588TW
	X9M/0tvIefyJs2UMMszEPNU3qLGAs6g0L5AtqdS/cVswRgszDgd4RUR4cW983lFtYvdMM7P1zp6Dr
	BkVXScH6GHj2VgYFUCsw6A6REWPKcBrwdiZSFcEiw1gEU18HcX7iiMfriPUVOqO9NdwHvE36lWNlU
	1FQyKwyC5hCcSvWKsCxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQWH-0000000DhVI-0gu6;
	Mon, 11 May 2026 13:18:01 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMQWG-0000000DhU9-094p
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 13:18:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2DA9660123;
	Mon, 11 May 2026 13:17:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C273BC2BCB0;
	Mon, 11 May 2026 13:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778505478;
	bh=1xM0Do21lUkMcZwS8TniHLHa4V5X/K9v0bdKRc6dvnA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MV0+gL+/NiF2hgdeRsE21e6vCy7M64tt8HfSrxS4ffJZ+5fusvFgztGFu3JXUVeuI
	 ZY0vil+QPsWlCWDVVcLy2HaHoYEChq2I+BnNitpeQfDt6NhHYykzgE4Yst7indnAZr
	 NWtSSBo3pr/f33WHSoXlcXl/RlF9h2nby/ja6iyWp/3tTVKR7ZM1nDuDodRmy1Lyjt
	 17CMspMOx22/Xlc36PNivhIeliR50e2kcyQyKhRWKbBjrzszkXMysMWszl2sSWiLcU
	 LZsv7YicsXGj946Ev/XZbfVX32a/VJdAFSJxRga71DKLawFltZRany2c94/Iie2b+s
	 +LJ9dxwtDxylQ==
Date: Mon, 11 May 2026 14:17:43 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org,
 vkoul@kernel.org, neil.armstrong@linaro.org, sre@kernel.org,
 sboyd@kernel.org, krzk@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
 quic_wcheng@quicinc.com, melody.olvera@oss.qualcomm.com,
 quic_nsekar@quicinc.com, ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org,
 luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com,
 mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH RESEND v8 00/10] SPMI: Implement sub-devices and migrate
 drivers
Message-ID: <20260511141743.251a47e4@jic23-huawei>
In-Reply-To: <20260511100805.121432-1-angelogioacchino.delregno@collabora.com>
References: <20260511100805.121432-1-angelogioacchino.delregno@collabora.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Mon, 11 May 2026 12:07:55 +0200
AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> wrote:

Hi Angelo,

Why the resend?  If marking a series with that I expect to see it
called out as first thing in the cover letter.

Jonathan

> Changes in v8:
>  - Renamed *res to *sub_sdev in devm_spmi_subdevice_remove() (Andy)
>  - Changed kerneldoc wording to "error pointer" for function
>    spmi_subdevice_alloc_and_add() (Andy)
>  - Shuffled around some assignments in spmi_subdevice_alloc_and_add() (Andy)
>  - Used device_property_read_u32() instead of of_property_read_u32()
>    in all of the migrated drivers (Andy)
>  - Changed .max_register field in all of the migrated drivers from
>    0x100 to 0xff (Andy)
>  - Kept `sta1` declaration in reversed xmas tree order in function
>    iadc_poll_wait_eoc() of qcom-spmi-iadc.c (Andy)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
