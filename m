Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70489C624A4
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 03:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TICKghSeVIZd1oo9dcRTjNZVLc1/v4tzoLcqd2+Obe8=; b=UGYu2Q9p/PUTJ2
	RMrcVYdXcD3ij8mbzc/X65jU/7lVnFWtxOucPID2/8ZMIfAtlsU1LNph3rGA5u+JHJfg4sMsXzTgg
	QvgA9WnFb9I5jyw+2R4ZOHR/qMAKTszkEmf2CuIrgKhwgz7v96TwNoPZnqnQbs2dPypZxCDg0BfDq
	diqdcKsBLmSKkG3nC0qygF/kbUc5N3jGgWqPW3C7XrhGQUqhZd0nEAm1M1e8Rria8NMDx7tu6cojR
	NqiXqa5f4hvtZlIfc7fZwAE/UqmKOID5fB2lhb1Sp5OTNVOWs0VxaPQOBDEbJgwzJZLGufTe1mRqZ
	3w7nJgjPOROj0xqsV57g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1yMa-0000000GI6a-3hgD;
	Thu, 03 Sep 2026 03:43:44 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1yMT-0000000GI53-2kDa
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 03:43:44 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20260903034328epoutp025028a3156eb38e51fd45d7ed5ad1d087~RsrLtMR3Q1957719577epoutp02b
	for <linux-phy@lists.infradead.org>; Thu,  3 Sep 2026 03:43:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20260903034328epoutp025028a3156eb38e51fd45d7ed5ad1d087~RsrLtMR3Q1957719577epoutp02b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1788407008;
	bh=hxQCmTNMct1DRhOL2zkVSmPzrkHNVIa3V+xEsZNmDLo=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=X55mDB+o3vq/x9sQQI0kgJmccvhvqmrDBVLetGnJ5rysGFps+x9Z5pg7e7DEXHRPL
	 2/0SyS3NM44wZzXZXqvahQaKVflAHUL/zLeWNphMMxl2hTsWm6SPg144C/7xDZOZAj
	 sP9cSdln4Wrv0RDmhF5uwlfamEGNLhGR+3orqEH0=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20260903034328epcas5p2d368d9a3526cfa324b3ace3ce9cf3757~RsrLRYlZE1311513115epcas5p2y;
	Thu,  3 Sep 2026 03:43:28 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.90]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4hb56R0c1hz6B9m5; Thu,  3 Sep
	2026 03:43:27 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20260903034326epcas5p380022fb00e655b8b4462fe862ccf6c45~RsrJ4OnTk0546505465epcas5p3j;
	Thu,  3 Sep 2026 03:43:26 +0000 (GMT)
