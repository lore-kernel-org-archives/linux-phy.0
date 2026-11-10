Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A16D2606A32A
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 08:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QOWoUtWn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=kj069CrJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=r6LowTJMNZvyGtorbrMU2oD+Kf05XQoRHIQrvlQOcRM=; b=QOWoUtWnBSKqdMcaxtVNz9wM0N
	mLfYtKLIenJMLyPQgQwf43hQBXnbkk0zIS3R2rLyza7omFhlq3Sg0DZB+Y1xkOWEdMNZZbSxi4tae
	2dHhnVcKDttqhIaUkviUv+LhvDAdzkgR+XzJo9s1xaCCYkVwUHhTkUGX10knf2LFZxb5SBS6JCydT
	f2YfUA4HBF8o36dlsy8x+rwtKXeWGXT+RCvHxyqzWahinHR5HdAO71GxFeNbcdz0YvIMdU02wuSn4
	FISHl78sQSq79PWgA0SCYUQKAOhhH3juACuQx3P5TDwc7NyPAtEeUh7qIsI3DjJCUXv1Hof8baTXk
	ZmJOuXiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQhPQ-00000003913-1Zrk;
	Tue, 10 Nov 2026 08:40:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQhPO-0000000390d-10XF
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 08:40:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C524A63793;
	Tue, 10 Nov 2026 08:40:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C5C61F0089F;
	Tue, 10 Nov 2026 08:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794300047;
	bh=5cpYZBRJZ/IrLL+nNgM7nCdju8ZzXvVptDb+Rb5Dx9E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kj069CrJ4VnS46ro46ieJqf7g+yfhR3HbcEpwgKiPAQ6+1O2wFQSjPWuzOipJzE7Q
	 clM+vfqeYiVDdV86P7+pg0uVXyH3m3L6m8M6PJS3pGjDYn7eyK+dvO77LYuGtQrEBL
	 RPvLm5fs0P3bPmwp+AvzlE0PdbvjJ+frvT3kHrFvPWk30J3NQu/vVveVeoBVx3k7NK
	 X86CfvlopZPQ1DLREDNNzVjJvY+yovj0UzdTjXcKX/IqPKw2F8qlVpAfyNY0+Rv45G
	 iGpxc8p/mw7nn6LofQrAmAXY4mdv+r5h9yvjgGyidxfLt+NAjMb0+HECbYlawgHHdg
	 jr71suZC9VYoQ==
Message-ID: <sashiko-outbox-206648@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 5/9] phy: rockchip-samsung-dcphy: Move block-level
 setup to runtime resume
To: "Jason Yang" <jason98166@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261110-dcphy-rx-v1-v6-5-d681ba20b36a@gmail.com>
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
 <20261110-dcphy-rx-v1-v6-5-d681ba20b36a@gmail.com>
