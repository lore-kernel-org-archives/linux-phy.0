Return-Path: <SRS0=BSok=K2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 476A3C47082
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:35:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 12276610C9
	for <linux-phy@archiver.kernel.org>; Mon, 31 May 2021 08:35:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 12276610C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPIm3zBidMSGWCVNjzXIyku0MKFHKy61qvv5oewT5q8=; b=latEKZerNCdy/e
	J18nVbxpnAn49IcQ1M7Mzia0JRdbPjX5JX4nkWY5r2IbwFCpTWwoBQsiHoESNxoWjpqBtg121ZhUM
	7l2HX5NFWPbAYA9cN6xBPRa/+5UrS2ERS0tZ47gumsFRQqAxP7u5WunwnuuAGznM1jjAOqmbkzP+b
	iLhPojpcPxf8tyWzYyyDSHT/mesISWvI4SJQegC4rMTeJFDs2GF/BJM/XSApOPMoXoeqVfSLXj8tH
	8/l84M2uwVjjRW1sKLma5QGbmUbUU4fclubS2u3DZ6KYDHL0O0Eo5PXFLUjiiLwVK2pvRqzS5zxxa
	2xPwyR0FOeTGreyzTqGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndOY-00BThS-Fr; Mon, 31 May 2021 08:35:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndOC-00BTbl-LG; Mon, 31 May 2021 08:35:13 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2ADA0611EE;
 Mon, 31 May 2021 08:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622450111;
 bh=h0daNFOBtnGVuD3sxjbRsyFpXcSCgAHAlgQieU7xUJM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jvUQtc6pLUtBmEvufELqzhlrgnGIYM0LZ9NeOR6Czd4DMs3h6KkluBBX+Rxly2iZN
 RrViLjY9vEJ9FQshDWkCHB2sS+rzhRPxLUHHPyQlT8H7lbOiXf3wSivLSm3DVKsbEy
 svShKts5m1oPpFmf4Vwk5HtdDzlEQ+WsHbeANY3CopHE1qOWcikv6Y8wojzmWHirNS
 xGgKSRUpeTwrFLe/mH8vB3zfjmmI9BwDwyA3P0Ecq3+7nddHLj6ZhbsgI7R+VocyGv
 xO+uswSheQeCtnZ3/gYpJpgdvKo0Rqw2Nz2XnGhRaSmXTD0wxuQE7PJjuQASUza9Rt
 24vSMwzEogvxw==
Date: Mon, 31 May 2021 14:05:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, kishon@ti.com,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/4] dt-bindings: phy: rename phy nodename in
 phy-rockchip-inno-usb2.yaml
Message-ID: <YLSfvDeKrB0b66Ol@vkoul-mobl.Dlink>
References: <20210518165658.12764-1-jbx6244@gmail.com>
 <20210518165658.12764-3-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518165658.12764-3-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_013512_751678_265693CA 
X-CRM114-Status: UNSURE (   6.91  )
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

On 18-05-21, 18:56, Johan Jonker wrote:
> The pattern: "^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"
> in phy-provider.yaml has required "#phy-cells" for phy nodes.
> The "phy-cells" in rockchip-inno-usb2 nodes are located in subnodes.
> Rename the nodename to pattern "usb2phy@[0-9a-f]+$" to prevent
> notifications. Remove unneeded "#phy-cells" from parent node.
> Also sort example.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
> phy/phy-provider.yaml

This fails to apply for me, needs rebase..

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
