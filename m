Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82FD9CA0EED
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 08:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2lwt1PAYmVEyNGLIZ8ExT90RGIj9BdUwPTFfuBNu0w=; b=vGCrWQpZZkvshB
	qnrvFaD3sB5Ov2LPlRQqukn0mW+jfLcOPJjiBaKet97dlCGnfwgT8QGnI8Y1xbIuCR8/+tmNBtpdf
	ExwOl3dmipNlBrQ4U9MwI+NBPM3/pvX0WntDfEjWRREjWY17ZgJZHaw54fFGH3cNYer8xcHnn5e4g
	U5BYyKh5qvtzPd1hGdnH4HDnk3JO78RMtsfub8tsHfF7koEahbFpkTwNyQdz110AOmwq6V2kkDz51
	9QkavYS+0otnz0/zk+SjK4Dimp2AYv3DKbVSpABub/duhSq7wmmwi/iyTzZDPvGtlMq8QbATxPO0I
	Yknfm+C51TGgRA7Fq9iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uodut-0000000CgeO-0xdE;
	Wed, 20 Aug 2025 08:11:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uodic-0000000Ceox-0hLL
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 07:58:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 29AA460204;
	Wed, 20 Aug 2025 07:58:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E222C4CEEB;
	Wed, 20 Aug 2025 07:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755676728;
	bh=WnrhhdMtI7/F9O/pOiU3j1XA4mpO8xgwkcvbcF5AwD0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gbVjVzRwBd84zNM+RHvauv1MVTtgCXIDxi0vtBwcp12V6ujGfY8Ms+sAzJreFWoC5
	 aYsM5UmlBF8SDMjrvLgusnaVtYlTigwAFjwuLXEP/xnwzxfpiEZB77n5X58J9XfUSq
	 rbej6rLRCxKbcF81GkgASbMkAp2gOSvk/1QBUtF3O+GWxk358OE+asra++WfhigFCJ
	 vJ/9gHhPUr5aNjEoiUOexbLtkKoUJ6PkN/F26TDCgXXl+5lrobII6hd1vQM4UOZCv2
	 D2SXcf+Mam5uQD3gXRDoftIHsNRRgk13+HKs0GlGWCFF1SkgiIREX94RZ0sID0ITKg
	 Eejz9W54y5LpA==
Date: Wed, 20 Aug 2025 09:58:46 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: dlemoal@kernel.org, cassel@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-ide@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, linux-phy@lists.infradead.org, ningyu@eswincomputing.com, 
	zhengyu@eswincomputing.com, linmin@eswincomputing.com, huangyifeng@eswincomputing.com, 
	fenglin@eswincomputing.com, lianghujun@eswincomputing.com
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: eswin: Document for EIC7700 SoC
 SATA PHY
Message-ID: <20250820-cheerful-avocet-of-tempest-43244e@kuoka>
References: <20250819134722.220-1-luyulin@eswincomputig.com>
 <20250819135833.1227-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250819135833.1227-1-luyulin@eswincomputing.com>
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

On Tue, Aug 19, 2025 at 09:58:33PM +0800, Yulin Lu wrote:
> From: luyulin <luyulin@eswincomputing.com>
> 
> Add document for the SATA phy on the EIC7700 SoC platform,
> describing its usage.
> 
> Signed-off-by: luyulin <luyulin@eswincomputing.com>

Don't use login as full name.

All other patches are missing, changelog missing, cover letter missing.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
