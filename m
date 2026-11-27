Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B04606A327
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 16:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=snTRu/2a;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Cvx0brI8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4u8NeX2YMl+scslsWgHICJWHky86sOKQGJodWJYT8pM=; b=snTRu/2ahedDhyaU6rj2JYNtvB
	0ZZihG3vr3rjpNcJWn2ZpHAdzxHh5NQRlgUfaRULD3HEBG1/g7m6yT+FvHci1EHop4wXS/3qaYaM9
	Bjtjc4YYrS/vXGVmNoBFk4maTizvKCasr+1yeu8gEUqQhd0gVrXzCueNfL0eW2KX8xniBO98qhqS4
	0t+60cveEbwmLEVOu/Qg9hALmgz6ugCGYFyXYMwa6kT+nq1/4O/vt18N9Mu1//v1kPqsxjVf4P8HI
	bHgOSTP85ihdEXLL5NE3IURZsbFb5gcXNphWHhh8zyD2BBkrEMZZim0dQK7fvZEC4lsu67Jjf/y7u
	q4n+/7XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyNz-0000000GxcR-3KcL;
	Fri, 27 Nov 2026 16:01:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWyNF-0000000Gwzi-2tQG;
	Fri, 27 Nov 2026 16:00:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0E141407A2;
	Fri, 27 Nov 2026 16:00:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 112A91F000C1;
	Fri, 27 Nov 2026 16:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795795232;
	bh=hdMQHOynBJNwr8LKSNm2gWtwDuDYeFA4vOj21hSPcy4=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=Cvx0brI8+eNOiW3gWRyraep3Y/dVyJDu6O86uz1ZUmUXSEjdn1AmwZBDIF1PHduxl
	 4MGiijFvLGtGXHdaqsamDtaWLJQkUOGrlKqh8trw5PQ+s9Dbl/JYqR+/fdKQk0b0s2
	 KnybaUqfiIABt1sP3dJdB44eAoqCasFMFcB4/XhFIPudWAqDaAsG7gw7hFAiwi9C14
	 U4fx2jPJ0xHFsJbzwOwePf6JAj87/W+4r9MYKdrhhQcmzH2YpuFTELDu5v/WcQKQ39
	 fLjDqLJJQHtZPYZpElGGRx0riQMasjnpNImH3a4Ocl31+wcvvrZfpRO3WZxxAGvEah
	 C7Vo/sFppatUg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: exynos5-usbdrd: gs101: re-init PIPE3 on
 orientation change
From: Manivannan Sadhasivam <mani@kernel.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, RD Babiera <rdbabiera@google.com>, 
 Juan Yescas <jyescas@google.com>, kernel-team@android.com, 
 phone-devel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 stable@vger.kernel.org
In-Reply-To: <20261119-gs101-usb-phy-orientation-v1-1-bf3c4bbf328e@linaro.org>
References: <20261119-gs101-usb-phy-orientation-v1-1-bf3c4bbf328e@linaro.org>
Date: Fri, 27 Nov 2026 21:30:23 +0530
Message-Id: <179579522342.13164.9446157230497523223.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2251; i=mani@kernel.org;
 h=from:subject:message-id; bh=NADammu9OSZGhY7/SbAUT2FBnMbQq7XdjmIflYFSruI=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCakaht52+9QaiSNtYMVLe3tEdYBh2LRAxyq5Z
 32P4zoSZIaJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmpGgAKCRBVnxHm/pHO
 9YAzB/43msrN6YWdU/FJqkxLHEmi/GYqmazI1jqs582mdp/P1bOQvoQeSc0fvbJpjiFZ9djdcEb
 Bzr8S4ufGnecXJC2yi6XJma4ZATNorF3Dx/yO2m59aZefHMgrKcnZQweKd2EEHHQYFmBCleUsov
 KRw7L3+gShJ7yQ8aUABhEgan1lTQHOX1UXV2QCyk/nIDg79h7szJuPaDyw40lI7VpXIb+XgXm0Q
 EqsW4JluUljcEMqH3AvhM59U8aS3KGc5ieIrIy1FVm3PJfafx/FPFpa7QZDGy/b8SrNdHr4G5MZ
 qsqhMY5NVHTo42dlsbkZlkCwBLLvGRc90QDEghbTVd2KRmVb
