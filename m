Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C43C7D5CCB2
	for <linux-phy@archiver.kernel.org>; Wed, 30 Oct 2024 14:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTwkqZdffmygGCA+3zFGQxxACuI9R9aMfrSV/W/6+ic=; b=KouRKuhnyOuT7Y
	oR9V/46B61ZDRvuzlYKyu0FZhPRmjOnHRLFVf6dsBfIS/9EPpyn+a7EeSbx9FeNv7/H7U6NVck6Vp
	s0iCMVuRjGRqGVGTRRn4wns70zYWx5JDcf0v9VL16/FPbS4BcF+HEjYmr60iRrwXtxZAD9Q9gAJHy
	3YqOz8E3zVg4I1BSADyhfDt63QlMM1yJN1uQSzmE8fhforHTlefPGh6TIU4Jd5C0yf6Ayk9HILSPj
	11QCE0IXkxx1m8jXps8LAgjBAnKzOUYc75bQjoa+mnokmqKTIDsS1Q4pkzODOH5HzZFiFJU7/2lDM
	S0uDfHpkcTu4d7Ef2B8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t69XN-00000000d3K-24uK;
	Wed, 30 Oct 2024 14:19:05 +0000
Received: from ms11p00im-qufo17291901.me.com ([17.58.38.48])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t69XK-00000000d1w-2pYK
	for linux-phy@lists.infradead.org;
	Wed, 30 Oct 2024 14:19:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730297941;
	bh=vWvPGu251oYkL+PTVEWgGIZl7f0hmGMZGCDwAIm43uc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=tXyTUqNb9GzwXBeGIjBFuP3FgoddBjM3dEHOyk5xWqJELN0ofD0Uc4/uB5m5MRZV2
	 qi+S+UX3DqUYD4NlEf5lXp6ocQ1qX3k0GqA+6+8bS61n/jr15FHcl3L6MoE0Vsoadl
	 2pKbhKV+f4c3xnx1pFsdPjH5H8Agt72PX8yRP3rWLWSXFFcmPeWqEDARYaf8HTJBe/
	 iEGeEanlazDM8YOaB1wzFNrjwP85Jiw8gpLmH3us8DF3PknJ4OocMLWHeOT15MdmwL
	 z3m9Gyu2AZ0tnWUODSJ/7x6pWQc9CIdiSu5EEtzpgoaxAeR9ZQHyH2i4gZblItnUL/
	 yB32jqw1HJ+zQ==
Received: from [192.168.1.26] (ms11p00im-dlb-asmtpmailmevip.me.com [17.57.154.19])
	by ms11p00im-qufo17291901.me.com (Postfix) with ESMTPSA id 107AABC02AC;
	Wed, 30 Oct 2024 14:18:51 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Wed, 30 Oct 2024 22:18:24 +0800
Subject: [PATCH v3 1/6] phy: core: Fix that API devm_phy_put() fails to
 release the phy
MIME-Version: 1.0
Message-Id: <20241030-phy_core_fix-v3-1-19b97c3ec917@quicinc.com>
References: <20241030-phy_core_fix-v3-0-19b97c3ec917@quicinc.com>
In-Reply-To: <20241030-phy_core_fix-v3-0-19b97c3ec917@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Lee Jones <lee@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Johan Hovold <johan@kernel.org>, Zijun Hu <zijun_hu@icloud.com>, 
 stable@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.1
X-Proofpoint-GUID: KRcO9NduntJ9G_8WHU6EzaOnEuZhFdSC
X-Proofpoint-ORIG-GUID: KRcO9NduntJ9G_8WHU6EzaOnEuZhFdSC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-30_12,2024-10-30_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 clxscore=1015
 adultscore=0 malwarescore=0 mlxlogscore=999 phishscore=0 bulkscore=0
 mlxscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410300113
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_071902_759277_2B5CDE30 
X-CRM114-Status: GOOD (  12.93  )
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

