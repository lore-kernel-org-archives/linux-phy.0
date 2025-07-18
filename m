Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FA15C83F1A
	for <linux-phy@archiver.kernel.org>; Fri, 18 Jul 2025 10:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gePwhWX9hNQOw4Tfb92yicf3OD9xdGrAhqKq/aW/gT8=; b=MVQeIs2tAmg33S
	Rxha7vWvw0IK4seRv9oxBt3nn5pWQrML3SOjM+4QIRwLPz0D4IkYOC9U+vsVZS7ovuw7QHmwvEPcP
	wuTXghHofFU/fQaZaqx06ElpkAHGvYLX3NI5FozE1FCRhuF6ceDuOmE87K4Aj6muFJ3QziUtAUDkT
	CoBY2ZJ1pt3FMujJuPK2eDQGsFkgJfwpTrV3MkTaK0gCO6/EWNDRfCtUy+vNZrqJpV5G4n2NfjAuU
	8b9V+TtKazzPdV9zGKQGtk8EdhpQRx8/v6l03e5tEXrjo6zo3ctrP1rQ/1TkH6FblXCyoXgBGH3Rg
	4/ZfB7TZOZFQ/1yJYKaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uciQK-0000000CJR1-0T7H;
	Fri, 18 Jul 2025 10:34:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uchut-0000000CG4j-1rUj
	for linux-phy@lists.infradead.org;
	Fri, 18 Jul 2025 10:02:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E24175C657B;
	Fri, 18 Jul 2025 10:02:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E111C4CEEB;
	Fri, 18 Jul 2025 10:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752832930;
	bh=YEshVgIRVJe+FIOG30qXtz98FkUKcdC9CfphVOWVuSo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xf39+wIDVK1OrrUxHmnLa08tKZQKbOEqtKMGVgrb3TjHC9YqGMPRAqqNXtlQfaeDx
	 sx1ohGFwFJ3yf0+xooCXClBpS+W+V+J+DakSfW8mYu7ExRihyfjEyUBD1IfwZ3HQWE
	 In9Tg9NMT5no4VPOV2Iu7MkwBuhowaCSgJH5ZBSOQZxDyNDondyfrX4yLZrq/7SPlz
	 m9lwkwzZewspGNC1M5nxlKZegUDYcUnpqJ+P87Ucopt3D8/hzXMxsvt6vWRhlFjpCD
	 VxHEyuwgqc2zwTFqqPMW4JD9HfrYqNcQw4Blln+V9HYzaQxTw1iBQf0RMS0H+yFhZf
	 DXzLEyPANX4UQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uchuk-000000007sE-1z1R;
	Fri, 18 Jul 2025 12:02:02 +0200
Date: Fri, 18 Jul 2025 12:02:02 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v5 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
Message-ID: <aHobmsHTjyJVUtFj@hovoldconsulting.com>
References: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
 <20250718081718.390790-4-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250718081718.390790-4-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_030211_520618_BC453E34 
X-CRM114-Status: UNSURE (   9.10  )
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

On Fri, Jul 18, 2025 at 04:17:17PM +0800, Ziyue Zhang wrote:
> gcc_aux_clk is used in PCIe RC and it is not required in pcie phy, in
> pcie phy it should be gcc_phy_aux_clk, so remove gcc_aux_clk and
> replace it with gcc_phy_aux_clk.

Expanding on why this is a correct change would be good since this does
not yet seem to have been fully resolved:

	https://lore.kernel.org/lkml/98088092-1987-41cc-ab70-c9a5d3fdbb41@oss.qualcomm.com/

Looks like you're missing a Fixes tag here too.

> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
