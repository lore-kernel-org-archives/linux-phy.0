Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E8BEC7EE2E
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 12:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxIwaHtJXbhBsI7qf22G2d00uPCDDwD2g+RCXkUfw0o=; b=qHYm9SFtuAyKV7
	C3Wi4f/oS+tXrpjkeRcL0+nlZIkxVjCdjJCnbBqVH3XI2vY8lsveMt+anIIsAzayugb7vPHC4Z5ZO
	pOypuY3g18qvGhG+XMmc38tj46tSR9k6GJsj4Jdx6xBiOTh3fybMqQre8N+dTsrL86YQ/YQTk3L71
	ekLxvDfsOpEG+nbUoHvbbXGaWVlVSxEMVd+dKznyKuObUaob/8xuWRiOkIBmka9wUuOzMWaMcAIvi
	pGxF6WCCLwhbTYOcUVdmrrzAK3tvxWojP3ldfcFrc2YIaLOYC/s9ZGHXWZkTVPgdeM5clJXKX3IbL
	1a6yD3PaDWlWwUxyffjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q92vo-0081ht-2T;
	Tue, 13 Jun 2023 12:15:28 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q92vj-0081fC-1v
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 12:15:27 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20230613121512euoutp01e4bf87ee124c18d3310e1772d8a24b8e~oNvsX_KqY0139101391euoutp01X
	for <linux-phy@lists.infradead.org>; Tue, 13 Jun 2023 12:15:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20230613121512euoutp01e4bf87ee124c18d3310e1772d8a24b8e~oNvsX_KqY0139101391euoutp01X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1686658512;
	bh=Y3ZNB5D8AVxoBSWeoCf3C/SoDBpipqf/QKoy2s3BHR8=;
	h=Date:Subject:From:To:Cc:In-Reply-To:References:From;
	b=B7wm5ixWroIJbQCNrxd0zNLWaJQRaHIc3+ZBnr0HnBmf5xjRwb3zRjIfrXEA0TnEh
	 nCuOkVy0iweygiAziGwSFVNPDBlHqsnwVKxlWcOhcGySQyPH4DdDM8gshANHhj5Uxx
	 rj8lHUmR+ePu8EFB0QAqvMIUUlFqltsCU3rczYOE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTP id
	20230613121512eucas1p1410760ed404d847dc9574bf9fa90dc24~oNvsG5s8I0929709297eucas1p1C;
	Tue, 13 Jun 2023 12:15:12 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
	eusmges3new.samsung.com (EUCPMTA) with SMTP id 76.4D.37758.0DD58846; Tue, 13
	Jun 2023 13:15:12 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20230613121511eucas1p2595e0de21fadbafc1f6ffdc5636b9271~oNvrmw3Ie0194501945eucas1p2F;
	Tue, 13 Jun 2023 12:15:11 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20230613121511eusmtrp220be5860b6b8ae4a818b2d62cc3c6736~oNvrl_9MU1045810458eusmtrp2J;
	Tue, 13 Jun 2023 12:15:11 +0000 (GMT)
X-AuditID: cbfec7f5-7ffff7000002937e-29-64885dd05d25
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id 68.A0.10549.FCD58846; Tue, 13
	Jun 2023 13:15:11 +0100 (BST)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20230613121510eusmtip1c33b374b07701936d08581bf48011228~oNvqyD9VF2427124271eusmtip1I;
	Tue, 13 Jun 2023 12:15:10 +0000 (GMT)
Message-ID: <c031bff5-6219-adf0-6e73-b688b8de205e@samsung.com>
Date: Tue, 13 Jun 2023 14:15:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0)
	Gecko/20100101 Thunderbird/102.11.2
Subject: Re: [PATCH v4 03/68] clk: Move no reparent case into a separate
 function
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: Maxime Ripard <maxime@cerno.tech>, Michael Turquette
	<mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-actions@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-mips@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org, linux-rtc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>, Pengutronix
	Kernel Team <kernel@pengutronix.de>
