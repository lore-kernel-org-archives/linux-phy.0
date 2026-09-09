Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D64BAC79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 17:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RHaCvwFxZxv4dsl4SDmDxLN6gFyoCmt2A//bSaQyDjY=; b=Hu1ZX2VcwTLiYm
	GRlp2LrtslIYlWSWpCFAxAzP4wW8SSj8KXrWrb5RTrm+++dblNahg0Wb0MusD/iYpy1PbnwFc9bAp
	QCAQ4E6qsA2l0VpeEIvSBtR4STFYM7b8YHRUk9AlDjyu+Tuk4YiQxvW2n2LiifbfjETzgQHYHwb4s
	AcOR1lDoO+FCsjT6RaSHs4oUJeCjIZOk5ZlSG5NRG3G1fXNqIfE4WRCSEGzmzMt6dl4jqvrnA4WVc
	y7qBKS+MIxdj+IjVQ3xfdzYaORtV2rz4DBJ1FIWDQ5HZiPxytiIwhWTfCK/NkJ9Buv5C3MURGElyo
	X6YSqlcqMawe3b7LChDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4M1m-0000000CTPV-1X7R;
	Wed, 09 Sep 2026 17:24:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4M1l-0000000CTOw-2EcG;
	Wed, 09 Sep 2026 17:24:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4C22D414F4;
	Wed,  9 Sep 2026 17:24:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF4D61F00893;
	Wed,  9 Sep 2026 17:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788974645;
	bh=H308Fze0XRt9N+Ri5zLt+4vWDFRB8Aw2ZkYI3hwsFW4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GpMURs6mvtA/GGO6Qq64gTORmYhXiY0sEas28tbjcuZd7L1O2z1/TN98BsQCKtGa5
	 xKJiii3dzXSjojd9xT50qH9b6BFigiOmanQlEfy3u1VIbr0UzOdXD5URi6ED0Ca0sT
	 rQw6KsLXq8Xee8gKMJN71Hyx7dYBnzUpZ6wDiV+XPabmmLhcOCipNaVb9czOb757EI
	 AUpP+W6nhnrG3Lclz/P+vrydIU3DnKmDfeu3vGPfeeGLWeEC0oPMZZVADj1SjsaBhy
	 3fchyCWAx5BefCPvx34AaJ2PazeIg/Yuc05eblEEeKq+12JifaPo/CS2/ZCVfTYD5c
	 VG+I6y30p6puQ==
Date: Wed, 9 Sep 2026 19:23:55 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v3 10/12] phy: phy-mtk-dp: Add bitrate register val
 definitions to SoC data
Message-ID: <mmkzupat6ef423xnsd5hspcs4rzjxs223mr5n4qetpjltbeoer@sxsxpeqrd5tt>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-11-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707154245.198361-11-angelogioacchino.delregno@collabora.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMDU6NDI6NDNQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gSW4gcHJlcGFyYXRpb24gZm9yIGFkZGluZyBzdXBwb3J0IGZv
ciB0aGUgZURQIFBIWSBmb3VuZCBpbiBuZXdlcgo+IFNvQ3MsIHRyYW5zZmVyIHRoZSBiaXRyYXRl
IHJlZ2lzdGVyIHZhbHVlIGRlZmluaXRpb25zIHRvIFNvQwo+IHNwZWNpZmljIGRhdGEuCj4gCj4g
U2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hp
bm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhh
c2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgot
LSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