RnJvbTogWmlqdW4gSHUgPHF1aWNfemlqdWh1QHF1aWNpbmMuY29tPgoKRm9yIGRldm1fcGh5X3B1
dCgpLCBpdHMgY29tbWVudCBzYXlzIGl0IG5lZWRzIHRvIGludm9rZSBwaHlfcHV0KCkgdG8KcmVs
ZWFzZSB0aGUgcGh5LCBidXQgaXQgd2lsbCBub3QgYWN0dWFsbHkgaW52b2tlIHRoZSBmdW5jdGlv
biBzaW5jZQpkZXZyZXNfZGVzdHJveSgpIGRvZXMgbm90IGNhbGwgZGV2bV9waHlfcmVsZWFzZSgp
LCBhbmQgdGhlIG1pc3NpbmcKcGh5X3B1dCgpIGNhbGwgd2lsbCBjYXVzZToKCi0gVGhlIHBoeSBm
YWlscyB0byBiZSByZWxlYXNlZC4KLSBkZXZtX3BoeV9wdXQoKSBjYW4gbm90IGZ1bGx5IHVuZG8g
d2hhdCBBUEkgZGV2bV9waHlfZ2V0KCkgZG9lcy4KLSBMZWFrIHJlZmNvdW50IG9mIGJvdGggdGhl
IG1vZHVsZSBhbmQgZGV2aWNlIGZvciBiZWxvdyB0eXBpY2FsIHVzYWdlOgoKICBkZXZtX3BoeV9n
ZXQoKTsgLy8gb3IgaXRzIHZhcmlhbnQKICAuLi4KICBlcnIgPSBkb19zb21ldGhpbmcoKTsKICBp
ZiAoZXJyKQogICAgICBnb3RvIGVycl9vdXQ7CiAgLi4uCiAgZXJyX291dDoKICBkZXZtX3BoeV9w
dXQoKTsgLy8gbGVhayByZWZjb3VudCBoZXJlCgogIFRoZSBmaWxlKHMpIGFmZmVjdGVkIGJ5IHRo
aXMgaXNzdWUgYXJlIHNob3duIGJlbG93IHNpbmNlIHRoZXkgaGF2ZSBzdWNoCiAgdHlwaWNhbCB1
c2FnZS4KICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpZS1jYWRlbmNlLmMKICBk
cml2ZXJzL25ldC9ldGhlcm5ldC90aS9hbTY1LWNwc3ctbnVzcy5jCgpGaXhlZCBieSB1c2luZyBk
ZXZyZXNfcmVsZWFzZSgpIGluc3RlYWQgb2YgZGV2cmVzX2Rlc3Ryb3koKSB3aXRoaW4gdGhlIEFQ
SS4KCkZpeGVzOiBmZjc2NDk2MzQ3OWEgKCJkcml2ZXJzOiBwaHk6IGFkZCBnZW5lcmljIFBIWSBm
cmFtZXdvcmsiKQpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpDYzogTG9yZW56byBQaWVyYWxp
c2kgPGxwaWVyYWxpc2lAa2VybmVsLm9yZz4KQ2M6ICJLcnp5c3p0b2YgV2lsY3p5xYRza2kiIDxr
d0BsaW51eC5jb20+CkNjOiBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29tPgpDYzog
IkRhdmlkIFMuIE1pbGxlciIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+CkNjOiBFcmljIER1bWF6ZXQg
PGVkdW1hemV0QGdvb2dsZS5jb20+CkNjOiBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3Jn
PgpDYzogUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPgpDYzogSm9oYW4gSG92b2xkIDxq
b2hhbkBrZXJuZWwub3JnPgpTaWduZWQtb2ZmLWJ5OiBaaWp1biBIdSA8cXVpY196aWp1aHVAcXVp
Y2luYy5jb20+Ci0tLQogZHJpdmVycy9waHkvcGh5LWNvcmUuYyB8IDIgKy0KIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGh5L3BoeS1jb3JlLmMgYi9kcml2ZXJzL3BoeS9waHktY29yZS5jCmluZGV4IGYwNTNiNTI1Y2Nm
Zi4uZjE5MGQ3MTI2NjEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9waHktY29yZS5jCisrKyBi
L2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKQEAgLTczNyw3ICs3MzcsNyBAQCB2b2lkIGRldm1fcGh5
X3B1dChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBwaHkgKnBoeSkKIAlpZiAoIXBoeSkKIAkJ
cmV0dXJuOwogCi0JciA9IGRldnJlc19kZXN0cm95KGRldiwgZGV2bV9waHlfcmVsZWFzZSwgZGV2
bV9waHlfbWF0Y2gsIHBoeSk7CisJciA9IGRldnJlc19yZWxlYXNlKGRldiwgZGV2bV9waHlfcmVs
ZWFzZSwgZGV2bV9waHlfbWF0Y2gsIHBoeSk7CiAJZGV2X1dBUk5fT05DRShkZXYsIHIsICJjb3Vs
ZG4ndCBmaW5kIFBIWSByZXNvdXJjZVxuIik7CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChkZXZtX3Bo
eV9wdXQpOwoKLS0gCjIuMzQuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