In-Reply-To: <b8d0272d-0193-fe40-3294-9e32a0235323@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrAKsWRmVeSWpSXmKPExsWy7djPc7oXYjtSDJbs4rS48vU9m8WqqTtZ
	LKY9aWKx2PT4GqvFx557rBZdv1YyW3Ru2spoMWHVNxaLrS/fMVkcW32FzaLr2hNWiyn7drFZ
	dH6ZxWYx48c/RouLp1wt/l3byOIg4PH+Riu7x51z59k8Nq3qZPO4332cyWPzknqPF5tnMnps
	fLeDyaP/r4HHwX2GHp83yQVwRXHZpKTmZJalFunbJXBlbDgwi7lgv1JF7/lLrA2MO2S7GDk5
	JARMJKYcv8bcxcjFISSwglFiZ8cKKOcLo8Smvd9YIZzPjBJHjk1hgWn5NXMFO4gtJLCcUWL6
	En2Ioo+MEl3fDrKCJHgF7CRuHf3ICGKzCKhKNOxuY4SIC0qcnPkEbJCoQKrE7msHwOqFBYIl
	Lp08AmYzC4hL3HoynwnEZhMwlOh628UGYosIlEr8ezaVBWQZs8BRZomTV24zgyQ4BewlTv/+
	DNUsL9G8dTbYDxIC+zklPnVMYIY420Vi0f5FUC8IS7w6voUdwpaR+L8TZBtIQzujxILf96Gc
	CYwSDc9vMUJUWUvcOfcL6A4OoBWaEut36YOYEgKOEtf6+SFMPokbbwUhbuCTmLRtOjNEmFei
	o00IYoaaxKzj6+C2HrxwiXkCo9IspGCZheT9WUi+mYWwdgEjyypG8dTS4tz01GLjvNRyveLE
	3OLSvHS95PzcTYzARHj63/GvOxhXvPqod4iRiYPxEKMEB7OSCO9TjfYUId6UxMqq1KL8+KLS
	nNTiQ4zSHCxK4rzatieThQTSE0tSs1NTC1KLYLJMHJxSDUzNSTyysVb/DqeItFR/16t8aGDd
	fD0/x8JzclHa9SC/vxuFtqzU/t1m5WbX//FLqwpT+9xX3kYVfFU/LsQH3S54oHl06b8vVslJ
	EVuDktr7dux+3bly6sWfCpu+T3M7GhYiZvGnOSiv3eL3Gh5OiUXOzCu6Q1hXxU+SO30m8+Gy
	gzt6en5XzNT53x7/ZHXEDX03y7QpyZGedbV9T8yLrpXN3PtZN/yJ41QhiXU+Vlc0w2f6ZFRw
	GKrFsE6TKP+yeW6fSqLCTvcnT6QmfDLOa1m7b9qThd3z1qdkStiKTy932X59un7wE0n3vGM5
	pr9cgvNnr/v70uD+spzE3rVTPeI1n8c6F9XqX0l/Ex54W4mlOCPRUIu5qDgRAI8LSEXzAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCIsWRmVeSWpSXmKPExsVy+t/xu7rnYztSDJrbVS2ufH3PZrFq6k4W
	i2lPmlgsNj2+xmrxseceq0XXr5XMFp2btjJaTFj1jcVi68t3TBbHVl9hs+i69oTVYsq+XWwW
	nV9msVnM+PGP0eLiKVeLf9c2sjgIeLy/0crucefceTaPTas62Tzudx9n8ti8pN7jxeaZjB4b
	3+1g8uj/a+BxcJ+hx+dNcgFcUXo2RfmlJakKGfnFJbZK0YYWRnqGlhZ6RiaWeobG5rFWRqZK
	+nY2Kak5mWWpRfp2CXoZGw7MYi7Yr1TRe/4SawPjDtkuRk4OCQETiV8zV7B3MXJxCAksZZT4
	1dXIDpGQkTg5rYEVwhaW+HOtiw2i6D2jxNcFO5lBErwCdhK3jn5kBLFZBFQlGna3MULEBSVO
	znzCAmKLCqRK3F3SzwZiCwsES1w6eQRsKLOAuMStJ/OZQGw2AUOJrrddYDUiAqUSn7fuZAFZ
	xixwlFni58mFjBCbDzBKnDj/G6yKU8Be4vTvz1CTzCS6tnYxQtjyEs1bZzNPYBSaheSQWUgW
	zkLSMgtJywJGllWMIqmlxbnpucWGesWJucWleel6yfm5mxiB0b/t2M/NOxjnvfqod4iRiYPx
	EKMEB7OSCO9TjfYUId6UxMqq1KL8+KLSnNTiQ4ymwNCYyCwlmpwPTD95JfGGZgamhiZmlgam
	lmbGSuK8ngUdiUIC6YklqdmpqQWpRTB9TBycUg1MW61awrfcYU1eYyjbxbQyZWpClsfH+J1C
	39nkK64/Uj2iV73xttj/XXNPzvwTINB1eEeI0P6Su7ah1kpqHOqKz1T2bGZbF8snuXPNrtTs
	7KyWzhOxz3/H3X3BGZcYY1yStD7WP9isfYXzXB/+w/M75Vp7Amey2k54NT2J+9i7yc48Yqfl
	YrV8mv2unBf35S46eP7ywRI+2bU5biefn2jb/j777/LkJQ4zXHIrJ/AtzFxhPbPhguj2zdPN
	91xht/GxK2fmytuXudEgYnZpc8eHUzfitrpOyY+Z/TDNJ3XNp4f3Hm+7m7Dyof7JZBsxS3vl
	unU3wj4tVXle+mO1yTe91a4BH5T/RB2TEmWflztLiaU4I9FQi7moOBEA7ZGLmYcDAAA=
