Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1CE4E7719A
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jan 2025 02:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SZhwrQlrTVpGolmN9EbssfALcM+TxfIxh8rL59JnSEM=; b=V/GF1BgTZWT7dV
	+XXt8MVPGXTJz+E2QQaxvrkyCI4GxEIjlXD2RzUefr3SJWzuVrEN0YgAy4QUdEHbiI+T+4q1c7mF6
	BRigQtvOA0pQss3hk1F1xQpUs5brf14OtjRu2TZ2t2ZcmWE/Gy7OKxlC7x1sVNbMM2rGBRWVEyg7M
	IwzKAoU1fnzFQwaVi8XaUVabi+VcqR5XeyQ8d5rIn2FSnXhIs+y1TF3xD3CFZ50ozSVcwfllh7cJc
	bgLmCO2mYWDay+8eeLCeXWamG5jsHpn94+C6NXrhdFuPnGY3aha9Nm7UvSeaNnMzIdZPzzMSaWDad
	f6VXd82+NwDSF7L538KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tW4pi-0000000DqAK-3xRA;
	Fri, 10 Jan 2025 02:33:10 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tW4pg-0000000Dq9i-0Er0
	for linux-phy@lists.infradead.org;
	Fri, 10 Jan 2025 02:33:09 +0000
X-UUID: 30c17e60cefb11efa216b1d71e6e1362-20250110
X-CTIC-Tags: HR_CC_AS_FROM, HR_CC_COUNT, HR_CC_DOMAIN_COUNT, HR_CC_NAME, HR_CTE_8B
	HR_CTT_TXT, HR_DATE_H, HR_DATE_WKD, HR_DATE_ZONE, HR_FROM_DIGIT_LEN
	HR_FROM_NAME, HR_SJ_DIGIT_LEN, HR_SJ_LANG, HR_SJ_LEN, HR_SJ_LETTER
	HR_SJ_NOR_SYM, HR_SJ_PHRASE, HR_SJ_PHRASE_LEN, HR_SJ_WS, HR_TO_COUNT
	HR_TO_DOMAIN_COUNT, HR_TO_NO_NAME, IP_TRUSTED, SRC_TRUSTED, DN_TRUSTED
	SA_TRUSTED, SA_EXISTED, SN_TRUSTED, SN_EXISTED, SPF_NOPASS
	DKIM_NOPASS, DMARC_NOPASS, CIE_BAD, CIE_GOOD_SPF, GTI_FG_BS
	GTI_RG_INFO, GTI_C_BU, AMN_T1, AMN_GOOD, AMN_C_TI
	AMN_C_BU
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:64331003-8298-4d7a-b360-d3943c19acf7,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-INFO: VERSION:1.1.45,REQID:64331003-8298-4d7a-b360-d3943c19acf7,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:-5
X-CID-META: VersionHash:6493067,CLOUDID:db3af771b26011a74e3b11b3e5216848,BulkI
	D:250110103254EUNKUCQP,BulkQuantity:0,Recheck:0,SF:17|19|38|66|78|102,TC:n
	il,Content:0|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:ni
	l,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_FSD,TF_CID_SPAM_SNR,TF_CID_SPAM_FAS
X-UUID: 30c17e60cefb11efa216b1d71e6e1362-20250110
X-User: xiaopei01@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 551830683; Fri, 10 Jan 2025 10:32:52 +0800
From: Pei Xiao <xiaopei01@kylinos.cn>
To: vkoul@kernel.org,
	aford173@gmail.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Pei Xiao <xiaopei01@kylinos.cn>
Subject: [PATCH V3] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
Date: Fri, 10 Jan 2025 10:32:47 +0800
Message-Id: <5b9a5f765f075263498f9a7b62b0b1030d87b6ba.1736476210.git.xiaopei01@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_183308_394256_F10BA1A8 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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

