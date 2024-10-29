Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1A16D3A66B
	for <linux-phy@archiver.kernel.org>; Tue, 29 Oct 2024 15:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZCiV7IhWDjOEZD45EV+STcwB/BDPJQSmCJEU2oPwkw=; b=yCXMs7CTj+zQAF
	qLb90nEH1fpCzwvNt1SH+4GHD1wj/SYvrsxs8qSyyugCqWtnzs4SBA36aEvt5AetdyfoN6DqkepQu
	e6vQz/QxNtxbAtPd80o0Ol6BPAssZrxvnwRGsANqBN82fn9/3dEZUlcF43pTMYPhKMljYQHptMZJP
	OoeNvrSPAHYafsvy28bpRnh3BT5OFR+A9zDurS26D3coCDDoZyggBHNaZaxdh7CoGtO1Ma+MzNqzt
	550TfMwgLulhLFdqwhzh6eAWVPrNsz568L5kS2U9iaNzmtMEyw87GK8q1ib1Ash3gyZX3IGg1gjGB
	hK/tInjOLqrlRIBxv0Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5oPl-0000000EyYW-1KJm;
	Tue, 29 Oct 2024 15:45:49 +0000
Received: from qs51p00im-qukt01072702.me.com ([17.57.155.17])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5o3g-0000000Etgt-2Jgs
	for linux-phy@lists.infradead.org;
	Tue, 29 Oct 2024 15:23:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730215378;
	bh=wbQ0FfkPPBr1JdDLuso918FJA3/rnwBd3dOT7ZpkweE=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	b=Hn7PH2idmhzclOu0iT5pY4qGuyP6wn+wA9HqDVj8dTU02iaaX+J1Nh+WVYiXnnnEP
	 yq8aidIEpmQ/vaYg6edUYjPdZ6enVO/Fy5FFlYqPMXWQJi4QfzKXn2sB/16klLM3yS
	 rmc8rfzE1VZqMMDyqEYxJASwl+bCqE/ap4Atdh5ZWEI2RbR297+jk3S0meYa6565fk
	 1NHCYOgB9boc+8B+yRrk75tFqZtEQwgQt+33gMtC5ZicxdyshfbkohYgUAPh7jJfu5
	 MYfyAMKk8OuD1mP/ebheCNhVLBK03Tq8bYmfYN/THufezlyhieoGQ5enTmef5kyMqT
	 veWEmpkMm8efA==
Received: from [192.168.1.26] (qs51p00im-dlb-asmtp-mailmevip.me.com [17.57.155.28])
	by qs51p00im-qukt01072702.me.com (Postfix) with ESMTPSA id 5FE3116804E5;
	Tue, 29 Oct 2024 15:22:50 +0000 (UTC)
Message-ID: <e40e8451-9672-4423-bcab-8e0cc6ff3624@icloud.com>
Date: Tue, 29 Oct 2024 23:22:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] phy: core: Fix that API devm_phy_put() fails to
 release the phy
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Lee Jones <lee@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, stable@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Zijun Hu <quic_zijuhu@quicinc.com>
References: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
 <20241024-phy_core_fix-v2-1-fc0c63dbfcf3@quicinc.com>
 <ZyDlsWaA5aiRa_ry@hovoldconsulting.com>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <ZyDlsWaA5aiRa_ry@hovoldconsulting.com>
X-Proofpoint-GUID: dbUSnKj2WHhcUGiHrlHH5FpZ0NcN0xRt
X-Proofpoint-ORIG-GUID: dbUSnKj2WHhcUGiHrlHH5FpZ0NcN0xRt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-29_10,2024-10-29_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 suspectscore=0
 clxscore=1015 mlxscore=0 phishscore=0 malwarescore=0 mlxlogscore=999
 bulkscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410290117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_082300_830520_26549019 
X-CRM114-Status: GOOD (  15.04  )
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

