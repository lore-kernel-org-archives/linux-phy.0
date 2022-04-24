Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA1F7C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 24 Apr 2022 09:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVhYSSw2cwCI2t6i700ul/RQfJ54iczMZ2PIW4kgO6E=; b=Kr5wEhofKZQdIk
	ar6gw9FREaA2PQ3mQYZP+cnEALTBjrfpmrvTaJzINwLyId29ZibNdT4+K+wuVS0PNmwKw5k/3Zgli
	ukG2Dupxs9GfFil6A6sQTKHEE2aELhpY6i1pdHahgTqxFJ55q+T5gn7ggX3QdOjPO9L2HRZk7eFO0
	6wzvYqz55OCpxcqBjz2yMgDMEpe5ELEv45aJnYbUF3GINg6Ogw3dSTzeh2l/y2Ha11qjWIERSsdL1
	0Hav2QfwDsS+r/I0p/jBRhlVbsyoPCqrQa5fLCLnmDIAaIB+o1BpaAonNe1pIhDPRQ3Ya0fcGI0E4
	S9rHAjlzs8kd2pNjtPHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niYjR-006Hzd-5M; Sun, 24 Apr 2022 09:40:41 +0000
Received: from mail.tambre.ee ([2a01:7e01:e001:cc::3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niYjN-006HzA-Bx
 for linux-phy@lists.infradead.org; Sun, 24 Apr 2022 09:40:39 +0000
Received: from [IPV6:2001:7d0:8a11:4700:c4d5:f1b8:fb37:c140]
 (c140-fb37-f1b8-c4d5-4700-8a11-07d0-2001.dyn.estpak.ee
 [IPv6:2001:7d0:8a11:4700:c4d5:f1b8:fb37:c140])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: raul)
 by mail.tambre.ee (Postfix) with ESMTPSA id 0406480063;
 Sun, 24 Apr 2022 12:40:31 +0300 (EEST)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.tambre.ee 0406480063
Authentication-Results: mail.tambre.ee;
 dmarc=fail (p=reject dis=none) header.from=tambre.ee
Authentication-Results: mail.tambre.ee; spf=fail smtp.mailfrom=tambre.ee
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.tambre.ee 0406480063
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tambre.ee; s=201812;
 t=1650793232; bh=1O0toTBquK9KiT+VEn92hd5P+unHn/BII6vbA++Qp2o=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=mzalCyDNVx0FOQrusC4u733EigupzX86l6VGu2yc0xZS2KYyKuv39TrtFsmh497LT
 KkBSPTsn5tFwHO/u18BMXBl3TE3akS9jLhJ36VffGLP/utQ0MW9zHwrsofyKPhEtGB
 DKRUK3BiHXXEZwY+zL8gx8Wj+UrLyRGhXUW9o6S+bZ9KyCRtjn/bzKSiQ+qGORyFkK
 rUe8zmWlbCdtZ7drjIe7ObyiUVXeFIsVvNpayMfL+2ay9Nf8xZ3pS+BzGG5mlbxA8q
 dpjWDvNNpQN806y3RP41OxzIXH3t8srzs9+svpdnwyE2bmqOjjYA6tz405pUFJo9MX
 hpuwoaQl1l4DA==
Message-ID: <1a2a1190-f5d9-e37a-60c0-c7e544b3f24c@tambre.ee>
Date: Sun, 24 Apr 2022 12:40:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH V2 8/8] PCI: tegra: Add Tegra234 PCIe support
Content-Language: en-GB
To: Vidya Sagar <vidyas@nvidia.com>, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh+dt@kernel.org, thierry.reding@gmail.com,
 jonathanh@nvidia.com
Cc: kishon@ti.com, vkoul@kernel.org, kw@linux.com, krzk@kernel.org,
 p.zabel@pengutronix.de, mperttunen@nvidia.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
References: <20220423124858.25946-1-vidyas@nvidia.com>
 <20220423124858.25946-9-vidyas@nvidia.com>
From: Raul Tambre <raul@tambre.ee>
In-Reply-To: <20220423124858.25946-9-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220424_024037_884157_DC8B8BFC 
X-CRM114-Status: UNSURE (   3.99  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2022-04-23 15:48, Vidya Sagar wrote:
> +	/*
> +	 * Controller-5 doesn't need to have its state set by BPMP-FW in
> +	 * Tegra194
> +	 */
> +	if (pcie->cid == 5 && pcie->of_data->version == 0x490A)

Maybe use TEGRA194_DWC_IP_VER like elsewhere?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
