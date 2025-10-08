Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B55CCCA476
	for <linux-phy@archiver.kernel.org>; Wed,  8 Oct 2025 00:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cfwg8GqWqtaJwkePFtfZElnxtuUvpcNbwNC7epSR0KE=; b=rNPri8f7s+M0Qr
	abIvVQt/NTQTbR5RIhDCEeJzwuRykvv2ksMyViyjqu1XFW8RhW63q+swUNnYMAF8VNnbUDXupgSkY
	mQX93t3rldt+GDJEANkBFYoIvlkXsp2zzlzBuLzAP2ACKNr0it252VICjm0WWAFlmMrPQ9E3KFwH1
	iQzM6XuWR87DOQs8khhBFmelXwFPVjmy5VLWXvZcGJCd7Vg2JK5ilr5+ASjN9Ax5DbQOikmHnmiFT
	pwp9BR8JqZbBBqoKE+yXE/5xmZvn454kCBMt26WdGdu+b1I7Y+OH8fpLB1T5oh0I9X53kBh1SnfEq
	3x/8QzsS+pDUv2f6vwGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6IGO-0000000316k-0auO;
	Wed, 08 Oct 2025 00:42:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6IGM-0000000316c-2jlV
	for linux-phy@lists.infradead.org;
	Wed, 08 Oct 2025 00:42:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9BA3F61D3E;
	Wed,  8 Oct 2025 00:42:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23134C4CEF1;
	Wed,  8 Oct 2025 00:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759884157;
	bh=Us9OmsgR+fW1SGZHE7rtfd59UKKbvLz88NLfSMaVR9E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X5bgyMdAHLgoj3RqWaTvyULA6IPdyY+GtixaZvBRBwHVxogMHzWjE4U8tYiEp/ZWb
	 iP95JSBYpR/KyeZGAly0AfC7uS0/Sr8myiQm/VsFutyJwpHuYxGLzEqo8VJe+r/OJc
	 c5gHIHWkRBYKPPmbG66dtK9u0CwvRSnT0q3Bs+SNDuT88USobBwjHmESPjM3a2D+tU
	 kJVpYTUlx0P41ebg4JdO5X6DG/YPeLe/z+aEPnUxUdj6juAVkWuAteBDCXTTdJjKcu
	 7HQpVt8GAsxrmZs9esQCIB2r/sjk0kAjk/vyr5OuXh0MgD4Xd04qdZzNfx/ktU5egp
	 cPTjlXVhKXc7g==
Date: Tue, 7 Oct 2025 19:42:36 -0500
From: Rob Herring <robh@kernel.org>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
	dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org,
	vkoul@kernel.org, gregkh@linuxfoundation.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 01/10] dt-bindings: phy:
 qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Message-ID: <20251008004236.GA1833490-robh@kernel.org>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-2-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251006222002.2182777-2-wesley.cheng@oss.qualcomm.com>
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

On Mon, Oct 06, 2025 at 03:19:53PM -0700, Wesley Cheng wrote:
> Define a Glymur compatible string for the QMP PHY combo driver, along with
> resource requirements.  Add a different identifier for the primary QMP PHY
> instance as it does not require a clkref entry.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 72 +++++++++++++++++--
>  1 file changed, 65 insertions(+), 7 deletions(-)

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml: allOf:1:then:properties:clock-names: {'maxItems': 5, 'items': [{'const': 'aux'}, {'const': 'ref'}, {'const': 'com_aux'}, {'const': 'usb3_pipe'}, {'const': 'clkref'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml: allOf:2:then:properties:clock-names: {'maxItems': 5, 'items': [{'const': 'aux'}, {'const': 'ref'}, {'const': 'com_aux'}, {'const': 'usb3_pipe'}, {'const': 'cfg_ahb'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml: allOf:3:then:properties:clock-names: {'maxItems': 4, 'items': [{'const': 'aux'}, {'const': 'ref'}, {'const': 'com_aux'}, {'const': 'usb3_pipe'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
