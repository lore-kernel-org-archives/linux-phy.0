Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14667C54FD2
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 09:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1F5QRZ+NMcoQjOXLkuc1tFkPKTX9HVRfaoQsJSqFZWQ=; b=HHIU17KSho1Sei
	YvTKDEgc6n6xZCJHzBxHME+PXi+M4zPdL8ny9VwVLXxfyoJXGFDF5A3Q4m8+LrurborTOtVFIWML0
	fJUAQyMhrwNA9JDBabhySi8qg/Lq9SxjUhDBJZxWFpI8UDSfokFRHqLIrYwXnsCUB7F+1RhUwbrvA
	vQPnn/kf6tpirA24X+QHfYuulydyRFmtjLHp6a3U6LbkCoPfHKb09VEicffuG0Dk1RYM/HsSWleEH
	Z/Dt5UTaDxTHXzeVYNHj3t9tkFsnAbZohmPpQrJq9QvXXpG6ztz3G3KXx9s+buueotl+gsg16h8ed
	eNw29yBPS5QEHtkj55Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpNQO-0000000A4VZ-37gG;
	Thu, 30 Jul 2026 09:51:36 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpNP1-0000000A3Ts-1TXk;
	Thu, 30 Jul 2026 09:50:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1785405008;
	bh=IWcKpia2gcsWqZBwqagPrzXU33mx1WZFS6Ccj3ZGA8A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AkZxrH9TdzTFwhLpxYMHKwOo/uLzpOFSPxo4l7Nwwt/8ckDrEtZVC5WPLfaP3sGpM
	 2pKfQVydWJnBqX+gDvoPpDaRHSbS/HoP20FPmnI/YGXp5YX4iBGIGfVicw9LFsIpf1
	 UY/ZckOAvtioDfMJPRXmD5vy492dhQL+In2bYbNyULHydtCKPf1BjuvCnTBJhkaaZ5
	 9/nFKrZXNgtivm928+UY7HoxewRENqISIKJNGdUgLInY8kty09t9GqEHk8LHHr0hzP
	 tR5t2Y9qa0vJzwfmnfCSy3wMyk+EFKXU2Mtk4IpYKt20JF3AOEHB6wD5TDD8G3zEvL
	 V4U4X2SpJ5k9w==
