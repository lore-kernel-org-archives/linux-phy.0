Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41B20C83F0F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 03:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6sdvOe/I/OQmlXGFHpKs6AM6dmVRQwjwJ14wkb2xfPI=; b=kzBAz7Tkn8WIxHgu3XIzKO2/wi
	KilbVeimVB89L/5ENkk0GuRJ4pqvwF9ReHRXh5+nhnhsmrAOeOPn8wOh48doScNcNpJGtwodK0Qb2
	MtmoXLgbHedVOn71SjC8urJFjwK8JgbKuOOz/qqSDjv8CQAhdG5M8mKvVM4+iOGr0CQaMzuyMECmE
	OfDrgQjOqbdG9hmjnXSa1I3O+s3I9M2hIuliKqXWeRnHjk3lhIcqKWR9XShef07Ob8lPoDNRh7sBd
	jJN/6uqSqETOxux51Ftcvyb3EWL+PYoIdfptW76wNwvEkUOpj/h0qMLu4SqI9fHzGixZ1SCp+P3h6
	9Yuihfpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZi1L-0000000AaMa-2jcs;
	Thu, 10 Jul 2025 03:32:27 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZi1J-0000000AaMC-0G7S
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 03:32:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id EDE89A53DB7;
	Thu, 10 Jul 2025 03:32:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21A33C4CEEF;
	Thu, 10 Jul 2025 03:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752118343;
	bh=oxGPO90kQ8j+s8Nl8EgW9xfp03BNzI52lv+hwW5eeqI=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=hAoVTWu32BeoY6rMDV1LAW6x1InCW45cEMjW3Ok3rX1vaXaAkfIybTgrZQ6DrfF0C
	 yK/0L8ipNICEfa/yzlJHR1Tb7iWiq42J6Ca77rFmVkfWZrqq2qlR28KIArzhoFS/zr
	 94/tTOFTfGlTuYtNaaPkD3un3cdGZyEZqglmlHu7gRSAM6A78M5O6ICyedni4N9DpP
	 fqTLhR+jt9PlLmKZC11MK5d9So7/BF4z11ZtMhF1z+qvTGhno21FD6eqmOV9YwdznQ
	 rt5dVkeV6vjfS4JDzs/VVYakb8x94IE3zrb1e8qujyJ/VDt+rr2ovWlCRslG2La/db
	 0lwpKxUzAHzWA==
Date: Wed, 09 Jul 2025 22:32:22 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, vkoul@kernel.org, anishkmr@amazon.com, 
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
 jyxiong@amazon.com, miguel.lopes@synopsys.com, kishon@kernel.org, 
 linux-phy@lists.infradead.org
To: Karthik Poduval <kpoduval@lab126.com>
In-Reply-To: <7f4b676678b27ea91314c834a297c1e057959b09.1752106239.git.kpoduval@lab126.com>
References: <cover.1752106239.git.kpoduval@lab126.com>
 <7f4b676678b27ea91314c834a297c1e057959b09.1752106239.git.kpoduval@lab126.com>
Message-Id: <175211834224.541763.16377287764717313428.robh@kernel.org>
Subject: Re: [PATCH v2 2/2] phy: dw-dphy-rx: Add dt bindings for Synopsys
 MIPI D-PHY RX
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_203225_173145_CA71A336 
X-CRM114-Status: UNSURE (   9.21  )
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


On Wed, 09 Jul 2025 19:42:21 -0700, Karthik Poduval wrote:
> Add DT Bindings for Synopsys D-PHY RX, presently tested on version 1.2
> 
> Signed-off-by: Karthik Poduval <kpoduval@lab126.com>
> ---
>  .../bindings/phy/snps,dw-dphy-rx.yaml         | 44 +++++++++++++++++++
>  MAINTAINERS                                   |  7 +++
>  2 files changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.example.dtb: dw-dphy@900000040 (snps,dw-dphy-1p2): reg: [[0, 2415919168], [0, 32], [0, 2415923200], [0, 8]] is too long
	from schema $id: http://devicetree.org/schemas/phy/snps,dw-dphy-rx.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/7f4b676678b27ea91314c834a297c1e057959b09.1752106239.git.kpoduval@lab126.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