RklFTERfUFJFUCgpIGNoZWNrcyB0aGF0IGEgdmFsdWUgZml0cyBpbnRvIHRoZSBhdmFpbGFibGUg
Yml0ZmllbGQsCmJ1dCB0aGUgaW5kZXggZGl2IGVxdWFscyB0byA0LGlzIG91dCBvZiByYW5nZS4K
CndoaWNoIGdjYyBjb21wbGFpbnMgYWJvdXQ6CkluIGZ1bmN0aW9uIOKAmGZzbF9zYW1zdW5nX2hk
bWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXTigJksCmlubGluZWQgZnJvbSDigJhmc2xfc2Ft
c3VuZ19oZG1pX3BoeV9jb25maWd1cmXigJkgYXQKZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1m
c2wtc2Ftc3VuZy1oZG1pLmMgOjQ3MDoyOgouLy4vaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBl
cy5oOjU0MjozODogZXJyb3I6IGNhbGwgdG8g4oCYX19jb21waWxldGltZV9hc3NlcnRfNTM44oCZ
CmRlY2xhcmVkIHdpdGggYXR0cmlidXRlIGVycm9yOiBGSUVMRF9QUkVQOiB2YWx1ZSB0b28gbGFy
Z2UgZm9yIHRoZSBmaWVsZAogIDU0MiB8ICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwg
bXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2VydF8sCl9fQ09VTlRFUl9fKQogICAgICB8ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCi4vLi9pbmNsdWRlL2xpbnV4L2NvbXBpbGVy
X3R5cGVzLmg6NTIzOjQ6IG5vdGU6IGluIGRlZmluaXRpb24gb2YKbWFjcm8g4oCYX19jb21waWxl
dGltZV9hc3NlcnTigJkgNTIzIHwgICAgcHJlZml4ICMjIHN1ZmZpeCgpOwogICAgICB8ICAgIF5+
fn5+fgouLy4vaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oOjU0MjoyOiBub3RlOiBpbiBl
eHBhbnNpb24gb2YgbWFjcm8K4oCYX2NvbXBpbGV0aW1lX2Fzc2VydOKAmQogIDU0MiB8ICBfY29t
cGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1lX2Fzc2VydF8sCiBf
X0NPVU5URVJfXykKClJFRzEyX0NLX0RJVl9NQVNLIG9ubHkgdHdvIGJpdCwgbGltaXQgZGl2IHRv
IHJhbmdlIDB+MywKc28gYnVpbGQgZXJyb3Igd2lsbCBmaXguCgpGaXhlczogZDU2NzY3OWYyYjZh
ICgicGh5OiBmcmVlc2NhbGU6IGZzbC1zYW1zdW5nLWhkbWk6IENsZWFuIHVwIGZsZF90Z19jb2Rl
IGNhbGN1bGF0aW9uIikKU2lnbmVkLW9mZi1ieTogUGVpIFhpYW8gPHhpYW9wZWkwMUBreWxpbm9z
LmNuPgotLS0KVjM6IGNoYW5nZSB0byB1c2UgZG8td2hpbGUKVjI6IGNoYW5nZSB0byB1c2UgbG9n
aWNhbCBBTkQKLS0tCiBkcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWku
YyB8IDkgKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1
bmctaGRtaS5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMK
aW5kZXggNWVhYzcwYTFlODU4Li5hYTIzM2NhMjVhNGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5
L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCisrKyBiL2RyaXZlcnMvcGh5L2ZyZWVz
Y2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jCkBAIC0zMzIsMTQgKzMzMiwxNSBAQCBmc2xfc2Ft
c3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV0KHN0cnVjdCBmc2xfc2Ftc3VuZ19o
ZG1pX3BoeSAqcGh5LAogCXUzMiBwY2xrID0gY2ZnLT5waXhjbGs7CiAJdTMyIGZsZF90Z19jb2Rl
OwogCXUzMiBpbnRfcGxsY2xrOwotCXU4IGRpdjsKKwl1OCBkaXYgPSAwOwogCiAJLyogRmluZCBp
bnRfcGxsY2xrIHNwZWVkICovCi0JZm9yIChkaXYgPSAwOyBkaXYgPCA0OyBkaXYrKykgeworCWRv
IHsKIAkJaW50X3BsbGNsayA9IHBjbGsgLyAoMSA8PCBkaXYpOwotCQlpZiAoaW50X3BsbGNsayA8
ICg1MCAqIE1IWikpCisJCWlmIChpbnRfcGxsY2xrIDwgKDUwICogTUhaKSB8fCBkaXYgPj0gMykK
IAkJCWJyZWFrOwotCX0KKwkJZGl2Kys7CisJfSB3aGlsZSAoMSk7CiAKIAl3cml0ZWIoRklFTERf
UFJFUChSRUcxMl9DS19ESVZfTUFTSywgZGl2KSwgcGh5LT5yZWdzICsgUEhZX1JFRygxMikpOwog
Ci0tIAoyLjI1LjEKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
