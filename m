Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BE6FCA0EEB
	for <linux-phy@archiver.kernel.org>; Sun, 24 Aug 2025 08:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1zfJ/vWOeauOsUxwHPaoGNjfI1jI2xX9R09TbkNwuc=; b=v/IePhbyAS9Txe
	F4lRFFnF6DyiIohErOmjgdqId61hZAk5DjbxGU/EP6TCxUoI8DZ5CIDGUBNpX4Vqc/cX1NqJltxxf
	Lv6P6BcpattR/VLhElJKUx3QzIBDQum1qMpqQwJaXmLxo+1d71/YAVSqMI5kjZOtYX6WDoneWiH7M
	dVTXZISABkuoPi4h0V24skYFQ3wXgdGqUJQmHiiyYoHesNg3JqIhRLtCKu6hdaIYnlDIpaHVBdqtO
	BNk4aC/3Emr05sPZ87mulD4Xoz2OQftAbu6oDmG37Zu9l0cAM/OHR4vKMrqVsD8uYDIqbiWTbo51P
	I0a/4LbsegNI6aoq46tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq6PN-00000005u0t-0Xzp;
	Sun, 24 Aug 2025 08:49:01 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq6Mj-00000005tgD-0Nkr;
	Sun, 24 Aug 2025 08:46:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 75DD440C11;
	Sun, 24 Aug 2025 08:46:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C00A7C4CEEB;
	Sun, 24 Aug 2025 08:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756025176;
	bh=alXxqMcedaDj3l176SPehI3aJia5mng2LYO8cttSggQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Atp+nQ92EhnFQoDX3pPs0POvqLEIX11b1fFTeD5HV/jF8hMgxbC93DMFnskXIShO6
	 Z/TOyYQuneK0Dhy/yjEBW+Th/wzONrxUSVIxDN5boL2tUkJXM2F9Hgb5HwI8sV2bw5
	 dhv2zNDrm9HTptytQ0eXwxhE6rLuBiP5CSvSMiDQWALXiYUAmAxDXboiaVP/L6EJGq
	 Wb011LjuD3lwfnBlTHlYDAJgzlX0QGJP3pjvnEiDbSuH2e0H5gjJ2DSQhjsrUpt6PQ
	 rF8pqVthgx3mdgEst0Hb31A7HoT2F3xpn9WfffDocT0LWPPKfscEVg4z3JMjzJoqfF
	 PSPDBSccoocuw==
Date: Sun, 24 Aug 2025 10:46:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pritam Manohar Sutar <pritam.sutar@samsung.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com, 
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org, 
	ivo.ivanov.ivanov1@gmail.com, igor.belwon@mentallysanemainliners.org, johan@kernel.org, 
	m.szyprowski@samsung.com, s.nawrocki@samsung.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com, 
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com, 
	selvarasu.g@samsung.com
Subject: Re: [PATCH v7 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 HS phy compatible
Message-ID: <20250824-mustang-of-glorious-sufficiency-b55bf4@kuoka>
References: <20250822093845.1179395-1-pritam.sutar@samsung.com>
 <CGME20250822093008epcas5p218f9f9a5381a716b5b8e0c4b23e4b3bf@epcas5p2.samsung.com>
 <20250822093845.1179395-2-pritam.sutar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250822093845.1179395-2-pritam.sutar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250824_014617_147817_C20961F2 
X-CRM114-Status: UNSURE (   4.98  )
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

On Fri, Aug 22, 2025 at 03:08:40PM +0530, Pritam Manohar Sutar wrote:
>          reg-names:
>            maxItems: 1
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - samsung,exynosautov920-usbdrd-phy
> +    then:
> +      required:
> +        - dvdd075-usb20-supply
> +        - vdd18-usb20-supply
> +        - vdd33-usb20-supply

These if:then:else soon will become unmanageable, but I guess we can
worry and fix it later.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
