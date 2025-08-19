Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C198CA0EE6
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 15:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RuqpmvxMvhRiqsyJLJWttfpXzcKonASMuMbPsqbhao0=; b=yl8KF8eVxWzkoP7FQYS9in8gr6
	C+MBBWiTNDgnlfvP7Qp1aSx57hNYqlK52XFEk8WG89A8FK3TgBN4B8MytU4gbSuxfh9IQzmy7TUum
	LFYi9a4zv64ni8iCKv0Ta+Im/FyqsZXiB/dUMTZ1UREJ3neCcYFYM/Vw66K2YlgiofynbVg2Y6tGt
	TYg1A5NcncOf7R+d+Ekyum0Ce56AaGT1kgzqKTFHUqjcWcUaY1z0u83HPKNxfzb+hs0qO2yLFUZ1q
	wxckAgOQtM8mizfz0Wey1tWAPWhiiAfkmayvbty+F3N+EcRzGoNrG993PZIOJo5Yi9aLunr20IWeb
	HWS8Nylg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoOCY-0000000Aszs-0wSj;
	Tue, 19 Aug 2025 15:24:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoLVr-0000000ARaI-2M6j
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 12:32:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2CD00454A5;
	Tue, 19 Aug 2025 12:32:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E84DBC113D0;
	Tue, 19 Aug 2025 12:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755606747;
	bh=oRf1mvv6p2bt2J9+yBXoa4O3Bz8NmOE1R+ShJsBwd/s=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=rUE5LiKs3wj2ajNOjxxegJfOJU8PKCbDqCkia0L24pJDJUnoEBpH7zpSgei2uCkS6
	 MlQ5EpxK5lGGVUaL6gcQKCguaQWb0jb8fx/TKgH8DPN92sHL2cHHLXEzmbgvhxQWg0
	 nPM7lLP/6ptWbi7kxdigC2mTsk1A+AmOTAKE2Nf5kURMusvQ/gaUMHMZObmEvWQJQ6
	 J4S5IMEwX6w3PQiaaExlQZMXmkufrUFzQgjJ6YjpCfrrVmJu4gqtcjSYbzZU0awYJU
	 uNsbf8fh7R90vtCInXNcRjwTt438nmStKF3n45xlLEqFsN0bnT6vHmuLGzbEx7a8nD
	 MzuQTX0pccz3w==
Date: Tue, 19 Aug 2025 07:32:25 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, konrad.dybcio@oss.qualcomm.com, 
 linux-kernel@vger.kernel.org, 
 Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
 devicetree@vger.kernel.org, qiang.yu@oss.qualcomm.com
To: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
In-Reply-To: <20250819-glymur_pcie5-v1-1-2ea09f83cbb0@oss.qualcomm.com>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
 <20250819-glymur_pcie5-v1-1-2ea09f83cbb0@oss.qualcomm.com>
Message-Id: <175560674306.26088.17838769805587892599.robh@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe PHY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_053227_617230_959BAF9D 
X-CRM114-Status: GOOD (  10.15  )
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


On Tue, 19 Aug 2025 02:52:05 -0700, Wenbin Yao wrote:
> From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> 
> The fifth PCIe instance on Glymur has a Gen5 4-lane PHY. Document it as a
> separate compatible.
> 
> Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250819-glymur_pcie5-v1-1-2ea09f83cbb0@oss.qualcomm.com

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
