Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE383606A31A
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 05:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oz0O1rXu;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=samsung.com header.i=@samsung.com header.a=rsa-sha256 header.s=mail20170921 header.b=dYEGJLl/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIYtUrtxNXAiozY+HCpF9eHBGqfqcWe9Z5hDZ88yMjA=; b=oz0O1rXuYZCeJ0
	MDFo05q2dNuoXhFK9K5dCtAo4U2Oy1CGYowoqNiGtQ5WFzCT8QL+sOhEMLYq5Ofn1cWdAXYgr/AGb
	gOFEd5huxy09+R0kLANjPquThQMrtr2CSKM3IBQBWXCSyhl/boTPiJ9rLFh03SNkS0x6wDxisYMfz
	7kbxxxi1jEgA7LpPiaEYy2ZJiI4BiVmCW45oONcPOSYDPGgZaLw8WJ8iSdygZNPf1bgs/cu1EtRua
	sbzmlSBXZ9j5qrk3jENQ6rO9GBMQDyb4sm08/dq6iqgu/03d+4xZTygjM04EFyMtvvqTf08fxhGKL
	xGfknjOKokU0EFkrnnZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ2ND-00000008s4C-0Zcp;
	Tue, 20 Oct 2026 05:26:55 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ2N8-00000008s30-27xM
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 05:26:53 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20261020052641epoutp032a15d453672a559e1bfdafd66e1cf1f4~gJZuEifg51936119361epoutp03M
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 05:26:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20261020052641epoutp032a15d453672a559e1bfdafd66e1cf1f4~gJZuEifg51936119361epoutp03M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1792474001;
	bh=VBaqtAYhzt9vjT0IOaJ3LEbjNlh/6yFmqmAUZP/n84g=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=dYEGJLl/XaI8YLA9R+Ob8BLNL4Oe4NEqVu0yZo7lPIWNUon5CtaJa5P+ABxEeLhKV
	 RdokE3KZAgTDw4/1+B9Sq4zlulMxapQI/9OppFOFp4VWgAJIEdR+igm+327fNAyrrt
	 qJWhR/yoLNGDAg38FHqOgluaTODXTEdRRGI7VbQ0=
Received: from epsnrtp02.localdomain (unknown [182.195.42.154]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPS id
	20261020052640epcas5p27161ada23d6deba25cb84e6fcb0165b0~gJZtBVh9C2585725857epcas5p2s;
	Tue, 20 Oct 2026 05:26:40 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.93]) by
	epsnrtp02.localdomain (Postfix) with ESMTP id 4j819q3JvDz2SSKb; Tue, 20 Oct
	2026 05:26:39 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20261020052638epcas5p18ff9bffbddf4c8f106a4669f4810370f~gJZrnNRuA1711217112epcas5p1J;
	Tue, 20 Oct 2026 05:26:38 +0000 (GMT)
