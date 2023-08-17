Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E7EC2FC14
	for <linux-phy@archiver.kernel.org>; Thu, 17 Aug 2023 09:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hhxdnu2idngIRDv2zM+4cnlfiryYNaV5cYc7fONlWUk=; b=jPwPMWSjrKP19x
	JhLjbpDTKHV+cDXh8RxVyxRVreM0avmxI6BhQIXH1wEUhulIQIReXUYeS+GZZD3FqJlSX3CeRrbWP
	E959LNNMD6PSiDJF0TILwOvl2Yw4+PN3DIuW47P+CnGYAHuI+Y/W1l/nngvjYVR75FrJ0pFvEHq2Q
	Q6H4nNIitXgK00OV5LccB1Ikyvl98IGCFiPH5IZAye1NCbymyfcJ5QwhGuZApMNMmIcYfLdFmTGn/
	6ijcSLJY8hDMjwGUmxkAnK48JIzkgEjvvsQRJC29v8f6Bt/ChVXWYjPplYW/SIW1EMkmuMwdRLWN1
	D1MinUXyRt4ojG8WaNow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWZjK-005z8L-0b;
	Thu, 17 Aug 2023 09:55:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWZj9-005z4o-3C;
	Thu, 17 Aug 2023 09:55:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 822DE63944;
	Thu, 17 Aug 2023 09:55:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96B3FC433CC;
	Thu, 17 Aug 2023 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692266138;
	bh=pXiGancAeYKnPcvOFhUswbg11PDFY6ZLcz2zikEUJVg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=brXns1YmUYp1vyVgROcwnPjf7nbY3k2odTOaRRIPfWHHZ7WMV1Rw+ZQdpvvtLe1Es
	 CG+otVE+H4qlFvN8qoV0Z4ZGjKYCdwLZ+05f+I/kRQf1383ISYuJg81eLSY0qC6NZ5
	 SP8uShxTY5gRC7/w5RPLAf2I0PN1LQl/riWzj+6tGdy/lVuykGoj5dF3cFVAplmSRf
	 5r/1GbONOFOIRZ3AQ+RFAJxmAgXEq3CZEMYdeTrIuzomhjanU8DnQnoKomzC5eCAkp
	 tavvCchX8+cCNvXuUmHSMcEgM/9GhoqUeLH+LKP8Tymw+wGSjJtBj3PG71HBQyd/IU
	 9xMkTBlrvXe+A==
From: Vinod Koul <vkoul@kernel.org>
To: linux-mediatek@lists.infradead.org, 
 Eugen Hristev <eugen.hristev@collabora.com>
Cc: chunfeng.yun@mediatek.com, kishon@kernel.org, robh+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
 sam.shih@mediatek.com, jieyy.yang@mediatek.com, frank-w@public-files.de, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 chris.obbard@collabora.com, kernel@collabora.com
In-Reply-To: <20230814093931.9298-1-eugen.hristev@collabora.com>
References: <20230814093931.9298-1-eugen.hristev@collabora.com>
Subject: Re: (subset) [PATCH v2 1/2] dt-bindings: phy: mediatek,tphy: allow
 simple nodename pattern
Message-Id: <169226613323.81413.1101515821069495424.b4-ty@kernel.org>
Date: Thu, 17 Aug 2023 15:25:33 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_025540_092007_B50509C9 
X-CRM114-Status: UNSURE (   7.76  )
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


On Mon, 14 Aug 2023 12:39:30 +0300, Eugen Hristev wrote:
> The pattern for the nodename only allows t-phy@... , however, for the case
> when the t-phy has no `reg` and only `ranges` (basically when the t-phy
> is just a parent node), dtc will throw this warning:
> 
> Warning (unit_address_vs_reg): /t-phy@1a243000: node has a unit name, but no reg or ranges property
> 
> For a node like this:
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: mediatek,tphy: allow simple nodename pattern
      commit: e4077ca4ebdefa1b4616e4dafcb67b621253b233

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
