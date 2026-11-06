Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C43E606A32D
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 09:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3g5iqO4Z;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=bootlin.com header.i=@bootlin.com header.a=rsa-sha256 header.s=dkim header.b=spH+nNJF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Qt8BK2JlSj1koRlPtAK73TBLVUoGM0KlcJaytrpBA5s=; b=3g5iqO4ZmoywZPpImUn/4D62V5
	bWcuxhHOGRcxpeY83ZzNxAg9H4XW9gM+lTsBlcSU9gXjP716mZMZ+jlcn6lx2nPxFvIEkRt8I5Aw3
	n/8wIyWT0gQ1AmA194hi1Tyb6j+NHyYE7OLT1fQax25WmnscG3VYiuepAg2TW50+zaD1TMNGqSdG/
	lP0IgdQaAjbl1dObaEq0ceXoUU2lbJzWqBSCQqVpJz5nWkp0WMVWDY6nnHgt+b//n0MGU0qyFb9Rq
	LcUK7vrElQPcA75NgWzdAL7udzfVONAB7lgjh71RbzJOJZ3IbMCRi793kVTjcIyxpB4RMSLOvYVx0
	naDFVclQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGIT-0000000BiRA-478b;
	Fri, 06 Nov 2026 09:31:45 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGIR-0000000BiNz-2Y0w
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 09:31:44 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 21045C69168;
	Fri,  6 Nov 2026 09:31:41 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 8FF2F5FFBC;
	Fri,  6 Nov 2026 09:31:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id AFC16103292D3;
	Fri,  6 Nov 2026 10:31:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1793957498; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=2RPHFJlKoNUsrHhH8iiJsLuk3l1owV1sHk6Qha4yz5k=;
	b=spH+nNJFFWCk19pHQNFzeMXVYdz39HUw/xGPcL2RmGUcas8FWu/FrKGp1YJWp9pAkfBrTN
	Xz/J0Wdrfh+ohhqZXFioP2ukCpe9BcRFbRmuHpvu1qgkN86CxlD3rlMZJF8aU7fKPOvlyX
	+AlqvA2YrULh37P1M0A3dvotE5JfL1qA/b9gDf1ohphSrOV172IJGPq0AGQOfkj0I5E+6u
	J8hwOYXy6k6/Up48ENjrEujiKWFOpQ9q52jFEQtxzwZ5Ap5g6WZq9JOFlRBeXNlv/PINvb
	H5QhvvrS1vTNsBfbvuryQ7ZsEGN4hEgVNsbTxmz2AAzX/5OGCYVapPgZicX3nw==
From: =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>
Date: Fri, 06 Nov 2026 10:30:06 +0100
Subject: [PATCH 09/25] dt-bindings: timer: andestech,plmt0: add Metanoia
 MT2824
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-mt2824-v1-9-86087eaf5af4@bootlin.com>
References: <20261106-mt2824-v1-0-86087eaf5af4@bootlin.com>
In-Reply-To: <20261106-mt2824-v1-0-86087eaf5af4@bootlin.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jun Chang <jun.chang@metanoia-comm.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Sebastian Reichel <sre@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Conor Dooley <conor@kernel.org>, 
 Jonathan Cameron <jic23@kernel.org>, 
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
 Thomas Gleixner <tglx@kernel.org>, Radu Rendec <radu@rendec.net>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Ben Zong-You Xie <ben717@andestech.com>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Ulf Hansson <ulfh@kernel.org>, 
 Jisheng Zhang <jszhang@kernel.org>, CL Wang <cl634@andestech.com>, 
 Mark Brown <broonie@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, Adrian Hunter <adrian.hunter@intel.com>, 
 Minas Harutyunyan <hminas@synopsys.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Randolph_Sheng-Kai_Lin=28=E6=9E=97=E8=81=96=E5=87=B1=29?= <randolph@andestech.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-pm@vger.kernel.org, 
 linux-phy@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>, 
 linux-mmc@vger.kernel.org, linux-spi@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-watchdog@vger.kernel.org, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>
X-Mailer: b4 0.16.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_013143_818936_DA57BB2D 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
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

VGhlIE1ldGFub2lhIE1UMjgyNCBpbnRlZ3JhdGVzIHRoZSBBbmRlcyBQTE1UMCB0aW1lci4gQWRk
IGl0cyBjb21wYXRpYmxlCnN0cmluZywgd2l0aCBhbmRlc3RlY2gscGxtdDAgYXMgYSBmYWxsYmFj
ay4KCk9yaWdpbmFsbHktYnk6IEp1biBDaGFuZyA8anVuLmNoYW5nQG1ldGFub2lhLWNvbW0uY29t
PgpTaWduZWQtb2ZmLWJ5OiBCZW5vw650IE1vbmluIDxiZW5vaXQubW9uaW5AYm9vdGxpbi5jb20+
Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RpbWVyL2FuZGVzdGVjaCxw
bG10MC55YW1sIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGltZXIvYW5kZXN0ZWNoLHBs
bXQwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGltZXIvYW5kZXN0
ZWNoLHBsbXQwLnlhbWwKaW5kZXggOTBiNjEyMDk2MDA0Li5iMzMzNTBjZjQzYTUgMTAwNjQ0Ci0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aW1lci9hbmRlc3RlY2gscGxt
dDAueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGltZXIvYW5k
ZXN0ZWNoLHBsbXQwLnlhbWwKQEAgLTIxLDYgKzIxLDcgQEAgcHJvcGVydGllczoKICAgICBpdGVt
czoKICAgICAgIC0gZW51bToKICAgICAgICAgICAtIGFuZGVzdGVjaCxxaWxhaS1wbG10CisgICAg
ICAgICAgLSBtZXRhbm9pYSxtdDI4MjQtcGxtdAogICAgICAgLSBjb25zdDogYW5kZXN0ZWNoLHBs
bXQwCiAKICAgcmVnOgoKLS0gCjIuNTYuMAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
