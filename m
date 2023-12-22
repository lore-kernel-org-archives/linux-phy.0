Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 440C6C41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 10:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gb9eYeDlnB5+wdgci4jaOvs/d6L9rLCtrto25x2zqok=; b=r7wpnO4K0tDEmC
	e1fUjhUS+txXNIYi2tO8VjEQg0tn2qPVWhV7/d7RXlFsCpTlPGv35jlcp4/cygpOyzsAHyl/iV8B1
	qg6Zw31Uu5EyH5lfmgQxyfGdDLyBRnXRpo6G+fPJ4K87GNbbCKLUrfwhI4W3jY/ybs4OklqPUEMN8
	V4J8qKyVjqRDAMlIo3swrYcle0Qz7xThxUiwn4+T9NjBfaqHjzI0IdddYsWxPtgM8EtlxKI+W5Cyx
	5JF0rn7l9dLl+v4zNiuZD3jEdCY5IGDWlvrx2SQPlXP1nbHbDRjF5LxF8xZ/HWubq7H87CQy4Gtup
	pks0HJXtoXYFWNnLRkqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcVB-005Vvv-03;
	Fri, 22 Dec 2023 10:11:33 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGcV7-005Vts-2o
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 10:11:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 8B7B0B82175;
	Fri, 22 Dec 2023 10:11:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CCB0C433C8;
	Fri, 22 Dec 2023 10:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703239887;
	bh=DybWC/CA4ZameBSKRd+0rcXv+5qfoPmh0vOzSTJHZK0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DGSZCPmoiZPqwUl8F0x94v6QcbIUMnhOT/PJfbNPnZAAqIQ/1z4ETaYlb21tLAnHr
	 Wv0XkkkRjSJ6B5/7EFxQQ7w2c/bhC65R5U2PGJtL/IByuNYZMILDv63MRTH7/ETIzT
	 nZlvTh+zwHn2HsOV4azKfB7Yejp0DM0ScB7JMYyYozLl8Z0I+E84iUYyqefLHLHAsY
	 J4IxJr2+8+PDp6M/VdRMJ4+Ww+7pTB7r+JUscyCQF/aWmIlIA6f8NcVYfr+AQox4Pv
	 qzDforNP3ykYV+lfmJZRTZErSDpF8Gs+l0dim2iw7eeFuBKdOBObfO+QU5Y3A4YBt8
	 u8BI+gVIcyMoQ==
Message-ID: <84898c6f-8325-41f7-8186-c01a3cd830e4@kernel.org>
Date: Fri, 22 Dec 2023 12:11:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] dt-bindings: phy: cadence-torrent: Add a separate
 compatible for TI J7200
Content-Language: en-US
To: Swapnil Jakhade <sjakhade@cadence.com>, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: mparab@cadence.com, s-vadapalli@ti.com
References: <20231221162051.2131202-1-sjakhade@cadence.com>
 <20231221162051.2131202-5-sjakhade@cadence.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20231221162051.2131202-5-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_021130_044331_263081BA 
X-CRM114-Status: UNSURE (   4.59  )
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



On 21/12/2023 18:20, Swapnil Jakhade wrote:
> TI J7200 uses Torrent SD0805 version which is a special version derived
> from Torrent SD0801 with some differences in register configurations.
> Add a separate compatible for TI J7200 platforms.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: Roger Quadros <rogerq@kernel.org>

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
