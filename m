Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7F27C54E58
	for <linux-phy@archiver.kernel.org>; Mon, 18 Mar 2024 06:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YjbjXUJxsjWG4Tk6X49HSv+g37sDGZ8p3XeuoGdA3ig=; b=aAb6TxjB8a5lT7
	LrAofMR3boKxVbIAI3Q8FHId9hLUi9OKnAQx1Rk02P/3Ibt62ngkzzwvcrtVNVjom7I9zkNgyVrbN
	CNC5E5STjm5rTVJzL+h3zdR1jHVNH52dUOk5FZ1/vL5pdV27T0VltvRACcDt+aqp2GYdhnvKbncoo
	215WCggPkUvGwIx+BX+4QdVbVV3psgWt2CN0MMHa/3swjCZh29s2WGjniC3i6UbTtzWTgaVXdvkOt
	5NE9RlBbOpKC1yJOpUKrnDKsYXon48tntgvBzU+SuKL1gwhYVVnD3JErwUw6r74xGiHqGO2c1EGCE
	lJdulTnMMCoMVvZRRnTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rm6H0-00000007RIg-1X61;
	Mon, 18 Mar 2024 06:15:02 +0000
Received: from www530.your-server.de ([188.40.30.78])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rm6Gv-00000007RGh-25pu;
	Mon, 18 Mar 2024 06:14:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=geanix.com;
	s=default2211; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID; bh=jPS3W35tcOlGvOvwkXViqsKn3+vo5E1Dv8dsD8kgPg8=;
	b=Dme2zGa8m15qxOgdWpU08Ynq3Ch2NsgotFaFyIz3D/7lhFvuB9h/ympfP6uulTJb7vDCxpmSFj6
	8imsiMhKXSuS/gBunQoJDO61c3L/MH4oAouvLefixs3Xe3DjEbI3j/fxgVhu7Rp2vnqrVQzWMwW2F
	abfHLV1QbLCAkEl1RDl5jrlpob52riyzyDSYEcbD+Jemtlowf7oGxYGvrLk6dkOONFOoFvH9Xc0mS
	VgzVaORry2JPATR6dMMd6sC+V4GKxRQ012pu3c+4h0Ow+kd1xxxwJpoujPbT0Zh7cAUtKjw17n8TF
	s7n4SMaL4XA0vYEj4wkLeCrNyN0QGPcIerXw==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www530.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sean@geanix.com>)
	id 1rm6Gl-000OqR-Nu; Mon, 18 Mar 2024 07:14:47 +0100
Received: from [2a06:4004:10df:0:c12d:117f:e95f:4ccf] (helo=smtpclient.apple)
	by sslproxy07.your-server.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sean@geanix.com>)
	id 1rm6Gk-0003n2-1o;
	Mon, 18 Mar 2024 07:14:46 +0100
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.31\))
Subject: Re: [Linux-stm32] stm32mp1xx: use of reg11, reg18 and vdd_usb rails
From: Sean Nyekjaer <sean@geanix.com>
In-Reply-To: <778FBC3A-8ACB-4C7D-999B-652263B50521@geanix.com>
Date: Mon, 18 Mar 2024 07:14:35 +0100
Cc: vkoul@kernel.org,
 kishon@kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 lgirdwood@gmail.com,
 broonie@kernel.org,
 u.kleine-koenig@pengutronix.de,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 m.grzeschik@pengutronix.de,
 linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 marex@denx.de,
 p.paillet@st.com,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 l.goehrs@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>,
 =?utf-8?Q?Martin_Hundeb=C3=B8ll?= <martin@geanix.com>
Message-Id: <06E43210-9B4F-42DD-8238-30669EB17F82@geanix.com>
References: <4807FD7F-FEB5-4460-B1EB-3E2330864C8B@geanix.com>
 <bda00a5c-d976-4525-9740-c83d97da8923@foss.st.com>
 <C14DF5A0-E263-49CD-8DCB-6B56014DD342@geanix.com>
 <0aa40728-75f0-4d18-801f-47ac2060c193@foss.st.com>
 <778FBC3A-8ACB-4C7D-999B-652263B50521@geanix.com>
