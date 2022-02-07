Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93C7AC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 06:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FBVRvp7SD7QcNWPthw/tUiEu429EdYguvt/TAKJqLU=; b=ypS97/JwYDGH6S
	/hrscJqhPfYcC/4BcMvPurLF+XYDQhbYjZhL6RDCw7nl0aUx/N1LIHI7jZTdrPcazWDGyj/tab/jO
	EEf9ejn4Hvad3WMrfsH3XN7pXfShGKmAZkzq8wB1Y+GOVMuEicMFc9jxNKTrlXiXBtEbItfxu7iii
	k7HZC6RyAsfekZeV6jrV0kwpR9T1/eMFssmJOQMSAhnyuCzf9Bco+qYHtqLN9vtd0AQRR3/EdkRzJ
	gsRpaRVmFhZfDRpzJAa9PwmXQMUtPSTS0UvXkM6pm+6DTqq41D2e1I3VxW+2ChkjS4S2Dpma+XnQ1
	YTUBzUEMMR3BtRWTbzDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGxoG-009BH7-0Z; Mon, 07 Feb 2022 06:47:36 +0000
Received: from mail.tambre.ee ([2a01:7e01:e001:cc::3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGxoC-009BG2-5U
 for linux-phy@lists.infradead.org; Mon, 07 Feb 2022 06:47:34 +0000
Received: from [172.16.1.108] (unknown [194.204.61.131])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: raul)
 by mail.tambre.ee (Postfix) with ESMTPSA id 249867EB02;
 Mon,  7 Feb 2022 08:47:26 +0200 (EET)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.tambre.ee 249867EB02
Authentication-Results: mail.tambre.ee;
 dmarc=fail (p=reject dis=none) header.from=tambre.ee
Authentication-Results: mail.tambre.ee; spf=fail smtp.mailfrom=tambre.ee
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.tambre.ee 249867EB02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tambre.ee; s=201812;
 t=1644216446; bh=1ZuSZkK917+DnbsBJTyoKnsNI3AbwbnGFtaNh1AErE8=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=wOHR/Bbmhh6Zh+XHczx2X0WjMYtd3PP60SzboIictEX28QeQkfOtl1UKOxSkIxoY2
 SOOxEUqfTq+y+xPTWTRcQqYagfE58hP8e7eH5zQ+RIKiUlEU6Oc0W5VLhOFe+wYEbb
 OxS5Ji36pH7WzTmHCYgHIYCKJ1uoWRaAddTbmdD6/yvWNrSTBYcA3AygkhNPuRetc7
 bpzDvgLycBGe6Pn638YaKrICwH+vTpOhddcGwnq1s3XzcUWEycRxRFr4q/l8cbas+M
 CHUY+yK1FZuDSYlWfXupJ/M5bcVTTQs9kMae8BlHPGVL0LHDKbhKtI51sSqpC8DIpK
 O1+s4ytj8wg5w==
Message-ID: <dcbf28db-d47a-a2e1-dae1-48f17f9a703a@tambre.ee>
Date: Mon, 7 Feb 2022 08:47:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [PATCH V1 04/10] dt-bindings: PHY: P2U: Add support for Tegra234
 P2U block
To: Vidya Sagar <vidyas@nvidia.com>, bhelgaas@google.com,
 lorenzo.pieralisi@arm.com, robh+dt@kernel.org, thierry.reding@gmail.com,
 jonathanh@nvidia.com
Cc: kishon@ti.com, vkoul@kernel.org, kw@linux.com,
 krzysztof.kozlowski@canonical.com, p.zabel@pengutronix.de,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
References: <20220205162144.30240-1-vidyas@nvidia.com>
 <20220205162144.30240-5-vidyas@nvidia.com>
From: Raul Tambre <raul@tambre.ee>
In-Reply-To: <20220205162144.30240-5-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_224732_837942_7943C675 
X-CRM114-Status: GOOD (  10.54  )
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

On 2022-02-05 18:21, Vidya Sagar wrote:
> Subject:
> [PATCH V1 04/10] dt-bindings: PHY: P2U: Add support for Tegra234 P2U block
> From:
> Vidya Sagar <vidyas@nvidia.com>
> Date:
> 2022-02-05, 18:21
> 
> To:
> <bhelgaas@google.com>, <lorenzo.pieralisi@arm.com>, 
> <robh+dt@kernel.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
> CC:
> <kishon@ti.com>, <vkoul@kernel.org>, <kw@linux.com>, 
> <krzysztof.kozlowski@canonical.com>, <p.zabel@pengutronix.de>, 
> <mperttunen@nvidia.com>, <linux-pci@vger.kernel.org>, 
> <devicetree@vger.kernel.org>, <linux-tegra@vger.kernel.org>, 
> <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>, 
> <kthota@nvidia.com>, <mmaddireddy@nvidia.com>, <vidyas@nvidia.com>, 
> <sagar.tv@gmail.com>
> 
> 
> Add support for Tegra234 P2U (PIPE to UPHY) module block which is a glue
> module instantiated once for each PCIe lane between Synopsys DesignWare
> core based PCIe IP and Universal PHY block.
> 
> Signed-off-by: Vidya Sagar<vidyas@nvidia.com>
> ---
>   .../bindings/phy/phy-tegra194-p2u.yaml          | 17 +++++++++++++----
>   1 file changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
> index 9a89d05efbda..6ba1f69b1126 100644
> --- a/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-tegra194-p2u.yaml
> @@ -4,7 +4,7 @@
>   $id:"http://devicetree.org/schemas/phy/phy-tegra194-p2u.yaml#"
>   $schema:"http://devicetree.org/meta-schemas/core.yaml#"
>   
> -title: NVIDIA Tegra194 P2U binding
> +title: NVIDIA Tegra194 & Tegra234 P2U binding
>   
>   maintainers:
>     - Thierry Reding<treding@nvidia.com>
> @@ -12,13 +12,17 @@ maintainers:
>   description: >
>     Tegra194 has two PHY bricks namely HSIO (High Speed IO) and NVHS (NVIDIA High
>     Speed) each interfacing with 12 and 8 P2U instances respectively.
> +  Tegra234 has three PHY bricks namesly HSIO, NVHS and GBE (Gigabit Ethernet)

typo: namely

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
