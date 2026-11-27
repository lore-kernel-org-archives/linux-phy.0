Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0457606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 16:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wYjUjaeE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=irrRBx1e
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zn5C9RhLcIASH9zNdih3ocXdXq39EjWiPAYClRfRfjc=; b=wYjUjaeETjam+PPQxivIjpbBlt
	VctyhsP2dCFYg+QK5INyPi4QAJIFtUXq4cahEvW1KbpefT4WJxcy+M68J8pfheYJbWHsS8rnSOr1R
	i9O1+weOaMwcZjIb3JhdvLXScia2L0f8eDGh8XyGrlszYuN9PDIbBqizeqr+sup/ZKLUN7NR5REWk
	BN2m/YTistTlaccEeRjqZJ3c69ziSij4erJuyJrH+VbZql0igURPuVkWmx/tWIFRPvuDCw/cRIf+F
	XtM1u/wybg5uaoTDgntGzxZbpFVevFZoZAC6m/RhRg8yBICVTD30Axxt9gWGiBA9yGfOCQAKeivB/
	lVnZQItA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyPR-0000000GyNo-1rWH;
	Fri, 27 Nov 2026 16:02:49 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyNL-0000000Gx2M-0Qxg;
	Fri, 27 Nov 2026 16:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795795237;
	bh=9XODURj1/aPQjhdAIHQAM+FlqP2MtikTuvlHQ/OgkaU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=irrRBx1edGYiDyHBAASb84OcIqRdNpySEFIVHAWdHBDOFGpgyeXOe65pOd7MAmjH+
	 U5rsvoarr75Q3N3mpN2qIqZseGOCkCBH5mFbzGmYzcH683PIGszDCEK3FHQREGBFVf
	 2LzgdZdODJO0eFZCYCxWGW8wSz7gEeSbsmARaALKlyKQ1Qlk4+dtoypcd+UUdQsksr
	 SncCPkVNmEFjxXb5hznt4QpyAVYP5OBiMJs/9WO/I1CKrGMLMEsY0T1zaOHM23UvkS
	 YZ1RS5TZUaYGlgm6NGANcc2sgUICljTJHnNfjXwnP1+0BCqyIFgFpyDh9BxWfCPfjX
	 8cxnFmZyi22Tw==
