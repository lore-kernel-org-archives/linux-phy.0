Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD350C61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 17:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TP3Ias/eVSFrwR/yUrZLoco6sTdrfK7scOGFtFovPAg=; b=ZOxKXQAaZE92yo/Fw/EiV7Qmq1
	mQsmEu2cHWRF6dEZq2V9Mv8EXVqGe0z10wmtwAzIEUpB94x+fKu1n4MgjbtHQWxK5Y6fomctI6z6n
	pQY/tlpWg3Lq8b++n4Xnsb7mF1gpfpSVCPI5LB6LA9iz4nr6uV9tPH6mlq+EJ9fvuAY9mhhUJOTAn
	0X4JncDsWzc/I6nGTQFASJiKW/bjYfR6BBF4cfUxz4GvqaOyCPLClGbZ7B+X7w/IxRp+LOQxBJhXP
	Bt9zrCmOMWxWeB3gadQ4lvZ7S83UyZ7Iwhw5rM08ZSEIb3s9rr+wjVAgXCSS0/8kDPtI/4b5TK2EG
	EVXMTWaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2BKK-00000000HsF-0OOy;
	Thu, 03 Sep 2026 17:34:16 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2BKH-00000000Hrz-49iZ
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 17:34:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6CD9C437DE;
	Thu,  3 Sep 2026 17:34:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 927221F000E9;
	Thu,  3 Sep 2026 17:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788456853;
	bh=NYpQHrjsJvf8pKVE2GpTexSixvlMtoy3aWduLWczkEc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WFdoaqnLUk3HaTNd6HUuFF5+QP+sJz0ubZrssMmxLDDY7LE6BAcf6NtBJdBk4FuKm
	 0EEDjzWb+nc6WMLy8y7RRKQa+rNq0Eu55R8XKibH0kHLyyGZcTILD84W0U0bnlXWSu
	 pNnG6M/lgKehxsFqo7DDW0l6TRenm005mDLoYD/Z9S93nrwIi/ymLsKLdSxepzjHpM
	 qQ6BZdnivOqpFK8yQalLTMNh2wBFrOGlDltNkM/qgYUhgBk2s1GP0JU5Z9rysf5sb2
	 sELq7qRhTse7++FUySRdpcvQePQzrzAU/hrwpMHBEplymY1D/K4cQGyk9TSf5VJqVo
	 gIENVLIxytCsA==
Date: Thu, 3 Sep 2026 18:34:08 +0100
From: Conor Dooley <conor@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: Vinod Koul <vkoul@kernel.org>, JC Kuo <jckuo@nvidia.com>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 1/4] dt-bindings: phy: tegra-xusb: Add support for
 Tegra264
Message-ID: <20260903-autism-tranquil-15dd67d9cd2a@spud>
References: <20260903071937.533646-1-waynec@nvidia.com>
 <20260903071937.533646-2-waynec@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20260903071937.533646-2-waynec@nvidia.com>
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
Content-Type: multipart/mixed; boundary="===============4200462062581329456=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============4200462062581329456==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q9uhrpU5IRC6OFsn"
Content-Disposition: inline

--q9uhrpU5IRC6OFsn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--q9uhrpU5IRC6OFsn
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCapmvkAAKCRB4tDGHoIJi
0jD5AP0a6bqiLXcYQNaN8CsxuVSiDNsddxuqqt1yA1S2qLMJjAD8CCRYlaWXwDgV
ff5GEGbWl5rKWquWipeLRs/ydPo6eg4=
=EvH+
-----END PGP SIGNATURE-----

--q9uhrpU5IRC6OFsn--


--===============4200462062581329456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============4200462062581329456==--

