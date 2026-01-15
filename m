Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 319FDD3CCAE
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jan 2026 04:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yinrKR6+8uOi03iqaDCaolkWkt0msdmUUr8GsCRmIIg=; b=Ep7c1K3FjHOARp
	r1RRrXEnjRAQsLD+08oyfXOIP7onNPpbDz4lEFfyqpKMn1M5hgOQmxgNaGIg3WfQsT7Xj4EyThrUc
	Ecum4+aJcqH59j533m885ZCGgH7qSUz6l8f7m3vN44poe5Tz9eZp66PXJK73BOmwGXFaMhp2ynnCK
	L3YJv4GkZ27UfF5kSm4OTftqSo5QFmmFMOvFdV8tSZSKcJcB1YY8132dVlOP9iwKpF2lhDM7okRlQ
	7rnDx5RNum0+eJu8Gop8bBfHY8de890vy64gvxN3ObZR5H2zjuzTXgj4NSJ2vX2So8dZajMHwLl62
	D04UjtaUbOEAnk3VMYAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgFAa-0000000BmU3-2FKF;
	Thu, 15 Jan 2026 04:41:16 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgFAX-0000000BmTs-24fa
	for linux-phy@lists.infradead.org;
	Thu, 15 Jan 2026 04:41:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 96FBF6013D;
	Thu, 15 Jan 2026 04:41:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91134C116D0;
	Thu, 15 Jan 2026 04:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768452072;
	bh=UHjpx22YuJnHJqWtXfiObY3dVQjR1JqwODWSHMIZ4LY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DDCJMgAdEqBM+yeGhiaIkOF1MpOCbkjrUcoa8nswVmnxj7KyFV+wDhrIpdyo6nHyJ
	 eZ8EBPPsrpCmasWZ2LZKOM+qOFvd546Ye3WNggXzV13MM+9Ypy55oxK9oAe3UE4/QA
	 eN6cGRYrqLlCOmsU5mvsspdn5ABG4GjHoaemTIKRR8aCqrZT9qTpeGBTVXkPV9k8tP
	 dpNl/+/an9sji6wqrZP+4k4cb42KW+YSG/XQHgAmzVunbnOUSaRZ7LVsomvMiL5KDu
	 vgAUsdyAj+SozFdXEwGktwAheMEX3jRd2Zmy0Mhl15HMwXikp1W/52kRUSgni0mTuu
	 vixbBd9GbbgaA==
Date: Thu, 15 Jan 2026 10:11:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: convert to DT
 schema
Message-ID: <aWhv5IDnSqqCFoNE@vaman>
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
 <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com>
 <aWelQ7P1kjKrQMG9@vaman>
 <b86695e3-9d61-4e9b-aed2-d2585d8646b5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b86695e3-9d61-4e9b-aed2-d2585d8646b5@gmail.com>
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

On 14-01-26, 20:16, Charan Pedumuru wrote:
> 
> 
> On 14-01-2026 19:46, Vinod Koul wrote:
> > On 07-01-26, 16:11, Charan Pedumuru wrote:
> >> Convert TI PIPE3 PHY binding to DT schema.
> >> Changes during conversion:
> >> - Define a new pattern 'pciephy' to match nodes defined in DT.
> >> - Drop obsolete "id" property from the schema.
> >>
> >> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> >> ---
> >>  .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 127 +++++++++++++++++++++
> >>  1 file changed, 127 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> >> new file mode 100644
> >> index 000000000000..41b3828723ae
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> >> @@ -0,0 +1,127 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/phy/ti,phy-usb3.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: TI PIPE3 PHY Module
> >> +
> >> +maintainers:
> >> +  - Kishon Vijay Abraham I <kishon@ti.com>
> > 
> > That is not correct, please check the current people on TI for this.
> 
> I checked the driver author and MAINTAINERS, I couldn't find anyone.
> No one seems to have updated the MAINTAINER.

Please chekc in git log about recent contributions from TI people

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
