Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49F73C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 10:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=14BUSFq5Mc0b8abeofBcQ0otsaXJPknDdgLdIUOHtt4=; b=NGP3PX9lsb3pg9iPg4sNqBisC3
	FDbG+4OUB1LxPkLAoik3/kuAhprRq6G0juknr/ZT+3pMAq4b6QOl8qn0opKZNw1UcNjf+hJDhF1Tt
	/nssR/OtdUF3fx/pmdr9WweQWkCRdbs2cW/ahqILBKJIcpBjQjMbWJEAj7h2Rrl07+n3SiaYn4Ynq
	UsQWF8FoI7sLIz75pfDxOXS2gMjW+4UAwfpor9NSlJbI3LnxGq38GIwe20MMDOZ16gSFtIomzYwsu
	omUdQZsub+WdGYzQuz5/mUoXPppLA9Qbcby7QFY8q+8sNwXLFVuvpykVt5vqB+TsobkBPfrukbQzQ
	DCxUFi5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwidx-009347-E6; Mon, 13 Dec 2021 10:33:17 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwiVs-008zVv-Te
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 10:24:58 +0000
Received: by mail-wr1-x434.google.com with SMTP id k9so8355315wrd.2
 for <linux-phy@lists.infradead.org>; Mon, 13 Dec 2021 02:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Lps8zlY0plffu89oo+ZuKtBVR2UFB4mYLL1XQcOR5SA=;
 b=Za7I3FFfxdMWiq9GbGcKIbeq0brDgYen8LmJIsEVOpyPpHwYZbppF3xfqtlIfENdP1
 jHzUFwVAP2of3Xe4rLtkWRMId6pLI74v5FjBEJhPFD2Qe3miPuN6o+ncw3dknYNTDqMQ
 wi42NVQiYAJAWQuwYkLNh0hK3QsTiXETLvNGR0EhwzmqH4c74hCm5xpFWWJMJYXIQTGT
 BYc3zFYCdPn8GMYWHCfq2KJLnwt2dEmjvKUfVgKQT2HwZ3pO9WkLRmLq19EdRyHkAMrM
 fL4N8RW+umwAa887wcZi43Se2SgJtZuq1L7bW2zIXPKWZgkAjcr0R4miICMkPdiQ/sVh
 cxTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Lps8zlY0plffu89oo+ZuKtBVR2UFB4mYLL1XQcOR5SA=;
 b=WgyEfzlks7S53Yd4W7BhaFXcEUXV/iPLgkscrtsi8Xixw5xUr5ovtmgJCDQ+655yJk
 L+4Tt55faLMMW4MJ0pvdjfILxcqZNFC6ZBHWArqt/6FJEFEUWKJO4InPkhISF0vcm6fW
 0XL3tVUDfeupG4aM8gy7ktDnNtO6YPnJ5O4linyIhy/XFHWB3/OlcfpojwHQiMxd4Z2L
 oHfopT8dF/rrTt6T+uWMaoGVr4nJTV+dp/9XEbNif2CfN64XtzTYeoABJxTcc+wBtbRl
 LjqJzwm7NtgG9aNQ6HJNwJffWM3mObsu5ktSO3voR3jareIMggpYPe/6sYpce6CuUQKZ
 KGqA==
X-Gm-Message-State: AOAM53378n7pmc19Z+fiuI2Y5CTwQ/TGn+apvw+Kk6O93YzYqO85Msz5
 9tFRIqZmoK5Pfm26jU8vmEA=
X-Google-Smtp-Source: ABdhPJwFcQlQB6qp/Z8EgEGC4clwRl8Lug9EUHupaG/P+GoEeE207ABb2BWX1xTZnxDob1Ye9DojIQ==
X-Received: by 2002:a5d:5643:: with SMTP id j3mr31204212wrw.138.1639391094112; 
 Mon, 13 Dec 2021 02:24:54 -0800 (PST)
Received: from orome ([193.209.96.43])
 by smtp.gmail.com with ESMTPSA id o3sm7170098wms.10.2021.12.13.02.24.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Dec 2021 02:24:53 -0800 (PST)
Date: Mon, 13 Dec 2021 11:24:50 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Miaoqian Lin <linmq006@gmail.com>
Cc: digetx@gmail.com, jckuo@nvidia.com, jonathanh@nvidia.com, kishon@ti.com,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, vkoul@kernel.org
Subject: Re: [PATCH v2] phy: tegra: xusb: Fix return value of
 tegra_xusb_find_port_node function
Message-ID: <YbcfcpkwxCkeGP3f@orome>
References: <942f943c-9ec8-9887-aa6d-4d133821beca@gmail.com>
 <20211213020507.1458-1-linmq006@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20211213020507.1458-1-linmq006@gmail.com>
User-Agent: Mutt/2.1.3 (987dde4c) (2021-09-10)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_022457_004805_F93BF9C7 
X-CRM114-Status: GOOD (  11.78  )
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
Content-Type: multipart/mixed; boundary="===============6690907117375786676=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


--===============6690907117375786676==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="W2swrXWGj6l4aaDV"
Content-Disposition: inline


--W2swrXWGj6l4aaDV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 13, 2021 at 02:05:07AM +0000, Miaoqian Lin wrote:
> callers of tegra_xusb_find_port_node() function only do NULL checking for
> the return value. return NULL instead of ERR_PTR(-ENOMEM) to keep
> consistent.
>=20
> Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
> ---
>  drivers/phy/tegra/xusb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--W2swrXWGj6l4aaDV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmG3H3IACgkQ3SOs138+
s6HJrw/+PwLmkXa7Ame0lq2zyamq1ugkXKFFAabK3ZHFV8Epsuyl4tT+FKNn2ShM
y7Dy/Vqh6SVtb4CXBFc25tI4SyfoH1uRALMdFc8CqUyPGhN4HXOOIPRrikUyeWyg
xROkHn5Fnjf3vdkBat3vwVEHZiu++AZTMz97GOsNP25lwMIEmw/sGw9KBFt+cCTV
S8g/ihfq8fncGHOIO7soGncJyjZPQhWB/R7mur7A5eSelfj+OKW+BqeZUwhI167C
+yvONyxgtB8EZmNWGnw5jrV384n0hw6kOJGR9G4tsZRV9kVWGL7vTGcdiAZiDB/v
GIZGGdzNiCKFSp9di9nj8lkvl28YGJrgQgg7VfT1MF5KfDZCW0dohgq+KrrBPw4N
/IxAVEvF8rYmuESrL4UuPS8KVjAhjN0DlvtJvWoBumq3rhx0FsD5OpuZik1daN8c
/eXWcxlvAZZZSYyyiNMIxTIPDixHxj3s2J9/9zTfDpNZYuShOBR2t43wYTiCUbfr
HRIyaUO73BHbOU1wUeutEO4IS9pqL4YU2a2bnELG5GGG6HQ1/HmdIeMWVjgeebux
LG1eqUqKSoV13LWt8ULgli4Xz3Ra+y6PJpbB1a1hsINgCmuv0PpDG2qkHS2ZKYbJ
9XiWzxcgulRpx1OzLOFkdkcfbRt/zWCCiOK1bQiJIG5mwrI3NQo=
=JIfE
-----END PGP SIGNATURE-----

--W2swrXWGj6l4aaDV--


--===============6690907117375786676==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============6690907117375786676==--