Received: from [107.122.5.126] (unknown [107.122.5.126]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20261020052635epsmtip1b24d9cf98f9333c343d2bf34c031fda5~gJZoqwYIG2871028710epsmtip1g;
	Tue, 20 Oct 2026 05:26:35 +0000 (GMT)
Message-ID: <40a922b9-f56f-4fe1-88f5-5bb236735951@samsung.com>
Date: Tue, 20 Oct 2026 10:56:34 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: exynos5-usbdrd: Use dynamic phy_cfg size to
 prevent OOB access
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk@kernel.org,
	peter.griffin@linaro.org, alim.akhtar@samsung.com, pritam.sutar@samsung.com,
	andre.draszik@linaro.org, kernel@lvkasz.us, pengpeng@iscas.ac.cn,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	jh0801.jung@samsung.com, h10.kim@samsung.com, dh10.jung@samsung.com,
	akash.m5@samsung.com, hongpooh.kim@samsung.com, eomji.oh@samsung.com,
	shijie.cai@samsung.com, muhammed.ali@samsung.com, thiagu.r@samsung.com
Content-Language: en-US
From: Selvarasu Ganesan <selvarasu.g@samsung.com>
In-Reply-To: <as0G-bk_TKRToOkv@debian>
X-CMS-MailID: 20261020052638epcas5p18ff9bffbddf4c8f106a4669f4810370f
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20260918103249epcas5p49c9b4bf6fd60c28f5f09f0b7b69828b6
References: <CGME20260918103249epcas5p49c9b4bf6fd60c28f5f09f0b7b69828b6@epcas5p4.samsung.com>
	<20260918103147.2628614-1-selvarasu.g@samsung.com> <as0G-bk_TKRToOkv@debian>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_222651_233800_5E71327E 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -4.7 (----)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIDEwLzEyLzIwMjYgOTo0NCBQTSwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+IE9u
IEZyaSwgU2VwIDE4LCAyMDI2IGF0IDA0OjAxOjQ3UE0gKzA1MzAsIFNlbHZhcmFzdSBHYW5lc2Fu
IHdyb3RlOgo+PiBUaGUgcHJvYmUgbG9vcCBjdXJyZW50bHkgaXRlcmF0ZXMgdXNpbmcgRVhZTk9T
NV9EUkRQSFlTX05VTSAoMiksCj4+IGNyZWF0aW5nIGJvdGggVVRNSSBhbmQgUElQRTMgUEhZIGlu
c3RhbmNlcyByZWdhcmRsZXNzIG9mIHRoZSBTb0MKPj4gY2FwYWJpbGl0eS4gU2V2ZXJhbCBTb0Nz
IChFeHlub3MyMjAwLCBFeHlub3M3ODcwLCBFeHlub3M4NTAsIEV4eW5vczk5MCwKPj4gYW5kIEV4
eW5vc0F1dG9WOTIwKSBwcm92aWRlIHBoeV9jZmcgYXJyYXlzIGNvbnRhaW5pbmcgb25seSBhIHNp
bmdsZQo+PiBlbGVtZW50Lgo+Pgo+PiBPbiB0aGVzZSBTb0NzLCB3aGVuIHRoZSBsb29wIHJlYWNo
ZXMgaW5kZXggMSwgdGhlIGRyaXZlciByZWFkcyBwYXN0IHRoZQo+PiBlbmQgb2YgdGhlIHJvZGF0
YSBhcnJheSwgcG9wdWxhdGluZyB0aGUgc2Vjb25kIFBIWSBpbnN0YW5jZSB3aXRoIGdhcmJhZ2UK
Pj4gZGF0YS4gU2luY2UgdGhlIGNvbmZpZ3VyYXRpb24gc3RydWN0dXJlIGNvbnRhaW5zIGNyaXRp
Y2FsIGZ1bmN0aW9uCj4+IHBvaW50ZXJzIChwaHlfaXNvbCwgcGh5X2luaXQsIHNldF9yZWZjbGsp
LCBhbnkgc3Vic2VxdWVudCBhY2Nlc3MgdG8gdGhpcwo+PiBQSFkgaW5zdGFuY2UgdmlhIGV4eW5v
czVfdXNiZHJkX3BoeV94bGF0ZSBjb3VsZCByZXN1bHQgaW4gYSBrZXJuZWwgb29wcy4KPj4KPj4g
Rml4IHRoaXMgYnkgYWRkaW5nICduX3BoeV9jZmcnIHRvIHN0cnVjdCBleHlub3M1X3VzYmRyZF9w
aHlfZHJ2ZGF0YSB0bwo+PiBzdG9yZSB0aGUgYWN0dWFsIHNpemUgb2YgdGhlIHBoeV9jZmcgYXJy
YXkgZm9yIGVhY2ggU29DLiBVcGRhdGUgdGhlCj4+IHByb2JlIGxvb3AgYW5kIHRoZSB4bGF0ZSBm
dW5jdGlvbiB0byBib3VuZCB0aGVpciBhY2Nlc3MgYWdhaW5zdCB0aGlzCj4+IHZhbHVlIGluc3Rl
YWQgb2YgdGhlIGhhcmRjb2RlZCBFWFlOT1M1X0RSRFBIWVNfTlVNLgo+Pgo+PiBBc3Npc3RlZC1i
eTogTExNCj4+IFNpZ25lZC1vZmYtYnk6IFNlbHZhcmFzdSBHYW5lc2FuIDxzZWx2YXJhc3UuZ0Bz
YW1zdW5nLmNvbT4KPj4gVGVzdGVkLWJ5OiDFgXVrYXN6IExlYmllZHppxYRza2kgPGtlcm5lbEBs
dmthc3oudXM+Cj4+IFJldmlld2VkLWJ5OiBBbGltIEFraHRhciA8YWxpbS5ha2h0YXJAc2Ftc3Vu
Zy5jb20+Cj4+IFJldmlld2VkLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5h
cm8ub3JnPgo+PiBSZXZpZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5h
cm8ub3JnPgo+IFNpbmNlIHRoaXMgcGF0Y2ggZml4ZXMgYW4gT09CIGlzc3VlLCBpdCBzaG91bGQg
aGF2ZSBhIEZpeGVzIHRhZyBhbmQgdGhlIHN0YWJsZQo+IGxpc3Qgc2hvdWxkIGJlIENDZWQgZm9y
IGJhY2twb3J0aW5nLgoKSGkgTWFuaSwKClRoYW5rcyBmb3IgeW91ciByZXZpZXdpbmcgcGF0Y2gu
CgpTdXJlLCBJIHdpbGwgYWRkIGZpeGVzIGFuZCBzdGFibGUgdGFnIGluIHRoZSBuZXh0IHZlcnNp
b24uCgpUaGFua3MsClNlbHZhCj4KPiAtIE1hbmkKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
