Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D4D1C3A5A7
	for <linux-phy@archiver.kernel.org>; Tue,  6 Dec 2022 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rohOrlSTrE9CjHHBFUfaZOJJvEO3GHpdirq8CLNM79k=; b=f6Ntwvcy1dFRLD
	iy+VQwk28JSHrbYiwEnqCVCPWZVzdf6B1UgcPuuMsvizpCY5Ec0bozo4proVWG7+216s+BBjJGpOS
	LAx3/wpzCZ0Lic3p4C57GTzJ36sRaHCkDLogA1ggG2reGN5He3u3zyy7Btr0tqvvlfTDdulqssW2Q
	tAViBqo6hDG7PLFUtED5XLajr7z+IdecLFiVz1Q/2IN1iONKDfQ/G4JXqwM0icB8EygLlmWAjgxp7
	Zb0Kwk5tI9jgeCeYWtTV2Qsq1OvHWvY02QNYYCrsiFRuFaUmY0XegSkMDtBWgzoiOtMufnMWYFiAQ
	tMiQxFACVSc15IxVcHPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2deD-000jbl-Av; Tue, 06 Dec 2022 19:30:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2cY6-00HESZ-6F
	for linux-phy@bombadil.infradead.org; Tue, 06 Dec 2022 18:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=E4WP/qhI2oKbcD1jpWs73po58A006ZufmmeUWfQ5Qn0=; b=jW8j/I3FuUmj+ka2xfmRYZVHbm
	ilwUwbQjsepMaVeiAB16kQ5QPghkcW+MTYCP2piazokjQcBmhV+4jmDJgd8soune8w6O4ItC5Nwj9
	sG+5ErE501VQrDoK8cEtqSN/06rAaiC9PDkr9Cw4YlMOOks9vabuQ7ROPWuRTpR2yVcsPi3AF7n2n
	VAZGHfvoVsDfJkIgK3+Yt5tr8tFqH7LKYulpFz+dup4ZO+o9xUOTXYdq9jm2ZUpihwr4/jV17wCZD
	C1eSje2zzBEkzcXfTreZvn5oKEEhxXOAb3zAJryIhf3WNihvvDVvDCddvf37dhk1zVXkJ89fCOa1P
	++C0tg9Q==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2cY2-007wUM-TL
	for linux-phy@lists.infradead.org; Tue, 06 Dec 2022 18:20:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id F0784B81AD7;
	Tue,  6 Dec 2022 18:19:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7F96C43158;
	Tue,  6 Dec 2022 18:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670350795;
	bh=vz4R5HfdeLNtfH3g7bEOtrGumvaaG+44xj1/TQB8uy4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Rp5S7RlkyH3j2Vuq8MDypyrZPYTcBzm8zajehFI3PtYv3DLbSUGxN1HtUVjxtcGRf
	 1vFIOgdEjsf0LP/UZj3l5zgC06+XOYWfjC/9a3rH8swrFGM+ygG1bz5xEduu9pd0oH
	 3SnQ+2j5V/7BIcd0qhySsWnBWCbvkB3ftgRUmg/eifTjHvth9iG+3EM5zG8w24rJdZ
	 ER8qnvXpBDqyIFKvwOffHQ9Vnu+TLIWBqLEFStAbkoJYgq91Hl33S1m1BEI1xmZV/5
	 5IMj/x6qtFtzoCJsu5bm7FC39ksT+jEmkSj/wBRHLqsDMko7rZ6KEkjuJmhzpHJ9No
	 Q8vTItytG3qAA==
From: Bjorn Andersson <andersson@kernel.org>
To: vkoul@kernel.org,
	johan+linaro@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	devicetree@vger.kernel.org,
	Andy Gross <agross@kernel.org>,
	konrad.dybcio@linaro.org,
	linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH 0/3] phy: qcom-qmp-usb: drop sc8280xp reference-clock source
Date: Tue,  6 Dec 2022 12:18:59 -0600
Message-Id: <167035076327.3155086.14325619807509249586.b4-ty@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221111093857.11360-1-johan+linaro@kernel.org>
References: <20221111093857.11360-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_182007_033006_5564C1D3 
X-CRM114-Status: UNSURE (   9.79  )
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

On Fri, 11 Nov 2022 10:38:54 +0100, Johan Hovold wrote:
> The source clock for the reference clock is not used by the PHY directly
> and should not have been included in the devicetree binding.
> 
> As the new SC8280XP binding has been merged for 6.2, we should get this
> fixed as soon as possible.
> 
> Johan
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: qcom: sc8280xp: drop reference-clock source
      commit: 9eb18ed70bd0f78099cb64f691586dbd17923805

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
