Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFEFFCFB442
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 06:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aagLgChrcCFQcd3hFJgtP+DNLuK+ukroJ9MlkzREG1o=; b=uQNVRDAoo8dE0P
	URa89AHGgTyMJHx13zb+xbx/i+GUKHEzpqcX8ohdF/+khoRXU2ITYIPzPGYOjkgTtm1m8Q3esocUI
	koYwZsmUAaOthlPk8bnjCIabkAkglaQX9UIbTcTpfviKLDK5YFWfNonUv+DpXfjRcaITudfUab4jT
	dotSvf3pYpbN0pZDb/ezk61vmhqJ6sZrM1FvfzTlBtj/2LhNRPv8XUrkyi01YgvtBlJ7lbZNQrAcq
	SnEDtv9FyVn8YqaX2wP0lNBvIzOSNMRKkms+UUOkfvGumLHVlVrJ62UPpPnxd++P+MnYTv7Wxinft
	gtYllWziTXb8BIvD9p7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxhIR-00000001RVN-2Mbt;
	Mon, 07 Oct 2024 06:32:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxhBw-00000001Pgo-1lza
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 06:26:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3B0815C5B29;
	Mon,  7 Oct 2024 06:25:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A65F9C4CEC7;
	Mon,  7 Oct 2024 06:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728282359;
	bh=otylH51seDcjzZdnOTrbEFy5AZzZJ7GqteM1gvrFPKE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qt23kY9lRZNDq3iHRnH5ihM3unoyhjdW9lAQD1NBy//M18273+UYeATcCaCsMgcr3
	 YRCQ1qVRyZ6vTyYHDLATNA0jmkOngdyVm3prA//tl3TVMtzyF2lyV8lRc2YCakUZYO
	 1ZOxr+tqQsMKHDguTGg9SsnB9DrgI9tOG7Xb+ibKCoWi1K08Uxr7Fb5e0XVcv4sF+8
	 yF1olnUQjX+RzPh9lqlR/7/vX0Q0q0CcZUyyq4gKglvy9HPauNf6dDblU7N/2XR7a/
	 U2HhD3HUSz43eEj8hi7JB46JjA414yF3A6YmIsSOGwtCCpi+sfvBgtraksnZUD/wiS
	 ZEn8LJZ30ijeg==
Date: Mon, 7 Oct 2024 11:55:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	xe-linux-external@cisco.com, Daniel Walker <danielwa@cisco.com>,
	Bartosz Stania <sbartosz@cisco.com>
Subject: Re: [PATCH] phy: cadence: Sierra: Fix offset of DEQ open eye
 algorithm control register
Message-ID: <ZwN+8xpOl4+Ggaha@vaman>
References: <20241003123405.1101157-1-bwawrzyn@cisco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241003123405.1101157-1-bwawrzyn@cisco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_232600_551654_03FB063B 
X-CRM114-Status: UNSURE (   6.61  )
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

On 03-10-24, 12:34, Bartosz Wawrzyniak wrote:
> Fix the value of SIERRA_DEQ_OPENEYE_CTRL_PREG and add a definition for
> SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG. This fixes the SGMII single link
> register configuration.
> 
> Fixes: 7a5ad9b4b98c ("phy: cadence: Sierra: Update single link PCIe register configuration")
> 

No need for this empty line here

> Signed-off-by: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
