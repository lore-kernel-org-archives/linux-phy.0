Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9E19D185C7
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 10:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfqYOmL21IFBQtFYaembwAU8+yanzPgjeuXlVZJJF7o=; b=iuEwQevFhrExNe
	0eaP9r7WnYHneq4Gj0yvA67h6iSbva0Ad5XL4tVgUUb5xPWq06/rBXmaoK0JwoemKM+U7NvUXPZh4
	OVQTZQUhnL79lTcR5HzJsaVR9BxenBxDr9HosQhYzKvkpK6j0k9lUTAqtd7pxc/CI7mGFtK9ui3bb
	9prJUSTJPx2noTgAaBflrQosrgGlaJIsawsWKbLiiIqq7pbUwrP37rAZEhJYklA2f03maGLDoUiUe
	fRbCMrSzpXngoNpa9M9iE61XnWji67hwtR/nq+iCL9c4gL7gtVLJ341dAgFRe9AVwNaDulXHJgh04
	Q8mFTUwU6Ee1P7iAt5Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdnc2-0000000GhMZ-0SXa;
	Thu, 08 Jan 2026 10:51:30 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdnbZ-0000000Gh1R-0AU2;
	Thu, 08 Jan 2026 10:51:08 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1767869449; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=HZpJzK7he38WDMsR6txOYANSg01It0c9FlaeBpXG8nRZPl7+gqeZLfEXBuBIerEzmqXkPJdcoMIbZ+7MAC8jcZxXKBniBAnnu538ShJMXfqWpqA64NGycXSoq/Nq/mjW6eZfTJ0EbxR33T1m2jxo0OkWUuexTgNR11Ygf75wAVQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1767869449; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=3Btq5ze3Dk+XwNnveSGIJE7cooTqyLjb6gxWgmCMTts=; 
	b=R+9w6mMkpGRRfK8oMuVayZ8dotGJl7rMDKB0sz0D5tw833WkXe95L3wSMjE0KwDRFQpQZCGRDWf73lZd5m9Ni+7edNmgnYLtwOHLH53ohnOuQECzNDxrHi2vx2Adg4cVOeTuMZUMHsF4OiuU8EMJlQyfX3d80t1cwTjlzXVjmlE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1767869449;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=3Btq5ze3Dk+XwNnveSGIJE7cooTqyLjb6gxWgmCMTts=;
	b=IBVfvApm6rM1vutD2tIPjW6rdM4iRDoPS5/9nQOeV4AZSc5+Rmqm35+P8hr8yMDf
	WrnmMNsC0CG5xakk7vElvouxy76OZPKrrUMTIQ91TlFBCVfTQlmnD2806BDHIElP3Lf
	vqcSpC2vzffiY77HelWtsztDOoVhis13GujdmTpM=
Received: by mx.zohomail.com with SMTPS id 1767869447792941.762730713929;
	Thu, 8 Jan 2026 02:50:47 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 08 Jan 2026 11:49:28 +0100
Subject: [PATCH v5 09/24] scsi: ufs: mediatek: Rework the crypt-boost stuff
MIME-Version: 1.0
Message-Id: <20260108-mt8196-ufs-v5-9-49215157ec41@collabora.com>
References: <20260108-mt8196-ufs-v5-0-49215157ec41@collabora.com>
In-Reply-To: <20260108-mt8196-ufs-v5-0-49215157ec41@collabora.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Peter Wang <peter.wang@mediatek.com>, Stanley Jhu <chu.stanley@gmail.com>, 
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, 
 "Martin K. Petersen" <martin.petersen@oracle.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Chaotian Jing <Chaotian.Jing@mediatek.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, 
 kernel@collabora.com, linux-scsi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_025101_141677_730287C8 
X-CRM114-Status: GOOD (  13.98  )
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

