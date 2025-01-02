Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04DC4E7718B
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jan 2025 02:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wfa+lOjH9eozq13oNmzEDfyFYxt/EaX+UdOKGcXvpAM=; b=wvVW6I0cQapZJ6
	oO1ZCrfvnxdzwMs/nMM5Fo95I5qK+rHLXHXVE8S73hIoty0K0GLm21qLlPIZmC2Vf0Q6brIl2VSVL
	4y/Z7f0XvE3KE5gv0N+zycPyMn9fxHl/F1gg8WMqmIQzWdaMA5BLa/SMv/wFvZfXPP9/oXHX0XkR1
	G7M2ftDtLdl1XBtWCtJCMu33gKab09Us+5oSy5yX5zAUjbklDnA7O9p7LGbYLgIpPf+ek9gvgz+EL
	PtLffdUi7qjwQo36vWmdQRtBUudVG70oo7d6mDbihs9OxwbcO53alMedsld4oxlDr0T6frOu0IcbG
	MnvGAw8yKX2vwJgWBysQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTB1P-00000009bv1-2CCN;
	Thu, 02 Jan 2025 02:33:15 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTB1M-00000009buh-23bR
	for linux-phy@lists.infradead.org;
	Thu, 02 Jan 2025 02:33:14 +0000
X-UUID: e5f806d2c8b111efa216b1d71e6e1362-20250102
X-CTIC-Tags: HR_CC_COUNT, HR_CC_DOMAIN_COUNT, HR_CC_NO_NAME, HR_CTE_8B, HR_CTT_TXT
	HR_DATE_H, HR_DATE_WKD, HR_DATE_ZONE, HR_FROM_DIGIT_LEN, HR_FROM_NAME
	HR_SJ_LANG, HR_SJ_LEN, HR_SJ_LETTER, HR_SJ_NOR_SYM, HR_SJ_PHRASE
	HR_SJ_PHRASE_LEN, HR_SJ_WS, HR_TO_AS_FROM, HR_TO_COUNT, HR_TO_DOMAIN_COUNT
	HR_TO_NO_NAME, IP_TRUSTED, SRC_TRUSTED, DN_TRUSTED, SA_TRUSTED
	SA_EXISTED, SN_TRUSTED, SN_EXISTED, SPF_NOPASS, DKIM_NOPASS
	DMARC_NOPASS, CIE_BAD, CIE_GOOD_SPF, GTI_FG_BS, GTI_RG_INFO
	GTI_C_BU, AMN_T1, AMN_GOOD, AMN_C_TI, AMN_C_BU
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:d574fe76-9993-4111-977e-fec511b003a1,IP:0,U
	RL:0,TC:0,Content:35,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:30
X-CID-INFO: VERSION:1.1.41,REQID:d574fe76-9993-4111-977e-fec511b003a1,IP:0,URL
	:0,TC:0,Content:35,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:30
X-CID-META: VersionHash:6dc6a47,CLOUDID:229384d6987eb6bf5ee8c9b744993455,BulkI
	D:241230101136WWCDXQWK,BulkQuantity:1,Recheck:0,SF:17|19|66|78|81|82|102,T
	C:nil,Content:4|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:40,QS:nil,BEC:
	nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD
X-UUID: e5f806d2c8b111efa216b1d71e6e1362-20250102
X-User: xiaopei01@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 2055933202; Thu, 02 Jan 2025 10:33:06 +0800
From: Pei Xiao <xiaopei01@kylinos.cn>
To: xiaopei01@kylinos.cn
Cc: aford173@gmail.com,
	aford@beaconembedded.com,
	arnd@arndb.de,
	dominique.martinet@atmark-techno.com,
	frieder.schrempf@kontron.de,
	geert@linux-m68k.org,
	kishon@kernel.org,
	l.stach@pengutronix.de,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	m.felsch@pengutronix.de,
	sandor.yu@nxp.com,
	u.kleine-koenig@baylibre.com,
	vkoul@kernel.org
