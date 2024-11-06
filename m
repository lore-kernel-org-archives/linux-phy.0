Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C05DAD44D78
	for <linux-phy@archiver.kernel.org>; Wed,  6 Nov 2024 15:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=82Hr/EmhsIRqn5zKCDwZaHoIPl1XTy4OrQlbEr+dRw4=; b=2xDPdbj5Z2XwIk
	bY6+l1MT8KeymdWOeGET7IvhD1ElGmkcSj1CQb19iXxhc7NbXt24XG2JJmguuF/jNF3xMfBDL1Puc
	iO5BEJ/FDTNBEFguDcOoRGCkM04RMsE4qUn3pALx9WlbdIz1qK6VqpeeJWT1dR5c5G+/PzZeJMgHq
	lkSlGQpponS1mrC+g2WD5OXnM/eP011bjGJrUqY7ORaA7ALpssCPNdiZQYwijo9qsoa7peItP2cvd
	tAfiIeNVT8t+FR40487zUUfcubR4UxY+R8PHOsUsMJnBYawleuUut0KYB525ZKt6N2aUFne3velbE
	VWpaksHhlQmd8OQzyrgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8i36-00000003pxL-1g0a;
	Wed, 06 Nov 2024 15:34:24 +0000
Received: from pv50p00im-tydg10021701.me.com ([17.58.6.54])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8hzL-00000003owX-3IL6
	for linux-phy@lists.infradead.org;
	Wed, 06 Nov 2024 15:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730907030;
	bh=kDM9n2NzpCZMaLluXurrrPauvVeEV4qNGscAtK/f3Ro=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=WgqbqTBVkqLitSjHYLzgA2GLsBcXYfyyxfc2JrCtbMkzxq/3gUhZPT+1IQqxcy0ok
	 591DgJEO6PQftAlCSzJXT+LsbgarJq/9xwEW2YhPhano9Y5ZxEGyE1NUO3ovfKg2+C
	 AWNI6BhBfB4BfMZJcOOawPyXOIIanZHfZu8eRsESvTMydxiiY4S67/QYwXunvfmmfP
	 oGPYpQOfruNZnF0fE0aqH5kSwWRlsUDcH2BzY/Ie6vbvroYmhgsyPwlfi6mY1GvlnS
	 57t1stMQvmEt4D/PvTPdaURtGRZZzmcwOuIWw3rSDop/nkYU4v7DmS121ER01pFePO
	 1i8+sjENfGw+w==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-tydg10021701.me.com (Postfix) with ESMTPSA id 2EEDA3A0A01;
	Wed,  6 Nov 2024 15:30:17 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Wed, 06 Nov 2024 23:29:17 +0800
Subject: [PATCH v5 1/6] phy: core: Fix that API devm_phy_put() fails to
 release the phy
MIME-Version: 1.0
Message-Id: <20241106-phy_core_fix-v5-1-9771652eb88c@quicinc.com>
References: <20241106-phy_core_fix-v5-0-9771652eb88c@quicinc.com>
In-Reply-To: <20241106-phy_core_fix-v5-0-9771652eb88c@quicinc.com>
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
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.14.1
X-Proofpoint-GUID: 396FS2ilzy-__07h64kBH5Fxkcc1YkYA
X-Proofpoint-ORIG-GUID: 396FS2ilzy-__07h64kBH5Fxkcc1YkYA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-06_09,2024-11-06_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 bulkscore=0 mlxlogscore=999
 adultscore=0 mlxscore=0 phishscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2411060121
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_073031_862760_CB8A4EBD 
X-CRM114-Status: GOOD (  13.20  )
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
cml2ZXJzL25ldC9ldGhlcm5ldC90aS9hbTY1LWNwc3ctbnVzcy5jCgpGaXggYnkgdXNpbmcgZGV2
cmVzX3JlbGVhc2UoKSBpbnN0ZWFkIG9mIGRldnJlc19kZXN0cm95KCkgd2l0aGluIHRoZSBBUEku
CgpGaXhlczogZmY3NjQ5NjM0NzlhICgiZHJpdmVyczogcGh5OiBhZGQgZ2VuZXJpYyBQSFkgZnJh
bWV3b3JrIikKQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IExvcmVuem8gUGllcmFsaXNp
IDxscGllcmFsaXNpQGtlcm5lbC5vcmc+CkNjOiBLcnp5c3p0b2YgV2lsY3p5xYRza2kgPGt3QGxp
bnV4LmNvbT4KQ2M6IEJqb3JuIEhlbGdhYXMgPGJoZWxnYWFzQGdvb2dsZS5jb20+CkNjOiBEYXZp
ZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+CkNjOiBFcmljIER1bWF6ZXQgPGVkdW1h
emV0QGdvb2dsZS5jb20+CkNjOiBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPgpDYzog
UGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPgpDYzogSm9oYW4gSG92b2xkIDxqb2hhbkBr
ZXJuZWwub3JnPgpSZXZpZXdlZC1ieTogSm9oYW4gSG92b2xkIDxqb2hhbitsaW5hcm9Aa2VybmVs
Lm9yZz4KU2lnbmVkLW9mZi1ieTogWmlqdW4gSHUgPHF1aWNfemlqdWh1QHF1aWNpbmMuY29tPgot
LS0KIGRyaXZlcnMvcGh5L3BoeS1jb3JlLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY29y
ZS5jIGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwppbmRleCBmMDUzYjUyNWNjZmYuLmYxOTBkNzEy
NjYxMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYworKysgYi9kcml2ZXJzL3Bo
eS9waHktY29yZS5jCkBAIC03MzcsNyArNzM3LDcgQEAgdm9pZCBkZXZtX3BoeV9wdXQoc3RydWN0
IGRldmljZSAqZGV2LCBzdHJ1Y3QgcGh5ICpwaHkpCiAJaWYgKCFwaHkpCiAJCXJldHVybjsKIAot
CXIgPSBkZXZyZXNfZGVzdHJveShkZXYsIGRldm1fcGh5X3JlbGVhc2UsIGRldm1fcGh5X21hdGNo
LCBwaHkpOworCXIgPSBkZXZyZXNfcmVsZWFzZShkZXYsIGRldm1fcGh5X3JlbGVhc2UsIGRldm1f
cGh5X21hdGNoLCBwaHkpOwogCWRldl9XQVJOX09OQ0UoZGV2LCByLCAiY291bGRuJ3QgZmluZCBQ
SFkgcmVzb3VyY2VcbiIpOwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZGV2bV9waHlfcHV0KTsKCi0t
IAoyLjM0LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
