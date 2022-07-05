Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3201C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 05:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7N45k1uasuzzJ+hjQ9ROIqScgvKEVqgfHsta5py6UE=; b=xRJPUDSkh1ScKx
	OdTIyWAK4uo/lUM3r9ZTPRrtf6ahbCQIy6qxx5LMEbTwsvQ9dC34HXZmssrHizg0ys+KEvn4HB41s
	SSWvP9pQVAoNpn/MS2wonkcljTdDoMMORzZ0z3m9MUU+wVMkm0sK2Cv9xmpmmUcNmq09msCH3RG2p
	HFINRjvjJRfOII/PodAmaAQ8mi0U+3HGiYowSvnkyejvWPxdbmQl4UqqV7DJlsJw29ZxY75J/YPMK
	BDttrkxhfjsDcw61T4/T7efPHtpm1R/ntinbdbPRJQlvxSoLMYfikudRX99GWigi8tm8E03pMGUt9
	bPQO56FAHBvnVaBzCRbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8b7d-00EgKY-12; Tue, 05 Jul 2022 05:29:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8b7Q-00EgCF-Rb; Tue, 05 Jul 2022 05:29:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6106860EB8;
	Tue,  5 Jul 2022 05:28:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0B42C341C7;
	Tue,  5 Jul 2022 05:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656998932;
	bh=DT4UIwXOPm/U5pxBn4S+Q62xBU0Dw1gcRV/ohROJwFE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pIUbXIvc/0tOr4blXlZxX/rWawVthHOblHaP7Oq/axisrbpj1lbnpvQpv2GZtStXJ
	 Vtgxow99Nz4+79ofpONR14MArcTUlZscijXYFT1YPeFabACnXZDby47xs5E80ROCBd
	 i39Jx8ieUln7fagCN+h7SBzereGX9Z7+IByitBw0kLbe7GxBtpjDIdGSHj8wtsS67Y
	 Bj2sol9UnFX27NGYyDMKnbvhFvSds36CjF5bL0YeYxyor4msYfB7pA6SVM7d8qJT0+
	 OELrzPGEtKg1Ei1axt6aeCUuZQ365rwpajEZxs9u0N3DCBpJSmud8QEbjNrHCbPp13
	 OONr6cnxONY6g==
Date: Tue, 5 Jul 2022 10:58:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jianjun Wang <jianjun.wang@mediatek.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Wei-Shun Chang <weishunc@google.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	rex-bc.chen@mediatek.com, randy.wu@mediatek.com,
	jieyy.yang@mediatek.com, chuanjia.liu@mediatek.com,
	qizhong.cheng@mediatek.com, jian.yang@mediatek.com
Subject: Re: [PATCH v10 0/2] phy: mediatek: Add PCIe PHY driver
Message-ID: <YsPMD7Wj/vN3HpEf@matsya>
References: <20220617070246.20142-1-jianjun.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617070246.20142-1-jianjun.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_222904_968484_4D93B091 
X-CRM114-Status: UNSURE (   7.71  )
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

On 17-06-22, 15:02, Jianjun Wang wrote:
> These series patches add support for PCIe PHY driver on MediaTek chipsets.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