Subject: [PATCH] phy: freescale: fsl-samsung-hdmi: fix build error in fsl_samsung_hdmi_phy_configure_pll_lock_det
Date: Thu,  2 Jan 2025 10:32:56 +0800
Message-Id: <1a684565d9765e3db49eb504a9cb6bc72a5d4fd1.1735785110.git.xiaopei01@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <3bcfd31d-0ddb-46a7-9ed8-5b41047d8e69@kylinos.cn>
References: <3bcfd31d-0ddb-46a7-9ed8-5b41047d8e69@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250101_183312_827772_C4243FC4 
X-CRM114-Status: UNSURE (   9.19  )
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
CndoaWNoIGdjYyBjb3JyZWN0bHkgY29tcGxhaW5zIGFib3V0OgpJbiBmdW5jdGlvbiDigJhmc2xf
c2Ftc3VuZ19oZG1pX3BoeV9jb25maWd1cmVfcGxsX2xvY2tfZGV04oCZLAppbmxpbmVkIGZyb20g
4oCYZnNsX3NhbXN1bmdfaGRtaV9waHlfY29uZmlndXJl4oCZIGF0CmRyaXZlcnMvcGh5L2ZyZWVz
Y2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jIDo0NzA6MjoKLi8uL2luY2x1ZGUvbGludXgvY29t
cGlsZXJfdHlwZXMuaDo1NDI6Mzg6IGVycm9yOiBjYWxsIHRvIOKAmF9fY29tcGlsZXRpbWVfYXNz
ZXJ0XzUzOOKAmQpkZWNsYXJlZCB3aXRoIGF0dHJpYnV0ZSBlcnJvcjogRklFTERfUFJFUDogdmFs
dWUgdG9vIGxhcmdlIGZvciB0aGUgZmllbGQKICA1NDIgfCAgX2NvbXBpbGV0aW1lX2Fzc2VydChj
b25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLApfX0NPVU5URVJfXykKICAgICAg
fCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgouLy4vaW5jbHVkZS9saW51
eC9jb21waWxlcl90eXBlcy5oOjUyMzo0OiBub3RlOiBpbiBkZWZpbml0aW9uIG9mCm1hY3JvIOKA
mF9fY29tcGlsZXRpbWVfYXNzZXJ04oCZIDUyMyB8ICAgIHByZWZpeCAjIyBzdWZmaXgoKTsKICAg
ICAgfCAgICBefn5+fn4KLi8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJfdHlwZXMuaDo1NDI6Mjog
bm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvCuKAmF9jb21waWxldGltZV9hc3NlcnTigJkKICA1
NDIgfCAgX2NvbXBpbGV0aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9h
c3NlcnRfLAogX19DT1VOVEVSX18pCgpSRUcxMl9DS19ESVZfTUFTSyBvbmx5IHR3byBiaXQsIGFk
ZCBsb2dpY2FsIEFORCB0byBsaW1pdCByYW5nZSAwfjMsCnNvIGJ1aWxkIGVycm9yIHdpbGwgZml4
LgoKRml4ZXM6IGQ1Njc2NzlmMmI2YSAoInBoeTogZnJlZXNjYWxlOiBmc2wtc2Ftc3VuZy1oZG1p
OiBDbGVhbiB1cCBmbGRfdGdfY29kZSBjYWxjdWxhdGlvbiIpClNpZ25lZC1vZmYtYnk6IFBlaSBY
aWFvIDx4aWFvcGVpMDFAa3lsaW5vcy5jbj4KLS0tClYyOiBjaGFuZ2UgdG8gdXNlIGxvZ2ljYWwg
QU5ECi0tLQogZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMgfCAz
ICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLXNhbXN1bmctaGRtaS5jIGIv
ZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtc2Ftc3VuZy1oZG1pLmMKaW5kZXggNWVhYzcw
YTFlODU4Li43YjcwZWE3YjE1OTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9w
aHktZnNsLXNhbXN1bmctaGRtaS5jCisrKyBiL2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNs
LXNhbXN1bmctaGRtaS5jCkBAIC0zNDEsNyArMzQxLDggQEAgZnNsX3NhbXN1bmdfaGRtaV9waHlf
Y29uZmlndXJlX3BsbF9sb2NrX2RldChzdHJ1Y3QgZnNsX3NhbXN1bmdfaGRtaV9waHkgKnBoeSwK
IAkJCWJyZWFrOwogCX0KIAotCXdyaXRlYihGSUVMRF9QUkVQKFJFRzEyX0NLX0RJVl9NQVNLLCBk
aXYpLCBwaHktPnJlZ3MgKyBQSFlfUkVHKDEyKSk7CisJLypSRUcxMl9DS19ESVZfTUFTSyBvbmx5
IHR3byBiaXQsIGxvZ2ljYWwgQU5EIHRvIGxpbWl0IHJhbmdlICAqLworCXdyaXRlYihGSUVMRF9Q
UkVQKFJFRzEyX0NLX0RJVl9NQVNLLCBkaXYgJiAweDAzKSwgcGh5LT5yZWdzICsgUEhZX1JFRygx
MikpOwogCiAJLyoKIAkgKiBDYWxjdWxhdGlvbiBmb3IgdGhlIGZyZXF1ZW5jeSBsb2NrIGRldGVj
dG9yIHRhcmdldCBjb2RlIChmbGRfdGdfY29kZSkKLS0gCjIuMjUuMQoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
