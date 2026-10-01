Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D66CCA5FD6
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 08:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dftBmsJH++vmZLkdQwy5IUjoFPtFTmFhSTPyasRMRpM=; b=wmP8abvYoZaWZE
	XUgVfZGj05dMVCfBZMKtnj7+P39Clu9HcsrZhu0H57jppHWlKCei6cmd4vBUA0nNTKyIlo4TCnaNv
	TaqbE+KHntMpx+KRx2dVSwD+tGNlNAIr4jNcytsqT1v0qGoOh4tLthMAywitVZ4qEuNKh12KhOq8P
	GaGxkdbCLNSjlNTXavoJG4/KLugl3kLpn4Ld2YUfeslvxiElzVDfkKMvJtQxAryXMIidubm7k488B
	vv7REBTMQyHc3Kk6390Htqaz0vYA98UK4FzIADuJ2bC5dB8GUaUiehKO857ldRlmKjP2v6m781Zgs
	Bm1399cVqbwW/cMj/REg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCC3c-000000087Uz-02Xt;
	Thu, 01 Oct 2026 08:22:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCC3S-0000000878M-1Vz4;
	Thu, 01 Oct 2026 08:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=J90177L6c41mTTGntjYlEJQ7Czq6WIGH+8oyPbVS0WQ=; b=T7nEexAgInAi1XypJBuzc44Xsg
	jF9bmf34HY8yVauqWf3j/7hTvTR0FYg5oXHyIdr/ZBDjN8t0wnu3346hpaEhPwEV4Lx1UyMJT5PP5
	KSpl3Gr5I2rfrbaXIaVF490dBnr1QhCSPYGfzOSJEr4nh+ymrbhY12Cm8ZXjr5rLQXWxXzGDedg2f
	0IJolLFx1guhrph35thCCOXcPC0+iSKXp7cwwWeq5HKCZb7hxuMB06kiToMOn9uA6dpwrPlo5ZDbn
	iAfAnUEy1t5CLr1Z0wstKrk0RjFFwVZBZj5PJKG+HH23N+ROcPh5fS1UjE/d4Hx+K9t9Y0rrgL9eK
	3r33O/tA==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xCC3P-00000004iqK-19tY;
	Thu, 01 Oct 2026 08:22:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1790842930;
	bh=7L9i93t/BVJTTaGuYZlULpi4UDuFf9Ashm27jVcSfvU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=dozFtOSCZwkERxicqL95KFTpc5t2PLKUbaeMkvYh/V8Ncu57E649Ay26vJ4M/rFTB
	 YLAiIuN+dQ1fKJ8F9lSEcEwx66UUAZfVOtgFprOAVCnixrgndSFuqUT4kiGy6ebeOr
	 88jy0dJ6oWzVaokHxc8nQ5fnE+xWcPxuxh+R+Wfpr1zeQULeFoL3kf/CFbsFNgeZTE
	 xE/D5CR6JiJiL6sw9BG9T53YNlFnJewKmw8IBGD/UYSz6vCwCueWcehVVgM4ELMptx
	 WN3xNj6ORV6bhOx0gi84DWV6iC+O7Qwr7Sko86adKb4IsYnO0pMp6pjPCYYqCRLd8L
	 GezuCty9A90bw==
