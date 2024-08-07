Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E833FC3DA7F
	for <linux-phy@archiver.kernel.org>; Wed,  7 Aug 2024 19:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CHdWTyytCGI9SuCx5/fkRKDqFI9/nuUtNtibxcPUuzw=; b=077MC83zuNx//Vb4Mvttcqidmb
	bqCPTyBV6z/kzdkjO2UBtCgXhuX1tPAoCGoSMC3sg29G0etQDYjlv5yYyRv0nq6cTbGcytj6eYvv/
	rqzaH+dSquGpKATSB9++7MqfCEvT58nWMBpClKL2hi6jraJEif83fMrIChD4pxS+SzJ1w9w/bqjfP
	/KgTGraZduCjDH/LnyMEPXw131q2jXe1njcQ8NvrqZkWH8JZQ+KgDHi5L3emtXCdf2siiYBMEWFsO
	VifqJ56PT9FHnFW/URYgU+3lQZkO3TRtAnL+kI+5gIFsJGARL4iYtZq7ugPBp46OmC3J/38J4aIy7
	IaemT3VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbm5X-000000062qx-2SN0;
	Wed, 07 Aug 2024 19:12:47 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbm5T-000000062pq-31a5
	for linux-phy@lists.infradead.org;
	Wed, 07 Aug 2024 19:12:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8532E60F61;
	Wed,  7 Aug 2024 19:12:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC74EC32781;
	Wed,  7 Aug 2024 19:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723057962;
	bh=igA/R1dhPYSPH3SJW/wKLLEHcSURTRCtuSc+w8fGXoU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=Blu8wwhls32sv5GkAteiD2Vn7Z48ZLthiIyrkpJkW5QliaI/pS+0SpzrTYQT0RdhG
	 AxmnJv/1CGV+XfeQh5YXJtaE73mRaOrIGedX27UMqQOmcWLujzAFeUltkdRIN+Q5l4
	 KynYiceG1JogP7DcpfG3g7AlNJnKywQbvMmSmXaWRnIhPsCpBmXdhG+tqUm4UNIsY9
	 unr81+6FskrsIYFOhmscG+NGmi+CuHc5YsN0jOluGcJBAI6lX+RorkyVHXzw2NLD02
	 FtN3ddFmGOhtrnIHPtVVJB0stzNXPNk1H+WeqAWCdus73TM9RYMd2fIIJ5oWH2fiqX
	 ng0IqHkaCfY5A==
Date: Wed, 07 Aug 2024 13:12:40 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ilya Orazov <ilordash02@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, Vinod Koul <vkoul@kernel.org>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Aswath Govindraju <a-govindraju@ti.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-can@vger.kernel.org
In-Reply-To: <20240807180956.1341332-2-ilordash02@gmail.com>
References: <20240807180210.1334724-2-ilordash02@gmail.com>
 <20240807180956.1341332-1-ilordash02@gmail.com>
 <20240807180956.1341332-2-ilordash02@gmail.com>
Message-Id: <172305796084.3042321.10920811109606243151.robh@kernel.org>
Subject: Re: [PATCH v2 1/1] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_121243_917495_928FEBF6 
X-CRM114-Status: GOOD (  10.58  )
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


On Wed, 07 Aug 2024 21:09:56 +0300, Ilya Orazov wrote:
> Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
> It is pin-compatible with TI TCAN1042 and has a compatible programming
> model, therefore use ti,tcan1042 as fallback compatible.
> 
> Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
> ---
>  .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml:19:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml:20:11: [warning] wrong indentation: expected 12 but found 10 (indentation)
./Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml:24:11: [error] duplication of key "const" in mapping (key-duplicates)
./Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml:25:11: [error] duplication of key "const" in mapping (key-duplicates)

dtschema/dtc warnings/errors:
make[2]: *** Deleting file 'Documentation/devicetree/bindings/phy/ti,tcan104x-can.example.dts'
Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml:24:11: found duplicate key "const" with value "ti,tcan1043" (original value: "ti,tcan1042")
make[2]: *** [Documentation/devicetree/bindings/Makefile:26: Documentation/devicetree/bindings/phy/ti,tcan104x-can.example.dts] Error 1
make[2]: *** Waiting for unfinished jobs....
./Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml:24:11: found duplicate key "const" with value "ti,tcan1043" (original value: "ti,tcan1042")
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml: ignoring, error parsing file
make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1430: dt_binding_check] Error 2
make: *** [Makefile:240: __sub-make] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20240807180956.1341332-2-ilordash02@gmail.com

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