Received: from yukiji.home (unknown [100.64.0.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F229117E0BA9;
	Fri, 27 Nov 2026 17:00:35 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Fri, 27 Nov 2026 17:00:13 +0100
Subject: [PATCH v16 10/23] scsi: ufs: mediatek: Rework the crypt-boost
 stuff
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-mt8196-ufs-v16-10-6f2568f7c119@collabora.com>
References: <20261127-mt8196-ufs-v16-0-6f2568f7c119@collabora.com>
In-Reply-To: <20261127-mt8196-ufs-v16-0-6f2568f7c119@collabora.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Peter Wang <peter.wang@mediatek.com>, 
 Chaotian Jing <chaotian.jing@mediatek.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Bart Van Assche <bvanassche@acm.org>, 
 Bean Huo <beanhuo@micron.com>, Stanley Jhu <stanleyjhu@google.com>, 
 Stanley Jhu <chu.stanley@gmail.com>, 
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, 
 "Martin K. Petersen" <mkp@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Chun-Hung Wu <chun-hung.wu@mediatek.com>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795795222; l=4252;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=t+EX1zo42dcM7+KTo8uLwNF/1DfFs3i+4+N5UTCySt0=;
 b=YyNEmUf3FM2ks2sBgByG3NB+O0JG/jdzvenGC5svvVt/lXjXRg2uJeGVhOH1FHQYxmAMwr7te
 WiDjOawX3UmCJmTFvdDtpA/smB03pW5RSGkvbZdZaVF7E5+i5a0NnVR
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_080041_672701_BBF80E9C 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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
OCArKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDMxIGluc2VydGlvbnMoKyksIDU3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRl
ay5jCmluZGV4IDE3N2U0MDZjYmM1Zi4uNDFjNDc3ZjVkNWYzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCisrKyBiL2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlh
dGVrLmMKQEAgLTYxNywyMSArNjE3LDYgQEAgc3RhdGljIGludCB1ZnNfbXRrX21waHlfcG93ZXJf
b24oc3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBvbikKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGlj
IGludCB1ZnNfbXRrX2dldF9ob3N0X2NsayhzdHJ1Y3QgZGV2aWNlICpkZXYsIGNvbnN0IGNoYXIg
Km5hbWUsCi0JCQkJc3RydWN0IGNsayAqKmNsa19vdXQpCi17Ci0Jc3RydWN0IGNsayAqY2xrOwot
CWludCBlcnIgPSAwOwotCi0JY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgbmFtZSk7Ci0JaWYgKElT
X0VSUihjbGspKQotCQllcnIgPSBQVFJfRVJSKGNsayk7Ci0JZWxzZQotCQkqY2xrX291dCA9IGNs
azsKLQotCXJldHVybiBlcnI7Ci19Ci0KIHN0YXRpYyB2b2lkIHVmc19tdGtfYm9vc3RfY3J5cHQo
c3RydWN0IHVmc19oYmEgKmhiYSwgYm9vbCBib29zdCkKIHsKIAlzdHJ1Y3QgdWZzX210a19ob3N0
ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7CkBAIC02ODgsNjQgKzY3Myw1MyBAQCBz
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
CWhvc3QtPmNyeXB0ID0gZGV2bV9remFsbG9jX29iaihkZXYsICooaG9zdC0+Y3J5cHQpKTsKLQlp
ZiAoIWhvc3QtPmNyeXB0KQotCQlnb3RvIGRpc2FibGVfY2FwczsKKwljZmcgPSBkZXZtX2t6YWxs
b2Nfb2JqKGRldiwgKmNmZyk7CisJaWYgKCFjZmcpCisJCXJldHVybjsKIAotCXJlZyA9IGRldm1f
cmVndWxhdG9yX2dldF9vcHRpb25hbChkZXYsICJkdmZzcmMtdmNvcmUiKTsKLQlpZiAoSVNfRVJS
KHJlZykpIHsKLQkJZGV2X2luZm8oZGV2LCAiZmFpbGVkIHRvIGdldCBkdmZzcmMtdmNvcmU6ICVs
ZCIsCi0JCQkgUFRSX0VSUihyZWcpKTsKLQkJZ290byBkaXNhYmxlX2NhcHM7CisJY2ZnLT5yZWdf
dmNvcmUgPSBkZXZtX3JlZ3VsYXRvcl9nZXRfb3B0aW9uYWwoZGV2LCAiZHZmc3JjLXZjb3JlIik7
CisJaWYgKElTX0VSUihjZmctPnJlZ192Y29yZSkpIHsKKwkJZGV2X2VycihkZXYsICJGYWlsZWQg
dG8gZ2V0IGR2ZnNyYy12Y29yZTogJXBlXG4iLCBjZmctPnJlZ192Y29yZSk7CisJCXJldHVybjsK
IAl9CiAKLQlpZiAob2ZfcHJvcGVydHlfcmVhZF91MzIoZGV2LT5vZl9ub2RlLCAiYm9vc3QtY3J5
cHQtdmNvcmUtbWluIiwKLQkJCQkgJnZvbHQpKSB7Ci0JCWRldl9pbmZvKGRldiwgImZhaWxlZCB0
byBnZXQgYm9vc3QtY3J5cHQtdmNvcmUtbWluIik7Ci0JCWdvdG8gZGlzYWJsZV9jYXBzOworCXJl
dCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyKGRldi0+b2Zfbm9kZSwgIm1lZGlhdGVrLGJvb3N0LWNy
eXB0LXZjb3JlLW1pbiIsCisJCQkJICAgJnZvbHQpOworCWlmIChyZXQpIHsKKwkJZGV2X2Vycihk
ZXYsICJGYWlsZWQgdG8gZ2V0IG1lZGlhdGVrLGJvb3N0LWNyeXB0LXZjb3JlLW1pbjogJXBlXG4i
LAorCQkJRVJSX1BUUihyZXQpKTsKKwkJcmV0dXJuOwogCX0KKwljZmctPnZjb3JlX3ZvbHQgPSB2
b2x0OwogCi0JY2ZnID0gaG9zdC0+Y3J5cHQ7Ci0JaWYgKHVmc19tdGtfaW5pdF9ob3N0X2Nsayho
YmEsICJjcnlwdF9tdXgiLAotCQkJCSAgJmNmZy0+Y2xrX2NyeXB0X211eCkpCi0JCWdvdG8gZGlz
YWJsZV9jYXBzOworCWNmZy0+Y2xrX2NyeXB0X211eCA9IGRldm1fY2xrX2dldChkZXYsICJjcnlw
dF9tdXgiKTsKKwlpZiAoSVNfRVJSKGNmZy0+Y2xrX2NyeXB0X211eCkpIHsKKwkJZGV2X2Vycihk
ZXYsICJGYWlsZWQgdG8gZ2V0IGNsb2NrIGNyeXB0X211eDogJXBlXG4iLCBjZmctPmNsa19jcnlw
dF9tdXgpOworCQlyZXR1cm47CisJfQogCi0JaWYgKHVmc19tdGtfaW5pdF9ob3N0X2NsayhoYmEs
ICJjcnlwdF9scCIsCi0JCQkJICAmY2ZnLT5jbGtfY3J5cHRfbHApKQotCQlnb3RvIGRpc2FibGVf
Y2FwczsKKwljZmctPmNsa19jcnlwdF9scCA9IGRldm1fY2xrX2dldChkZXYsICJjcnlwdF9scCIp
OworCWlmIChJU19FUlIoY2ZnLT5jbGtfY3J5cHRfbHApKSB7CisJCWRldl9lcnIoZGV2LCAiRmFp
bGVkIHRvIGdldCBjbG9jayBjcnlwdF9scDogJXBlXG4iLCBjZmctPmNsa19jcnlwdF9scCk7CisJ
CXJldHVybjsKKwl9CiAKLQlpZiAodWZzX210a19pbml0X2hvc3RfY2xrKGhiYSwgImNyeXB0X3Bl
cmYiLAotCQkJCSAgJmNmZy0+Y2xrX2NyeXB0X3BlcmYpKQotCQlnb3RvIGRpc2FibGVfY2FwczsK
KwljZmctPmNsa19jcnlwdF9wZXJmID0gZGV2bV9jbGtfZ2V0KGRldiwgImNyeXB0X3BlcmYiKTsK
KwlpZiAoSVNfRVJSKGNmZy0+Y2xrX2NyeXB0X3BlcmYpKSB7CisJCWRldl9lcnIoZGV2LCAiRmFp
bGVkIHRvIGdldCBjbG9jayBjcnlwdF9wZXJmOiAlcGVcbiIsIGNmZy0+Y2xrX2NyeXB0X3BlcmYp
OworCQlyZXR1cm47CisJfQogCi0JY2ZnLT5yZWdfdmNvcmUgPSByZWc7Ci0JY2ZnLT52Y29yZV92
b2x0ID0gdm9sdDsKKwlob3N0LT5jcnlwdCA9IGNmZzsKIAlob3N0LT5jYXBzIHw9IFVGU19NVEtf
Q0FQX0JPT1NUX0NSWVBUX0VOR0lORTsKLQotZGlzYWJsZV9jYXBzOgotCXJldHVybjsKIH0KIAog
c3RhdGljIHZvaWQgdWZzX210a19pbml0X2hvc3RfY2FwcyhzdHJ1Y3QgdWZzX2hiYSAqaGJhKQoK
LS0gCjIuNTYuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
