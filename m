Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2182E7718B
	for <linux-phy@archiver.kernel.org>; Mon, 30 Dec 2024 02:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Np99u6t7uGrQA07traqsl+5WM6sa8OWjE7x6uo+4ZZc=; b=rDyxuf+9mFpe5k
	qmMT1GY4iMyDLQifSun7iDlsOAvzEtTraOsugjOEiGU3uu8gseTvRHQV34HkDHPeuO2BAGxJiQYGz
	H5t3NfT669GqBLEvGdLm11eRt5o7FnPukTal6Sj4wrA2mrvxsKVMlmeambLqbedSbIOkPbhdJjI0d
	UfycmFNJX8kz3nlJOObyMDKci7XpQHzA+nAjtzM/j1QfYCOYOU0rVM07gOl9q8YqrvvG6xISkkvW+
	p9quMxAa408xhEOLPqsJrMT2SZTr/CSb9ocsd1LU4h8tVoB+KugOyPi7cXiveF5QmBRTBoojRf8sw
	6eC6N3ZQEYvfT4uAK1iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tS5G1-00000004IRD-2pDw;
	Mon, 30 Dec 2024 02:11:49 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tS5Fy-00000004IQB-1zgW
	for linux-phy@lists.infradead.org;
	Mon, 30 Dec 2024 02:11:48 +0000
X-UUID: 658512acc65311efa216b1d71e6e1362-20241230
X-CTIC-Tags: HR_CC_COUNT, HR_CC_DOMAIN_COUNT, HR_CC_NAME, HR_CC_NO_NAME, HR_CTE_8B
	HR_CTT_TXT, HR_DATE_H, HR_DATE_WKD, HR_DATE_ZONE, HR_FROM_DIGIT_LEN
	HR_FROM_NAME, HR_SJ_LANG, HR_SJ_LEN, HR_SJ_LETTER, HR_SJ_NOR_SYM
	HR_SJ_PHRASE, HR_SJ_PHRASE_LEN, HR_SJ_WS, HR_TO_COUNT, HR_TO_DOMAIN_COUNT
	HR_TO_NO_NAME, IP_TRUSTED, SRC_TRUSTED, DN_TRUSTED, SA_TRUSTED
	SA_EXISTED, SN_TRUSTED, SN_EXISTED, SPF_NOPASS, DKIM_NOPASS
	DMARC_NOPASS, CIE_BAD, CIE_GOOD_SPF, GTI_FG_BS, GTI_RG_INFO
	GTI_C_BU, AMN_T1, AMN_GOOD, AMN_C_TI, AMN_C_BU
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:e5ce2b67-be89-497b-a42e-e5dd01172f2e,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-INFO: VERSION:1.1.41,REQID:e5ce2b67-be89-497b-a42e-e5dd01172f2e,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:-5
X-CID-META: VersionHash:6dc6a47,CLOUDID:98b16b5c94555fe3511cfeefa68a9730,BulkI
	D:241230101136WWCDXQWK,BulkQuantity:0,Recheck:0,SF:17|19|66|78|81|82|102,T
	C:nil,Content:0|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC
	:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_SNR
X-UUID: 658512acc65311efa216b1d71e6e1362-20241230
X-User: xiaopei01@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1042504553; Mon, 30 Dec 2024 10:11:35 +0800
From: Pei Xiao <xiaopei01@kylinos.cn>
To: geert@linux-m68k.org
Cc: aford173@gmail.com,
	aford@beaconembedded.com,
	arnd@arndb.de,
	dominique.martinet@atmark-techno.com,
	frieder.schrempf@kontron.de,
	kishon@kernel.org,
	l.stach@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	m.felsch@pengutronix.de,
	sandor.yu@nxp.com,
	u.kleine-koenig@baylibre.com,
	vkoul@kernel.org,
	Pei Xiao <xiaopei01@kylinos.cn>
Subject: [PATCH] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
Date: Mon, 30 Dec 2024 10:11:28 +0800
Message-Id: <d4b59d5e94c4c4a488cd24c6c169e418ad53980d.1735524526.git.xiaopei01@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
References: <CAMuHMdUG7A10E2SZR6kHiQBrzp_OVvMSd7jxggaoU3B_6fZ+nQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241229_181146_917011_36C08695 
X-CRM114-Status: UNSURE (   9.74  )
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

