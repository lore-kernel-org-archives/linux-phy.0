Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADF76C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  8 Nov 2022 07:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c3SDF2poiQERrdM55eK3zzqd6uDo/eYmmqOcSOwOhXI=; b=j9MSG7XeQ6UJXBQmVStSylV8Ju
	cmewaUadc+AWp1Be81jMhXlt79Ei/Jafn+KeJ+ivXo8nmIWmpKQSgZmG5p4Lle5RUGlcIArf8Vhts
	gduoZx9nsyBORGwwav2wv43XA6YZ2Z/KUWDpV6xTjFmY8cH/mLlcJx8639NJJCB80rKkgxaxhGmNx
	HGJ4IKsD+siybBDc0qVn9AfcwBMoMWhcuJeCi7XaCHb9eiy8nrPfDExEuyoZhiH1xHw1FTBQCY6bz
	lncZpb7VKgEsj62oVkVUuQZRC1JJfX0rBSRYoJ5Ua88H+rvVnanZBRNP3hlcZrJF9FRCI7Wd0OIbt
	dKpeo62Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osIgU-003LVU-23; Tue, 08 Nov 2022 07:06:10 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osIgP-003LUz-Rl
	for linux-phy@lists.infradead.org; Tue, 08 Nov 2022 07:06:09 +0000
Received: from canpemm500007.china.huawei.com (unknown [172.30.72.55])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4N5zdH2HdtzHvk2;
	Tue,  8 Nov 2022 15:05:23 +0800 (CST)
Received: from [10.174.179.215] (10.174.179.215) by
 canpemm500007.china.huawei.com (7.192.104.62) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 8 Nov 2022 15:05:46 +0800
Subject: Re: [PATCH] phy: usb: sunplus: Fix memleak in update_disc_vol()
To: Greg KH <greg@kroah.com>
CC: <vincent.sunplus@gmail.com>, <vkoul@kernel.org>, <kishon@kernel.org>,
	<linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
References: <20221108061113.35964-1-yuehaibing@huawei.com>
 <Y2n5fhFq4ozEzlBL@kroah.com>
From: YueHaibing <yuehaibing@huawei.com>
Message-ID: <44ebb350-fb5b-38f6-8950-98bc80963994@huawei.com>
Date: Tue, 8 Nov 2022 15:05:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <Y2n5fhFq4ozEzlBL@kroah.com>
Content-Language: en-US
X-Originating-IP: [10.174.179.215]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 canpemm500007.china.huawei.com (7.192.104.62)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_230606_103950_62591DEB 
X-CRM114-Status: GOOD (  12.29  )
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

T24gMjAyMi8xMS84IDE0OjM4LCBHcmVnIEtIIHdyb3RlOgoKPiBPbiBUdWUsIE5vdiAwOCwgMjAy
MiBhdCAwMjoxMToxM1BNICswODAwLCBZdWVIYWliaW5nIHdyb3RlOgo+PiAnb3RwX3YnIGlzIGFs
bG9jYXRlZCBpbiBudm1lbV9jZWxsX3JlYWQoKSwgaXQgc2hvdWxkIGJlIGZyZWVkCj4+IGJlZm9y
ZSByZXR1cm4uCj4+Cj4+IEZpeGVzOiA5OWQ5Y2NkOTczODUgKCJwaHk6IHVzYjogQWRkIFVTQjIu
MCBwaHkgZHJpdmVyIGZvciBTdW5wbHVzIFNQNzAyMSIpCj4+IFNpZ25lZC1vZmYtYnk6IFl1ZUhh
aWJpbmcgPHl1ZWhhaWJpbmdAaHVhd2VpLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL3BoeS9zdW5w
bHVzL3BoeS1zdW5wbHVzLXVzYjIuYyB8IDEgKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zdW5wbHVzL3BoeS1zdW5wbHVz
LXVzYjIuYyBiL2RyaXZlcnMvcGh5L3N1bnBsdXMvcGh5LXN1bnBsdXMtdXNiMi5jCj4+IGluZGV4
IGU4MjdiNzlmNmQ0OS4uNDUwY2Y4ZTZkN2ZiIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9z
dW5wbHVzL3BoeS1zdW5wbHVzLXVzYjIuYwo+PiArKysgYi9kcml2ZXJzL3BoeS9zdW5wbHVzL3Bo
eS1zdW5wbHVzLXVzYjIuYwo+PiBAQCAtOTYsNiArOTYsNyBAQCBzdGF0aWMgaW50IHVwZGF0ZV9k
aXNjX3ZvbChzdHJ1Y3Qgc3BfdXNicGh5ICp1c2JwaHkpCj4+ICAJCXNldCA9ICoob3RwX3YgKyAx
KTsKPj4gIAkJc2V0ID0gKHNldCA8PCAoc2l6ZW9mKGNoYXIpICogOCkpIHwgKm90cF92Owo+PiAg
CQlzZXQgPSAoc2V0ID4+IHVzYnBoeS0+ZGlzY192b2xfYWRkcl9vZmYpICYgSl9ESVNDOwo+PiAr
CQlrZnJlZShvdHBfdik7Cj4+ICAJfQo+PiAgCj4+ICAJaWYgKElTX0VSUihvdHBfdikgfHwgc2V0
ID09IDApCj4gSG93IGRpZCB5b3UgdGVzdCB0aGlzPwo+Cj4gSnVzdCBieSBsb29raW5nIGF0IHRo
aXMgdGlueSBkaWZmLCB0aGlzIHNlZW1zIHRvIGJlIHdyb25nLCBwbGVhc2UgZml4Cj4geW91ciB0
b29scyBhbmQgeW91ciByZXZpZXcgcHJvY2VzcyB0byBjYXRjaCBlcnJvcnMgbGlrZSB0aGlzLgoK
c29ycnkswqAgSSBtaXNyZWFkIHRoZSBjb2RlLCB3aWxsIGJlIG1vcmUgY2FyZWZ1bCBuZXh0IHRp
bWUuCgo+Cj4gdGhhbmtzLAo+Cj4gZ3JlZyBrLWgKPiAuCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
