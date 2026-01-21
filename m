Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7367DD262B1
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 02:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=528pZcSv3D+15uGKn7JNuXPhV2qgwPrEkoy+6vvwRSY=; b=VysHpu7KsHrqhI
	WmbuuQFznwwXiybQbBHilDO4gMeUBVEi87Xy7jMXiUzwQx1+YUTbn1JOtW544BcOooB45nGOrkkJG
	Q9WHZ2ZYL8LIK3JCSBDYvi1CZSBPEV9Yu46cXGY69OQEwNIzEVf+SVWZIioMHfg35Gype2EEA/n1A
	A1mbB8iFkSTfeQQY71q2fmAU8Css03GkRgOJMmdb5scJOAfQn5y6to5gcFG3DGyG1n38i7z7846Ak
	fDaRfs8qQKTOsSUjVbtU1cdEM9PD61uV45sxOtSlt95GHVyhmbXCpbkFrMS9GP+Q5PN/rkNRS02+K
	VUpfgqXolat206FBTMhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viNxV-00000004my0-065A;
	Wed, 21 Jan 2026 02:28:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viNxS-00000004mxd-1H3D;
	Wed, 21 Jan 2026 02:28:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 733C74191B;
	Wed, 21 Jan 2026 02:28:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 375E9C16AAE;
	Wed, 21 Jan 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768962513;
	bh=vTfHbIosBhIGcDNmkGqJUvupsZF9T0Fme6/vw/4XXAs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iYYrENlPoZw3+rWmuqEqKg3k92ScVBL9NUArHLatSJfJ2Rts34vSjz6BJLk8mKNhr
	 UjtlfZJru2wmiUqOX+GMicfkptrMAqcZrgKzFNCdV32cru9yiQ6gyBkDSjd6iyw9bY
	 ScyFDeFT1Zmffj0eW03A/HH/uSXbjRqkAeJLwI3WX/UUNqji6ZH8G3l6ycpX9Ht/+f
	 BjU9JHen9x06nMGkp2NajcdCKjZFBv+qEer+wjmh2RDH1MiC7JNR8CQ7WRm3TNULWR
	 lTro1tYK2GBKdJaAtoicxrWLqB1ycBJlI8zLIDpTHJBMU7/XoLwg21k3R34Wo6B5xx
	 u+NgWJ+ckIUcw==
Date: Tue, 20 Jan 2026 20:28:32 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
Cc: conor@kernel.org, alex@ghiti.fr, gregkh@linuxfoundation.org,
	vkoul@kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-riscv@lists.infradead.org,
	palmer@dabbelt.com, pjw@kernel.org, krzk+dt@kernel.org,
	linux-usb@vger.kernel.org, aou@eecs.berkeley.edu,
	neil.armstrong@linaro.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/4] dt-bindings: phy: Add Canaan K230 USB PHY
Message-ID: <176896251125.1833421.13897211513814377916.robh@kernel.org>
References: <20260120143243.71937-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20260120143243.71937-2-jiayu.riscv@isrc.iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260120143243.71937-2-jiayu.riscv@isrc.iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_182834_368430_79816449 
X-CRM114-Status: UNSURE (   7.75  )
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


On Tue, 20 Jan 2026 22:32:40 +0800, Jiayu Du wrote:
> K230 SoC USB PHY requires configuring registers for control and
> configuration. Add USB phy bindings for K230 SoC.
> 
> Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> ---
>  .../bindings/phy/canaan,k230-usb-phy.yaml     | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/canaan,k230-usb-phy.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
