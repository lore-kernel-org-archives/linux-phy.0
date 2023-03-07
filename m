Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1692FC678D5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kg3HtY7wfcuQovkLasXf1y8KPToARrC+AGd8uv4N3ro=; b=d3Yqyy4WlAgGaL
	KBq+VEX1VtEMdmRmGn5tUpL+vhJfSXCLZlakX4sehR17kVkw5XJG00ztPoIUHK4GQ2llvyby94eT1
	oL7PMVUZP8L9ozBbup2IbF9wuXrcS+mNBagISaf856dXauqn0M2JkT/MLxGXce6lkzvxx+8CaHZqF
	iNbKcNMH93d+1JXPCdYbJFrx7JL5nshooNNBOCQsnjisRPCjMaxDfBvDC+qVWAzMt/88426WYJ6ob
	RSEe/kyXC1fbftLAoX3ilW63a8HAdHKuDOnkeEaabqUeKbfH8QwHox5bbA7Fo2Xg5z00Iwvbn575B
	Ah/3V/TJERIA2ibcZSCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW0F-00HaB8-HI; Tue, 07 Mar 2023 12:01:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZVyl-00HZDp-0y
	for linux-phy@bombadil.infradead.org; Tue, 07 Mar 2023 11:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Sn+c8MXjyXCMTILhZQz1+wu5vaaXW1ZNuoSv4mCczkA=; b=prdJbMhV8NI8YfZF3t2qRrVlC9
	oEf651RqzfiUXq3ni5cDBimfT7v6SzbylDyo2cRIqdLeGKYM5brldVzEk7cka5gw1cLja8yBGthuc
	VTyno4rG2b+Co5QowQHLdhdy/RB1L70rGrnOOO60KiSr3Ctw4RevnroodIHAyvgjBUJBgfTNt3mNw
	56VL0dzan/ZmsqSsvUDu7JjSJZPZSEedT6dnl0Y+K66y8d9ixTQ55006rNiUmNVf7saHl+G54USDP
	17JzPRXXbQQ5LzpvvxREhS5eZcpOhqRJzMPAklf+aMKPAVWCFt++fkg+QBN5YHUVvFE48t3z1vDA+
	18N0/0PA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pZVyb-00H2AH-2h
	for linux-phy@lists.infradead.org;
	Tue, 07 Mar 2023 11:59:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyJ-0006Vc-Bi; Tue, 07 Mar 2023 12:59:11 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyI-002TFH-7W; Tue, 07 Mar 2023 12:59:10 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pZVyG-002yjO-LN; Tue, 07 Mar 2023 12:59:08 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 13/31] phy: qualcomm: phy-qcom-eusb2-repeater: Convert to platform remove callback returning void
Date: Tue,  7 Mar 2023 12:58:42 +0100
Message-Id: <20230307115900.2293120-14-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
References: <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1851; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=coYW9pWrr7E2/EphPOTo9VhmqHcN1CT2RwChjTdikrY=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkBya24P5M0wKf7HSaNgxHarPDhCEn3rBAMUmPT HuoVQ/KPWiJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAcmtgAKCRDB/BR4rcrs CfqICACGmDiagBmsuLHmNtEd4ad06qzHj4o/GbYfYOn00Bxoyf0J46p/r7LKnPoGpQTUtjDvNpP LgOuE2v8R+64XG0jmMzVC5dk8GCWhKAx+G2zAoQjFbKo1CUHUeHUg1Y4s7StDUi/adbvIjnIvFh k73krBXEzl6x16MlotR7CniAUyd1UJdXzgkHJJFAEWOlMqS6LqUioALpS7VtSfATf8pB/cWBhni unti+HYKLDkce3IZsicO5YS5cRZmkZI6PBiC1HuI1w2bNeVZJrwA8VHxlQ74mUI+WvSXjBnzND0 SXAAXFMCs8CT8sz0ybxi21TJGowqwSz1MHaSAP+mAIQm8Zhl
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_115931_833781_53C9ECC6 
X-CRM114-Status: GOOD (  16.29  )
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

