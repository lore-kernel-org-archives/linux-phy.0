Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466D0606A320
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 06:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oyOY3F4T;
	dkim=temperror header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=FDVm/0ho
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zniNirQyVXvgUh8GPPJ2Fc+uq2XXMN2Ju4F+/RWjdeE=; b=oyOY3F4TQ3hvS7nAii8U+c239i
	/joht/tlzf5I4C/Ma0GCqrzMAhKQYvOT9SJKScvT2/41znhY3Kkzghn0mfLooQ9XdsiuvQvOsUO14
	KvppxNLQSm5wrWIfMFbp/xtlH8nfnzd2uu/v6TZhIZqlMA81Is5p2UXI/vWaMBxDgVhgYsM5Kty9F
	vsKcvsVY4wbXU4OKlFOo7K4XalVTSiA5tHFzArsLQ+/8j2Ir4nOx6NLSjxVwfHCew6uRoqhjD+64c
	sQXzaoz67CoA1lwBIo0CSqAgJf2GnNrhbElut5ZrN8fsGOoanyAWHFXREYIKTA67CiQkMcTBQ6xHn
	V3CEKGIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMfxg-0000000AtGJ-39XF;
	Fri, 30 Oct 2026 06:19:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMfxe-0000000AtGC-3L3i
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 06:19:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0BC0441FA6;
	Fri, 30 Oct 2026 06:19:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D51E1F000C1;
	Fri, 30 Oct 2026 06:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793341173;
	bh=QaCFwLra8DnG82pikwLY7UmYZm2bl5OOaV+ZPa2+uIM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=FDVm/0hoRpZ9k5NWBWvKxngEP4qLQOUtvrwb7n3FIpbbfW1XsljhWL5m5JX0V7Rxi
	 9ySOL0WV2YxVqusiZRCrvJsUL1xv/VjMg5dWRdVi1Ag+Rw7JPUzBB4BvRzS2zXnENd
	 dfBXZBnXYRbePFmGj6zU+DS9ReMiWA5njzT9lmxOOx7jHJVY+def2ZF0iOZPGJuOUp
	 sfzZDm7rjKklzV0M6wlCi0qvFbXRUMWVzIWZdHRg/gqhSsI8xnf28mTfRqyNZE01Ba
	 GGzdVXwvL0kXuTF9iP+K7FeWZ0DRiXueZKKUb59nQdWMSGMabRqI29Xtc5OCrT47Nd
	 9R62nHfMnuWEQ==
