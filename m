Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 247F4C88E5A
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 10:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aF4wZ/dplTfXICx/mAGm5UYtxaDXb0NTpW1ajnyFFsU=; b=caA96SUxn6mtQ6
	pjNSYCsLfS+jtwKIeoTtCdJE+WJfiQjzqOR5iixxavm28ixUgL9Bu0p+Z3nCyjid+NIkpasFjSEc5
	zCPEF3JjMsRM7ykEMYR+Mb1HeQcNlHPrcKhSbaFuHP3bTNmsTWKs6GOxQZLD2AAjKpfOiOkXDr7pa
	2CEMwf+/EqCMZARcA/5QQYRJLHqH5+IyrANV2ajfiVmiaS9GS4TiUcgUw+ZQBueQX/F91gIRS0YfH
	nU6voR7xvy/Ea4EVYkHhx59NmoNoZqaMlKyRRCOwStRpM5at8eR2xjoJeDyT0lWFWKVio1WVa4UPS
	y3Ba2jgb3sc6be46X/cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5hrO-00000001bMT-18bX;
	Sun, 13 Sep 2026 10:54:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5hrN-00000001bMM-1WwZ
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 10:54:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9367960DE6;
	Sun, 13 Sep 2026 10:54:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C74D1F000FF;
	Sun, 13 Sep 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789296896;
	bh=RBDuGbvGhuXybcRXgx4KUD4nK0uGrvkDR4w+j7hPXes=;
	h=From:To:Cc:Subject:Date;
	b=J0rvgcRDaI5SR0LGIvgCoUpVWaVpdveLHMyacHWhMjI6nPVfLag3SLWEaId0GXE15
	 iFKnzZm+xOuXfRd3+CR1SIlCzv9hD2W7xXzT35fi04SS1N5sczgtfX74+egfk7DW+2
	 DNC2z/b+UY2t7jpaZgMyqWZTWjzYAsuIqYsoUBtAT5VL/wZ5UVN4xSuUKT4li59oqh
	 LvlqZ6nLsn3XgZFzHSCZQYqHqBwIrzCV772bmSydkFB9I4q1cfFVNI2UtUIuduYoQv
	 2qF1Y8ckxzMgjisn9qD1FNvbhoeQ4Dp0jwjMn9NoH/iqtMzIki36ypX4IMh27K5Dl2
	 v3muEGdEqBxnw==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Oltean <olteanv@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH] phy: phy-mtk-dp: drop unused variables
Date: Sun, 13 Sep 2026 16:24:45 +0530
Message-ID: <20260913105445.211613-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
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

