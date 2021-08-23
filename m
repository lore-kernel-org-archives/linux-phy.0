Return-Path: <SRS0=LI2T=NO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A118C4338F
	for <linux-phy@archiver.kernel.org>; Mon, 23 Aug 2021 01:40:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5B0DF60E9B
	for <linux-phy@archiver.kernel.org>; Mon, 23 Aug 2021 01:40:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5B0DF60E9B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCNgaHwtftm+Yy76bQczcGeD+ggUlefE3SIO+VBKORg=; b=qoLSDuWpbhD+w7
	dYu33DcHzo8Ux4peoL+xZHLnmpPCGD2Qn/foQZKadOQazXjHnFu5XFttrTIQJBqWf0CfiXBsXYjQ8
	H4ElyD/yxpgognyHT0dW63qqMVisIeEmgIhTVyaQxH/tqG0NyOq+GnsY44mv8RqPC4/7CgDdZ9hPw
	YFhsGfXP3CRaP2pdIei0Fj7M/w/OR4jSMim8qu7WXtQr37KvNwjZxwS8YiAjnSQ0eH2iTWK/CwWPZ
	Q6vrgfpWgg/EbBp6ZWMwG4/9TUtO7vMDzBfDBIXvBOVfYSKe/8KrnDhdpGM4F2tt3fTB89rezkTK8
	xOTFHVLOZU2zv/w19Fyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHyxM-00F8FV-Rz; Mon, 23 Aug 2021 01:40:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHyxH-00F8Ek-Ez
 for linux-phy@lists.infradead.org; Mon, 23 Aug 2021 01:40:55 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id DA3752A5;
 Mon, 23 Aug 2021 03:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1629682850;
 bh=k6+4OfI45DhHfve81i0giUwJcmmc/TpvDjpMdvv6gws=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iqHohXABRCQCvowzxtA0IWjvs3got1DFZUZJTdxTp0ywrY3aZD3z7dCiiA4KJbjXG
 5FgQiffaab0nPXS05IMWYwXdB6y1jplo+HXbge0zrR6vIXxNXd0ryDRMPrC7nc/bP4
 LUWt/vWPhAKh8VzM5m7u1S2EXYK6QElWUvHTdHBg=
Date: Mon, 23 Aug 2021 04:40:40 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 4/6] phy: dt-bindings: cdns,dphy: make clocks optional
Message-ID: <YSL8mH8hd/PzyRRo@pendragon.ideasonboard.com>
References: <20210820190346.18550-1-p.yadav@ti.com>
 <20210820190346.18550-5-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210820190346.18550-5-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210822_184051_699619_D9E26A1F 
X-CRM114-Status: GOOD (  14.08  )
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

Hi Pratyush,

Thank you for the patch.

On Sat, Aug 21, 2021 at 12:33:44AM +0530, Pratyush Yadav wrote:
> The clocks are not used by the DPHY when used in Rx mode so make them
> optional.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> Acked-by: Rob Herring <robh@kernel.org>
> 
> ---
> 
> (no changes since v3)
> 
> Changes in v3:
> - Add Rob's Ack.
> 
> Changes in v2:
> - Re-order subject prefixes.
> 
>  Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> index b90a58773bf2..3bb5be05e825 100644
> --- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> @@ -33,8 +33,6 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - clocks
> -  - clock-names

Could you turn this into a conditional requirement based on the compat
string, as the clocks are needed in the TX case ?

>    - "#phy-cells"
>  
>  additionalProperties: false

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
