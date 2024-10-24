Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00BAFCE8E80
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 14:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGUlhZ43PwNiZe+WoiqAZXBIK0Hu1ZZLJh8tggzP4eE=; b=kPAcL3nyDCi+k1
	C8PNUaOrqATRxwrUR8TxaTxzJkj+z3rpQKp34bmvq1cQmdXt2Wc+LDzkPibonhRDvC5GZkRybHBNp
	tBqGwirbNwxcZ7H7JQ/+OFaVBJ1ALqpgL0fInga99p50n1HXEAvL6UVcypB9qS6tmi26uH6BAozWq
	pTPj7CPJdH29xic3sNEnGaap0LriG3YYPq/DT0EKRun7Kv7F5HQf1jlmE/0Z5EDVSP2RRpwQ5JeA0
	kwc4vbB2I4frKGoQzoca5TQdftXNrK95PP9QjOf04prNJOraIsM8Xz9Mq98YsT8OQjVMFDuY3PKVb
	3tlqHM6y5eu25KXSMNRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3z4E-00000000nKi-2iWY;
	Thu, 24 Oct 2024 14:44:02 +0000
Received: from pv50p00im-hyfv10011601.me.com ([17.58.6.43])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3z0l-00000000mAL-1nBf
	for linux-phy@lists.infradead.org;
	Thu, 24 Oct 2024 14:40:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729780816;
	bh=c/rKY0ydmsqmsb5VAz6RQ0R/W37ECcNylk7mClGfPHo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=S6zLwyqNEXARkAjbxPabqt/8JQ3zIkpgVa1gi5G9klp3VM6jCfun9kI7lAlzAG+A2
	 xC3e1D+NUabIF9oDJfI66BXwrOhpBxObG2TbXQegVAzvKQzvyrzQsBy9lsbMMwOZAT
	 ittY30p//Gdvj0YvTCGnT06rRDFfT57+AOju8l0Pg1XblBzYpLrCUcOoBH8NsTK6zD
	 ldBAjb2bkcHTN02vSBv5wCpvkqcmSmekD5ZVsCgsa8kQte94nR716tRiWJQgKmUseH
	 GV26r0lZABybU8cstzK0HHoAuXbYrStV1e9gb0gVcg0DcPVQCuNJpeLjVo+3MH8EbW
	 XqfjACuAkAf+Q==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10011601.me.com (Postfix) with ESMTPSA id 66947C801E0;
	Thu, 24 Oct 2024 14:40:07 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Thu, 24 Oct 2024 22:39:26 +0800
Subject: [PATCH v2 1/6] phy: core: Fix that API devm_phy_put() fails to
 release the phy
MIME-Version: 1.0
Message-Id: <20241024-phy_core_fix-v2-1-fc0c63dbfcf3@quicinc.com>
References: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
In-Reply-To: <20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com>
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
 Zijun Hu <zijun_hu@icloud.com>, stable@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.1
