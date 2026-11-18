Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A78606A31C
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 06:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AxRf/BSH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=gH+hgf5i
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sMM9y/JyLqoWD9L3V76VBVlZeH6rj/QRh40xVdjKnkQ=; b=AxRf/BSHIXaeZScMeqqBK317Y6
	lHuZdurOLrQY+D+Pe/uANl9LH1TCmlqUUsZ2UANQ8aag7BheAIIaOAkwQD57L1YQK9MFaeD3H4J7T
	xMObn8tT+jABB9DprnA2GuGqJfXz+DnndOAL4ent+idP+edd980xAXSUXiXADJVojRkbepleQoTKP
	fRQf057XTW7D9ruvbK3gSmqUzjhr12Qn33yexXMFIADZEvG/D94rjd5zV7b6+n70OEGoVTkC4U1YF
	ln9UKLFzwD0BJHSBQd1E+hsEh132+f9L0+FGjkN7ABFf2jynTHSfMLM/3p9vZzZHRcyH7uL8kso8c
	Uc5QmCCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYpP-00000007pn5-2oBA;
	Wed, 18 Nov 2026 06:07:31 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYpP-00000007pmj-06cI
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 06:07:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 14DFA4366E;
	Wed, 18 Nov 2026 06:07:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85EAC1F000C4;
	Wed, 18 Nov 2026 06:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794982050;
	bh=4O2M6DjzNYvNSUJkigNXwXXVLbLSdFMdZsPmTdwOj/M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gH+hgf5iXxDZWiN388MTCqCGeGJEkdb6bRRqFi/M/Huiv8xJnz/02miBxhmi2cr7/
	 D57kfwyVOSxXnlj/It2SkBmMZyZ6MFzfN8f0q4nX44pcq6NXJ6LZrcVEA4lhy0xQh8
	 a2IaMfwNmC7fRs3GSPbuJ0BlNX8o4mSQvfmn/NBmXSxDsST7zorgELLkPqAeduakat
	 q7GkNXu7cM/EVC9t7ND4XnVC9z2gT7SWIOV2Bkqhlbf/VHQDIfOonC4jjWw3nUIw6G
	 o4H54wqrr3Xd74uLNWljNns0Z0IH4ftmCyyHODwQ8iLKYsQAQwRYxVmAFpCxzyNZuc
	 4xfCW+SrvUz0Q==
Message-ID: <sashiko-outbox-220207@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 5/9] phy: rockchip-samsung-dcphy: Move block-level
 setup to runtime resume
To: "Jason Yang" <jason98166@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261118-dcphy-rx-v1-v7-5-8de1adac3a74@gmail.com>
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
 <20261118-dcphy-rx-v1-v7-5-8de1adac3a74@gmail.com>
