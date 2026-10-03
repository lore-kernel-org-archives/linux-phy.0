Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96969CA5FDD
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qUboyrK7lMvQ3eNWkc1IBz68Pb+aMPFAJghhtTD5j0k=; b=mmH9Ej2XSti8I9
	6eY+WFAZ2awMB1EUe2idz89KjcHxIuOQgr7CraSsruSogP1cAeCi+4e9UrN7A3A3B0c8nqEvC8s5H
	p0DGEl3kB2rf/JNMxrxqvFkIp4OghJvYTvBauaFTlUvjQzu2hy0gqYDiuN7Mo7JExD8kArspEPUy3
	nKp3dp1MxkVE590rP8/H5JmrFT5Hv1cv4/Qmi/gc6s3gPRAYW1yp7mBxDgWHhr8mW2grFBuXVT3z+
	mPETdHo35N80pkqYRQBz9Hl041h415PYC2mVwatvehuDIFnNtotVmJbY96TLShomIJUIbfFmZGJ85
	/UAQ76jnXsVdtm3JLVGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAA-0000000DHhU-0QEr;
	Sat, 03 Oct 2026 09:36:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwA9-0000000DHhO-1S0Y
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:36:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B970E4359F;
	Sat,  3 Oct 2026 09:36:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41D7C1F0089B;
	Sat,  3 Oct 2026 09:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791020172;
	bh=LHVi8YAWKqT0hgLh9GC7pntaEBOAfqv6q1MAwH2fQJg=;
	h=From:To:Cc:Subject:Date;
	b=OP7q66tzWK07mFyoLAtSt1E1AtDcs0/Dslh2s/vk7g0IODypVeYs8RJktqbK4P/Km
	 TkTbzlJCGgmMMI0AsasrU4a8LFnG5NDonsAU1OL4NY+DVOoChsGWD6UtBmiwzDQIwv
	 KdYgCwt7hXZYqKNend4t1AgNvzVEdo4BJsuPTpwAThwPEkyD4tuQWT+VuqvMONVOAu
	 wJkhneCvlEjpOpCSmcTZNR4ZmPyeOejl6EA2kEk3u2Xpg6QN5BVdFAB0osTgSuRGcY
	 jqb3ndAAyhaKrA4BihNN0aqEnsT5kTws/eHjtg7lK4sjaaOXJXqPApfBZtYDVdzpfu
	 UG8tvpN3ZaUYA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Oltean <olteanv@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH] phy: qcom: qmp-pcie: drop unused reset names
Date: Sat,  3 Oct 2026 11:35:59 +0200
Message-ID: <20261003093559.199326-1-vkoul@kernel.org>
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

Q29tbWl0IGUzOTdjODUwN2UzNiAoInBoeTogcWNvbTogcW1wLXBjaWU6IEFkZCBOb3JkIEdlbjV4
MTYgUENJZQptdWx0aS1QSFkgc3VwcG9ydCIpIGFkZGVkIGEgYnVuY2ggb2YgcmVzZXQgbmFtZXMs
IGJ1dCBhbHNvIGFkZGVkIHR3bwp3aGljaCBhcmUgbm90IGJlaW5nIHVzZWQuCgpUaGlzIGxlYWRz
IHRvIGNvbXBpbGVyIHdhcm5pbmdzOgpkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAt
cGNpZS1tdWx0aXBoeS5jOjc1MDoyNzogZXJyb3I6IOKAmG5vcmRfcGNpZXBoeV9wb3J0X2Jfbm9j
c3JfcmVzZXRfbOKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3Qt
dmFyaWFibGU9XQogIDc1MCB8IHN0YXRpYyBjb25zdCBjaGFyICogY29uc3Qgbm9yZF9wY2llcGh5
X3BvcnRfYl9ub2Nzcl9yZXNldF9sW10gPSB7CiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAg
ICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcW1wLXBjaWUtbXVsdGlwaHkuYzo3NDY6Mjc6IGVycm9yOiDigJhub3JkX3Bj
aWVwaHlfcG9ydF9hX25vY3NyX3Jlc2V0X2zigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJy
b3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KICA3NDYgfCBzdGF0aWMgY29uc3QgY2hhciAqIGNv
bnN0IG5vcmRfcGNpZXBoeV9wb3J0X2Ffbm9jc3JfcmVzZXRfbFtdID0gewogICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CgpE
cm9wIHRoZXNlCgpGaXhlczogZTM5N2M4NTA3ZTM2ICgicGh5OiBxY29tOiBxbXAtcGNpZTogQWRk
IE5vcmQgR2VuNXgxNiBQQ0llIG11bHRpLVBIWSBzdXBwb3J0IikKU2lnbmVkLW9mZi1ieTogVmlu
b2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4KLS0tCiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1xbXAtcGNpZS1tdWx0aXBoeS5jIHwgOCAtLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDgg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLXBjaWUtbXVsdGlwaHkuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1w
Y2llLW11bHRpcGh5LmMKaW5kZXggZjEyNjc2OTFiZjMyLi43YmM2MmE2NjhkMzQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLW11bHRpcGh5LmMKKysr
IGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUtbXVsdGlwaHkuYwpAQCAt
NzQzLDE0ICs3NDMsNiBAQCBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IG5vcmRfcGNpZXBoeV9w
b3J0X2FiY2RfcmVzZXRfbFtdID0gewogCSJwb3J0X2EiLCAicG9ydF9iIiwgInBvcnRfYyIsICJw
b3J0X2QiLAogfTsKIAotc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBub3JkX3BjaWVwaHlfcG9y
dF9hX25vY3NyX3Jlc2V0X2xbXSA9IHsKLQkicG9ydF9hX25vY3NyIiwKLX07Ci0KLXN0YXRpYyBj
b25zdCBjaGFyICogY29uc3Qgbm9yZF9wY2llcGh5X3BvcnRfYl9ub2Nzcl9yZXNldF9sW10gPSB7
Ci0JInBvcnRfYl9ub2NzciIsCi19OwotCiBzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IG5vcmRf
cGNpZXBoeV9wb3J0X2Nfbm9jc3JfcmVzZXRfbFtdID0gewogCSJwb3J0X2Nfbm9jc3IiLAogfTsK
LS0gCjIuNTMuMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
