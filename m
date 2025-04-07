Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1298CC369A2
	for <linux-phy@archiver.kernel.org>; Mon,  7 Apr 2025 15:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X8Dun/H/Frik59UcFDzjNFp3D6KVGj+0c4twwVDJgmA=; b=v8YWm2b1bMt5YBzBJqMYwAYw1/
	5UenST7DhyikDucDbH6nx/NxtUk1NNxxiVsLGwgftvqyqPq6K2tPQUUb3oR/gzVOCgRCkgn4UG0kK
	QVlU//m2/Jh9V48ZbdWH53Nm40X55KpThiZUqkmnwgVdQf5LCKa3j85OzyVOEj1AO22njg0fsCnVp
	eBbDj1v3dIDHjiU718kcn3LMwqwcJ8VIiz01BSeoC7a/Ht4UDli8rrKe69PGWLFO8bOuPqBnE5yby
	5P7ZFz+YN4yTF1bmlmqPLJg6e8qIL+AmIbwChd28iLlHakMKfmfxVyz5WxR9c+AzvqfQ8BYyue5HF
	BDcjk0XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1o9Q-00000000tn8-3IfE;
	Mon, 07 Apr 2025 15:12:40 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1msb-00000000bWK-1CaA;
	Mon, 07 Apr 2025 13:51:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C8033A489FA;
	Mon,  7 Apr 2025 13:45:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00E29C4CEDD;
	Mon,  7 Apr 2025 13:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744033872;
	bh=/4UbHHj3ELGJgxeyuvL3Ow2/535NK31HYifR4a3PlBs=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=FHOGmumxpjPbtEi02dw/UrPdWcSj6OgVNu6Z8djsSYXGGSTMmRhcgg5/PykumAhsv
	 APr0UaT7wm3hFEbsV1rDGljw+MBpEUbbrbEWzeS9Yna+/e/uZyh53/K2YsaaygIFYR
	 2vE5s10Pyfnd+64WVGjRoz1X/CDgBdwa6w5Z8es7NCv1mkOeLJF51nNQkHqjlnwYb1
	 p5on6oAEc+pP3a04MEjATgKT7y6GrmmLJ48YopCT25JZFz5qoGSUhX/+EB8waTwp7x
	 JuqjPRCX7JL4Kq9Docq7y/FtN3nm96Q/s37qiegOdSnj50bF1yqu+sqkrE+MQXkI0y
	 eiPqC1t9YA/Ow==
Date: Mon, 07 Apr 2025 08:51:10 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, Yixun Lan <dlan@gentoo.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Albert Ou <aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, 
 linux-phy@lists.infradead.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
To: Ze Huang <huangze@whut.edu.cn>
In-Reply-To: <20250407-b4-k1-usb3-v3-2-v1-3-bf0bcc41c9ba@whut.edu.cn>
References: <20250407-b4-k1-usb3-v3-2-v1-0-bf0bcc41c9ba@whut.edu.cn>
 <20250407-b4-k1-usb3-v3-2-v1-3-bf0bcc41c9ba@whut.edu.cn>
Message-Id: <174403387085.2155711.16403180293126338183.robh@kernel.org>
Subject: Re: [PATCH 3/7] dt-bindings: usb: add SpacemiT K1 DWC3 glue
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_065113_389791_CCC3DE5A 
X-CRM114-Status: UNSURE (   9.30  )
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


On Mon, 07 Apr 2025 20:38:48 +0800, Ze Huang wrote:
> Add support for SpacemiT DWC3 glue driver, which manages interrupt,
> reset and clock resource.
> 
> Signed-off-by: Ze Huang <huangze@whut.edu.cn>
> ---
>  .../devicetree/bindings/usb/spacemit,k1-dwc3.yaml  | 78 ++++++++++++++++++++++
>  1 file changed, 78 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/usb/spacemit,k1-dwc3.example.dtb: usb@c0a00000 (spacemit,k1-dwc3): '#address-cells', '#size-cells' do not match any of the regexes: '^usb@', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/usb/spacemit,k1-dwc3.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/usb/spacemit,k1-dwc3.example.dtb: usb@c0a00000 (spacemit,k1-dwc3): usb@0:reg: [[0, 0], [0, 65536]] is too long
	from schema $id: http://devicetree.org/schemas/usb/spacemit,k1-dwc3.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/usb/spacemit,k1-dwc3.example.dtb: usb@0 (snps,dwc3): reg: [[0, 0], [0, 65536]] is too long
	from schema $id: http://devicetree.org/schemas/usb/snps,dwc3.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250407-b4-k1-usb3-v3-2-v1-3-bf0bcc41c9ba@whut.edu.cn

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
