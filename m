Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB0F5D3C92A
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AiEN4Xp/+B0HH+sgElHaBymCP0Fy9pXnB3JFf0OhywA=; b=hXpqxdH3/WZULW
	SyuvMGovFI3TwVrw3Sql0F+7qHwzEZNEEIhLSmnN5qMddERX5S84G/FSiF8c+mlHLsjdvEvWd8dYb
	k3xBlvjREukrG2voK8xtgdslj2k79Vj6cMsykWUkQfzuLdf1WM1EfGLHkiOX71BtSDvUGBktlVUKt
	5QWV7E9ysSt+cVzZ5AZIDQvX6kqx5t1ZV0WHcaf5VnjbOKO6InZA0AfAkFi+x0lloqYUS8blgKh0m
	y2mMgojUuv3bgpV/pIHu+sQ3D8XvNW8PMAkR2PG0KFIzTHtP9G1d8omq3UO29jr4L1aR8H4q4XP2b
	GiXiSUAuHqA2sjqbMa3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2R8i-00000004buY-1E8U;
	Sun, 20 Oct 2024 08:18:16 +0000
Received: from mr85p00im-ztdg06011801.me.com ([17.58.23.199])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2R8f-00000004bu5-2xaa
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 08:18:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729412292;
	bh=+UZzz+z7p55a5+mo6TK6JWnhlOW39+wGGfYZPaGJKtY=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	b=jo2crYfQmO8Gv4wwWh41gOlsWA5WRua3SyRkVzwCl9CHc41gRxVeoXCAUKr4xLXMp
	 VSWgVsmXvAfAZDXbWaMXKu9GNy6QDSIM+DyoRwPaZOFhRKGxIG54rfMmdgec2yGWlR
	 44WLL6D+j7r548/avuiEpX1yZSN5XIWsAe7FuX18jUHLN5ZbFEc3kMY6B/iAklUUX3
	 OT++rFGJwxAR96T3RliTcxgfTiBadAXXlATuxaPLYRDvh7bKy4DQF1ESQVYD3gsitN
	 dtxkkdPztAgqkaRaDK+mK3bPfXui3gsZt6eDYdb+gj6b9JuvIA85Hbc4sG5EG2PGup
	 6aiekBiHLHDCw==
Received: from [192.168.1.26] (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-ztdg06011801.me.com (Postfix) with ESMTPSA id 0679AAC56DC;
	Sun, 20 Oct 2024 08:18:08 +0000 (UTC)
Message-ID: <e165fb81-8d96-49dc-9bfd-85ae79ef4f64@icloud.com>
Date: Sun, 20 Oct 2024 16:18:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] phy: core: Add missing of_node_put() in
 of_phy_provider_lookup()
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Felipe Balbi <balbi@ti.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee@kernel.org>
Cc: stable@vger.kernel.org, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
References: <20241020-phy_core_fix-v1-0-078062f7da71@quicinc.com>
 <20241020-phy_core_fix-v1-5-078062f7da71@quicinc.com>
 <5e828a43-9365-4ac5-b411-0be7188ab8f2@wanadoo.fr>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <5e828a43-9365-4ac5-b411-0be7188ab8f2@wanadoo.fr>
X-Proofpoint-ORIG-GUID: 6BrM4yrglDgG8u6czpMYQdRccmjjapAH
X-Proofpoint-GUID: 6BrM4yrglDgG8u6czpMYQdRccmjjapAH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-20_05,2024-10-17_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011 adultscore=0
 malwarescore=0 spamscore=0 mlxlogscore=999 suspectscore=0 mlxscore=0
 phishscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410200052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241020_011813_778110_838822F7 
X-CRM114-Status: GOOD (  12.71  )
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

T24gMjAyNC8xMC8yMCAxNToyMywgQ2hyaXN0b3BoZSBKQUlMTEVUIHdyb3RlOgo+IExlIDIwLzEw
LzIwMjQgw6AgMDc6MjcsIFppanVuIEh1IGEgw6ljcml0wqA6Cj4+IEZyb206IFppanVuIEh1IDxx
dWljX3ppanVodUBxdWljaW5jLmNvbT4KCltzbmlwXQoKPj4gLS0tCj4+IMKgIGRyaXZlcnMvcGh5
L3BoeS1jb3JlLmMgfCA1ICsrKy0tCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY29y
ZS5jIGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+PiBpbmRleCA5Njc4NzhiNzg3OTcuLjI0YmQ2
MTlhMzNkZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+PiArKysgYi9k
cml2ZXJzL3BoeS9waHktY29yZS5jCj4+IEBAIC0xNDMsMTAgKzE0MywxMSBAQCBzdGF0aWMgc3Ry
dWN0IHBoeV9wcm92aWRlcgo+PiAqb2ZfcGh5X3Byb3ZpZGVyX2xvb2t1cChzdHJ1Y3QgZGV2aWNl
X25vZGUgKm5vZGUpCj4+IMKgwqDCoMKgwqAgbGlzdF9mb3JfZWFjaF9lbnRyeShwaHlfcHJvdmlk
ZXIsICZwaHlfcHJvdmlkZXJfbGlzdCwgbGlzdCkgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYg
KHBoeV9wcm92aWRlci0+ZGV2LT5vZl9ub2RlID09IG5vZGUpCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiBwaHlfcHJvdmlkZXI7Cj4+IC0KPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IGZvcl9lYWNoX2NoaWxkX29mX25vZGUocGh5X3Byb3ZpZGVyLT5jaGlsZHJlbiwgY2hpbGQpCj4+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChjaGlsZCA9PSBub2RlKQo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpZiAoY2hpbGQgPT0gbm9kZSkgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIG9mX25vZGVfcHV0KGNoaWxkKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gcGh5X3Byb3ZpZGVyOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB9Cj4gCj4gSGksCj4gCj4gTWF5YmUgZm9yX2VhY2hfY2hpbGRfb2Zfbm9kZV9zY29wZWQo
KSB0byBzbGlnaHRseSBzaW1wbGlmeSB0aGluZ3MgYXQgdGhlCj4gc2FtZSB0aW1lPwo+IAoKdGhh
bmsgeW91IGZvciBjb2RlIHJldmlldy4KCml0IGRvZXMgbm90IHVzZSBfc2NvcGVkKCkgc2luY2Ug
Zm9yX2VhY2hfY2hpbGRfb2Zfbm9kZSgpIHVzYWdlIGhlcmUgaXMKdmVyeSBzaW1wbGUgYW5kIG9u
bHkgaGFzIG9uZSBlYXJseSBleGl0LCBfc2NvcGVkKCkgbm9ybWFsbHkgaXMgZm9yCmNvbXBsZXgg
Y2FzZS4KCmkgbWF5YmUgdXNlIF9zY29wZWQoKSBpbiBuZXh0IHJldmlzaW9uIGlmIG9uZSBtb3Jl
IHJldmlld2VyIGFsc28gcHJlZmVycwppdC4KCnRoYW5rIHlvdS4KCj4+IMKgwqDCoMKgwqAgfQo+
PiDCoCDCoMKgwqDCoMKgIHJldHVybiBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwo+Pgo+IAoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
