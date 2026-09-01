Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F0E5C79F80
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 15:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dme4Almb8a1Vha0++3DHQMXNQeflxxXn24O2bWjMuPY=; b=ll5IfhsRWWYGlq
	THb0z7ZtBpfnK/3qcENTLViHCE/Qwhdpwk72TR7+CFafaKsSHgF+g4aYeEOXbc3e0XDbmBMrBdJhj
	bOAVj5H/J85/CJgfQqPHSSOlRAiBY2lmztAW+vEet3RRqVHUDBOligu/RAv4TvoozTCbi4aUuGAA7
	8RqYdUxtIl+USNnfPWDUWZ04T9GeGo0tQBi4Y/kVR+edcWTNBXUrFkqKYB9g71v3pv8SvesDFJmUT
	z/Xt7UQ0NR3uri3ng91kkqHo74lpJVNu6XN0McNtBF4J6wNsJzBUAx5Ie2IIateShyqQp5sFJ/4zH
	YS5FMEOJo8YhbXlD626w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QaP-0000000CXMt-1lJu;
	Tue, 01 Sep 2026 15:39:45 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QaI-0000000CWxi-1KtA;
	Tue, 01 Sep 2026 15:39:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788277176;
	bh=q1vNVOPnETsIQ0CU5Z/MrHw56tcC94Bvm8PPZm7Hi3Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=c9A4p/pTVXHdi2MtwQOHfNzUVuktsV0pV/P/WeynKZCeFM0UuhIp14/RY3xCtmRon
	 kFIG3ic4FSSwVG7vKNIaVI3EyzymQH9J028fmj7aKNbBxjfHdZsfUVO47WvfJwu+MX
	 cSepnWmRpozgEThmS2jAdcKbC4HoL5/DXULTRmp4PgFPGSxbY9rlrc9S1hjYoE29lQ
	 b6GQfxvW38xJe2c2IrCVHaWOKp25PH3xbec5nE3/KoeQ1Kxy4+jHCc7cRAwy5fQN6F
	 reGUUE6HbdaKfbOdv5GXL0Q4EI1Ru2iIL+YVbM3QT4JQB49hdLjaFCvf87F25x44MU
	 RuMB+Ho7zIa4g==
Received: from yukiji.home (unknown [100.64.0.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1EB7317E12C2;
	Tue, 01 Sep 2026 17:39:35 +0200 (CEST)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Tue, 01 Sep 2026 17:38:58 +0200
Subject: [PATCH v11 10/24] scsi: ufs: mediatek: Rework the crypt-boost
 stuff
MIME-Version: 1.0
Message-Id: <20260901-mt8196-ufs-v11-10-dbd007704490@collabora.com>
References: <20260901-mt8196-ufs-v11-0-dbd007704490@collabora.com>
In-Reply-To: <20260901-mt8196-ufs-v11-0-dbd007704490@collabora.com>
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
 "Martin K. Petersen" <mkp@kernel.org>, 
 "Martin K. Petersen" <mkp@kernel.org>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788277163; l=4293;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=KfqKj+7TZf6mQRq3uE6SxMxwTlFK/iz933SAChIlEjI=;
 b=nS13zosbtz0e3bYp7mPpr8rsOzOQPq4mpWBCeZMHO9eecaE+dIJ8XBZF3jGJzZ8PxK3LSd2PG
 SQXcQB2TPbJDCVdKpSjfoyKw9VjN+VTY/Z7VBpVkjmZ6lG4TEknlHmZ
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_083938_577723_8FA0A1EF 
X-CRM114-Status: GOOD (  15.23  )
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
ay5jCmluZGV4IGM1MDg5ODE1Njk2Zi4uNmJiZjUzYjY1OGYyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCisrKyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlh
dGVrLmMKQEAgLTU4OSwyMSArNTg5LDYgQEAgc3RhdGljIGludCB1ZnNfbXRrX21waHlfcG93ZXJf
b24oc3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBvbikKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGlj
IGludCB1ZnNfbXRrX2dldF9ob3N0X2NsayhzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIg
Km5hbWUsCi0JCQkJc3RydWN0IGNsayAqKmNsa19vdXQpCi17Ci0Jc3RydWN0IGNsayAqY2xrOwot
CWludCBlcnIgPSAwOwotCi0JY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgbmFtZSk7Ci0JaWYgKElT
X0VSUihjbGspKQotCQllcnIgPSBQVFJfRVJSKGNsayk7Ci0JZWxzZQotCQkqY2xrX291dCA9IGNs
azsKLQotCXJldHVybiBlcnI7Ci19Ci0KIHN0YXRpYyB2b2lkIHVmc19tdGtfYm9vc3RfY3J5cHQo
c3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBib29zdCkKIHsKIAlzdHJ1Y3QgdWZzX210a19ob3N0
ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7CkBAIC02NjAsNjUgKzY0NSw1MyBAQCBz
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
