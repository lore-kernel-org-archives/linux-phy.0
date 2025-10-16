Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85435CCD183
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 15:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=oktd57uZimhDoAFYSetzaTg2zVopn5N1HnfTvLlXQ2c=; b=l1hQjYLi6wU9zH
	1jfzRvlt6aCwrzIq59JLdY3wsazY9z4oy3QawOLRgvB2pgPUzT05BRC91YpEcGSKstJR9EC6VTXLl
	kR5IfOErjhIEp++AsWjODYr/aYGvjc8rnBie2Brs3bpzxA16SSwJyS8Dfl9U1qcKwamBDQ04H2BtE
	mDEt+5ic8y7MycHkIJStFQStgAojUh8iojqg0IaUX6rzQMkT/bAQZj2E2cBA4Pj7fUzqcaApV+TY0
	F4auRsj6Q4BzfurcfVO1HO+o5HZzlLtrH6Nejh+dY4DtD7wsnERPJotJp00pQ1FHyJS38Gxvjp4m4
	Kf8FSBdqX1otxBk0jDEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9QKQ-00000005Hl1-0MPi;
	Thu, 16 Oct 2025 15:55:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9QKO-00000005Hj8-1bB1;
	Thu, 16 Oct 2025 15:55:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C3EA764013;
	Thu, 16 Oct 2025 15:55:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 461DDC4CEF1;
	Thu, 16 Oct 2025 15:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760630143;
	bh=HkFyKu+xLbSALL1o9HOxCzlRCTdBKmDeTKiXn+ccPxQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=EBgKyP628FMYhUyZybjaX9vcdmX7blg4QFheGJfsniNp1IlEFnJRZ1NANTGEfHG11
	 Vla5Fihywf+rTjx7GyV+c15i/GmE2kW0dPlVZ8NlromccQXbuBXHDOh9SXsZp7I0Qc
	 Ot8btIDd6cBdJtLbmkt+0BylDxEHhr32DgoSlwUENp/XYPP05PBuc+bQ5WZTZnBIP+
	 oznZX4WEhqodaGgJXcChseSGuXYJN6prVnUW9b5Bv4rE0Q777ZtyJmVPCIY1bwZp7l
	 SpUd5+kdLnll7X41HrlTE6bNNc55Ahf9M+UKpcsU1kc+HIC5c4GqG2micwthZV5Mq3
	 ubCGH1YpF7nKw==
Date: Thu, 16 Oct 2025 10:55:42 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sjoerd Simons <sjoerd@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Lee Jones <lee@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>,
	kernel@collabora.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>,
	Bryan Hinton <bryan@bryanhinton.com>
Subject: Re: [PATCH 05/15] dt-bindings: pci: mediatek-pcie-gen3: Add MT7981
 PCIe compatible
Message-ID: <20251016155542.GA985895@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251016-openwrt-one-network-v1-5-de259719b6f2@collabora.com>
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

On Thu, Oct 16, 2025 at 12:08:41PM +0200, Sjoerd Simons wrote:
> Add compatible string for MediaTek MT7981 PCIe Gen3 controller.
> The MT7981 PCIe controller is compatible with the MT8192 PCIe
> controller.

In subject,
s/pci: mediatek-pcie-gen3:/PCI: mediatek-gen3:/

Note that previous commits to this file use subject lines like this:

  0106b6c114cf ("dt-bindings: PCI: mediatek-gen3: Add support for MT6991/MT8196")
  a1360a6a72b9 ("dt-bindings: PCI: mediatek-gen3: Add mediatek,pbus-csr phandle array property")

git log --oneline Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
