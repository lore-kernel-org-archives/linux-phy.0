Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E02606A31A
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 16:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=V+q/i4E/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=PdHFQmJf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=n3ov4/HFEJENP7bZYI0j3GhBbjYnxhzVdmu6QRVrx3A=; b=V+q/i4E/jysq9NtxL5eXAW5+Ja
	eXm4gAQzzKSqWwTuywP92yn7xyM12E2MSrF4H8s65foqf/IlVxq+EO3mgSmduE6nYH8/tWnxTfWfn
	Z/GwgV2L+7X2TUczp/63sU1fX44+6SzOxbEK98yf17D7mTqtmdLn8BWhcR95k1+SRC5m087/BTPnm
	pbS5EdKeeCdYwHDP4AljgcT8xjOExYdgAs+CJ2ikf+GenhCSgnNwGxTZY3/SNRTNi7YCwTIURYAT3
	b1nGPXjQHGAHHDfK/6cfMB+5/2nbWgvl1+UB7Ww8oemQa4kQCln9pxs4UWbLxx0FkbOXyOWA9D47z
	HvCJWzzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKIaL-0000000Ghu0-0GwD;
	Fri, 23 Oct 2026 16:57:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKIaF-0000000Ghth-2bwX
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 16:57:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A5ED16022B;
	Fri, 23 Oct 2026 16:57:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6D981F01828;
	Fri, 23 Oct 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792774654;
	bh=XMTCkRB6/oZCpA/BF1LpraKM3Sr+19d1vEnhPR1DA+8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PdHFQmJfF5RNKaWU/QqGgCX5mbCoa6OiGUERHFyzp5q/jZ7UXFahzet/C690DJwap
	 JnQof5G3MCgFKN3YU3zmw95nw5Balrm+qecO5oecxE3KMB/ue1Z1miV21OdBj2xmiK
	 fwF4VnYtKSLdkcnlv3sdMqZPTVokCHxM9mm38crrVpaGrwUMgnQ6fKOujtjS9kWliu
	 ygIF3Egmksb2VdSL8p1Y5Hj6qAzENP1zgS7FIIDTkiD++/f8NIoE1mpzIO7KXenxwp
	 25OaJjWON2S5q//QODHoDoeIgKn8VJWGJ7nEsbksEUZvB2Ify5fC/vlCdLezGvOpH0
	 yUGRCMYsNM94A==
Message-ID: <sashiko-outbox-182975@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/7] arm64: dts: qcom: sm8450: Add CSI2 PHY device tree
 nodes
To: "Vladimir Zapolskiy" <vz@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, media-ci@linuxtv.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261023163057.775917-3-vz@kernel.org>
References: <20261023163057.775917-1-vz@kernel.org>
 <20261023163057.775917-3-vz@kernel.org>
