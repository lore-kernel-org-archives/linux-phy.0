Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64DD8C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 22:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BAXMzC1NiYJklIhpdPQG8K0Iyz5rZ2NyTOjwyvmJRE=; b=Iv1unmZzr4aR2+
	neagKp7q6oqZIfZS3iW+zOFkpnwOmmCJYvH7nlmRW9wtIPSKk7yif8iItdzIyhssG/E6R+w6QrU5z
	Bf2jhpMPSITHLe7mHrfALNLoTwZOPXMJtHgni3+6xvxlqjaz43QzdfNnvx0b+XRkMnwRkROw8/1QX
	n0DUQCBz0eKJJ1DoHjLIz7oeZYasjeVDZbs+UY6PGvQgQlmtD506m1OEw0UT6mI/IblC86PM0L1kK
	Q+MKsguktOlhYmV79jVU1yQ0bfSbgKbZvuZc9nhlwEZ+n9eKzE4OXf6ibmW9K5OztTfAaaSVGepnQ
	Wdq+q5PsIjolly4oileg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nleUJ-002uyM-PY; Mon, 02 May 2022 22:25:51 +0000
Received: from mail-oa1-f47.google.com ([209.85.160.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nleUH-002uvO-P5
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 22:25:51 +0000
Received: by mail-oa1-f47.google.com with SMTP id
 586e51a60fabf-d39f741ba0so15624514fac.13
 for <linux-phy@lists.infradead.org>; Mon, 02 May 2022 15:25:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ZPti66UXm4IfcYFrgHcjam8ivBztkVbKAN8MYJx8xXQ=;
 b=5Qoz9SiTtW3g5nrs2Cj33bWixwJGEhF9UeUglSfHSeTemM4VkpztmVKg+SfM0SXmw2
 ulS8yTaEWS0qlvkqQGOZcGgZ2VysVJb0L4J7UVwqSOuEKL2uKkA+v3XcR8yYeFCabSD7
 fHHziSD169xYmCPU2JIWQO/bkD4Eoluvrx0LbQcbjoNMHCIPKLROdrMFaBnYRoCiFaL7
 AXhzECnAw60ICBvo9gHG915k2g//y7Zif9f/zwNZ4lznZDBMHgztWiMLsC9fDiLk4g2p
 W36nRWGxHU8R6Ian/zgdWUQs0klRGAmVzMj4J3GjIPPM7KymRJcmh5+Z7Q7zCA2Z75CL
 ujJQ==
X-Gm-Message-State: AOAM533Br7AaCufJb2jafu1aSQWN5XDN/bDlH/3DEaIBRxFH+YnJyN/H
 KUBMQgq4Q1yQzLz0niqpag==
X-Google-Smtp-Source: ABdhPJzc4zIGhmlMsPFpeqVHjYHKdxOfI2UDtoL6zkpdou6xZUxdMnFAkvVXaS7pha3iEYhHB6FtYQ==
X-Received: by 2002:a05:6870:c59d:b0:e2:bd6d:afcc with SMTP id
 ba29-20020a056870c59d00b000e2bd6dafccmr589284oab.284.1651530346411; 
 Mon, 02 May 2022 15:25:46 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 v186-20020aca61c3000000b00325cda1ffa1sm2800603oib.32.2022.05.02.15.25.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 May 2022 15:25:45 -0700 (PDT)
Received: (nullmailer pid 1905532 invoked by uid 1000);
 Mon, 02 May 2022 22:25:44 -0000
Date: Mon, 2 May 2022 17:25:44 -0500
From: Rob Herring <robh@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: bhelgaas@google.com, devicetree@vger.kernel.org, kishon@ti.com,
 lorenzo.pieralisi@arm.com, kw@linux.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, kthota@nvidia.com, robh+dt@kernel.org,
 vkoul@kernel.org, p.zabel@pengutronix.de, mmaddireddy@nvidia.com,
 krzk@kernel.org, thierry.reding@gmail.com, linux-pci@vger.kernel.org,
 jonathanh@nvidia.com, linux-tegra@vger.kernel.org, mperttunen@nvidia.com,
 sagar.tv@gmail.com
Subject: Re: [PATCH V2 1/8] dt-bindings: PHY: P2U: Add support for Tegra234
 P2U block
Message-ID: <YnBaaA4HIg0bVGUV@robh.at.kernel.org>
References: <20220423124858.25946-1-vidyas@nvidia.com>
 <20220423124858.25946-2-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220423124858.25946-2-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_152549_862306_4BEB0CB3 
X-CRM114-Status: UNSURE (   9.64  )
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

On Sat, 23 Apr 2022 18:18:51 +0530, Vidya Sagar wrote:
> Add support for Tegra234 P2U (PIPE to UPHY) module block which is a glue
> module instantiated once for each PCIe lane between Synopsys DesignWare
> core based PCIe IP and Universal PHY block.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V2:
> * Addressed review comments from Rob and Raul
> * Ran 'dt_binding_check' and 'dtbs_check' on this change
> 
>  .../bindings/phy/phy-tegra194-p2u.yaml          | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
