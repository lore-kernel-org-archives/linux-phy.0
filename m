Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D0F9E7717F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 12:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zhy/YAxcPfKmf2wdsGIr7ScK53FdxfPePDSpAndG8JY=; b=Uw1bRDWfRPJek9
	dwZ1I9V9ipMDRgQgtqkXO3alKNBz420+cueIUL8oqeQudCiGauSAyx+IJxVIwfzxZ6ga/C7VCNIFg
	KRfCjX6qHaS31bwGcHgsc3jhZprS4af+rcRT9PP8/sm0XxgKCln1B7NbUIhctWT4j3muKzfMqBiU2
	PbiRG7JGLhkJQeDwlQqpTlHG6lqseYKzwIHS5jrRptko1gF8Hl9g0StAdbJIKxyrPEmr5MbgVVWA8
	E95/GpAk/OCqqlueM7Pq88RQmggExswpZtKlzs0RLxGFVjE1OrpvUtWHE5sy0W5HAxKv82wgWq2Du
	jpSfEI1YaaILWXVPPv7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM4vG-00000003jeY-02dJ;
	Fri, 13 Dec 2024 12:37:34 +0000
Received: from mr85p00im-zteg06021501.me.com ([17.58.23.183])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM4vD-00000003jcq-2JC0
	for linux-phy@lists.infradead.org;
	Fri, 13 Dec 2024 12:37:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1734093441;
	bh=eoBflErfJ5YHnH9CNE+FKU4F+Kpr2DDHXom6su6dnH0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:
	 x-icloud-hme;
	b=fCcdkbyJSEtCGwzS72wGRUBVZHDv9Og+2KBDCZ1BIh40i5JINYTGuRivbJ06ZGhzm
	 ZN4S5QkfGcca85vpkr5ix6SMgEFfCZbgqC+RE1V/HRR566EdbHYNZL8W7TdtfYR+Mg
	 Xq6vfkQkUBWwZN8xSdKIZ0LdZvbfm8jL76LCC2K2nBnbjHao6M22l94ozhvL1kcTML
	 T56jv3JV9iFl1jvpi+mI7gHB8huwZXa9FNHiDeaQ8CXyfqruRvdzwRolgXNrqyoYEb
	 xPIKsThxn0SzZM4097WG6Ss+dXtpJ+m11Un/babxcE61QFrlOkkBTnA9kDFCh/FJnl
	 B3TW3XjY6Eszw==
Received: from [192.168.1.26] (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-zteg06021501.me.com (Postfix) with ESMTPSA id 523552793D57;
	Fri, 13 Dec 2024 12:37:11 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Fri, 13 Dec 2024 20:36:41 +0800
Subject: [PATCH v6 1/6] phy: core: Fix that API devm_phy_put() fails to
 release the phy
MIME-Version: 1.0
Message-Id: <20241213-phy_core_fix-v6-1-40ae28f5015a@quicinc.com>
References: <20241213-phy_core_fix-v6-0-40ae28f5015a@quicinc.com>
In-Reply-To: <20241213-phy_core_fix-v6-0-40ae28f5015a@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Lee Jones <lee@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Johan Hovold <johan@kernel.org>, Zijun Hu <zijun_hu@icloud.com>, 
 stable@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: zx_KhUXQuellMpf8dLz_2dTS_YfoqjQg
X-Proofpoint-GUID: zx_KhUXQuellMpf8dLz_2dTS_YfoqjQg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-13_05,2024-12-12_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 bulkscore=0
 clxscore=1015 mlxlogscore=999 adultscore=0 mlxscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2412130089
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_043731_615109_59F297B0 
X-CRM114-Status: GOOD (  13.26  )
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
UGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPgpSZXZpZXdlZC1ieTogSm9oYW4gSG92b2xk
IDxqb2hhbitsaW5hcm9Aa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTogWmlqdW4gSHUgPHF1aWNf
emlqdWh1QHF1aWNpbmMuY29tPgotLS0KIGRyaXZlcnMvcGh5L3BoeS1jb3JlLmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9waHktY29yZS5jIGIvZHJpdmVycy9waHkvcGh5LWNvcmUuYwppbmRleCBm
MDUzYjUyNWNjZmZhYjE2MjlmNWUwOTU4MWE2ZWJjYzM1ZTQ3Zjc5Li5mMTkwZDcxMjY2MTNhZDI1
M2I0ODIwYjllNDE2N2RkYTg2MjM0MzlkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9waHktY29y
ZS5jCisrKyBiL2RyaXZlcnMvcGh5L3BoeS1jb3JlLmMKQEAgLTczNyw3ICs3MzcsNyBAQCB2b2lk
IGRldm1fcGh5X3B1dChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBwaHkgKnBoeSkKIAlpZiAo
IXBoeSkKIAkJcmV0dXJuOwogCi0JciA9IGRldnJlc19kZXN0cm95KGRldiwgZGV2bV9waHlfcmVs
ZWFzZSwgZGV2bV9waHlfbWF0Y2gsIHBoeSk7CisJciA9IGRldnJlc19yZWxlYXNlKGRldiwgZGV2
bV9waHlfcmVsZWFzZSwgZGV2bV9waHlfbWF0Y2gsIHBoeSk7CiAJZGV2X1dBUk5fT05DRShkZXYs
IHIsICJjb3VsZG4ndCBmaW5kIFBIWSByZXNvdXJjZVxuIik7CiB9CiBFWFBPUlRfU1lNQk9MX0dQ
TChkZXZtX3BoeV9wdXQpOwoKLS0gCjIuMzQuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