VGhlIC5yZW1vdmUoKSBjYWxsYmFjayBmb3IgYSBwbGF0Zm9ybSBkcml2ZXIgcmV0dXJucyBhbiBp
bnQgd2hpY2ggbWFrZXMKbWFueSBkcml2ZXIgYXV0aG9ycyB3cm9uZ2x5IGFzc3VtZSBpdCdzIHBv
c3NpYmxlIHRvIGRvIGVycm9yIGhhbmRsaW5nIGJ5CnJldHVybmluZyBhbiBlcnJvciBjb2RlLiBI
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyAobW9zdGx5KSBpZ25vcmVkCmFuZCB0aGlzIHR5
cGljYWxseSByZXN1bHRzIGluIHJlc291cmNlIGxlYWtzLiBUbyBpbXByb3ZlIGhlcmUgdGhlcmUg
aXMgYQpxdWVzdCB0byBtYWtlIHRoZSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuIHZvaWQuIEluIHRo
ZSBmaXJzdCBzdGVwIG9mIHRoaXMKcXVlc3QgYWxsIGRyaXZlcnMgYXJlIGNvbnZlcnRlZCB0byAu
cmVtb3ZlX25ldygpIHdoaWNoIGFscmVhZHkgcmV0dXJucwp2b2lkLgoKVHJpdmlhbGx5IGNvbnZl
cnQgdGhpcyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92ZQpj
YWxsYmFjayB0byB0aGUgdm9pZCByZXR1cm5pbmcgdmFyaWFudC4KClNpZ25lZC1vZmYtYnk6IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVwZWF0ZXIuYyB8IDggKysrLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVwZWF0ZXIuYyBiL2Ry
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWV1c2IyLXJlcGVhdGVyLmMKaW5kZXggM2YyNjVh
YzJkZjIwLi45MGY4NTQzYmEyNjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLWV1c2IyLXJlcGVhdGVyLmMKKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tZXVzYjItcmVwZWF0ZXIuYwpAQCAtMjIzLDE2ICsyMjMsMTQgQEAgc3RhdGljIGludCBldXNi
Ml9yZXBlYXRlcl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVybiAw
OwogfQogCi1zdGF0aWMgaW50IGV1c2IyX3JlcGVhdGVyX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQorc3RhdGljIHZvaWQgZXVzYjJfcmVwZWF0ZXJfcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IGV1c2IyX3JlcGVhdGVyICpycHRyID0g
cGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldik7CiAKIAlpZiAoIXJwdHIpCi0JCXJldHVybiAwOwor
CQlyZXR1cm47CiAKIAlldXNiMl9yZXBlYXRlcl9leGl0KHJwdHItPnBoeSk7Ci0KLQlyZXR1cm4g
MDsKIH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgZXVzYjJfcmVwZWF0ZXJf
b2ZfbWF0Y2hfdGFibGVbXSA9IHsKQEAgLTI0Niw3ICsyNDQsNyBAQCBNT0RVTEVfREVWSUNFX1RB
QkxFKG9mLCBldXNiMl9yZXBlYXRlcl9vZl9tYXRjaF90YWJsZSk7CiAKIHN0YXRpYyBzdHJ1Y3Qg
cGxhdGZvcm1fZHJpdmVyIGV1c2IyX3JlcGVhdGVyX2RyaXZlciA9IHsKIAkucHJvYmUJCT0gZXVz
YjJfcmVwZWF0ZXJfcHJvYmUsCi0JLnJlbW92ZQkJPSBldXNiMl9yZXBlYXRlcl9yZW1vdmUsCisJ
LnJlbW92ZV9uZXcJPSBldXNiMl9yZXBlYXRlcl9yZW1vdmUsCiAJLmRyaXZlciA9IHsKIAkJLm5h
bWUJPSAicWNvbS1ldXNiMi1yZXBlYXRlciIsCiAJCS5vZl9tYXRjaF90YWJsZSA9IGV1c2IyX3Jl
cGVhdGVyX29mX21hdGNoX3RhYmxlLAotLSAKMi4zOS4xCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
