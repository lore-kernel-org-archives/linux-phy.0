Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0927C60A3803
	for <linux-phy@archiver.kernel.org>; Wed, 21 Oct 2026 17:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LHqalcnJ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=VVekNWmS;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256 header.s=dkimrelay header.b=NDLGehXr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmGQPmvIavnt+aLnyBOZYy6GKqySpzZ+u7YK381MqDQ=; b=LHqalcnJK5NoFZ
	rQscgV0OT3MBcYQiF4kRlzLnhLKmyI9Xy1FfVbOC1QWFGWBIF0Hih2MsB9pb0gJ5f3rqI2isxOlbz
	7UCxGW35AH8cowFm2S9D8rbL0Vb8feGhzGlds7cedHfUnWj3Eo3kVCCsABHJJ45ZnNtcd37gJr7it
	r54c7mMU9TW1VwVORaRzH6d1RmBnbs9a3mCISsAkETjpFFR/qPwmLE66Bn0aCujIssLZz2Fydr3sx
	lKEgEfMerNaVKGJ7TAbIDfBxO/ya1o44aBepGp2VokLHVH+S2d+o/XVAX1q84Y50H7rtMqLXlHKwd
	7OEGExStSGBecwASuW/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJa78-0000000CYAX-3Gsw;
	Wed, 21 Oct 2026 17:28:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJa74-0000000CY7r-18bY;
	Wed, 21 Oct 2026 17:28:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=ZdsRy3FdNj9Kswl3REe6DGR89Sl6i9oOncs6NvWhlhI=; b=VVekNWmS6fv3O3cw8TIV1k+381
	C6DikXGkd3pgeU3TRlQS0WUC2m7H9IRHETCYniaXOwBFXnj9T6L+MBRzSznZlC9tFgNHoNG8+GmB6
	E8MEeTLZoSV5u2RZ7dw/0yNSJiWrtziaqeJLvglBUoQsTFTTBMXbI+IVUJBLDZGxzbP+dT86VAdIK
	TfSzE8EYOU6BK0dBm8mG3bqe2Bq8VOTi08pFnN5KI+bAoRl23xuiq7pOKmSf9IsStXXvPXmbEL8KO
	e/5XkKarLz7tu4RST4wLb0qR4fDDnuOq/i3a4VoOofxYCEiqJUAMRKnfJvqkhlONeDkOaGMv5C+7w
	/AP9x+1w==;
Received: from relay.smtp-ext.broadcom.com ([192.19.144.205])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xJa71-000000064sg-15OD;
	Wed, 21 Oct 2026 17:28:29 +0000
Received: from mail-acc-it-01.broadcom.com (mail-acc-it-01.acc.broadcom.net [10.35.36.83])
	by relay.smtp-ext.broadcom.com (Postfix) with ESMTP id 6F7EAC0003DA;
	Wed, 21 Oct 2026 10:28:25 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 relay.smtp-ext.broadcom.com 6F7EAC0003DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
	s=dkimrelay; t=1792603705;
	bh=FtqWf2DPt79qNMVOTUeCCsa1564XmuQp15xUpDs450I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NDLGehXrkry6eXTAIRQNMA8nxMTkQq0yzevWo0m07xo2UhCstGiPHLXmUIOsqfXGG
	 I/+lG7M+N/lQZ0/zuKsgZfpajrtZR0/88GlnAxSDWWuAOT9oF3HhJxgpJBF3jpqmAU
	 /us/ByY8Wa7wOwOPAwS8FH2SJ/YMqU6V0Lqsn1ks=
Received: from fainelli-desktop.igp.broadcom.net (fainelli-desktop.dhcp.broadcom.net [10.67.48.245])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail-acc-it-01.broadcom.com (Postfix) with ESMTPSA id 0DDD9AEA2;
	Wed, 21 Oct 2026 13:28:23 -0400 (EDT)
From: Florian Fainelli <florian.fainelli@broadcom.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list),
	linux-usb@vger.kernel.org (open list:USB SUBSYSTEM)