Received: from yukiji.home (unknown [100.64.0.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 38ED017E056A;
	Thu, 01 Oct 2026 10:22:09 +0200 (CEST)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Thu, 01 Oct 2026 10:21:42 +0200
Subject: [PATCH v13 10/24] scsi: ufs: mediatek: Rework the crypt-boost
 stuff
MIME-Version: 1.0
Message-Id: <20261001-mt8196-ufs-v13-10-60854adab6d9@collabora.com>
References: <20261001-mt8196-ufs-v13-0-60854adab6d9@collabora.com>
In-Reply-To: <20261001-mt8196-ufs-v13-0-60854adab6d9@collabora.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Peter Wang <peter.wang@mediatek.com>, 
 Chaotian Jing <chaotian.jing@mediatek.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@sandisk.com>, Bart Van Assche <bvanassche@acm.org>, 
 Stanley Jhu <chu.stanley@gmail.com>, 
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 "Martin K. Petersen" <mkp@kernel.org>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790842918; l=4293;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=2v5vE4LE+FhXaNy2scnGuzCX5Bu+q/y+dkkm6/1D6fY=;
 b=vI5B2xmc4swuARPxCXwylH3QuzySS9Fdn3DKz6aCyxaPFE8qHvVCOAjZaYevPTmv8u1dNDSx5
 CRpSLiGoEC1B43Je0a5y/Kzaa0MyqsFJt+X3haoHtI+aIZtRktlaNDy
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_092211_569323_3078091C 
X-CRM114-Status: GOOD (  16.60  )
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

RnJvbTogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNv
bT4KCkkgZG9uJ3Qga25vdyB3aGV0aGVyIHRoZSBjcnlwdC1ib29zdCBmdW5jdGlvbmFsaXR5IGFz
IGl0IGlzIGN1cnJlbnRseQppbXBsZW1lbnRlZCBpcyBldmVuIGFwcHJvcHJpYXRlIGZvciBtYWlu
bGluZS4gSXQgbWlnaHQgYmUgYmV0dGVyIGRvbmUgaW4Kc29tZSBnZW5lcmljIHdheS4gQnV0IHdo
YXQgSSBkbyBrbm93IGlzIHRoYXQgSSBjYW4gcmV3b3JrIHRoZSBjb2RlIHRvCm1ha2UgaXQgbGVz
cyBvYnR1c2UuCgpQcmVmaXggdGhlIGJvb3N0IHN0dWZmIHdpdGggdGhlIGFwcHJvcHJpYXRlIHZl
bmRvciBwcmVmaXgsIHJlbW92ZSB0aGUKcG9pbnRsZXNzIGNsb2NrIHdyYXBwZXJzLCBhbmQgcmV3
b3JrIHRoZSBmdW5jdGlvbi4KClJldmlld2VkLWJ5OiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdu
byA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgpSZXZpZXdlZC1ieTog
UGV0ZXIgV2FuZyAo546L5L+h5Y+LKSA8cGV0ZXIud2FuZ0BtZWRpYXRlay5jb20+ClNpZ25lZC1v
ZmYtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5j
b20+ClNpZ25lZC1vZmYtYnk6IExvdWlzLUFsZXhpcyBFeXJhdWQgPGxvdWlzYWxleGlzLmV5cmF1
ZEBjb2xsYWJvcmEuY29tPgotLS0KIGRyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMgfCA4
OSArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDMxIGluc2VydGlvbnMoKyksIDU4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRl
ay5jCmluZGV4IDMyNTFmNmU3ZGZlOS4uN2RkNzc3ZTgzOTJmIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCisrKyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlh
dGVrLmMKQEAgLTYwMSwyMSArNjAxLDYgQEAgc3RhdGljIGludCB1ZnNfbXRrX21waHlfcG93ZXJf
b24oc3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBvbikKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGlj
IGludCB1ZnNfbXRrX2dldF9ob3N0X2NsayhzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIg
Km5hbWUsCi0JCQkJc3RydWN0IGNsayAqKmNsa19vdXQpCi17Ci0Jc3RydWN0IGNsayAqY2xrOwot
CWludCBlcnIgPSAwOwotCi0JY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgbmFtZSk7Ci0JaWYgKElT
X0VSUihjbGspKQotCQllcnIgPSBQVFJfRVJSKGNsayk7Ci0JZWxzZQotCQkqY2xrX291dCA9IGNs
azsKLQotCXJldHVybiBlcnI7Ci19Ci0KIHN0YXRpYyB2b2lkIHVmc19tdGtfYm9vc3RfY3J5cHQo
c3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBib29zdCkKIHsKIAlzdHJ1Y3QgdWZzX210a19ob3N0
ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7CkBAIC02NzIsNjUgKzY1Nyw1MyBAQCBz
dGF0aWMgdm9pZCB1ZnNfbXRrX2Jvb3N0X2NyeXB0KHN0cnVjdCB1ZnNfaGJhICpoYmEsIGJvb2wg
Ym9vc3QpCiAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGNmZy0+Y2xrX2NyeXB0X211eCk7CiB9CiAK
LXN0YXRpYyBpbnQgdWZzX210a19pbml0X2hvc3RfY2xrKHN0cnVjdCB1ZnNfaGJhICpoYmEsIGNv
bnN0IGNoYXIgKm5hbWUsCi0JCQkJIHN0cnVjdCBjbGsgKipjbGspCi17Ci0JaW50IHJldDsKLQot
CXJldCA9IHVmc19tdGtfZ2V0X2hvc3RfY2xrKGhiYS0+ZGV2LCBuYW1lLCBjbGspOwotCWlmIChy
ZXQpIHsKLQkJZGV2X2luZm8oaGJhLT5kZXYsICIlczogZmFpbGVkIHRvIGdldCAlczogJWQiLCBf
X2Z1bmNfXywKLQkJCSBuYW1lLCByZXQpOwotCX0KLQotCXJldHVybiByZXQ7Ci19Ci0KIHN0YXRp
YyB2b2lkIHVmc19tdGtfaW5pdF9ib29zdF9jcnlwdChzdHJ1Y3QgdWZzX2hiYSAqaGJhKQogewog
CXN0cnVjdCB1ZnNfbXRrX2hvc3QgKmhvc3QgPSB1ZnNoY2RfZ2V0X3ZhcmlhbnQoaGJhKTsKIAlz
dHJ1Y3QgdWZzX210a19jcnlwdF9jZmcgKmNmZzsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBoYmEt
PmRldjsKLQlzdHJ1Y3QgcmVndWxhdG9yICpyZWc7CiAJdTMyIHZvbHQ7CisJaW50IHJldDsKIAot
CWhvc3QtPmNyeXB0ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCooaG9zdC0+Y3J5cHQpKSwK
LQkJCQkgICBHRlBfS0VSTkVMKTsKLQlpZiAoIWhvc3QtPmNyeXB0KQotCQlnb3RvIGRpc2FibGVf
Y2FwczsKKwljZmcgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKmNmZyksIEdGUF9LRVJORUwp
OworCWlmICghY2ZnKQorCQlyZXR1cm47CiAKLQlyZWcgPSBkZXZtX3JlZ3VsYXRvcl9nZXRfb3B0
aW9uYWwoZGV2LCAiZHZmc3JjLXZjb3JlIik7Ci0JaWYgKElTX0VSUihyZWcpKSB7Ci0JCWRldl9p
bmZvKGRldiwgImZhaWxlZCB0byBnZXQgZHZmc3JjLXZjb3JlOiAlbGQiLAotCQkJIFBUUl9FUlIo
cmVnKSk7Ci0JCWdvdG8gZGlzYWJsZV9jYXBzOworCWNmZy0+cmVnX3Zjb3JlID0gZGV2bV9yZWd1
bGF0b3JfZ2V0X29wdGlvbmFsKGRldiwgImR2ZnNyYy12Y29yZSIpOworCWlmIChJU19FUlIoY2Zn
LT5yZWdfdmNvcmUpKSB7CisJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCBkdmZzcmMtdmNv
cmU6ICVwZVxuIiwgY2ZnLT5yZWdfdmNvcmUpOworCQlyZXR1cm47CiAJfQogCi0JaWYgKG9mX3By
b3BlcnR5X3JlYWRfdTMyKGRldi0+b2Zfbm9kZSwgImJvb3N0LWNyeXB0LXZjb3JlLW1pbiIsCi0J
CQkJICZ2b2x0KSkgewotCQlkZXZfaW5mbyhkZXYsICJmYWlsZWQgdG8gZ2V0IGJvb3N0LWNyeXB0
LXZjb3JlLW1pbiIpOwotCQlnb3RvIGRpc2FibGVfY2FwczsKKwlyZXQgPSBvZl9wcm9wZXJ0eV9y
ZWFkX3UzMihkZXYtPm9mX25vZGUsICJtZWRpYXRlayxib29zdC1jcnlwdC12Y29yZS1taW4iLAor
CQkJCSAgICZ2b2x0KTsKKwlpZiAocmV0KSB7CisJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdl
dCBtZWRpYXRlayxib29zdC1jcnlwdC12Y29yZS1taW46ICVwZVxuIiwKKwkJCUVSUl9QVFIocmV0
KSk7CisJCXJldHVybjsKIAl9CisJY2ZnLT52Y29yZV92b2x0ID0gdm9sdDsKIAotCWNmZyA9IGhv
c3QtPmNyeXB0OwotCWlmICh1ZnNfbXRrX2luaXRfaG9zdF9jbGsoaGJhLCAiY3J5cHRfbXV4IiwK
LQkJCQkgICZjZmctPmNsa19jcnlwdF9tdXgpKQotCQlnb3RvIGRpc2FibGVfY2FwczsKKwljZmct
PmNsa19jcnlwdF9tdXggPSBkZXZtX2Nsa19nZXQoZGV2LCAiY3J5cHRfbXV4Iik7CisJaWYgKElT
X0VSUihjZmctPmNsa19jcnlwdF9tdXgpKSB7CisJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdl
dCBjbG9jayBjcnlwdF9tdXg6ICVwZVxuIiwgY2ZnLT5jbGtfY3J5cHRfbXV4KTsKKwkJcmV0dXJu
OworCX0KIAotCWlmICh1ZnNfbXRrX2luaXRfaG9zdF9jbGsoaGJhLCAiY3J5cHRfbHAiLAotCQkJ
CSAgJmNmZy0+Y2xrX2NyeXB0X2xwKSkKLQkJZ290byBkaXNhYmxlX2NhcHM7CisJY2ZnLT5jbGtf
Y3J5cHRfbHAgPSBkZXZtX2Nsa19nZXQoZGV2LCAiY3J5cHRfbHAiKTsKKwlpZiAoSVNfRVJSKGNm
Zy0+Y2xrX2NyeXB0X2xwKSkgeworCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBnZXQgY2xvY2sg
Y3J5cHRfbHA6ICVwZVxuIiwgY2ZnLT5jbGtfY3J5cHRfbHApOworCQlyZXR1cm47CisJfQogCi0J
aWYgKHVmc19tdGtfaW5pdF9ob3N0X2NsayhoYmEsICJjcnlwdF9wZXJmIiwKLQkJCQkgICZjZmct
PmNsa19jcnlwdF9wZXJmKSkKLQkJZ290byBkaXNhYmxlX2NhcHM7CisJY2ZnLT5jbGtfY3J5cHRf
cGVyZiA9IGRldm1fY2xrX2dldChkZXYsICJjcnlwdF9wZXJmIik7CisJaWYgKElTX0VSUihjZmct
PmNsa19jcnlwdF9wZXJmKSkgeworCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBnZXQgY2xvY2sg
Y3J5cHRfcGVyZjogJXBlXG4iLCBjZmctPmNsa19jcnlwdF9wZXJmKTsKKwkJcmV0dXJuOworCX0K
IAotCWNmZy0+cmVnX3Zjb3JlID0gcmVnOwotCWNmZy0+dmNvcmVfdm9sdCA9IHZvbHQ7CisJaG9z
dC0+Y3J5cHQgPSBjZmc7CiAJaG9zdC0+Y2FwcyB8PSBVRlNfTVRLX0NBUF9CT09TVF9DUllQVF9F
TkdJTkU7Ci0KLWRpc2FibGVfY2FwczoKLQlyZXR1cm47CiB9CiAKIHN0YXRpYyB2b2lkIHVmc19t
dGtfaW5pdF9ob3N0X2NhcHMoc3RydWN0IHVmc19oYmEgKmhiYSkKCi0tIAoyLjU1LjAKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
