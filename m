Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99735C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 14:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBdf7vzg24nnhfmEf4e/g8DTkM/k/UwucSNhs3sWV1Y=; b=bP+RxVdEU70y3+
	l1ayqAlkoX9Md2/TViSxMGqhb8S5m7ES+p4NkZLLNYlSAVpeKm1oLxbIN57Cc3J/TKrf4qrj1WQEd
	z1NYSHsTgPpEvBTEKa60kMITasNojzzu/HMndieklWEKEcSqk6Olc+LcpzHjYavlnxpgAhOOq71Oa
	gVrLqQfi/2WtF/HRw707tyUa5cTxUW7TU4EKpdvvfOPngxELVBmBN1xiGSEA5AIET4svVK/Z963IO
	yuhtn34Fi28attY/1RblLe4gOAv0s5Ur7k4U7p9X8nL+alk47PN44+KlCiQVOPswm7HTKYyJUlD0w
	DhkPVT7REUTKBF6SRCjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx8s2-00EQL6-2Z; Tue, 14 Dec 2021 14:33:34 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx8rn-00EQFt-2u; Tue, 14 Dec 2021 14:33:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C0E41B819D0;
 Tue, 14 Dec 2021 14:33:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EF81C34601;
 Tue, 14 Dec 2021 14:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639492396;
 bh=z+GniNxRpwIBEVDVvQdypS1hPDj1bVLpv2u1xe80R8k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kUmVg0i87tOQyXFIQd5jn6W69jxo5QLUKY2LVDsFtUdVZzw3xQaIfjKtRpWsB4hbb
 EKNvl1tTT9JVieZ/PCW1X6QFMJqmCfZUmQCK+ZGvGGw0Avo2RIIeaIUGeVC2dN4o7f
 GoR6dDbZf7zUk5GyHA1Mjl+/M61jSrC0dirbtnMwhDa15G10ozacjpEcUZhE67r458
 MHhbi82HFmXB+eqmN+Hl9OeQHn9VcOe579zUFcn9n42CoCoDFWTNVtHbeHw8ktgqUU
 YtXba5YksEQzyhRdiZdiUUeAyYeNvvck+OUZ5r0FuvJZSNOhG853K0qXkc55hGSsEI
 lvjynnHe3F7Qw==
Date: Tue, 14 Dec 2021 20:03:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com,
 marcel.ziswiler@toradex.com, tharvey@gateworks.com, kishon@ti.com,
 robh@kernel.org, galak@kernel.crashing.org, shawnguo@kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Subject: Re: [PATCH v7 1/8] dt-bindings: phy: phy-imx8-pcie: Add binding for
 the pad modes of imx8 pcie phy
Message-ID: <YbirJxaCGIPKwXkU@matsya>
References: <1638432158-4119-1-git-send-email-hongxing.zhu@nxp.com>
 <1638432158-4119-2-git-send-email-hongxing.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1638432158-4119-2-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_063319_288081_1B9D323C 
X-CRM114-Status: UNSURE (   5.85  )
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

On 02-12-21, 16:02, Richard Zhu wrote:
> Add binding for reference clock PAD modes of the i.MX8 PCIe PHY.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