Subject: [PATCH 2/9] dt-bindings: phy: bcm-ns-usb3-phy: Describe the NSP variant
Date: Wed, 21 Oct 2026 10:28:11 -0700
Message-ID: <20261021172819.668120-3-florian.fainelli@broadcom.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261021172819.668120-1-florian.fainelli@broadcom.com>
References: <20261021172819.668120-1-florian.fainelli@broadcom.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_182827_500310_5BD1FCA2 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -1.2 (-)
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Tm9ydGhzdGFyIFBsdXMgdXNlcyB0aGUgTm9ydGhzdGFyIEJ4IFBIWSByZWdpc3RlciBzZXF1ZW5j
ZSBidXQgYWxzbwpyZXF1aXJlcyBjb29yZGluYXRlZCBVU0IyIGFuZCBVU0IzIGNvcmUgcmVzZXRz
IGFuZCBhIFVTQjIgSURNIGludGVyZmFjZQpjbG9jayBlbmFibGUuCgpBZGQgYW4gTlNQIGNvbXBh
dGlibGUgd2l0aCBhIHJlcXVpcmVkIFVTQjIgRE1QIHBoYW5kbGUuIERlc2NyaWJlIHRoZQpzaGFy
ZWQgUEhZIHJlbGF0aW9uc2hpcCB3aXRoIEVIQ0ksIE9IQ0kgYW5kIHhIQ0kgc28gaW5pdGlhbGl6
YXRpb24KZmluaXNoZXMgYmVmb3JlIGFueSBob3N0IHN0YXJ0cyBvcGVyYXRpbmcuCgpTaWduZWQt
b2ZmLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmbG9yaWFuLmZhaW5lbGxpQGJyb2FkY29tLmNvbT4K
LS0tCiAuLi4vYmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBoeS55YW1sICAgICAgICAgfCAyMyAr
KysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVz
YjMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1u
cy11c2IzLXBoeS55YW1sCmluZGV4IDdmZDQxOWRiNDVkMC4uMDBkNjliODZjYmZmIDEwMDY0NAot
LS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IzLXBo
eS55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5z
LXVzYjMtcGh5LnlhbWwKQEAgLTE0LDYgKzE0LDkgQEAgZGVzY3JpcHRpb246IHwKICAgS25vd24g
QjE6IEJDTTQ3MDcgcmV2IDYKICAgS25vd24gQzA6IEJDTTQ3MDk0IHJldiAwCiAKKyAgTm9ydGhz
dGFyIFBsdXMgdXNlcyB0aGUgQnggcHJvZ3JhbW1pbmcgc2VxdWVuY2UsIHdpdGggY29vcmRpbmF0
ZWQgVVNCMiBhbmQKKyAgVVNCMyByZXNldHMuIEl0cyBQSFkgaXMgc2hhcmVkIGJ5IHRoZSBFSENJ
LCBPSENJIGFuZCB4SENJIGNvbnRyb2xsZXJzLgorCiBtYWludGFpbmVyczoKICAgLSBSYWZhxYIg
TWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+CiAKQEAgLTIyLDYgKzI1LDcgQEAgcHJvcGVydGll
czoKICAgICBlbnVtOgogICAgICAgLSBicmNtLG5zLWF4LXVzYjMtcGh5CiAgICAgICAtIGJyY20s
bnMtYngtdXNiMy1waHkKKyAgICAgIC0gYnJjbSxuc3AtdXNiMy1waHkKIAogICByZWc6CiAgICAg
ZGVzY3JpcHRpb246IGFkZHJlc3Mgb2YgTURJTyBidXMgZGV2aWNlCkBAIC0zMiw2ICszNiwxMyBA
QCBwcm9wZXJ0aWVzOgogICAgIGRlc2NyaXB0aW9uOgogICAgICAgUGhhbmRsZSB0byB0aGUgRE1Q
IChEZXZpY2UgTWFuYWdlbWVudCBQbHVnaW4pIHN5c2NvbgogCisgIHVzYjItZG1wLXN5c2NvbjoK
KyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCisgICAg
ZGVzY3JpcHRpb246CisgICAgICBQaGFuZGxlIHRvIHRoZSBVU0IyIERNUCBvbiBOb3J0aHN0YXIg
UGx1cywgZm9yIGl0cyBpbnRlcmZhY2UgY2xvY2sgYW5kCisgICAgICByZXNldC4gQWxsIFVTQiBo
b3N0IGNvbnRyb2xsZXJzIG11c3QgcmVmZXJlbmNlIHRoaXMgc2hhcmVkIFBIWSBzbyB0aGF0Cisg
ICAgICBpbml0aWFsaXphdGlvbiBjb21wbGV0ZXMgYmVmb3JlIGFueSBvZiB0aGVtIHN0YXJ0cyB1
c2luZyBpdC4KKwogICAiI3BoeS1jZWxscyI6CiAgICAgY29uc3Q6IDAKIApAQCAtNDEsNiArNTIs
MTggQEAgcmVxdWlyZWQ6CiAgIC0gdXNiMy1kbXAtc3lzY29uCiAgIC0gIiNwaHktY2VsbHMiCiAK
K2FsbE9mOgorICAtIGlmOgorICAgICAgcHJvcGVydGllczoKKyAgICAgICAgY29tcGF0aWJsZToK
KyAgICAgICAgICBjb25zdDogYnJjbSxuc3AtdXNiMy1waHkKKyAgICB0aGVuOgorICAgICAgcmVx
dWlyZWQ6CisgICAgICAgIC0gdXNiMi1kbXAtc3lzY29uCisgICAgZWxzZToKKyAgICAgIHByb3Bl
cnRpZXM6CisgICAgICAgIHVzYjItZG1wLXN5c2NvbjogZmFsc2UKKwogYWRkaXRpb25hbFByb3Bl
cnRpZXM6IGZhbHNlCiAKIGV4YW1wbGVzOgotLSAKMi41My4wCgoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