To: Fabrice Gasnier <fabrice.gasnier@foss.st.com>
X-Mailer: Apple Mail (2.3774.400.31)
X-Authenticated-Sender: sean@geanix.com
X-Virus-Scanned: Clear (ClamAV 0.103.10/27217/Sun Mar 17 09:24:26 2024)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240317_231457_958989_8B196170 
X-CRM114-Status: GOOD (  15.10  )
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

SGkgRmFicmljZSwKClvigKZdCgo+IAo+PiAKPj4+IAo+Pj4+IAo+Pj4+PiAKPj4+Pj4gSSBjYW4g
Zml4IGl0IGJ5IHJlbW92aW5nIHRoZSB2ZGRfdXNiIGZyb20gdGhlIHVzYjMzIHN1cHBseVszXToK
Pj4+PiAKPj4+PiBUaGlzIHdpbGwgYnJlYWsgYWxsIGltcGxlbWVudGF0aW9ucyB0aGF0IHJlbHkg
b24gSUQvVmJ1cyBwaW5zIG9uIE1QMTUuCj4+PiAKPj4+IE9LLiBTbyB3ZSB3aWxsIGhhdmUgdG8g
dXNlIE1hcmvigJlzIHN1Z2dlc3Rpb24gYW5kIGZvcmNlIGl0IG9uLgo+PiAKPj4gSSBub3RpY2Vk
IE1hcmsncyByZXBseSBhZnRlciBJIGFjdHVhbGx5IGFuc3dlcmVkIG9uIGZyaWRheS4KPj4gCj4+
IElmIGxvdyBwb3dlciBpcyBvdXQgb2Ygc2NvcGUsIHRoYXQgbWF5IGJlIGEgd29ya2Fyb3VuZC4g
QXMgaGUgc3RhdGVzLAo+PiBpdCdzIG5vdCBpZGVhbC4KPj4gCj4gCj4gV2UgYXJlIHJ1bm5pbmcg
d2l0aCB0aGlzIHRvIGF2b2lkIGZ1cnRoZXIgaGFyZHdhcmUgZGFtYWdlLgo+IAo+PiBCZXR0ZXIg
YXBwcm9hY2ggKGxpa2VseSBtb3JlIHJlbGlhYmxlKSB3b3VsZCBiZSB0byBoYXZlIHNvbWUgd2F5
IHRvIGRlYWwKPj4gd2l0aCBoYXJkd2FyZSBjb25zdHJhaW50cyBhcyBoZSBzdWdnZXN0ZWQsIGUu
Zy4gbm90IHRvIGRpc2FibGUgYQo+PiByZWd1bGF0b3IgKHJlZzE4KSwgdW5sZXNzIGFub3RoZXIg
cmVndWxhdG9yIGlzIG9mZiAodmRkX3VzYikuCj4gCj4gQWdyZWUuCgpTaG91bGQgSSBhZGQgYSBs
b2NrIGluIHN0bTMyX3B3ci5jIHRvIHByb3RlY3QgdGhlIHN0bTMyIGhhcmR3YXJlPwoKW+KApl0K
Cj4gCj4+IAo+PiBzdGF0aWMgaW50IHN0bTMyX3VzYnBoeWNfcmVndWxhdG9yc19lbmFibGUoc3Ry
dWN0IHN0bTMyX3VzYnBoeWMgKnVzYnBoeWMpCj4+IHsKPj4gKyBzdHJ1Y3Qgc3RtMzJfdXNicGh5
Y19waHkgKnVzYnBoeWNfcGh5ID0gdXNicGh5Yy0+cGh5c1swXTsKPj4gaW50IHJldDsKPj4gCj4+
IC4uLgo+PiByZXQgPSByZWd1bGF0b3JfZW5hYmxlKHVzYnBoeWMtPnZkZGExdjgpOwo+PiBpZiAo
cmV0KQo+PiBnb3RvIHZkZGExdjFfZGlzYWJsZTsKPj4gCj4+ICsgcmV0ID0gcmVndWxhdG9yX2Vu
YWJsZSh1c2JwaHljX3BoeS0+cGh5LT5wd3IpOwo+PiArIGlmIChyZXQpCj4+ICsgZ290byB2ZGRh
MXY4X2Rpc2FibGU7Cj4+ICsKPj4gcmV0dXJuIDA7Cj4+IAo+PiArdmRkYTF2OF9kaXNhYmxlOgo+
PiArIGRldl9pbmZvKHVzYnBoeWMtPmRldiwgInZkZGExdjggZGlzYWJsZVxuIik7Cj4+ICsgcmVn
dWxhdG9yX2Rpc2FibGUodXNicGh5Yy0+dmRkYTF2OCk7Cj4+IAo+PiBBbmQgdGhlIG9wcG9zaXRl
IGluIHN0bTMyX3VzYnBoeWNfcmVndWxhdG9yc19kaXNhYmxlKCkuCj4+IAo+PiBEb2luZyBpdCwg
d2lsbCBpbml0aWFsaXplIHZkZF91c2IgcmVndWxhdG9yIHJlZiBjb3VudGluZywgZS5nLiAxIHRo
ZW4gMAo+PiB3aGVuIHJlZ2lzdGVyaW5nIHRoZSBVU0JQSFlDIGNsb2NrLiBTbyBpdCB3aWxsIGJl
IG1hbmFnZWQgaW4gdGhlIGNvcnJlY3QKPj4gb3JkZXIgKHR1cm5lZCBvZmYgYmVmb3JlIHJlZzE4
KS4KPj4gCj4+IEl0IHdpbGwgd29yaywgaWYgYW5kIG9ubHkgaWYsIHZkZF91c2IgaXNuJ3Qgc2hh
cmVkIG9uIHRoZSBib2FyZCwgd2l0aAo+PiBhbm90aGVyIGZ1bmN0aW9uLCB0aGlzIGNvdWxkIGVu
Zm9yY2UgZnJvbSBwaHkgZHJpdmVyIHRoZSBjb3JyZWN0Cj4+IGVuYWJsZS9kaXNhYmxlIHNlcXVl
bmNlLgo+IAo+IE9uZSBjb3VsZCBzaGFyZSB0aGUgdmRkX3VzYiBvbiB0aGUgYm9hcmQuIEluIHRo
b3NlIGNhc2VzIHdlIG5lZWQgdG8gYXZvaWQgcG93ZXJpbmcgcmVnMTggb2ZmLgo+IFdoZW4gZW50
ZXJpbmcgc3RtMzJfdXNicGh5Y19yZWd1bGF0b3JzX2Rpc2FibGUoKSBhbmQgdGhlIHBoeSBpcyBz
dGlsbCBwb3dlcmVkIG9uIHdlIHNob3VsZCBibG9jayBwb3dlciBvZmYuCj4gSW4gbXkgZmlyc3Qg
bWFpbCBJIGFkZGVkIGEgd2FybmluZyBpZiB0aGUgdGhpcyBoYXBwZW5zLi4uCj4gCj4+IAo+PiBJ
ZiB0aGUgdmRkX3VzYiByZWd1bGF0b3IgaXMgc2hhcmUgd2l0aCBzb21lIG90aGVyIGZ1bmN0aW9u
LCB0aGVuIEkgc2VlCj4+IG5vIG90aGVyIHdheSwgYnV0IHRvIGxvb2sgaW50byBNYXJrJ3Mgc3Vn
Z2VzdGlvbiB0byBiZXR0ZXIgY29udHJvbAo+PiBoYXJkd2FyZSBjb25zdHJhaW50cy4KPj4gCj4+
IEhvcGUgdGhpcyBoZWxwcywKPj4gUGxlYXNlIGNsYXJpZnkgYWJvdmUgcG9pbnRzLAo+PiBCZXN0
IFJlZ2FyZHMsCj4+IEZhYnJpY2UKPj4gCj4gCj4gCgoKL1NlYW4KClvigKZdCgoKCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
