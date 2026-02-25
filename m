Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18421FD374F
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 12:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Htsxv3TB3LcVlEEkmarsmMyTXujPNMTR8t12SEzkHE=; b=rWjcY9kH0aLt0K
	m6RsQgzTiHgbcWGQo2y2IH3j3sVl8wCoKCy8Wln7i4SjSd6BTMheybPfGU3ACpFX0jGCR/hTkzbwd
	OOJDQbVNF4wUWiJlxyyG4pXU1/15PEfcHGp+9JUpzOw2kTIrjMHWz/LIs1JxtIj+2mJ2y90SBgl8Z
	lVKtx2gilMn8cKXtPT0/M0reI6k95Llp3/syw58IykQY1KDpC4J7f1gr083yMURaQJASbU02ia79L
	eJhSXWGg/1RCH66/Rs0WMTR/ddegNct1h2Le+/0VeNTcK8wbCJg+PkPobhsfCd8IqeGZElZmQ8gyp
	jK2B5aV7XmS/ijmnpOHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvE5S-000000040e5-3UOo;
	Wed, 25 Feb 2026 12:33:54 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvE5P-000000040d0-0QJn;
	Wed, 25 Feb 2026 12:33:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772022827;
	bh=5womokAWb7eAtY3yaV7gLf//uGlpLRP7R/I+K3LaXLg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OET3r2C9WUilq/M/+ydIBKk5+9/gWXhe/A/j/DDrLFeoAwxWIaHpb9e15qFoNI0Mx
	 OT8dGrXqGztq+GENRdr8H7noLPvfY7+6Bd/WSSPkjW6v4UarULbA22lrfqDLG01vGF
	 79KkTgtOd1QNKpRY37IpBW2qUQyoKMApGTiUARQMhT5rM5ryMjLhmDlu13gNqnLnuY
	 f6WnYMuOFVYhiBZrS03+L1om2i2evbrPn57s6cHtJeLY24bk8jbAAYWLnmW/sztN6x
	 WBNoMH8+aRZnZS299AQil67vosv68a0DHBX/er1D7RkuPPNPVT/B+AvylFWZWBos1e
	 45lvmVYOJrQbw==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 948E317E04DC;
	Wed, 25 Feb 2026 13:33:46 +0100 (CET)
Message-ID: <5e61f0d5-d168-4d28-8a68-eb1369e7cf8b@collabora.com>
Date: Wed, 25 Feb 2026 13:33:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 17/23] scsi: ufs: mediatek: Rework
 ufs_mtk_wait_idle_state
To: =?UTF-8?B?UGV0ZXIgV2FuZyAo546L5L+h5Y+LKQ==?= <peter.wang@mediatek.com>,
 "chu.stanley@gmail.com" <chu.stanley@gmail.com>,
 "robh@kernel.org" <robh@kernel.org>,
 =?UTF-8?B?Q2h1bmZlbmcgWXVuICjkupHmmKXls7Ap?= <Chunfeng.Yun@mediatek.com>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 =?UTF-8?B?Q2hhb3RpYW4gSmluZyAo5LqV5pyd5aSpKQ==?=
 <Chaotian.Jing@mediatek.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "nicolas.frattaroli@collabora.com" <nicolas.frattaroli@collabora.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "broonie@kernel.org" <broonie@kernel.org>
Cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 "kernel@collabora.com" <kernel@collabora.com>
References: <20260216-mt8196-ufs-v7-0-b5f2907c6da7@collabora.com>
 <20260216-mt8196-ufs-v7-17-b5f2907c6da7@collabora.com>
 <dd895595dbd4cf855ef4ea53aa1b5a0d30169f6c.camel@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <dd895595dbd4cf855ef4ea53aa1b5a0d30169f6c.camel@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_043351_309108_B58BBAA2 
