Return-Path: <SRS0=B4Pq=PG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA31EC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 19:47:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A3F160EB8
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 19:47:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7A3F160EB8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x54uAHLQZBgcm/AEsrczjFq1abAoGkX3xavD1ZkHKNo=; b=llIks7Yjh3SqnO
	5gVw6DVxS0jQuu5g6wkFLDXuWntBRBSx1Gdr4NR5w41AN6e+L+8yyH722CVkiyuCEFpY15Iacz3WY
	22A09Bx/fpygShh/j98zHTJBINS3nxlZI4SR7psDc5Uc6Qchw/ayVxoN/PGbMXrluj962IcqzJZBa
	gRhgcE7deShMbpc9xRI2cggozwemnnytjMade3DpA37RZN4q+7k/5ydFQUGouK/H2Q8vq276vimx7
	Icms3bG4HjC3WB8bHPsSt/KB43T73UY52hRxOnEbJb98e9HBOYsRFTWBw6EB4pVr5zEztCa3XWRmt
	sOJWWSnFbxBh48yvlXjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcYbH-00H74U-O7; Mon, 18 Oct 2021 19:47:11 +0000
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcYKO-00GzxI-AG; Mon, 18 Oct 2021 19:29:45 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 l24-20020a9d1c98000000b00552a5c6b23cso1128884ota.9; 
 Mon, 18 Oct 2021 12:29:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uxaQFenmJzGwC+IUubS4cWsAXC6ECKn16PE13Pm+TzQ=;
 b=ejrtIwMaFOoWQEfvc9NiUoDnLyNvKZd2dQlJI/CNDyTF09q6+V/d40KNWJkWqj88Gm
 hQ0vne6ZSV+BrT1Ebjg9Zj/UWPhgIG1V9wXNemTplmP43z2Z+PFVkZ9/D3DA9TCHRqq+
 I9Mczn/DwocGkysXF+14N9l/wreF7BnJnxvC2bMnBydjI0jyyeC0qdeBXphICxJ2Xss6
 EOB7gNWireG88A6wmVJ9rnODo+XD/M3KKX9EbSetz0AiHI8Ag2yqKNFCTqSBVWcQMwaN
 JkHGuwU5snAiqlCXYgxRwbNYTVLcRok3Pkyb8Gc8HBAvEhOy97+qsi/GCELWEJkzhD+a
 cqyQ==
X-Gm-Message-State: AOAM531KYgDxAZjDsCnBnFxltBUbRQDq92B/3pqNQAHoe3TA0NpJHUHj
 0IwXNk7t8rBn86wTGLchpw==
X-Google-Smtp-Source: ABdhPJxQt1AtyRJgxbShImCdxQMW79KrP3k81bFkVpuAM4lbP8oIQTaSCyu7Ectm95KWhvJBq11R4Q==
X-Received: by 2002:a9d:842:: with SMTP id 60mr1466167oty.302.1634585383054;
 Mon, 18 Oct 2021 12:29:43 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id u21sm3104983oiv.25.2021.10.18.12.29.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Oct 2021 12:29:42 -0700 (PDT)
Received: (nullmailer pid 2805582 invoked by uid 1000);
 Mon, 18 Oct 2021 19:29:41 -0000
Date: Mon, 18 Oct 2021 14:29:41 -0500
From: Rob Herring <robh@kernel.org>
To: Amelie Delaunay <amelie.delaunay@foss.st.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, devicetree@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: phy-stm32-usbphyc: add optional
 phy tuning properties
Message-ID: <YW3LJWOCzZm3jxuJ@robh.at.kernel.org>
References: <20211015161427.220784-1-amelie.delaunay@foss.st.com>
 <20211015161427.220784-3-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015161427.220784-3-amelie.delaunay@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211018_122944_389612_CCFC5CDB 
X-CRM114-Status: GOOD (  11.19  )
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

On Fri, 15 Oct 2021 18:14:26 +0200, Amelie Delaunay wrote:
> This patch adds the description of new optional phy tuning properties
> for usbphyc phy sub nodes.
> 
> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
> ---
> Changes in v3:
> - Use -microamp instead of undocumented -milliamp
> - Add '|' after 'description:' on each property needing this
> Changes in v2:
> - st,phy-tuning property removed
> - tuning properties are now put directly in each child node
> - tuning properties are no more free form text and their name reworked
> ---
>  .../bindings/phy/phy-stm32-usbphyc.yaml       | 129 ++++++++++++++++++
>  1 file changed, 129 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
