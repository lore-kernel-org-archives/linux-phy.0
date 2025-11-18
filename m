Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E442CEE341
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 17:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fW8orjf+IT8F/0uv7jKMZqUvJhWQeNS6cjw2/U2ZvwY=; b=E0h66n0WMV/RB+
	POsHQjQaUq3JtPcuvClOm93BlqMu6WC20V7Y7CbILM+gbu3vfZ9PPApf6Fx747hosr1Up4SwRYVWA
	jciwysz0oaFOQqbDx4deLY7naahQw2ieycu7ukIF4rDxmoY9ULSqIaVzjMecAgjOTN3tfqiw6aoQJ
	3p333vB5VDKaR/GW6KBrYx97xEElekbE65aw3OrpnbgREhJcrEVvBcPhWTPz8Nvaxzoc+ElUE5+pB
	d2XcsxKxob9tyKhz2TPASqzNbGlF2DVy1I4PRCku+6VAooIfKlGOR0f5ZJ5suwQlzf+2MjUGfrVHC
	1NcjXAMweP/94P8QxvDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLPEa-00000000p8f-3Klt;
	Tue, 18 Nov 2025 17:11:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLPEQ-00000000p6O-3z43
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 17:11:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 96027401D8;
	Tue, 18 Nov 2025 17:11:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D168C4AF1A;
	Tue, 18 Nov 2025 17:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763485864;
	bh=wOZRNNIL+m5X/h13FesXwnoBhtVOzxcdpFfYndv3xl4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RDSJbAspBhtFe32YSTBs8uYPNiFEWfPcwFKM1ZnYHS/pAO2MFWEqnP8wwZEMKRxBB
	 Y5oWUjhcxjk+aMVjUfmPh7yxgW7k2h+9MEhn6KDy3lTgLtzRJXBmzIG8uvG0XKw3o6
	 5STIiUTtWwPSUO8vMcBcIDz/RZeNnFhtXr/TbmTD9TFFjhSLk+UswR2+Ypyz9d+ZX0
	 5u6RwKNGK2J0ZDPCryQ0d9ryiYvKf+QJa1x3VH/qwYhBzX4biOkeqoXWFML3OjwpAo
	 Mcf0jAf/PAM9dJWAgxAa+4nBl5Vw6Wgiwa4tCAAJwokx0GgcVQDrnapaz2r4VRQjLd
	 dsrxIawHtEKLQ==
Date: Tue, 18 Nov 2025 22:40:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
	Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v6 0/3] Add support for Glymur PCIe Gen5 x4
Message-ID: <aRyoo2Ve_hjgc84M@vaman>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_091107_004303_1A2BB8E3 
X-CRM114-Status: UNSURE (   9.92  )
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

On 03-11-25, 23:56, Qiang Yu wrote:
> Glymur is the next generation compute SoC of Qualcomm. This patch series
> aims to add support for the fourth, fifth and sixth PCIe instance on it.
> The fifth PCIe instance on Glymur has a Gen5 4-lane PHY and fourth, fifth
> and sixth PCIe instance have a Gen5 2-lane PHY.
> 
> The device tree changes and whatever driver patches that are not part of
> this patch series will be posted separately after official announcement of
> the SOC.

Please rebase on phy/next, this does not apply for me

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