SSBkb24ndCBrbm93IHdoZXRoZXIgdGhlIGNyeXB0LWJvb3N0IGZ1bmN0aW9uYWxpdHkgYXMgaXQg
aXMgY3VycmVudGx5CmltcGxlbWVudGVkIGlzIGV2ZW4gYXBwcm9wcmlhdGUgZm9yIG1haW5saW5l
LiBJdCBtaWdodCBiZSBiZXR0ZXIgZG9uZSBpbgpzb21lIGdlbmVyaWMgd2F5LiBCdXQgd2hhdCBJ
IGRvIGtub3cgaXMgdGhhdCBJIGNhbiByZXdvcmsgdGhlIGNvZGUgdG8KbWFrZSBpdCBsZXNzIG9i
dHVzZS4KClByZWZpeCB0aGUgYm9vc3Qgc3R1ZmYgd2l0aCB0aGUgYXBwcm9wcmlhdGUgdmVuZG9y
IHByZWZpeCwgcmVtb3ZlIHRoZQpwb2ludGxlc3MgY2xvY2sgd3JhcHBlcnMsIGFuZCByZXdvcmsg
dGhlIGZ1bmN0aW9uLgoKUmV2aWV3ZWQtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxh
bmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+ClJldmlld2VkLWJ5OiBQZXRl
ciBXYW5nICjnjovkv6Hlj4spIDxwZXRlci53YW5nQG1lZGlhdGVrLmNvbT4KU2lnbmVkLW9mZi1i
eTogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4K
LS0tCiBkcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jIHwgODkgKysrKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25z
KCspLCA1OSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1t
ZWRpYXRlay5jIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwppbmRleCA0Y2IxYTFi
NDAwYWMuLjBkOGY0ZTU0MmQ0NyAxMDA2NDQKLS0tIGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVk
aWF0ZWsuYworKysgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCkBAIC01NjIsMjEg
KzU2Miw2IEBAIHN0YXRpYyBpbnQgdWZzX210a19tcGh5X3Bvd2VyX29uKHN0cnVjdCB1ZnNfaGJh
ICpoYmEsIGJvb2wgb24pCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgdWZzX210a19nZXRf
aG9zdF9jbGsoc3RydWN0IGRldmljZSAqZGV2LCBjb25zdCBjaGFyICpuYW1lLAotCQkJCXN0cnVj
dCBjbGsgKipjbGtfb3V0KQotewotCXN0cnVjdCBjbGsgKmNsazsKLQlpbnQgZXJyID0gMDsKLQot
CWNsayA9IGRldm1fY2xrX2dldChkZXYsIG5hbWUpOwotCWlmIChJU19FUlIoY2xrKSkKLQkJZXJy
ID0gUFRSX0VSUihjbGspOwotCWVsc2UKLQkJKmNsa19vdXQgPSBjbGs7Ci0KLQlyZXR1cm4gZXJy
OwotfQotCiBzdGF0aWMgdm9pZCB1ZnNfbXRrX2Jvb3N0X2NyeXB0KHN0cnVjdCB1ZnNfaGJhICpo
YmEsIGJvb2wgYm9vc3QpCiB7CiAJc3RydWN0IHVmc19tdGtfaG9zdCAqaG9zdCA9IHVmc2hjZF9n
ZXRfdmFyaWFudChoYmEpOwpAQCAtNjMzLDY1ICs2MTgsNTEgQEAgc3RhdGljIHZvaWQgdWZzX210
a19ib29zdF9jcnlwdChzdHJ1Y3QgdWZzX2hiYSAqaGJhLCBib29sIGJvb3N0KQogCWNsa19kaXNh
YmxlX3VucHJlcGFyZShjZmctPmNsa19jcnlwdF9tdXgpOwogfQogCi1zdGF0aWMgaW50IHVmc19t
dGtfaW5pdF9ob3N0X2NsayhzdHJ1Y3QgdWZzX2hiYSAqaGJhLCBjb25zdCBjaGFyICpuYW1lLAot
CQkJCSBzdHJ1Y3QgY2xrICoqY2xrKQotewotCWludCByZXQ7Ci0KLQlyZXQgPSB1ZnNfbXRrX2dl
dF9ob3N0X2NsayhoYmEtPmRldiwgbmFtZSwgY2xrKTsKLQlpZiAocmV0KSB7Ci0JCWRldl9pbmZv
KGhiYS0+ZGV2LCAiJXM6IGZhaWxlZCB0byBnZXQgJXM6ICVkIiwgX19mdW5jX18sCi0JCQkgbmFt
ZSwgcmV0KTsKLQl9Ci0KLQlyZXR1cm4gcmV0OwotfQotCiBzdGF0aWMgdm9pZCB1ZnNfbXRrX2lu
aXRfYm9vc3RfY3J5cHQoc3RydWN0IHVmc19oYmEgKmhiYSkKIHsKIAlzdHJ1Y3QgdWZzX210a19o
b3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7CiAJc3RydWN0IHVmc19tdGtfY3J5
cHRfY2ZnICpjZmc7CiAJc3RydWN0IGRldmljZSAqZGV2ID0gaGJhLT5kZXY7Ci0Jc3RydWN0IHJl
Z3VsYXRvciAqcmVnOwotCXUzMiB2b2x0OworCWludCByZXQ7CiAKLQlob3N0LT5jcnlwdCA9IGRl
dm1fa3phbGxvYyhkZXYsIHNpemVvZigqKGhvc3QtPmNyeXB0KSksCi0JCQkJICAgR0ZQX0tFUk5F
TCk7Ci0JaWYgKCFob3N0LT5jcnlwdCkKLQkJZ290byBkaXNhYmxlX2NhcHM7CisJY2ZnID0gZGV2
bV9remFsbG9jKGRldiwgc2l6ZW9mKCpjZmcpLCBHRlBfS0VSTkVMKTsKKwlpZiAoIWNmZykKKwkJ
cmV0dXJuOwogCi0JcmVnID0gZGV2bV9yZWd1bGF0b3JfZ2V0X29wdGlvbmFsKGRldiwgImR2ZnNy
Yy12Y29yZSIpOwotCWlmIChJU19FUlIocmVnKSkgewotCQlkZXZfaW5mbyhkZXYsICJmYWlsZWQg
dG8gZ2V0IGR2ZnNyYy12Y29yZTogJWxkIiwKLQkJCSBQVFJfRVJSKHJlZykpOwotCQlnb3RvIGRp
c2FibGVfY2FwczsKKwljZmctPnJlZ192Y29yZSA9IGRldm1fcmVndWxhdG9yX2dldF9vcHRpb25h
bChkZXYsICJkdmZzcmMtdmNvcmUiKTsKKwlpZiAoSVNfRVJSKGNmZy0+cmVnX3Zjb3JlKSkgewor
CQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBnZXQgZHZmc3JjLXZjb3JlOiAlcGUiLCBjZmctPnJl
Z192Y29yZSk7CisJCXJldHVybjsKIAl9CiAKLQlpZiAob2ZfcHJvcGVydHlfcmVhZF91MzIoZGV2
LT5vZl9ub2RlLCAiYm9vc3QtY3J5cHQtdmNvcmUtbWluIiwKLQkJCQkgJnZvbHQpKSB7Ci0JCWRl
dl9pbmZvKGRldiwgImZhaWxlZCB0byBnZXQgYm9vc3QtY3J5cHQtdmNvcmUtbWluIik7Ci0JCWdv
dG8gZGlzYWJsZV9jYXBzOworCXJldCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyKGRldi0+b2Zfbm9k
ZSwgIm1lZGlhdGVrLGJvb3N0LWNyeXB0LXZjb3JlLW1pbiIsCisJCQkJICAgJmNmZy0+dmNvcmVf
dm9sdCk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBnZXQgbWVkaWF0
ZWssYm9vc3QtY3J5cHQtdmNvcmUtbWluOiAlcGVcbiIsCisJCQlFUlJfUFRSKHJldCkpOworCQly
ZXR1cm47CiAJfQogCi0JY2ZnID0gaG9zdC0+Y3J5cHQ7Ci0JaWYgKHVmc19tdGtfaW5pdF9ob3N0
X2NsayhoYmEsICJjcnlwdF9tdXgiLAotCQkJCSAgJmNmZy0+Y2xrX2NyeXB0X211eCkpCi0JCWdv
dG8gZGlzYWJsZV9jYXBzOworCWNmZy0+Y2xrX2NyeXB0X211eCA9IGRldm1fY2xrX2dldChkZXYs
ICJjcnlwdF9tdXgiKTsKKwlpZiAoSVNfRVJSKGNmZy0+Y2xrX2NyeXB0X211eCkpIHsKKwkJZGV2
X2VycihkZXYsICJGYWlsZWQgdG8gZ2V0IGNsb2NrIGNyeXB0X211eDogJXBlXG4iLCBjZmctPmNs
a19jcnlwdF9tdXgpOworCQlyZXR1cm47CisJfQogCi0JaWYgKHVmc19tdGtfaW5pdF9ob3N0X2Ns
ayhoYmEsICJjcnlwdF9scCIsCi0JCQkJICAmY2ZnLT5jbGtfY3J5cHRfbHApKQotCQlnb3RvIGRp
c2FibGVfY2FwczsKKwljZmctPmNsa19jcnlwdF9scCA9IGRldm1fY2xrX2dldChkZXYsICJjcnlw
dF9scCIpOworCWlmIChJU19FUlIoY2ZnLT5jbGtfY3J5cHRfbHApKSB7CisJCWRldl9lcnIoZGV2
LCAiRmFpbGVkIHRvIGdldCBjbG9jayBjcnlwdF9scDogJXBlXG4iLCBjZmctPmNsa19jcnlwdF9s
cCk7CisJCXJldHVybjsKKwl9CiAKLQlpZiAodWZzX210a19pbml0X2hvc3RfY2xrKGhiYSwgImNy
eXB0X3BlcmYiLAotCQkJCSAgJmNmZy0+Y2xrX2NyeXB0X3BlcmYpKQotCQlnb3RvIGRpc2FibGVf
Y2FwczsKKwljZmctPmNsa19jcnlwdF9wZXJmID0gZGV2bV9jbGtfZ2V0KGRldiwgImNyeXB0X3Bl
cmYiKTsKKwlpZiAoSVNfRVJSKGNmZy0+Y2xrX2NyeXB0X3BlcmYpKSB7CisJCWRldl9lcnIoZGV2
LCAiRmFpbGVkIHRvIGdldCBjbG9jayBjcnlwdF9wZXJmOiAlcGVcbiIsIGNmZy0+Y2xrX2NyeXB0
X3BlcmYpOworCQlyZXR1cm47CisJfQogCi0JY2ZnLT5yZWdfdmNvcmUgPSByZWc7Ci0JY2ZnLT52
Y29yZV92b2x0ID0gdm9sdDsKKwlob3N0LT5jcnlwdCA9IGNmZzsKIAlob3N0LT5jYXBzIHw9IFVG
U19NVEtfQ0FQX0JPT1NUX0NSWVBUX0VOR0lORTsKLQotZGlzYWJsZV9jYXBzOgotCXJldHVybjsK
IH0KIAogc3RhdGljIHZvaWQgdWZzX210a19pbml0X2hvc3RfY2FwcyhzdHJ1Y3QgdWZzX2hiYSAq
aGJhKQoKLS0gCjIuNTIuMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