From: Manivannan Sadhasivam <mani@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261029-nord-v5-0-1a13c214e89d@oss.qualcomm.com>
References: <20261029-nord-v5-0-1a13c214e89d@oss.qualcomm.com>
Subject: Re: [PATCH v5 0/2] Add PCIe support for Qualcomm Nord platform
Message-Id: <179334114173.5551.12630399291214852327.b4-ty@b4>
Date: Fri, 30 Oct 2026 11:49:01 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1205;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=dib3mSnynAOgkHD90d30QPT5TiCCYKF0wRsK3qpWYr0=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5Dbo3c/+lc+jFOulS3o8sM9xyr6yXbWUBG5Ox
 vieb5JcpQaJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauQ26AAKCRBVnxHm/pHO
 9b5UB/9jcGdxyvxObvaLWbqvQvDiutHu9IWoG+sqpN0II5IaReKNB4cCmo9OslGRwNBSe4ziHFm
 vWQXq4C1S6u7wnS7dPCOF7zI6j2eDHBJPq64BuHGGdzO3qmMGhAf2DPanIjmpKDxxqZXGpc/9/y
 TPpqS2jcTiINM464YGBV7HTyS4wLeV5KjHhrEYPmqlj1pPABZ5NNFXv4x2KOzbdlOXIDvIfDHuZ
 1CveXoBx27k1CmLI70GDsT1Ica/IWuA/CJme4xLHZjTJ+x032pt443vCoasq2uFNAdT513cjVsC
 h5PahdeTwNUfv9h/Ec/ZUtWybbOpj8CP6iZ4D2ruaCUE8aGE
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIFRodSwgMjkgT2N0IDIwMjYgMTE6NDA6MTUgKzA1MzAsIEtyaXNobmEgQ2hhaXRhbnlhIENo
dW5kcnUgd3JvdGU6Cj4gQWRkIFBDSWUgc3VwcG9ydCBmb3IgUXVhbGNvbW0gTm9yZCBwbGF0Zm9y
bQo+IAo+IFRoaXMgc2VyaWVzIGFkZHMgUENJZSBzdXBwb3J0IGZvciB0aGUgUXVhbGNvbW0gTm9y
ZCAoU0E4Nzk3UCkgcGxhdGZvcm0uCj4gCj4gTm9yZCBoYXMgYSBzaW5nbGUgR2VuNS1jYXBhYmxl
IFFNUCBQQ0llIFBIWSBibG9jayBzcGxpdCBpbnRvIGZvdXIKPiBpbmRlcGVuZGVudGx5LWNsb2Nr
ZWQgYW5kIGluZGVwZW5kZW50bHktcmVzZXR0YWJsZSBwb3J0cyAoQS9CL0MvRCkuCj4gRmlybXdh
cmUgc2VsZWN0cyB0aGUgYWN0aXZlIGxhbmUgdG9wb2xvZ3kgYXQgYm9vdCB2aWEgYSBUQ1NSCj4g
Y29uZmlndXJhdGlvbiByZWdpc3RlciwgYW5kIHRoZSBzYW1lIFBIWSBibG9jayBjYW4gYXBwZWFy
IGFzIGEgc2luZ2xlCj4geDE2IHBvcnQsIHg4K3g4LCB4OCt4NCt4NCwgb3IgeDgreDQreDIreDIg
ZGVwZW5kaW5nIG9uIHRoYXQgbW9kZS4gVGhpcwo+IGlzIHNpbWlsYXIgaW4gc3Bpcml0IHRvIHRo
ZSBHbHltdXIgbXVsdGktUEhZIHN1cHBvcnQgYWxyZWFkeSBwb3N0ZWQsCj4gZXhjZXB0IE5vcmQn
cyBQSFkgcmVnaXN0ZXJzIGFyZSBwcm9ncmFtbWVkIGJ5IExpbnV4IHJhdGhlciB0aGFuIGJ5Cj4g
ZmlybXdhcmUsIHNvIHRoaXMgc2VyaWVzIGFkZHMgdGhlIFBMTCwgVFhSWFosIFBDUyBhbmQgUENT
LWxhbmUgaW5pdAo+IHRhYmxlcyBhbG9uZyB3aXRoIHRoZSBwb3dlci11cC9wb3dlci1kb3duL3Nv
ZnQtcmVzZXQgc2VxdWVuY2luZyBuZWVkZWQKPiB0byBicmluZyBlYWNoIHBvcnQgdXAuCj4gCj4g
Wy4uLl0KCkFwcGxpZWQsIHRoYW5rcyEKClsxLzJdIGR0LWJpbmRpbmdzOiBwY2k6IHFjb206IGFk
ZCBOb3JkIFBDSWUgY29udHJvbGxlciBjb21wYXRpYmxlCiAgICAgIGNvbW1pdDogMDhlN2Y1M2M3
N2M3ZmE1ZDM0ZjRjYjY5YjllZWQyNjY0Y2NjYzY3MApbMi8yXSBQQ0k6IHFjb206IEFkZCBOb3Jk
IFBDSWUgY29udHJvbGxlciBzdXBwb3J0CiAgICAgIGNvbW1pdDogMzk5ZmE1OGMzNzE1YzVhNzRh
NmZkNDY4ZGI3M2NlNzAzMTkzYzRmNwoKQmVzdCByZWdhcmRzLAotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