UmVjZW50IGNoYW5nZXMgaW4gZHJpdmVyIGFkZGVkIHVudXNlZCB2YXJpYWJsZXMgY2F1c2luZyBi
dWlsZCB3YXJuaW5nczoKCmRyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYzogSW4gZnVu
Y3Rpb24g4oCYbXRrX2RwX3BoeV9zZXRfZGlnaXRhbF9kcnZfcGFyYW1z4oCZOgpkcml2ZXJzL3Bo
eS9tZWRpYXRlay9waHktbXRrLWRwLmM6MzMyOjE2OiBlcnJvcjogdW51c2VkIHZhcmlhYmxlIOKA
mHJldOKAmSBbLVdlcnJvcj11bnVzZWQtdmFyaWFibGVdCiAgMzMyIHwgICAgICAgICBpbnQgaSwg
cmV0OwogICAgICB8ICAgICAgICAgICAgICAgIF5+fgpkcml2ZXJzL3BoeS9tZWRpYXRlay9waHkt
bXRrLWRwLmM6IEluIGZ1bmN0aW9uIOKAmG10a19kcF9waHlfaW5pdOKAmToKZHJpdmVycy9waHkv
bWVkaWF0ZWsvcGh5LW10ay1kcC5jOjM0ODoyNDogZXJyb3I6IHVudXNlZCB2YXJpYWJsZSDigJhk
ZXbigJkgWy1XZXJyb3I9dW51c2VkLXZhcmlhYmxlXQogIDM0OCB8ICAgICAgICAgc3RydWN0IGRl
dmljZSAqZGV2ID0gJnBoeS0+ZGV2OwogICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgXn5+
CmRyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYzogSW4gZnVuY3Rpb24g4oCYbXRrX2Rw
X3BoeV9kaXNhYmxlX2FsbF9sYW5lc+KAmToKZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1k
cC5jOjQ1NzoxMzogZXJyb3I6IHVudXNlZCB2YXJpYWJsZSDigJhyZXTigJkgWy1XZXJyb3I9dW51
c2VkLXZhcmlhYmxlXQogIDQ1NyB8ICAgICAgICAgaW50IHJldDsKICAgICAgfCAgICAgICAgICAg
ICBefn4KCkRyb3AgdGhlc2UgdG8gZml4IHRoZXNlCgpTaWduZWQtb2ZmLWJ5OiBWaW5vZCBLb3Vs
IDx2a291bEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAu
YyB8IDQgKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYyBiL2RyaXZl
cnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYwppbmRleCA2ZDA2ZTFjMzllM2IuLjcxMDhiMTZk
MzNhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5jCisrKyBi
L2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYwpAQCAtMzI5LDcgKzMyOSw3IEBAIHN0
YXRpYyB2b2lkIG10a19kcF9waHlfc2V0X2RpZ2l0YWxfZHJ2X3BhcmFtcyhzdHJ1Y3QgbXRrX2Rw
X3BoeSAqZHBfcGh5KQogewogCWNvbnN0IHN0cnVjdCBtdGtfZHBfcGh5X3BkYXRhICpwZGF0YSA9
IGRwX3BoeS0+cGRhdGE7CiAJY29uc3QgdTMyIHJlZyA9IHBkYXRhLT5yZWdzX2RpZ19sYW5lW0RQ
X1BIWURfTEFOX0RSSVZJTkdfUEFSQU1fMF07Ci0JaW50IGksIHJldDsKKwlpbnQgaTsKIAogCS8q
CiAJICogQXNzdW1lIHRoYXQgYWxsIGxhbmVzIG5lZWQgdGhlIHNhbWUgZHJpdmluZyBwYXJhbWV0
ZXJzOiB0aGlzCkBAIC0zNDUsNyArMzQ1LDYgQEAgc3RhdGljIHZvaWQgbXRrX2RwX3BoeV9zZXRf
ZGlnaXRhbF9kcnZfcGFyYW1zKHN0cnVjdCBtdGtfZHBfcGh5ICpkcF9waHkpCiBzdGF0aWMgaW50
IG10a19kcF9waHlfaW5pdChzdHJ1Y3QgcGh5ICpwaHkpCiB7CiAJc3RydWN0IG10a19kcF9waHkg
KmRwX3BoeSA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwotCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZw
aHktPmRldjsKIAogCW10a19kcF9waHlfc2V0X2RpZ2l0YWxfZHJ2X3BhcmFtcyhkcF9waHkpOwog
CW10a19kcF9waHlfc2V0X2FuYWxvZ19jYWxpYnJhdGlvbl9wYXJhbXMoZHBfcGh5KTsKQEAgLTQ1
NCw3ICs0NTMsNiBAQCBzdGF0aWMgaW50IG10a19kcF9waHlfZGlzYWJsZV9hbGxfbGFuZXMoc3Ry
dWN0IG10a19kcF9waHkgKmRwX3BoeSkKIHsKIAljb25zdCBzdHJ1Y3QgbXRrX2RwX3BoeV9wZGF0
YSAqcGRhdGEgPSBkcF9waHktPnBkYXRhOwogCWNvbnN0IHU4ICpyZWdzID0gcGRhdGEtPnJlZ3Nf
ZGlnX2dsYjsKLQlpbnQgcmV0OwogCXUzMiB2YWw7CiAKIAkvKiBHZXQgbWFzayBvZiBjdXJyZW50
bHkgZW5hYmxlZCBsYW5lICovCi0tIAoyLjUzLjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