RklFTERfUFJFUCgpIGNoZWNrcyB0aGF0IGEgY29uc3RhbnQgZml0cyBpbnRvIHRoZSBhdmFpbGFi
bGUgYml0ZmllbGQsCmJ1dCB0aGUgaW5kZXggZGl2IGVxdWFscyB0byA0LGlzIG91dCBvZiByYW5n
ZSwgd2hpY2ggZ2NjCmNvcnJlY3RseSBjb21wbGFpbnMgYWJvdXQ6CgpJbiBmdW5jdGlvbiDigJhm
c2xfc2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV04oCZLAppbmxpbmVkIGZy
b20g4oCYZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJl4oCZIGF0CmRyaXZlcnMvcGh5L2Zy
ZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jIDo0NzA6MjoKLi8uL2luY2x1ZGUvbGludXgv
Y29tcGlsZXJfdHlwZXMuaDo1NDI6Mzg6IGVycm9yOiBjYWxsIHRvIOKAmF9fY29tcGlsZXRpbWVf
YXNzZXJ0XzUzOOKAmQpkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSBlcnJvcjogRklFTERfUFJFUDog
dmFsdWUgdG9vIGxhcmdlIGZvciB0aGUgZmllbGQKICA1NDIgfCAgX2NvbXBpbGV0aW1lX2Fzc2Vy
dChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLApfX0NPVU5URVJfXykKICAg
ICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgouLy4vaW5jbHVkZS9s
aW51eC9jb21waWxlcl90eXBlcy5oOjUyMzo0OiBub3RlOiBpbiBkZWZpbml0aW9uIG9mCm1hY3Jv
IOKAmF9fY29tcGlsZXRpbWVfYXNzZXJ04oCZIDUyMyB8ICAgIHByZWZpeCAjIyBzdWZmaXgoKTsK
ICAgICAgfCAgICBefn5+fn4KLi8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaDo1NDI6
Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCuKAmF9jb21waWxldGltZV9hc3NlcnTigJkK
ICA1NDIgfCAgX2NvbXBpbGV0aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywgX19jb21waWxldGlt
ZV9hc3NlcnRfLAogX19DT1VOVEVSX18pCgpSZXdvcmsgdGhpcyBzbyB0aGUgZmllbGQgdmFsdWUg
d2hpY2ggaXMgcmVzdHJpY3RlZCB0byB0aGUgcmFuZ2Ugb2YgMCB0byAzLApzbyBidWlsZCBlcnJv
ciB3aWxsIGZpeC4KCkZpeGVzOiBkNTY3Njc5ZjJiNmEgKCJwaHk6IGZyZWVzY2FsZTogZnNsLXNh
bXN1bmctaGRtaTogQ2xlYW4gdXAgZmxkX3RnX2NvZGUgY2FsY3VsYXRpb24iKQpTaWduZWQtb2Zm
LWJ5OiBQZWkgWGlhbyA8eGlhb3BlaTAxQGt5bGlub3MuY24+Ci0tLQogZHJpdmVycy9waHkvZnJl
ZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVl
c2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHkt
ZnNsLXNhbXN1bmctaGRtaS5jCmluZGV4IDVlYWM3MGExZTg1OC4uM2U0ZDFhNTE2MGVhIDEwMDY0
NAotLS0gYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYworKysg
Yi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1zYW1zdW5nLWhkbWkuYwpAQCAtMzQxLDcg
KzM0MSw3IEBAIGZzbF9zYW1zdW5nX2hkbWlfcGh5X2NvbmZpZ3VyZV9wbGxfbG9ja19kZXQoc3Ry
dWN0IGZzbF9zYW1zdW5nX2hkbWlfcGh5ICpwaHksCiAJCQlicmVhazsKIAl9CiAKLQl3cml0ZWIo
RklFTERfUFJFUChSRUcxMl9DS19ESVZfTUFTSywgZGl2KSwgcGh5LT5yZWdzICsgUEhZX1JFRygx
MikpOworCXdyaXRlYihGSUVMRF9QUkVQKFJFRzEyX0NLX0RJVl9NQVNLLCBkaXYgPT0gNCA/IGRp
diAtIDEgOiBkaXYpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEyKSk7CiAKIAkvKgogCSAqIENhbGN1
bGF0aW9uIGZvciB0aGUgZnJlcXVlbmN5IGxvY2sgZGV0ZWN0b3IgdGFyZ2V0IGNvZGUgKGZsZF90
Z19jb2RlKQotLSAKMi4yNS4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