Date: Fri, 23 Oct 2026 16:57:33 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gYXJtNjQ6IGR0czogcWNv
bTogc204NDUwOiBjb2RlbmFtZSBjb21wYXRpYmxlIHVzZWQgZm9yIGNzaXBoeSBub2RlcwotLQoK
Y29tbWl0IDBjN2M5NzdkNjUwMDMyMmM4ZDA2ODE1ZTA2ZTQ2ODYyMDkyZjNmYzUKQXV0aG9yOiBW
bGFkaW1pciBaYXBvbHNraXkgPHZ6QGtlcm5lbC5vcmc+Cgphcm02NDogZHRzOiBxY29tOiBzbTg0
NTA6IEFkZCBDU0kyIFBIWSBkZXZpY2UgdHJlZSBub2RlcwoKVGhpcyBjb21taXQgYWRkcyBzaXgg
Q0FNU1MgQ1NJUEhZIGRldmljZSB0cmVlIG5vZGVzIGFuZCBhIHNoYXJlZCBDU0lQSFkgT1BQCnRh
YmxlIGZvciB0aGUgUXVhbGNvbW0gU004NDUwIChXYWlwaW8pIFNvQy4KCj4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTg0NTAuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9zbTg0NTAuZHRzaQo+IGluZGV4IGI4NzkzNDgyYjE4MTUuLmI3MGE4NjM1YzZiZTgg
MTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODQ1MC5kdHNpCj4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODQ1MC5kdHNpCgpbIC4uLiBdCgo+IEBAIC0z
Mjk4LDYgKzMzMTQsMjcwIEBAIGNjaTFfaTJjMTogaTJjLWJ1c0AxIHsKPiAgCQkJfTsKPiAgCQl9
Owo+ICAKPiArCQljc2lwaHkwOiBwaHlAYWNlNDAwMCB7Cj4gKwkJCWNvbXBhdGlibGUgPSAicWNv
bSx3YWlwaW8tY3NpMi1waHkiLCAicWNvbSx4MWU4MDEwMC1jc2kyLXBoeSI7CgpbU2V2ZXJpdHk6
IExvd10KU2hvdWxkIGNzaXBoeTAgdGhyb3VnaCBjc2lwaHk1IGluIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9zbTg0NTAuZHRzaSAoYW5kCnRoZSBjb3JyZXNwb25kaW5nIGJpbmRpbmcgaW4KRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHgxZTgwMTAwLWNzaTItcGh5
LnlhbWwpIHVzZSB0aGUKU29DIG1vZGVsLW51bWJlciBjb21wYXRpYmxlICJxY29tLHNtODQ1MC1j
c2kyLXBoeSIgaW5zdGVhZCBvZiB0aGUgaW50ZXJuYWwKY29kZW5hbWUgInFjb20sd2FpcGlvLWNz
aTItcGh5Ij8KCkluIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcWNvbS55
YW1sLCB0aGUgY2Fub25pY2FsIFNvQwpjb21wYXRpYmxlIGZvciBXYWlwaW8gaXMgInFjb20sc204
NDUwIiwgYW5kCkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcWNvbS1zb2Mu
eWFtbCBzcGVjaWZpZXMgdGhhdCBTb0NzCm51bWJlcmVkIHdpdGggc21bMC05XSsgdXNlICJxY29t
LHNtPG51bWJlcj4tKiIgZm9yIGNvbXBvbmVudCBjb21wYXRpYmxlcywKd2hpbGUgY29kZW5hbWUt
YmFzZWQgY29tcGF0aWJsZXMgYXJlIHJlc2VydmVkIGZvciB0aGUgbmV3ZXIgY29kZW5hbWUtb25s
eQpTb0NzOgoKICAgICAgICAjIFByZWZlcnJlZCBuYW1pbmcgc3R5bGUgZm9yIGNvbXBhdGlibGVz
IG9mIFNvQyBjb21wb25lbnRzOgogICAgICAgIC0gcGF0dGVybjogIl5xY29tLChhcHF8aXBxfG1k
bXxtc218cWNtfHFjc3xxW2RyXXV8c2F8c2N8c2RbYW14XXxzbXx4MVtlcF0pWzAtOV0rKHBybyk/
LS4qJCIKICAgICAgICAtIHBhdHRlcm46ICJecWNvbSxzYXJbMC05XStbYS16XT8tLiokIgogICAg
ICAgIC0gcGF0dGVybjogIl5xY29tLChzYXxzYyk4WzAtOV0rW2Etel1bYS16XT8tLiokIgogICAg
ICAgIC0gcGF0dGVybjogIl5xY29tLChlbGl6YXxrYWFuYXBhbGl8Z2x5bXVyfGhhd2l8bWFodWF8
bWFpbGl8bWlsb3N8bm9yZHxzaGlrcmEpLS4rJCIKCkFsbCBvdGhlciBTb0Mtc3BlY2lmaWMgYmxv
Y2tzIGluIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTg0NTAuZHRzaSwKaW5jbHVkaW5nIHRo
ZSBjYW1lcmEgc3Vic3lzdGVtIG5vZGVzIGNhbWNjICgicWNvbSxzbTg0NTAtY2FtY2MiKSBhbmQK
Y2NpMC9jY2kxICgicWNvbSxzbTg0NTAtY2NpIikgYXMgd2VsbCBhcyBhbGwgb3RoZXIgUEhZIG5v
ZGVzLCBmb2xsb3cgdGhlCiJxY29tLHNtODQ1MC0qIiBuYW1pbmcgY29udmVudGlvbi4KCi0tIApT
YXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjEw
MjMxNjMwNTcuNzc1OTE3LTEtdnpAa2VybmVsLm9yZz9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
