Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AFE4CCA471
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 01:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7dpQOOs97vUJqUrl1sjB+s9DVNby0CWTVNbuosleA0=; b=qV7GuIcI/GqK9B
	xmxDOZHY4rG3ic3wc4eyLCv2sNxxBc+P67+uTmmjrZWaOs2FlqyKsUv0YJFtcCb0i+Aw+HIASSqQT
	m+WROYpL7Tzwq9OY2mhEQBUXsY0zHSFZQqVZfVSWCZWkYd2LUjZ9Il1R8NpGNZebZww9WQqoLNspZ
	wRKxwM8/unbPfHIF/IJaNkdoPe3isIgnHLGND38XI3QXOPN8xh7+8Tt1BcqHDUMntVTMJJaRon+/a
	Hbo2mdIbNh4SweYEJDn17ncX0s9simFDIQWaEBSdFwrGVNlrCbD2AD+JHKqvsfBU8SALvrwCnJQby
	2zFcNwe/62ThZ9D+BDxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5wL5-000000016wn-0Yla;
	Tue, 07 Oct 2025 01:18:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5wL3-000000016wc-49lB
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 01:18:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6D0B1611BF;
	Tue,  7 Oct 2025 01:18:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9BD4C4CEF5;
	Tue,  7 Oct 2025 01:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759799881;
	bh=MbHVwyyU9s+TXbP3LS37mdRoQgCtoUHTvmBIaJc/+hU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Rs1zL5OUSJWIb8gm+jMzQNtPgkDd01zP6ngsoppsvIMfpRiyK4/TN6CyDCjEwbu+O
	 59Oy6WRScR5IgTZXB3VqraoXX1pAxBaIVKvqdd8/eRjlAdjw1gtQhkf1VKaJbza17F
	 0Ifzlxs2BROxHeMWW20nsf1lpiUF3ixfO+yt5nlCeKRLT0PD6l6NfTuQfkrDWRemeg
	 dgQyq08LY1tsXUgY4wMO3WyX5Qz2jMPduWwjP/1JwVqGWFrWIgbzZGTU/bKlj+ys2V
	 oL+WAWnmpmVg7GByjEkp2HZz63WH/nsOUcmyxhjGa8l5n5M83JUNtqZ2AMh1ePSVWi
	 P3Fqe3gPJK1dw==
Date: Mon, 6 Oct 2025 20:18:00 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: zhengyu@eswincomputing.com, huangyifeng@eswincomputing.com,
	ningyu@eswincomputing.com, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, dlemoal@kernel.org,
	fenglin@eswincomputing.com, cassel@kernel.org,
	linux-ide@vger.kernel.org, vkoul@kernel.org, krzk+dt@kernel.org,
	linmin@eswincomputing.com, kishon@kernel.org,
	lianghujun@eswincomputing.com, linux-phy@lists.infradead.org,
	conor+dt@kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: ata: eswin: Document for EIC7700 SoC
 ahci
Message-ID: <175979987938.723277.13154386173712928991.robh@kernel.org>
References: <20250930083754.15-1-luyulin@eswincomputing.com>
 <20250930084348.100-1-luyulin@eswincomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930084348.100-1-luyulin@eswincomputing.com>
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


On Tue, 30 Sep 2025 16:43:48 +0800, Yulin Lu wrote:
> Document the SATA AHCI controller on the EIC7700 SoC platform,
> including descriptions of its hardware configurations.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> ---
>  .../bindings/ata/eswin,eic7700-ahci.yaml      | 79 +++++++++++++++++++
>  1 file changed, 79 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ata/eswin,eic7700-ahci.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