X-Developer-Key: i=mani@kernel.org; a=openpgp;
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMjAyNi0xMS0xOSAxOToxOCArMDAwMCwgQW5kcsOpIERyYXN6aWsgd3JvdGU6Cj4gVGhlIFNT
IGxhbmUgbXV4IG9uIGdzMTAxIGlzIHByb2dyYW1tZWQgb25seSB3aGVuIHRoZSBQSVBFMyBwaHkg
aXMKPiBpbml0aWFsaXplZCwgYmFzZWQgb24gdGhlIFR5cGUtQyBvcmllbnRhdGlvbiBrbm93biBh
dCB0aGF0IHRpbWUuCj4gVGhlIG9yaWVudGF0aW9uIHN3aXRjaCBjYWxsYmFjayBqdXN0IHN0b3Jl
cyB0aGUgbmV3IG9yaWVudGF0aW9uIGFuZAo+IHJlbGllcyBvbiB0aGUgVVNCIGNvbnRyb2xsZXIg
dG8gZXhpdCBhbmQgcmUtaW5pdGlhbGl6ZSB0aGUgcGh5LCB3aGljaAo+IG9ubHkgaGFwcGVucyBp
ZiBEV0MzIGVudGVycyBydW50aW1lIHN1c3BlbmQuCj4gCj4gSWYgYSBjYWJsZSBpcyBjb25uZWN0
ZWQgZHVyaW5nIGJvb3QsIHRoZSBwaHkgaXMgaW5pdGlhbGl6ZWQgYmVmb3JlIHRoZQo+IFRDUEMg
cmVwb3J0cyB0aGUgb3JpZW50YXRpb24gKGUuZy4gfjQuMHMgdnMuIH41LjNzIG9uIFBpeGVsIDYp
LCBzbyB0aGUKPiBsYW5lcyBhcmUgcHJvZ3JhbW1lZCBmb3IgVFlQRUNfT1JJRU5UQVRJT05fTk9O
RSwgaS5lLiBhcyBpZiByZXZlcnNlZC4KPiBEV0MzIGRvZXNuJ3QgcnVudGltZSBzdXNwZW5kIHdo
aWxlIHRoZSBjYWJsZSBzdGF5cyBjb25uZWN0ZWQgKGFuZAo+IHJ1bnRpbWUgUE0gaXMgZm9yYmlk
ZGVuIGJ5IGRlZmF1bHQgYW55d2F5KSwgc28gdGhlIHBoeSBpcyBuZXZlcgo+IHJlLWluaXRpYWxp
emVkIGFuZCB0aGUgbGluayBjb21lcyB1cCBpbiBoaWdoLXNwZWVkIG9ubHkuCj4gCj4gUmUtcnVu
IHRoZSBQSVBFMyBpbml0IGZyb20gdGhlIG9yaWVudGF0aW9uIHN3aXRjaCBjYWxsYmFjayBpZiB0
aGUKPiBQSVBFMyBwaHkgaXMgaW5pdGlhbGl6ZWQgYW5kIGl0cyBsYW5lcyBhcmUgcHJvZ3JhbW1l
ZCBmb3IgdGhlIG90aGVyCj4gb3JpZW50YXRpb24uIFJld3JpdGluZyB0aGUgbGFuZSBtdXggcmVn
aXN0ZXJzIGFsb25lIGlzbid0IHN1ZmZpY2llbnQsCj4gdGhlIGxpbmsgc3RpbGwgY29tZXMgdXAg
aW4gaGlnaC1zcGVlZCBvbmx5IHdpdGggdGhhdC4gUmUtaW5pdGlhbGl6ZQo+IGJlZm9yZSBzaWdu
YWxsaW5nIFZCVVMgdmFsaWQsIHNvIHRoYXQgRFdDMyBvbmx5IHNlZXMgVkJVUyBvbmNlIHRoZQo+
IGxhbmVzIGFyZSByaWdodC4gQSBmYWlsdXJlIGlzIG9ubHkgbG9nZ2VkLCBzbyB0aGF0IHRoZSBU
Q1BNIHN0aWxsCj4gY29uZmlndXJlcyB0aGUgVVNCIHJvbGUuCj4gCj4gTWFyayB0aGUgUElQRTMg
cGh5IGFzIGluaXRpYWxpemVkIGluIHRoZSBzYW1lIGNyaXRpY2FsIHNlY3Rpb24gdGhhdAo+IHBy
b2dyYW1zIHRoZSBsYW5lcywgc28gdGhhdCBhbiBvcmllbnRhdGlvbiBjaGFuZ2UgY2FuJ3QgZ2V0
IGxvc3QgaW4KPiBiZXR3ZWVuLgo+IAo+IEFsc28gc3RvcCBzdG9yaW5nIFRZUEVDX09SSUVOVEFU
SU9OX05PTkUgb24gdW5wbHVnLCBzbyB0aGF0IHRoZSBzdG9yZWQKPiBvcmllbnRhdGlvbiBhbHdh
eXMgZGVzY3JpYmVzIHRoZSBsYW5lczogd2hpbGUgdGhlIFBJUEUzIHBoeSBpcwo+IGluaXRpYWxp
emVkLCB0aGV5IHN0YXkgcHJvZ3JhbW1lZCBmb3IgaXQsIGFuZCB3aGVuIHRoZSBwaHkgaXMKPiBp
bml0aWFsaXplZCBhZ2FpbiBhZnRlciBwaHlfZXhpdCgpLCB3aGljaCBnYXRlcyBpdHMgcG93ZXIs
IHRoZXkgYXJlCj4gcHJvZ3JhbW1lZCBmcm9tIGl0LiBUaGlzIGF2b2lkcyByZS1pbml0aWFsaXpp
bmcgdGhlIFBJUEUzIHBoeSB3aGVuIGEKPiBjYWJsZSBpcyBwbHVnZ2VkIGluIGFnYWluIGluIHRo
ZSBzYW1lIG9yaWVudGF0aW9uIGFuZCB0aGUgcGh5IHN0YXllZAo+IGluaXRpYWxpemVkLgo+IAo+
IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnICMgNi4xNS54OiAyZWYxZTc4ZWY3MjI6IHBoeTog
c2Ftc3VuZzogdXNiZHJkOiBwcm9wYWdhdGUgR1MxMDEgUElQRTMgbG9jayBmYWlsdXJlcwo+IENj
OiBzdGFibGVAdmdlci5rZXJuZWwub3JnICMgNi4xNS54Cj4gRml4ZXM6IDA5ZGM2NzQyOTVhMyAo
InBoeTogZXh5bm9zNS11c2JkcmQ6IHN1YnNjcmliZSB0byBvcmllbnRhdGlvbiBub3RpZmllciBp
ZiByZXF1aXJlZCIpCj4gU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6
aWtAbGluYXJvLm9yZz4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2
YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