Date: Wed, 18 Nov 2026 06:07:29 +0000
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
YW1zdW5nLWRjcGh5OiBzdGFsZSBTU0MgaW4KICBzYW1zdW5nX21pcGlfZGNwaHlfcGxsX2NvbmZp
Z3VyZSgpCi0tCgpjb21taXQgYTY1ODQ4OTRhMWFmODlmOGMzNzAwZjYyOTFkY2E5ODgzNWEyZThj
NwpBdXRob3I6IEphc29uIFlhbmcgPGphc29uOTgxNjZAZ21haWwuY29tPgoKcGh5OiByb2NrY2hp
cC1zYW1zdW5nLWRjcGh5OiBNb3ZlIGJsb2NrLWxldmVsIHNldHVwIHRvIHJ1bnRpbWUgcmVzdW1l
CgpUaGlzIGNvbW1pdCBtb3ZlcyB0aGUgQVBCIHJlc2V0IHB1bHNlIGFuZCBCSUFTIGJsb2NrIGlu
aXRpYWxpemF0aW9uIGZyb20gdGhlCkQtUEhZIHBvd2VyLW9uIHBhdGggdG8gdGhlIHJ1bnRpbWUg
cmVzdW1lIGNhbGxiYWNrIHNvIHRoYXQgYnJpbmdpbmcgdXAgYQpzZWNvbmQgUEhZIGNvbnN1bWVy
IGRvZXMgbm90IHJlc2V0IHRoZSBzaGFyZWQgYmxvY2suCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeS5jIGIvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYwo+IGluZGV4IDdhMDA5ZDg3YTY2
NTYuLmQ2YWNjM2UyZDQ0ODYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLXNhbXN1bmctZGNwaHkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1zYW1zdW5nLWRjcGh5LmMKWyAuLi4gXQo+IEBAIC0xMzczLDEwICsxMzcyLDYg
QEAgc3RhdGljIGludCBzYW1zdW5nX21pcGlfZGNwaHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5
KQo+ICB7Cj4gIAlzdHJ1Y3Qgc2Ftc3VuZ19taXBpX2RjcGh5ICpzYW1zdW5nID0gcGh5X2dldF9k
cnZkYXRhKHBoeSk7Cj4gIAo+IC0JcmVzZXRfY29udHJvbF9hc3NlcnQoc2Ftc3VuZy0+YXBiX3Jz
dCk7Cj4gLQl1ZGVsYXkoMSk7Cj4gLQlyZXNldF9jb250cm9sX2RlYXNzZXJ0KHNhbXN1bmctPmFw
Yl9yc3QpOwo+IC0KPiAgCXN3aXRjaCAoc2Ftc3VuZy0+dHlwZSkgewo+ICAJY2FzZSBQSFlfVFlQ
RV9EUEhZOgo+ICAJCXJldHVybiBzYW1zdW5nX21pcGlfZHBoeV9wb3dlcl9vbihzYW1zdW5nKTsK
CltTZXZlcml0eTogTWVkaXVtXQpEb2VzIHJlbW92aW5nIHRoZSBhcGJfcnN0IHB1bHNlIGZyb20g
c2Ftc3VuZ19taXBpX2RjcGh5X3Bvd2VyX29uKCkgbGVhdmUKc3ByZWFkLXNwZWN0cnVtIGNsb2Nr
aW5nIGVuYWJsZWQgd2hlbiByZWNvbmZpZ3VyaW5nIHRoZSB0cmFuc21pdHRlciBmcm9tIGEKcmF0
ZSBhYm92ZSAyLjUgR2JwcyB0byAyLjUgR2JwcyBvciBiZWxvdyB3aGlsZSB0aGUgZGV2aWNlIHN0
YXlzIHJ1bnRpbWUKcmVzdW1lZD8KCldpdGhvdXQgdGhlIEFQQiByZXNldCBvbiBlYWNoIHBvd2Vy
LW9uLCBQTExfQ09OMyBhbmQgUExMX0NPTjQga2VlcCB0aGVpcgpwcmV2aW91cyB2YWx1ZXMgYWNy
b3NzIG1vZGUgY2hhbmdlcywgYW5kIHNhbXN1bmdfbWlwaV9kY3BoeV9wbGxfY29uZmlndXJlKCkK
b25seSB0b3VjaGVzIHRoZW0gd2hlbiBzYW1zdW5nLT5wbGwuc3NjX2VuIGlzIHRydWU6Cgpkcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1kY3BoeS5jOnNhbXN1bmdfbWlw
aV9kY3BoeV9wbGxfY29uZmlndXJlKCkgewogICAgLi4uCglpZiAoc2Ftc3VuZy0+cGxsLnNzY19l
bikgewoJCXJlZ21hcF93cml0ZShzYW1zdW5nLT5yZWdtYXAsIFBMTF9DT04zLAoJCQkgICAgIE1S
UihzYW1zdW5nLT5wbGwubXJyKSB8IE1GUihzYW1zdW5nLT5wbGwubWZyKSk7CgkJcmVnbWFwX3Vw
ZGF0ZV9iaXRzKHNhbXN1bmctPnJlZ21hcCwgUExMX0NPTjQsIFNTQ0dfRU4sIFNTQ0dfRU4pOwoJ
fQogICAgLi4uCn0KCkluIGFkZGl0aW9uLCBzYW1zdW5nX21pcGlfZGNwaHlfcGxsX2NhbGNfcmF0
ZSgpIHNldHMgc2Ftc3VuZy0+cGxsLnNzY19lbiB0bwp0cnVlIHdoZW4gZm91dCA+IDI1MDAwMDAw
MDBMTCwgYnV0IG5ldmVyIGNsZWFycyBpdCBiYWNrIHRvIGZhbHNlIGZvciBsb3dlcgpyYXRlcywg
c28gYm90aCB0aGUgZHJpdmVyIHN0YXRlIGFuZCBTU0NHX0VOIGluIFBMTF9DT040IHN0YXkgZW5h
YmxlZCB3aXRoCnN0YWxlIG1vZHVsYXRpb24gcGFyYW1ldGVycy4KCi0tIApTYXNoaWtvIEFJIHJl
dmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMTgtZGNwaHktcngt
djEtdjctMC04ZGUxYWRhYzNhNzRAZ21haWwuY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