T24gMjAyNC8xMC8yOSAyMTo0MCwgSm9oYW4gSG92b2xkIHdyb3RlOgo+IE9uIFRodSwgT2N0IDI0
LCAyMDI0IGF0IDEwOjM5OjI2UE0gKzA4MDAsIFppanVuIEh1IHdyb3RlOgo+PiBGcm9tOiBaaWp1
biBIdSA8cXVpY196aWp1aHVAcXVpY2luYy5jb20+Cj4+Cj4+IEZvciBkZXZtX3BoeV9wdXQoKSwg
aXRzIGNvbW1lbnQgc2F5cyBpdCBuZWVkcyB0byBpbnZva2UgcGh5X3B1dCgpIHRvCj4+IHJlbGVh
c2UgdGhlIHBoeSwgYnV0IGl0IGRvZXMgbm90IGludm9rZSB0aGUgZnVuY3Rpb24gYWN0dWFsbHkg
c2luY2UKPj4gZGV2cmVzX2Rlc3Ryb3koKSB3aWxsIG5vdCBjYWxsIGRldm1fcGh5X3JlbGVhc2Uo
KSBhdCBhbGwgd2hpY2ggd2lsbAo+PiBjYWxsIHRoZSBmdW5jdGlvbiwgYW5kIHRoZSBtaXNzaW5n
IHBoeV9wdXQoKSBjYWxsIHdpbGwgY2F1c2U6Cj4gCj4gUGxlYXNlIHNwbGl0IHRoZSBhYm92ZSB1
cCBpbiBhdCBsZWFzdCB0d28gc2VudGVuY2VzIHRvIG1ha2UgaXQgZWFzaWVyIHRvCj4gcGFyc2Uu
IFNwbGl0IGl0IGFmdGVyIGRldm1fcGh5X3JlbGVhc2UoKSBhbmQgcmVwaHJhc2UgdGhlIGxhdHRl
ciBwYXJ0Cj4gKGUuZy4gYnkgZHJvcHBpbmcgImF0IGFsbCB3aGljaCB3aWxsIGNhbGwgdGhlIGZ1
bmN0aW9uIikuCj4gIAoKdGhhbmsgeW91IGZvciBjb2RlIHJldmlldy4Kd2lsbCB0YWtlIHlvdXIg
c3VnZ2VzdGlvbnMgYW5kIHNlbmQgdjIgKF5eKS4KCj4+IC0gVGhlIHBoeSBmYWlscyB0byBiZSBy
ZWxlYXNlZC4KPj4gLSBkZXZtX3BoeV9wdXQoKSBjYW4gbm90IGZ1bGx5IHVuZG8gd2hhdCBBUEkg
ZGV2bV9waHlfZ2V0KCkgZG9lcy4KPj4gLSBMZWFrIHJlZmNvdW50IG9mIGJvdGggdGhlIG1vZHVs
ZSBhbmQgZGV2aWNlIGZvciBiZWxvdyB0eXBpY2FsIHVzYWdlOgo+Pgo+PiAgIGRldm1fcGh5X2dl
dCgpOyAvLyBvciBpdHMgdmFyaWFudAo+PiAgIC4uLgo+PiAgIGVyciA9IGRvX3NvbWV0aGluZygp
Owo+PiAgIGlmIChlcnIpCj4+ICAgICAgIGdvdG8gZXJyX291dDsKPj4gICAuLi4KPj4gICBlcnJf
b3V0Ogo+PiAgIGRldm1fcGh5X3B1dCgpOwo+Pgo+PiAgIFRoZSBmaWxlKHMpIGFmZmVjdGVkIGJ5
IHRoaXMgaXNzdWUgYXJlIHNob3duIGJlbG93IHNpbmNlIHRoZXkgaGF2ZSBzdWNoCj4+ICAgdHlw
aWNhbCB1c2FnZS4KPj4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpZS1jYWRl
bmNlLmMKPj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC90aS9hbTY1LWNwc3ctbnVzcy5jCj4+Cj4+
IEZpeGVkIGJ5IHVzaW5nIGRldnJlc19yZWxlYXNlKCkgaW5zdGVhZCBvZiBkZXZyZXNfZGVzdHJv
eSgpIHdpdGhpbiB0aGUgQVBJCj4+Cj4+IEZpeGVzOiBmZjc2NDk2MzQ3OWEgKCJkcml2ZXJzOiBw
aHk6IGFkZCBnZW5lcmljIFBIWSBmcmFtZXdvcmsiKQo+PiBDYzogc3RhYmxlQHZnZXIua2VybmVs
Lm9yZwo+PiBDYzogTG9yZW56byBQaWVyYWxpc2kgPGxwaWVyYWxpc2lAa2VybmVsLm9yZz4KPj4g
Q2M6ICJLcnp5c3p0b2YgV2lsY3p5xYRza2kiIDxrd0BsaW51eC5jb20+Cj4+IENjOiBCam9ybiBI
ZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29tPgo+PiBDYzogIkRhdmlkIFMuIE1pbGxlciIgPGRh
dmVtQGRhdmVtbG9mdC5uZXQ+Cj4+IENjOiBFcmljIER1bWF6ZXQgPGVkdW1hemV0QGdvb2dsZS5j
b20+Cj4+IENjOiBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPgo+PiBDYzogUGFvbG8g
QWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBaaWp1biBIdSA8cXVp
Y196aWp1aHVAcXVpY2luYy5jb20+Cj4gCj4gRGlmZiBpdHNlbGYgbG9va3MgZ29vZC4gTmljZSBm
aW5kLgo+IAo+IEpvaGFuCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