Date: Tue, 10 Nov 2026 08:40:46 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiByb2NrY2hpcC1z
YW1zdW5nLWRjcGh5OiBzdGFsZSBTU0Mgc3RhdGUgaW4KICBzYW1zdW5nX21pcGlfZGNwaHlfcGxs
X2NvbmZpZ3VyZSgpCi0tCgpjb21taXQgZmE4NWFhMTQzMjMwOTUxNjMyMTE4NDllMmE3ZjE5NGQz
Mjc2NTM5OApBdXRob3I6IEphc29uIFlhbmcgPGphc29uOTgxNjZAZ21haWwuY29tPgoKcGh5OiBy
b2NrY2hpcC1zYW1zdW5nLWRjcGh5OiBNb3ZlIGJsb2NrLWxldmVsIHNldHVwIHRvIHJ1bnRpbWUg
cmVzdW1lCgpUaGlzIGNvbW1pdCBtb3ZlcyB0aGUgQVBCIHJlc2V0IHB1bHNlIGFuZCBCSUFTIGJs
b2NrIGluaXRpYWxpemF0aW9uIGZyb20KdGhlIFBIWSBwb3dlci1vbiBwYXRoIHRvIHRoZSBydW50
aW1lIHJlc3VtZSBjYWxsYmFjayBzbyB0aGF0IGEgc2Vjb25kIFBIWQpjb25zdW1lciBkb2VzIG5v
dCByZXNldCBhbiBhbHJlYWR5IHJ1bm5pbmcgYmxvY2suCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeS5jIGIvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYwo+IGluZGV4IDdhMDA5ZDg3YTY2
NTYuLmQ2YWNjM2UyZDQ0ODYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmMKClsgLi4uIF0KCj4gQEAgLTEzNzMsMTAgKzEzNzIs
NiBAQCBzdGF0aWMgaW50IHNhbXN1bmdfbWlwaV9kY3BoeV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpw
aHkpCj4gIHsKPiAgCXN0cnVjdCBzYW1zdW5nX21pcGlfZGNwaHkgKnNhbXN1bmcgPSBwaHlfZ2V0
X2RydmRhdGEocGh5KTsKPiAgCj4gLQlyZXNldF9jb250cm9sX2Fzc2VydChzYW1zdW5nLT5hcGJf
cnN0KTsKPiAtCXVkZWxheSgxKTsKPiAtCXJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoc2Ftc3VuZy0+
YXBiX3JzdCk7CgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyByZW1vdmluZyB0aGUgc2Ftc3VuZy0+
YXBiX3JzdCBwdWxzZSBmcm9tIHNhbXN1bmdfbWlwaV9kY3BoeV9wb3dlcl9vbigpCmxlYXZlIFNT
Q0dfRU4gZW5hYmxlZCBpbiBQTExfQ09ONCB3aGVuIHRoZSB0cmFuc21pdHRlciBpcyByZWNvbmZp
Z3VyZWQgZnJvbQphIHJhdGUgYWJvdmUgMi41IEdicHMgdG8gMi41IEdicHMgb3IgYmVsb3cgd2hp
bGUgdGhlIGRldmljZSBzdGF5cwpydW50aW1lLXJlc3VtZWQ/CgpXaXRob3V0IHRoZSBBUEIgcmVz
ZXQgb24gZWFjaCBwb3dlcl9vbiwgUExMX0NPTjMgYW5kIFBMTF9DT040IGtlZXAgdGhlaXIKcHJl
dmlvdXMgdmFsdWVzLCBhbmQgc2Ftc3VuZ19taXBpX2RjcGh5X3BsbF9jb25maWd1cmUoKSBvbmx5
IHRvdWNoZXMgdGhlbQp3aGVuIHNhbXN1bmctPnBsbC5zc2NfZW4gaXMgdHJ1ZToKCmRyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmM6c2Ftc3VuZ19taXBpX2Rj
cGh5X3BsbF9jb25maWd1cmUoKSB7CgkuLi4KCWlmIChzYW1zdW5nLT5wbGwuc3NjX2VuKSB7CgkJ
cmVnbWFwX3dyaXRlKHNhbXN1bmctPnJlZ21hcCwgUExMX0NPTjMsCgkJCSAgICAgTVJSKHNhbXN1
bmctPnBsbC5tcnIpIHwgTUZSKHNhbXN1bmctPnBsbC5tZnIpKTsKCQlyZWdtYXBfdXBkYXRlX2Jp
dHMoc2Ftc3VuZy0+cmVnbWFwLCBQTExfQ09ONCwgU1NDR19FTiwgU1NDR19FTik7Cgl9CgkuLi4K
fQoKSW4gYWRkaXRpb24sIHNhbXN1bmdfbWlwaV9kY3BoeV9wbGxfY2FsY19yYXRlKCkgc2V0cyBz
YW1zdW5nLT5wbGwuc3NjX2VuID0KdHJ1ZSB3aGVuIGZvdXQgPiAyNTAwMDAwMDAwTEwsIGJ1dCBu
ZXZlciByZXNldHMgaXQgdG8gZmFsc2UgZm9yIGxvd2VyCnJhdGVzLCBzbyBzd2l0Y2hpbmcgdG8g
YSBsb3dlci1yYXRlIG1vZGUga2VlcHMgc3ByZWFkLXNwZWN0cnVtIGNsb2NraW5nCmVuYWJsZWQg
d2l0aCBzdGFsZSBtb2R1bGF0aW9uIHBhcmFtZXRlcnMuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMTEwLWRjcGh5LXJ4LXYxLXY2
LTAtZDY4MWJhMjBiMzZhQGdtYWlsLmNvbT9wYXJ0PTUKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
