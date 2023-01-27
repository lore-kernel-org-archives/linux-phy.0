Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9993AC54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 07:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mj/ZKIHrU80Rk9nNjRgbXjGLoT5hsY5j2KMw7ybWPtM=; b=pbk79we2e0v1Ox
	9pCzFNmmQ3zL/zOiFBKxJQ7uH/sf1WSJXFc6ugCeKErIABwpOhjZhnmA7jAxfKEYBoAXFyF1keRT+
	PZZK/WR1Xjzdam7kWVaoVdiUHhkZgWd+S3aKA7snT6qopXpp2jXoG/ZGHzfB0/ro0hcgscyVIVpxF
	/+FXyjhVw+zm7T8ltVEkU5LPDQERAf+OTqAcXp6zyAnkywTKMj9I/KR3oDneJ+O6HOCuxshTxz+FH
	dl0yonHyMUgGDXIUGX4typITbkE6kH/y8KllTVqiSbrzxnFuMUAYgoyAk6b8GU6RO+hvfCIM3t9SV
	8GVqIEr+wuJvwFaPQJcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLJZ3-00DSJZ-UG; Fri, 27 Jan 2023 07:54:25 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLJYq-00DSHQ-1b; Fri, 27 Jan 2023 07:54:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5E01BB81FB7;
	Fri, 27 Jan 2023 07:54:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 600A7C433EF;
	Fri, 27 Jan 2023 07:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674806049;
	bh=CM71a7RaPTKo5G+aWp9LGHGbcPlqyBG685bqrz/8uJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ab38RrYubwJ/Bf8gU8e5ltFEMR680slK5s1jVaoKxRnglRIg1PFf826eC0hgtSVDV
	 HLmDjzOXdvMv8md5rlx735fM5c0OlSh4K3RbSVAoT29tc0OWZrni2aeEF0CH04lwnc
	 bhTYpVcLplNzIG2yaAOYCKoDQtP0dgW26+1LLOO00dRTaYay2t37bea6mYggYT+YGZ
	 0GYe5ROZVOiT5IDAr+eIihMXj6GTsxMlBtyCfOUh4HmfROsX6kS5CtY48TjrRXmF59
	 vpOqnDPuFz7GQuV9srMdOLa+EEniFdJ+zkZJcgc0GU05WClVGWE3AREDDr4FWAnVxC
	 Q3c236md0EikA==
Date: Fri, 27 Jan 2023 15:53:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	Camelia Alexandra Groza <camelia.groza@nxp.com>,
	Madalin Bucur <madalin.bucur@nxp.com>,
	Bagas Sanjaya <bagasdotme@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH v9 06/10] arm64: dts: ls1046a: Add serdes bindings
Message-ID: <20230127075356.GM20713@T480>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-7-sean.anderson@seco.com>
 <20230125234638.GD20713@T480>
 <aa602661-f7f6-ca63-d8a7-d6de0e924259@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa602661-f7f6-ca63-d8a7-d6de0e924259@seco.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_235414_936617_762771CF 
X-CRM114-Status: GOOD (  11.36  )
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

On Thu, Jan 26, 2023 at 11:43:26AM -0500, Sean Anderson wrote:
> On 1/25/23 18:46, Shawn Guo wrote:
> > On Thu, Dec 29, 2022 at 07:01:35PM -0500, Sean Anderson wrote:
> >> This adds bindings for the SerDes devices. They are disabled by default
> > 
> > s/bindings/descriptions?
> > 
> > The term "bindings" generally means the schema/doc in
> > Documentation/devicetree/bindings/.
> 
> How about "nodes"?

Yeah, or device nodes.

Shawn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