Received: from [107.122.5.126] (unknown [107.122.5.126]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260903034324epsmtip19d32848c86f1eb6807590d3a4e492a0c~RsrHrhGP81548715487epsmtip1D;
	Thu,  3 Sep 2026 03:43:24 +0000 (GMT)
Message-ID: <a258af80-c15c-4adf-84ea-c5b0067e5247@samsung.com>
Date: Thu, 3 Sep 2026 09:13:13 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: exynos5-usbdrd: Use dynamic phy_cfg size to
 prevent OOB access
To: =?UTF-8?B?xYF1a2FzeiBMZWJpZWR6acWEc2tp?= <kernel@lvkasz.us>
Cc: akash.m5@samsung.com, alim.akhtar@samsung.com, andre.draszik@linaro.org,
	dh10.jung@samsung.com, jh0801.jung@samsung.com, krzk@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
	muhammed.ali@samsung.com, neil.armstrong@linaro.org,
	peter.griffin@linaro.org, pritam.sutar@samsung.com, thiagu.r@samsung.com,
	vkoul@kernel.org
Content-Language: en-US
From: Selvarasu Ganesan <selvarasu.g@samsung.com>
In-Reply-To: <20260902000439.25379-1-kernel@lvkasz.us>
X-CMS-MailID: 20260903034326epcas5p380022fb00e655b8b4462fe862ccf6c45
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260903034326epcas5p380022fb00e655b8b4462fe862ccf6c45
References: <20260831070309.158069-1-selvarasu.g@samsung.com>
	<20260902000439.25379-1-kernel@lvkasz.us>
	<CGME20260903034326epcas5p380022fb00e655b8b4462fe862ccf6c45@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_204338_342207_B11EA456 
X-CRM114-Status: GOOD (  13.98  )
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

Ck9uIDkvMi8yMDI2IDU6MzQgQU0sIMWBdWthc3ogTGViaWVkemnFhHNraSB3cm90ZToKPiBJIHRl
c3RlZCB0aGlzIG9uIG15IFNhbXN1bmcgR2FsYXh5IEE2IChFeHlub3M3ODcwKSB3aXRoIHRoaXMg
cGF0Y2ggYXBwbGllZAo+IG9uIHRvcCBvZiBtYWlubGluZS4gSSB3YW50ZWQgdG8gdmVyaWZ5IHRo
ZSBPT0IgcmVhZCBmaXJzdCBiZWZvcmUgdHJ1c3RpbmcKPiB0aGlzIGZpeCwgc28gSSBmb3JjZWQg
dGhlIGRldmljZSB0cmVlIHRvIHJlcXVlc3QgUEhZIGluZGV4IDEKPiAocGh5cyA9IDwmdXNiZHJk
X3BoeSAxPjspIC0gdGhpcyBpbmRleCBkb2VzIG5vdCBleGlzdCBmb3IgdGhpcyBTb0MsCj4gYmVj
YXVzZSB0aGUgcGh5X2NmZ19leHlub3M3ODcwW10gYXJyYXkgY29udGFpbnMgb25seSBvbmUgZW50
cnkuIEkgYWRkZWQKPiBhIHRlbXBvcmFyeSBwcl9pbmZvKCkgY2FsbCBhZnRlciBhc3NpZ25pbmcg
cGh5X2NmZyBpbiB0aGUgcHJvYmUgbG9vcCB0bwo+IGRpc3BsYXkgdGhlIHBoeV9pc29sL3BoeV9p
bml0IHZhbHVlcyB1c2luZyAlcFM6Cj4KPiAgICBpPTAgcGh5X2lzb2w9ZXh5bm9zNzg3MF91c2Jk
cmRfcGh5X2lzb2wrMHgwLzB4NjAKPiAgICAgICAgcGh5X2luaXQ9ZXh5bm9zNzg3MF91c2JkcmRf
dXRtaV9pbml0KzB4MC8weDI2MAo+ICAgIGk9MSBwaHlfaXNvbD1leHlub3M1X3VzYmRyZF9waHlf
aXNvbCsweDAvMHg1MAo+ICAgICAgICBwaHlfaW5pdD1leHlub3M1X3VzYmRyZF91dG1pX2luaXQr
MHgwLzB4YzgKPgo+IEZvciBpPTEsIGJvdGggZnVuY3Rpb24gcG9pbnRlcnMgcmVzb2x2ZSB0byB0
aGUgZXh5bm9zNV8qIHZhcmlhbnRzCj4gaW5zdGVhZCBvZiB0aGUgZXh5bm9zNzg3MCBvbmVzIC0g
dGhlIE9PQiByZWFkIGxhbmRzIHJpZ2h0IG9uCj4gdGhlIGFkamFjZW50IHBoeV9jZmdfZXh5bm9z
NVtdIGFycmF5IGluIC5yb2RhdGEuIE5vIGNyYXNoIG9jY3Vycywgc2luY2UKPiB0aGVzZSBnYXJi
YWdlIHBvaW50ZXJzIGhhcHBlbiB0byBwb2ludCB0byB2YWxpZCAodGhvdWdoIHVucmVsYXRlZCkK
PiBrZXJuZWwgZnVuY3Rpb25zIHJhdGhlciB0aGFuIHNvbWV0aGluZyBpbnZhbGlkLgo+Cj4gV2l0
aCB0aGUgcGF0Y2ggYXBwbGllZCwgdGhlIHNhbWUgZGVidWcgcHJpbnQgc2hvd3MgdGhlIGxvb3Ag
Y29ycmVjdGx5Cj4gc3RvcHBpbmcgYXQgbl9waHlfY2ZnPTE7IGk9MSBpcyBuZXZlciByZWFjaGVk
LiBCb290IGFuZCBVU0IgYm90aCB3b3JrCj4gZmluZSBvbiB0aGUgYWN0dWFsIFBIWSBpbmRleCAo
MCkuCj4KPiBUZXN0ZWQtYnk6IMWBdWthc3ogTGViaWVkemnFhHNraSA8a2VybmVsQGx2a2Fzei51
cz4KClRoYW5rcyBmb3IgeW91ciB0ZXN0aW5nIGFuZCB1cGRhdGUuCgpUaGFua3MsClNlbHZhCj4K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