X-CMS-MailID: 20230613121511eucas1p2595e0de21fadbafc1f6ffdc5636b9271
X-Msg-Generator: CA
X-RootMTR: 20230613121511eucas1p2595e0de21fadbafc1f6ffdc5636b9271
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230613121511eucas1p2595e0de21fadbafc1f6ffdc5636b9271
References: <20221018-clk-range-checks-fixes-v4-0-971d5077e7d2@cerno.tech>
	<20221018-clk-range-checks-fixes-v4-3-971d5077e7d2@cerno.tech>
	<b8d0272d-0193-fe40-3294-9e32a0235323@samsung.com>
	<CGME20230613121511eucas1p2595e0de21fadbafc1f6ffdc5636b9271@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_051523_906065_5FCAD667 
X-CRM114-Status: GOOD (  20.35  )
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

T24gMTMuMDYuMjAyMyAxMzoxNSwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBPbiAwNS4wNS4y
MDIzIDEzOjI1LCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+PiBGcm9tOiBTdGVwaGVuIEJveWQgPHNi
b3lkQGtlcm5lbC5vcmc+Cj4+Cj4+IFdlJ2xsIG5lZWQgdG8gdHVybiB0aGUgY29kZSBpbiBjbGtf
bXV4X2RldGVybWluZV9yYXRlX2ZsYWdzKCkgdG8gZGVhbAo+PiB3aXRoIENMS19TRVRfUkFURV9O
T19SRVBBUkVOVCBpbnRvIGEgaGVscGVyIGNsb2NrIGRyaXZlcnMgd2lsbCBiZSBhYmxlCj4+IHRv
IHVzZSBpZiB0aGV5IGRvbid0IHdhbnQgdG8gYWxsb3cgcmVwYXJlbnRpbmcuCj4+Cj4+IENjOiBB
YmVsIFZlc2EgPGFiZWx2ZXNhQGtlcm5lbC5vcmc+Cj4+IENjOiBBbGVzc2FuZHJvIFp1bW1vIDxh
Lnp1bW1vQHRvd2VydGVjaC5pdD4KPj4gQ2M6IEFsZXhhbmRyZSBCZWxsb25pIDxhbGV4YW5kcmUu
YmVsbG9uaUBib290bGluLmNvbT4KPj4gQ2M6IEFsZXhhbmRyZSBUb3JndWUgPGFsZXhhbmRyZS50
b3JndWVAZm9zcy5zdC5jb20+Cj4+IENjOiAiQW5kcmVhcyBGw6RyYmVyIiA8YWZhZXJiZXJAc3Vz
ZS5kZT4KPj4gQ2M6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5v
LmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+Cj4+IENjOiBCYW9saW4gV2FuZyA8YmFvbGluLndhbmdA
bGludXguYWxpYmFiYS5jb20+Cj4+IENjOiBDaGFybGVzIEtlZXBheCA8Y2tlZXBheEBvcGVuc291
cmNlLmNpcnJ1cy5jb20+Cj4+IENjOiBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5vcmc+Cj4+IENj
OiBDaGVuLVl1IFRzYWkgPHdlbnN0QGNocm9taXVtLm9yZz4KPj4gQ2M6IENodW55YW4gWmhhbmcg
PHpoYW5nLmx5cmFAZ21haWwuY29tPgo+PiBDYzogQ2xhdWRpdSBCZXpuZWEgPGNsYXVkaXUuYmV6
bmVhQG1pY3JvY2hpcC5jb20+Cj4+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+
Cj4+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPgo+PiBDYzogRGF2aWQgTGVj
aG5lciA8ZGF2aWRAbGVjaG5vbG9neS5jb20+Cj4+IENjOiBEaW5oIE5ndXllbiA8ZGluZ3V5ZW5A
a2VybmVsLm9yZz4KPj4gQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KPj4g
Q2M6IEdlZXJ0IFV5dHRlcmhvZXZlbiA8Z2VlcnQrcmVuZXNhc0BnbGlkZXIuYmU+Cj4+IENjOiBK
YXJvc2xhdiBLeXNlbGEgPHBlcmV4QHBlcmV4LmN6Pgo+PiBDYzogSmVybmVqIFNrcmFiZWMgPGpl
cm5lai5za3JhYmVjQGdtYWlsLmNvbT4KPj4gQ2M6IEpvbmF0aGFuIEh1bnRlciA8am9uYXRoYW5o
QG52aWRpYS5jb20+Cj4+IENjOiBLaXNob24gVmlqYXkgQWJyYWhhbSBJIDxraXNob25Aa2VybmVs
Lm9yZz4KPj4gQ2M6IExpYW0gR2lyZHdvb2QgPGxnaXJkd29vZEBnbWFpbC5jb20+Cj4+IENjOiBM
aW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+Cj4+IENjOiBMdWNhIENlcmVz
b2xpIDxsdWNhLmNlcmVzb2xpQGJvb3RsaW4uY29tPgo+PiBDYzogTWFuaXZhbm5hbiBTYWRoYXNp
dmFtIDxtYW5pQGtlcm5lbC5vcmc+Cj4+IENjOiBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5v
cmc+Cj4+IENjOiBNYXJrdXMgU2NobmVpZGVyLVBhcmdtYW5uIDxtc3BAYmF5bGlicmUuY29tPgo+
PiBDYzogTWF4IEZpbGlwcG92IDxqY212YmtiY0BnbWFpbC5jb20+Cj4+IENjOiBNYXhpbWUgQ29x
dWVsaW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5jb20+Cj4+IENjOiBNaWtrbyBQZXJ0dHVuZW4g
PG1wZXJ0dHVuZW5AbnZpZGlhLmNvbT4KPj4gQ2M6IE1pbGVzIENoZW4gPG1pbGVzLmNoZW5AbWVk
aWF0ZWsuY29tPgo+PiBDYzogTmljb2xhcyBGZXJyZSA8bmljb2xhcy5mZXJyZUBtaWNyb2NoaXAu
Y29tPgo+PiBDYzogT3Jzb24gWmhhaSA8b3Jzb256aGFpQGdtYWlsLmNvbT4KPj4gQ2M6IFBhdWwg
Q2VyY3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0Pgo+PiBDYzogUGVuZyBGYW4gPHBlbmcuZmFu
QG54cC5jb20+Cj4+IENjOiBQZXRlciBEZSBTY2hyaWp2ZXIgPHBkZXNjaHJpanZlckBudmlkaWEu
Y29tPgo+PiBDYzogUHJhc2hhbnQgR2Fpa3dhZCA8cGdhaWt3YWRAbnZpZGlhLmNvbT4KPj4gQ2M6
IFJpY2hhcmQgRml0emdlcmFsZCA8cmZAb3BlbnNvdXJjZS5jaXJydXMuY29tPgo+PiBDYzogU2Ft
dWVsIEhvbGxhbmQgPHNhbXVlbEBzaG9sbGFuZC5vcmc+Cj4+IENjOiBTYXNjaGEgSGF1ZXIgPHMu
aGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4+IENjOiBTZWtoYXIgTm9yaSA8bnNla2hhckB0aS5jb20+
Cj4+IENjOiBTaGF3biBHdW8gPHNoYXduZ3VvQGtlcm5lbC5vcmc+Cj4+IENjOiBUYWthc2hpIEl3
YWkgPHRpd2FpQHN1c2UuY29tPgo+PiBDYzogVGhpZXJyeSBSZWRpbmcgPHRoaWVycnkucmVkaW5n
QGdtYWlsLmNvbT4KPj4gQ2M6IFVsZiBIYW5zc29uIDx1bGYuaGFuc3NvbkBsaW5hcm8ub3JnPgo+
PiBDYzogVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4KPj4gQ2M6IGRyaS1kZXZlbEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPj4gQ2M6IGxpbnV4LWFjdGlvbnNAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+PiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IENjOiBsaW51
eC1taXBzQHZnZXIua2VybmVsLm9yZwo+PiBDYzogbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKPj4gQ2M6IGxpbnV4LXJlbmVzYXMtc29jQHZnZXIua2VybmVsLm9yZwo+PiBDYzogbGludXgt
cnRjQHZnZXIua2VybmVsLm9yZwo+PiBDYzogbGludXgtc3RtMzJAc3QtbWQtbWFpbG1hbi5zdG9y
bXJlcGx5LmNvbQo+PiBDYzogbGludXgtc3VueGlAbGlzdHMubGludXguZGV2Cj4+IENjOiBsaW51
eC10ZWdyYUB2Z2VyLmtlcm5lbC5vcmcKPj4gQ2M6IE5YUCBMaW51eCBUZWFtIDxsaW51eC1pbXhA
bnhwLmNvbT4KPj4gQ2M6IHBhdGNoZXNAb3BlbnNvdXJjZS5jaXJydXMuY29tCj4+IENjOiBQZW5n
dXRyb25peCBLZXJuZWwgVGVhbSA8a2VybmVsQHBlbmd1dHJvbml4LmRlPgo+PiBTaWduZWQtb2Zm
LWJ5OiBTdGVwaGVuIEJveWQgPHNib3lkQGtlcm5lbC5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IE1h
eGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNoPgo+PiAtLS0KPgo+IFRoaXMgcGF0Y2ggbGFu
ZGVkIGluIHRvZGF5J3MgbGludXgtbmV4dCBhcyBjb21taXQgMWI0ZTk5ZmRhNzNmICgiY2xrOiAK
PiBNb3ZlIG5vIHJlcGFyZW50IGNhc2UgaW50byBhIHNlcGFyYXRlIGZ1bmN0aW9uIikuIFVuZm9y
dHVuYXRlbHkgaXQgCj4gY2F1c2VzIHNlcmlvdXMgcmVncmVzc2lvbiBvZiBzb21lIG9mIG15IHRl
c3QgYm9hcmRzLiBOYW1lbHkgRXh5bm9zMzI1MCAKPiBiYXNlZCBib2FyZHMgYXJlIHNvIHNsb3cg
YWZ0ZXIgaXQsIHRoYXQgbXkgdGVzdCBzY3JpcHRzIGZhaWwgd2l0aCBhIAo+IHRpbWVvdXQgd2Fp
dGluZyBmb3IgdGhlbSB0byBmaW5pc2ggYm9vdGluZy4gSSB3aWxsIHRyeSB0byBkZWJ1ZyB0aGlz
IAo+IGxhdGVyIGluIHRoZSBldmVuaW5nIHRvIGNoZWNrIHdoYXQgaGFzIGhhcHBlbmVkIHRoYXQg
c29tZSBjbG9ja3MgZ290IAo+IHZlcnkgbG93IHJhdGUuCj4KSSBqdXN0IGdvdCBhIGZldyBzcGFy
ZSBtaW51dGVzLCBzbyBJIGRlY2lkZWQgdG8gdGFrZSBhIGxvb2sgaW50byB0aGlzIAppc3N1ZS4g
VGhlIGZvbGxvd2luZyBjaGFuZ2UgZml4ZWQgbXkgcHJvYmxlbToKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2Nsay9jbGsuYyBiL2RyaXZlcnMvY2xrL2Nsay5jCmluZGV4IGZmYzlmMDM4NDBiNy4uN2Fj
OWY3YThjYjg0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9jbGsuYworKysgYi9kcml2ZXJzL2Ns
ay9jbGsuYwpAQCAtNjI5LDYgKzYyOSw3IEBAIGNsa19jb3JlX2RldGVybWluZV9yYXRlX25vX3Jl
cGFyZW50KHN0cnVjdCBjbGtfaHcgKmh3LAogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGJlc3QgPSBjbGtfY29yZV9nZXRfcmF0ZV9ub2xvY2soY29yZSk7CiDCoMKgwqDCoMKgwqDCoCB9
CgorwqDCoMKgwqDCoMKgIHJlcS0+YmVzdF9wYXJlbnRfcmF0ZSA9IGJlc3Q7CiDCoMKgwqDCoMKg
wqDCoCByZXEtPnJhdGUgPSBiZXN0OwoKIMKgwqDCoMKgwqDCoMKgIHJldHVybiAwOwoKYmVzdF9w
YXJlbnRfcmF0ZSBpcyBzdGlsbCBiZWluZyB1c2VkIHNvbWV3aGVyZSBpbiB0aGUgY29kZSBhbmQg
bmVlZHMgdG8gCmJlIHVwZGF0ZWQgcmVnYXJkbGVzcyBvZiB0aGUgQ0xLX1NFVF9SQVRFX05PX1JF
UEFSRU5UIGZsYWcuCgogPiAuLi4KCkJlc3QgcmVnYXJkcwotLSAKTWFyZWsgU3p5cHJvd3NraSwg
UGhEClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