X-Proofpoint-ORIG-GUID: sLtY8xgbdBGSAXlWpDWcppV-kzHRsNm7
X-Proofpoint-GUID: sLtY8xgbdBGSAXlWpDWcppV-kzHRsNm7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-24_15,2024-10-24_02,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 clxscore=1015
 mlxscore=0 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410240120
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_074027_506251_D05BE03F 
X-CRM114-Status: GOOD (  12.72  )
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
ZWFzZSB0aGUgcGh5LCBidXQgaXQgZG9lcyBub3QgaW52b2tlIHRoZSBmdW5jdGlvbiBhY3R1YWxs
eSBzaW5jZQpkZXZyZXNfZGVzdHJveSgpIHdpbGwgbm90IGNhbGwgZGV2bV9waHlfcmVsZWFzZSgp
IGF0IGFsbCB3aGljaCB3aWxsCmNhbGwgdGhlIGZ1bmN0aW9uLCBhbmQgdGhlIG1pc3NpbmcgcGh5
X3B1dCgpIGNhbGwgd2lsbCBjYXVzZToKCi0gVGhlIHBoeSBmYWlscyB0byBiZSByZWxlYXNlZC4K
LSBkZXZtX3BoeV9wdXQoKSBjYW4gbm90IGZ1bGx5IHVuZG8gd2hhdCBBUEkgZGV2bV9waHlfZ2V0
KCkgZG9lcy4KLSBMZWFrIHJlZmNvdW50IG9mIGJvdGggdGhlIG1vZHVsZSBhbmQgZGV2aWNlIGZv
ciBiZWxvdyB0eXBpY2FsIHVzYWdlOgoKICBkZXZtX3BoeV9nZXQoKTsgLy8gb3IgaXRzIHZhcmlh
bnQKICAuLi4KICBlcnIgPSBkb19zb21ldGhpbmcoKTsKICBpZiAoZXJyKQogICAgICBnb3RvIGVy
cl9vdXQ7CiAgLi4uCiAgZXJyX291dDoKICBkZXZtX3BoeV9wdXQoKTsKCiAgVGhlIGZpbGUocykg
YWZmZWN0ZWQgYnkgdGhpcyBpc3N1ZSBhcmUgc2hvd24gYmVsb3cgc2luY2UgdGhleSBoYXZlIHN1
Y2gKICB0eXBpY2FsIHVzYWdlLgogIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2ll
LWNhZGVuY2UuYwogIGRyaXZlcnMvbmV0L2V0aGVybmV0L3RpL2FtNjUtY3Bzdy1udXNzLmMKCkZp
eGVkIGJ5IHVzaW5nIGRldnJlc19yZWxlYXNlKCkgaW5zdGVhZCBvZiBkZXZyZXNfZGVzdHJveSgp
IHdpdGhpbiB0aGUgQVBJCgpGaXhlczogZmY3NjQ5NjM0NzlhICgiZHJpdmVyczogcGh5OiBhZGQg
Z2VuZXJpYyBQSFkgZnJhbWV3b3JrIikKQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IExv
cmVuem8gUGllcmFsaXNpIDxscGllcmFsaXNpQGtlcm5lbC5vcmc+CkNjOiAiS3J6eXN6dG9mIFdp
bGN6ecWEc2tpIiA8a3dAbGludXguY29tPgpDYzogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29v
Z2xlLmNvbT4KQ2M6ICJEYXZpZCBTLiBNaWxsZXIiIDxkYXZlbUBkYXZlbWxvZnQubmV0PgpDYzog
RXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPgpDYzogSmFrdWIgS2ljaW5za2kgPGt1
YmFAa2VybmVsLm9yZz4KQ2M6IFBhb2xvIEFiZW5pIDxwYWJlbmlAcmVkaGF0LmNvbT4KU2lnbmVk
LW9mZi1ieTogWmlqdW4gSHUgPHF1aWNfemlqdWh1QHF1aWNpbmMuY29tPgotLS0KIGRyaXZlcnMv
cGh5L3BoeS1jb3JlLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9waHktY29yZS5jIGIvZHJpdmVy
cy9waHkvcGh5LWNvcmUuYwppbmRleCBmMDUzYjUyNWNjZmYuLmYxOTBkNzEyNjYxMyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYworKysgYi9kcml2ZXJzL3BoeS9waHktY29yZS5j
CkBAIC03MzcsNyArNzM3LDcgQEAgdm9pZCBkZXZtX3BoeV9wdXQoc3RydWN0IGRldmljZSAqZGV2
LCBzdHJ1Y3QgcGh5ICpwaHkpCiAJaWYgKCFwaHkpCiAJCXJldHVybjsKIAotCXIgPSBkZXZyZXNf
ZGVzdHJveShkZXYsIGRldm1fcGh5X3JlbGVhc2UsIGRldm1fcGh5X21hdGNoLCBwaHkpOworCXIg
PSBkZXZyZXNfcmVsZWFzZShkZXYsIGRldm1fcGh5X3JlbGVhc2UsIGRldm1fcGh5X21hdGNoLCBw
aHkpOwogCWRldl9XQVJOX09OQ0UoZGV2LCByLCAiY291bGRuJ3QgZmluZCBQSFkgcmVzb3VyY2Vc
biIpOwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZGV2bV9waHlfcHV0KTsKCi0tIAoyLjM0LjEKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