X-CRM114-Status: GOOD (  15.77  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SWwgMjUvMDIvMjYgMTE6MzIsIFBldGVyIFdhbmcgKOeOi+S/oeWPiykgaGEgc2NyaXR0bzoKPiBP
biBNb24sIDIwMjYtMDItMTYgYXQgMTQ6MzcgKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90
ZToKPj4gV2hpbGUgdWZzX210a193YWl0X2lkbGUgc3RhdGUgaGFzIHNvbWUgY29kZSBzbWVsbHMg
Zm9yIG1lICh0aGUKPj4gVlNfSENFX0JBU0UgZWFybHkgZXhpdCBzZWVtcyByYWNleSBhdCBiZXN0
KSwgaXQgY2FuIHN0aWxsIGJlbmVmaXQKPj4gZnJvbQo+PiBzb21lIGdlbmVyYWwgY2xlYW51cCB0
byBtYWtlIHRoZSBjb2RlIGZsb3cgbGVzcyBjb252b2x1dGVkLgo+Pgo+PiBVc2UgdGhlIGlvcG9s
bCBoZWxwZXJzLCBmb3Igb25lLCBhbmQgc3BlY2lmaWNhbGx5IHRoZSBvbmUgdGhhdCBzbGVlcHMK
Pj4gYW5kIGRvZXMgbm90IGJ1c3kgZGVsYXksIGFzIGl0J3MgYmVpbmcgZG9uZSBmb3IgdXAgdG8g
NW1zLgo+Pgo+PiBUaGUgcmVnaXN0ZXIgcmVhZCBpcyBzcGxpdCBvdXQgdG8gYSBoZWxwZXIgZnVu
Y3Rpb24gdGhhdCBicmFuY2hlcwo+PiBiZXR3ZWVuIG5ldyBhbmQgb2xkIHN0eWxlIGZsb3cuCj4+
Cj4+IEV2ZXJ5IGNhbGxlZCB1c2VzIHRoZSBzYW1lIDVtcyB0aW1lb3V0IHZhbHVlLCBzbyB0aGVy
ZSBpcyBubyBwb2ludCBpbgo+PiBtYWtpbmcgdGhpcyBhIHBhcmFtZXRlci4gSnVzdCBhc3N1bWUg
YSA1bXMgdGltZW91dCBpbiB0aGUgZnVuY3Rpb24uCj4+Cj4+IFJldmlld2VkLWJ5OiBBbmdlbG9H
aW9hY2NoaW5vIERlbCBSZWdubwo+PiA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJv
cmEuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJh
dHRhcm9saUBjb2xsYWJvcmEuY29tPgo+IAo+IEhpIE5pY29sYXMsCj4gCj4gVGhlIGxvZ2ljIGlz
IHF1aXRlIGRpZmZlcmVudC4KPiAKPiBQcmV2aW91c2x5LCB0aGUgY2hlY2sgd2FzOgo+IElmIChz
bSA+PSBWU19ISUJfRU5URVIpIGFuZCAoc20gPD0gVlNfSElCX0VYSVQpLCB0aGVuIHdhaXQgZm9y
IHNtIHRvCj4gcmVhY2ggVlNfSENFX0JBU0UuCj4gSWYgbm90ICgodmFsIDwgVlNfSElCX0VOVEVS
KSBhbmQgKHZhbCA+IFZTX0hJQl9FWElUKSksIHRoZW4gZXhpdCB0aGUKPiBsb29wIGRpcmVjdGx5
Lgo+IAo+IE5vdywgdGhlIGxvZ2ljIGlzOgo+IElmIHNtID09IFZTX0hDRV9CQVNFLCByZXR1cm4g
MC4KPiBJZiAoc20gPj0gVlNfSElCX0VOVEVSKSBhbmQgKHNtIDw9IFZTX0hJQl9FWElUKSwgdGhl
biB3YWl0IGZvciBzbSB0bwo+IHRyYW5zaXRpb24gdG8gYW55IG90aGVyIHN0YXRlIGFuZCBleGl0
IHRoZSBwb2xsLgo+IAoKVGhlIGxvZ2ljIGlzIHByYWN0aWNhbGx5IHRoZSBzYW1lLCBleGNlcHQg
aXQncyBwcm9wZXIgbm93LgoKVGhlcmUncyBubyBuZWVkIHRvIHdhaXQgZm9yIGBzbSA9IFZTX0hD
RV9CQVNFYCBpZiBgc20gPT0gVlNfSENFX0JBU0VgLgoKSW4gb3RoZXIgd29yZHMsIGp1c3QgcmVh
ZCB0aGUgY29tbWVudCB0aGF0IE5pY29sYXMgaGFzIHB1dCBpbiB0aGUgY29kZToKLyogSWYgdGhl
IGRldmljZSBpcyBhbHJlYWR5IGluIHRoZSBiYXNlIHN0YXRlIGFmdGVyIDEwdXMsIGRvbid0IHdh
aXQuICovCgouLi5iZWNhdXNlIHRoZXJlJ3Mgbm8gbmVlZCB0byB3YWl0IGZvciB0aGUgZGV2aWNl
IHRvIGdldCB0byBCQVNFIHN0YXRlLAppZiB0aGUgZGV2aWNlIGlzICphbHJlYWR5KiBpbiBCQVNF
IHN0YXRlLiBJdCdzIHByZXR0eSBvYnZpb3VzIHN0dWZmIGhlcmUuCgpSZWdhcmRzLApBbmdlbG8K
Cj4gVGhhbmtzCj4gUGV0ZXIKCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
