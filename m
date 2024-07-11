Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7F25C3DA4A
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jul 2024 22:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cO2f/9LvVBPpT3cRKn1+KgGWumVcyHyJTV7Fyh18YNA=; b=r2u9ZRONo2zOA/
	iRMuzzR0KLsmVRZezrP4JHXDW8FUShdDJREKs5qv71v/XRqs3o+ZOXhRnW8MqYk/28bHC8MBfcMUE
	dkcXekvVTDmUlJxEiVO/Fx3KFb4AAPe2n56Ht7ha1vkJWxOAW8WZYOatFSXVFZoxJcHAg7XQntG1K
	ipM3Bya7vveScrL5wD4LDhEQMhSLz2oRFnaYQ/EkKojUuk12pHwFrmPsGUG9s4g1losGQUhNOxVbe
	FCy5OTifai5SzeHSUYhUMdMVy7GcdVn1vEnOhkyWnSLXamMSFrKWx8S/fXdzSYXWMCHGW5GWx6bRW
	JjHPMSwy0XS7j92HlpcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sS2fR-0000000FjvX-2jGj;
	Thu, 11 Jul 2024 22:53:37 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sS2fO-0000000Fjuu-1SZT
	for linux-phy@lists.infradead.org;
	Thu, 11 Jul 2024 22:53:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A8D90CE1151;
	Thu, 11 Jul 2024 22:53:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C869CC116B1;
	Thu, 11 Jul 2024 22:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720738412;
	bh=ofndv/zw9XA0mWAXytFcHbCoYH5AfpN6Z0ZOKdwE13A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XRJgImUwXxRDU4ZFiXi5TbBPoo/9R57ohVP4ma6bhp6yugygPbTIi6lkE2KJUdaO1
	 YSOk8NhLPUjCCvdarb7p7291ZHdwotBmbDycfEPGRB8qSRe/hXSXe9mKx/CkGkCURv
	 D8yW0cn8Gy2Mak5S+5/ykyBBduPjk6Wiw6XN8DtCC7mVpD/UWLFefkCUuFD0e3xcau
	 LVtShkDHPdYpJLQe1wfhHaZYKWElMbolQsoEYI7Jmh/n/9TV6whQxbVTfHnByoSFQV
	 C9MC+WJUs1v3x+kS4g3J/s6u4zpp8Atmylm2/p/GfGpyn/ZKP8ddPdZmyh1patBbwT
	 oOpbFES2lnEjQ==
Date: Thu, 11 Jul 2024 16:53:30 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Rayyan Ansari <rayyan.ansari@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: drop obsolete qcom,usb-8x16-phy
 bindings
Message-ID: <172073837103.3268845.15106965323950109239.robh@kernel.org>
References: <20240711122016.41806-1-rayyan.ansari@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240711122016.41806-1-rayyan.ansari@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_155334_584168_0A67E328 
X-CRM114-Status: UNSURE (   8.21  )
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


On Thu, 11 Jul 2024 13:20:14 +0100, Rayyan Ansari wrote:
> Remove the bindings for the Qualcomm 8x16 PHY driver that was dropped
> in commit 4756f35fdf14 ("usb: phy: remove phy-qcom-8x16-usb.c") in 2017.
> 
> Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
> ---
>  .../bindings/phy/qcom,usb-8x16-phy.txt        | 76 -------------------
>  1 file changed, 76 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom,usb-8x16-phy.txt
> 

Deleted files are an automatic Reviewed-by. ;)

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
