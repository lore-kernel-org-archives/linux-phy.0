Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FAEDC4345F
	for <linux-phy@archiver.kernel.org>; Wed, 24 Apr 2024 19:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKfwcfWAbX663JuYRmZBXpm3gVhnmsrtfsMBCHaxPTE=; b=nkqDIXmGYcLZyi
	8R9ZLTFC/SFT1So9xlblGo8gXbJ00zBJdn9i5FaZUP5B0/R2COKJlLqeqZHIqbFQMFHykQZO/ReZY
	hvlg0U3EgwthfV7K94N/n7kJtp5YEYg6ISq9lxLJSDvRUekx5zB9v8bh73zwhdzZTpcbVhne7DN/T
	JU+ngq6dLvX6xDjYi5lrn+DTjyO9MT7OmS7/amzNv1j25f/oGQieXAddqhu/FOTX3aNyBK2rtTMmW
	AO/s43rCj4zC0UtLEoRGUdd/WfXomIlGd4SEoq5dSgO0+20xU3LW4S75QUT7pEjOoWyeYlO6OfYjJ
	ZRyFhgRIr8rL0WFMva+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rziep-00000005kVm-465S;
	Wed, 24 Apr 2024 19:51:55 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rziel-00000005kTH-46jd;
	Wed, 24 Apr 2024 19:51:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0E2B1CE1724;
	Wed, 24 Apr 2024 19:51:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA47BC113CD;
	Wed, 24 Apr 2024 19:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713988307;
	bh=jtmAwDifDGJc40Ti3DRzPkHknfQW48k+SMlypzp4lZs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=db4GSOglHvJENshh/vuBu/MLHkqgfDPrR2ydUtSVPJW1JBWLfYzHD1EI/2jFTjMFU
	 0qKcqROUzsG5HeNOHNV0wC+nNbhxA1OjgvPLxNoER+83PNobrfSjTsfoTsXjTnbKH2
	 Hxvc7HvrRGU6Sp/ghYnWzpcWIyOSBxBsWa64WEEVFSi08Lm9tcpfYbFdEOjuTd/FsW
	 AWhlGaFX6Najj/9S/Lm5mhtUdQ73nsUJjp6HhavsN+3rzArL3v5KBaQHyGiwzSR7Pu
	 LgcQHjxXucVDpuy6qa3wcDJEFVrlfIuJkzCMaM9+3ryonnulvfCNMgqky3vx+lELhP
	 55v+0hyja4Wrw==
Date: Wed, 24 Apr 2024 14:51:44 -0500
From: Rob Herring <robh@kernel.org>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
	s.nawrocki@samsung.com, cw00.choi@samsung.com, jejb@linux.ibm.com,
	martin.petersen@oracle.com, James.Bottomley@hansenpartnership.com,
	ebiggers@kernel.org, linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org, andre.draszik@linaro.org,
	saravanak@google.com, willmcvicker@google.com
Subject: Re: [PATCH v2 01/14] dt-bindings: clock: google,gs101-clock:  add
 HSI2 clock management unit
Message-ID: <20240424195144.GA360683-robh@kernel.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
 <20240423205006.1785138-2-peter.griffin@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240423205006.1785138-2-peter.griffin@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_125152_475954_275BA89B 
X-CRM114-Status: UNSURE (   8.58  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Apr 23, 2024 at 09:49:53PM +0100, Peter Griffin wrote:
> Add dt schema documentation and clock IDs for the High Speed Interface
> 2 (HSI2) clock management unit. This CMU feeds high speed interfaces
> such as PCIe and UFS.
> =

> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> Reviewed-by: Andr=E9 Draszik <andre.draszik@linaro.org>
> ---
>  .../bindings/clock/google,gs101-clock.yaml    | 30 ++++++++-
>  include/dt-bindings/clock/google,gs101.h      | 63 +++++++++++++++++++
>  2 files changed, 91 insertions(+), 2 deletions(-)

This collides with Andr=E9's work adding HSI0. Perhaps combine the series =

or even the patches and just send clocks as a series. Then it is clear =

who should merge it.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

Rob

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