Received: from yukiji.home (unknown [100.64.0.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 92D1717E06FF;
	Thu, 30 Jul 2026 11:50:07 +0200 (CEST)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Thu, 30 Jul 2026 11:49:05 +0200
Subject: [PATCH v10 09/26] scsi: ufs: mediatek: Rework the crypt-boost
 stuff
MIME-Version: 1.0
Message-Id: <20260730-mt8196-ufs-v10-9-bc5ecef202dc@collabora.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
In-Reply-To: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
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
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1785404993; l=4275;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=8jZElI9qlNgPQtru9Jb6QOCrWOxUyGGH6zHzdhGgurY=;
 b=c9f0aHwNmd/Bvjp2jkf34vbTPgP22vD4zW5uaDjWJlaM6TiAF/F7JmQCVbK2TYG5jz/w4Xqnl
 Cjvo70h9xtmAR98xesqlwBadzNSLeC6MAak+/SdEnkfbnfMj7GdBKM9
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_025011_568435_42D572CF 
X-CRM114-Status: GOOD (  14.65  )
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
ZWQsIDMwIGluc2VydGlvbnMoKyksIDU5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRl
ay5jCmluZGV4IDUwZTc3MDFkNzk0My4uNTU3MDExNzJiY2YxIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCisrKyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlh
dGVrLmMKQEAgLTU2MiwyMSArNTYyLDYgQEAgc3RhdGljIGludCB1ZnNfbXRrX21waHlfcG93ZXJf
b24oc3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBvbikKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGlj
IGludCB1ZnNfbXRrX2dldF9ob3N0X2NsayhzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIg
Km5hbWUsCi0JCQkJc3RydWN0IGNsayAqKmNsa19vdXQpCi17Ci0Jc3RydWN0IGNsayAqY2xrOwot
CWludCBlcnIgPSAwOwotCi0JY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgbmFtZSk7Ci0JaWYgKElT
X0VSUihjbGspKQotCQllcnIgPSBQVFJfRVJSKGNsayk7Ci0JZWxzZQotCQkqY2xrX291dCA9IGNs
azsKLQotCXJldHVybiBlcnI7Ci19Ci0KIHN0YXRpYyB2b2lkIHVmc19tdGtfYm9vc3RfY3J5cHQo
c3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBib29zdCkKIHsKIAlzdHJ1Y3QgdWZzX210a19ob3N0
ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7CkBAIC02MzMsNjUgKzYxOCw1MSBAQCBz
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
PmRldjsKLQlzdHJ1Y3QgcmVndWxhdG9yICpyZWc7Ci0JdTMyIHZvbHQ7CisJaW50IHJldDsKIAot
CWhvc3QtPmNyeXB0ID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCooaG9zdC0+Y3J5cHQpKSwK
LQkJCQkgICBHRlBfS0VSTkVMKTsKLQlpZiAoIWhvc3QtPmNyeXB0KQotCQlnb3RvIGRpc2FibGVf
Y2FwczsKKwljZmcgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKmNmZyksIEdGUF9LRVJORUwp
OworCWlmICghY2ZnKQorCQlyZXR1cm47CiAKLQlyZWcgPSBkZXZtX3JlZ3VsYXRvcl9nZXRfb3B0
aW9uYWwoZGV2LCAiZHZmc3JjLXZjb3JlIik7Ci0JaWYgKElTX0VSUihyZWcpKSB7Ci0JCWRldl9p
bmZvKGRldiwgImZhaWxlZCB0byBnZXQgZHZmc3JjLXZjb3JlOiAlbGQiLAotCQkJIFBUUl9FUlIo
cmVnKSk7Ci0JCWdvdG8gZGlzYWJsZV9jYXBzOworCWNmZy0+cmVnX3Zjb3JlID0gZGV2bV9yZWd1
bGF0b3JfZ2V0X29wdGlvbmFsKGRldiwgImR2ZnNyYy12Y29yZSIpOworCWlmIChJU19FUlIoY2Zn
LT5yZWdfdmNvcmUpKSB7CisJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCBkdmZzcmMtdmNv
cmU6ICVwZSIsIGNmZy0+cmVnX3Zjb3JlKTsKKwkJcmV0dXJuOwogCX0KIAotCWlmIChvZl9wcm9w
ZXJ0eV9yZWFkX3UzMihkZXYtPm9mX25vZGUsICJib29zdC1jcnlwdC12Y29yZS1taW4iLAotCQkJ
CSAmdm9sdCkpIHsKLQkJZGV2X2luZm8oZGV2LCAiZmFpbGVkIHRvIGdldCBib29zdC1jcnlwdC12
Y29yZS1taW4iKTsKLQkJZ290byBkaXNhYmxlX2NhcHM7CisJcmV0ID0gb2ZfcHJvcGVydHlfcmVh
ZF91MzIoZGV2LT5vZl9ub2RlLCAibWVkaWF0ZWssYm9vc3QtY3J5cHQtdmNvcmUtbWluIiwKKwkJ
CQkgICAmY2ZnLT52Y29yZV92b2x0KTsKKwlpZiAocmV0KSB7CisJCWRldl9lcnIoZGV2LCAiRmFp
bGVkIHRvIGdldCBtZWRpYXRlayxib29zdC1jcnlwdC12Y29yZS1taW46ICVwZVxuIiwKKwkJCUVS
Ul9QVFIocmV0KSk7CisJCXJldHVybjsKIAl9CiAKLQljZmcgPSBob3N0LT5jcnlwdDsKLQlpZiAo
dWZzX210a19pbml0X2hvc3RfY2xrKGhiYSwgImNyeXB0X211eCIsCi0JCQkJICAmY2ZnLT5jbGtf
Y3J5cHRfbXV4KSkKLQkJZ290byBkaXNhYmxlX2NhcHM7CisJY2ZnLT5jbGtfY3J5cHRfbXV4ID0g
ZGV2bV9jbGtfZ2V0KGRldiwgImNyeXB0X211eCIpOworCWlmIChJU19FUlIoY2ZnLT5jbGtfY3J5
cHRfbXV4KSkgeworCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBnZXQgY2xvY2sgY3J5cHRfbXV4
OiAlcGVcbiIsIGNmZy0+Y2xrX2NyeXB0X211eCk7CisJCXJldHVybjsKKwl9CiAKLQlpZiAodWZz
X210a19pbml0X2hvc3RfY2xrKGhiYSwgImNyeXB0X2xwIiwKLQkJCQkgICZjZmctPmNsa19jcnlw
dF9scCkpCi0JCWdvdG8gZGlzYWJsZV9jYXBzOworCWNmZy0+Y2xrX2NyeXB0X2xwID0gZGV2bV9j
bGtfZ2V0KGRldiwgImNyeXB0X2xwIik7CisJaWYgKElTX0VSUihjZmctPmNsa19jcnlwdF9scCkp
IHsKKwkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IGNsb2NrIGNyeXB0X2xwOiAlcGVcbiIs
IGNmZy0+Y2xrX2NyeXB0X2xwKTsKKwkJcmV0dXJuOworCX0KIAotCWlmICh1ZnNfbXRrX2luaXRf
aG9zdF9jbGsoaGJhLCAiY3J5cHRfcGVyZiIsCi0JCQkJICAmY2ZnLT5jbGtfY3J5cHRfcGVyZikp
Ci0JCWdvdG8gZGlzYWJsZV9jYXBzOworCWNmZy0+Y2xrX2NyeXB0X3BlcmYgPSBkZXZtX2Nsa19n
ZXQoZGV2LCAiY3J5cHRfcGVyZiIpOworCWlmIChJU19FUlIoY2ZnLT5jbGtfY3J5cHRfcGVyZikp
IHsKKwkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IGNsb2NrIGNyeXB0X3BlcmY6ICVwZVxu
IiwgY2ZnLT5jbGtfY3J5cHRfcGVyZik7CisJCXJldHVybjsKKwl9CiAKLQljZmctPnJlZ192Y29y
ZSA9IHJlZzsKLQljZmctPnZjb3JlX3ZvbHQgPSB2b2x0OworCWhvc3QtPmNyeXB0ID0gY2ZnOwog
CWhvc3QtPmNhcHMgfD0gVUZTX01US19DQVBfQk9PU1RfQ1JZUFRfRU5HSU5FOwotCi1kaXNhYmxl
X2NhcHM6Ci0JcmV0dXJuOwogfQogCiBzdGF0aWMgdm9pZCB1ZnNfbXRrX2luaXRfaG9zdF9jYXBz
KHN0cnVjdCB1ZnNfaGJhICpoYmEpCgotLSAKMi41NS4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
