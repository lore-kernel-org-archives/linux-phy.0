Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D820CD4851
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 11:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwXeg8Oa8C+oJC7T5BJ8UABUIkcdo1IJ7n06JhAU3NI=; b=1ZSQ7WayVN8MKN
	emwSqNYgRXlmqKFyJow0hYc8b33tGUpiRoYx7mHy8Uuhgxb1NNCtroE/3aYCEhXT5m56f7PffdQRc
	mXL6YE2tACwOTLZanHN9ztOULxmkgXKLHob0cPQnKRrQX05qPqtLG8avj7lbpvQQEYwmh1LfiBjZR
	zpxJOnDs0Eq/sRylhj5L7ujuluoiPBKofkFGmnX5BxD7JcyyHHmbBdk4cqNnkq1hgYbBhKa5oOEDz
	zFqt4UmiqfWuo4LTn2MtaxhZwMnAzBOa3HN0Lscy9gTaklzANetkHKR2EEjphnl/LA61FmY07rf78
	8S+k3jB23rYkjGUshelg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNqUH-000000089T7-13vG;
	Fri, 15 May 2026 11:13:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNqUE-000000089RX-3GQi
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 11:13:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D08A140D91;
	Fri, 15 May 2026 11:13:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13041C2BCB0;
	Fri, 15 May 2026 11:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778843625;
	bh=l3OiUHNTGh0X5jbyDuvo/GS8MM8Dm9XJclFXUIRGDMQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=loy/iqtQpfFDu8cDmXqNdFNpjfSRoqWFDn0PtF4tBuVkMvRvt0AkR+z6grQrHHD4Z
	 SK/A63JYp9DFcRl63jQv+9Xt9/IK4Lb+rqoH8NZR7/fcClh4UjAwaIZDbhidC110n2
	 4dcjnUT7ux8WYJTT1juWxH2MlClZ4bdZ30osFprZhGmMKs2yjhs1u9SRuY5YjXoX+6
	 dOUWFnvQT1rvu4fMQHT058lwBvAORb5/fXG0bU5J20R+/YvIAFeHRtKhcY2fE2KvHV
	 x0x/Gex5NcwJcBviBrhCNfF++wqBw465LrPYLa0rEduNECJF1LhgRXS3RcxffUZwOK
	 UBwP2QST2xAXA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/5] dt-bindings: phy: qcom,qmp-usb: Add ipq5210 USB3
 PHY
To: "Varadarajan Narayanan" <varadarajan.narayanan@oss.qualcomm.com>
Cc: conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, krzk+dt@kernel.org, vkoul@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, robh@kernel.org
In-Reply-To: <20260515-usb2phy-v1-2-5f8338d466bf@oss.qualcomm.com>
References: <20260515-usb2phy-v1-2-5f8338d466bf@oss.qualcomm.com>
Date: Fri, 15 May 2026 11:13:44 +0000
Message-Id: <20260515111345.13041C2BCB0@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_041346_843122_3EA00F1D 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIG5ldyBjb21w
YXRpYmxlIHN0cmluZyBgcWNvbSxpcHE1MjEwLXFtcC11c2IzLXBoeWAgd2FzIGFkZGVkIHRvIHRo
ZSB0b3AtbGV2ZWwgYGNvbXBhdGlibGVgIGxpc3QgYnV0IG9taXR0ZWQgZnJvbSB0aGUgYGFsbE9m
YCBjb25kaXRpb25hbCBibG9jayB0aGF0IGVuZm9yY2VzIGNsb2NrIGNvbnN0cmFpbnRzIGZvciBJ
UFEgdmFyaWFudHMuCi0tCgpjb21taXQgZWRkODQ5MTJhYmZhNGQxMDQxNGU1OWZmYmM2NDgyOWY1
NGZlNzg3MQpBdXRob3I6IFZhcmFkYXJhamFuIE5hcmF5YW5hbiA8dmFyYWRhcmFqYW4ubmFyYXlh
bmFuQG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBxY29tLHFtcC11c2I6IEFk
ZCBpcHE1MjEwIFVTQjMgUEhZCgpBZGQgZHQtYmluZGluZ3MgZm9yIFVTQjMgUEhZIGZvdW5kIG9u
IFF1YWxjb21tIGlwcTUyMTAuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXVzYjMtdW5pLXBoeS55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC11c2Iz
LXVuaS1waHkueWFtbAo+IGluZGV4IDYyM2MyZjhjN2QyMjAuLmJkYjgwMzcxZWE2ODUgMTAwNjQ0
Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4
MHhwLXFtcC11c2IzLXVuaS1waHkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvcWNvbSxzYzgyODB4cC1xbXAtdXNiMy11bmktcGh5LnlhbWwKPiBAQCAt
MTcsNiArMTcsNyBAQCBwcm9wZXJ0aWVzOgo+ICAgIGNvbXBhdGlibGU6Cj4gICAgICBlbnVtOgo+
ICAgICAgICAtIHFjb20sZ2x5bXVyLXFtcC11c2IzLXVuaS1waHkKPiArICAgICAgLSBxY29tLGlw
cTUyMTAtcW1wLXVzYjMtcGh5Cj4gICAgICAgIC0gcWNvbSxpcHE1NDI0LXFtcC11c2IzLXBoeQo+
ICAgICAgICAtIHFjb20saXBxNjAxOC1xbXAtdXNiMy1waHkKPiAgICAgICAgLSBxY29tLGlwcTgw
NzQtcW1wLXVzYjMtcGh5CgpMb29raW5nIGF0IHRoZSByZXN0IG9mIHRoaXMgZmlsZSwgdGhlIG90
aGVyIElQUSB2YXJpYW50cyBoYXZlIHNwZWNpZmljCmNsb2NrIGNvbnN0cmFpbnRzIGRlZmluZWQ6
CgphbGxPZjoKICAtIGlmOgogICAgICBwcm9wZXJ0aWVzOgogICAgICAgIGNvbXBhdGlibGU6CiAg
ICAgICAgICBjb250YWluczoKICAgICAgICAgICAgZW51bToKICAgICAgICAgICAgICAtIHFjb20s
aXBxNTQyNC1xbXAtdXNiMy1waHkKICAgICAgICAgICAgICAtIHFjb20saXBxNjAxOC1xbXAtdXNi
My1waHkKICAgICAgICAgICAgICAtIHFjb20saXBxODA3NC1xbXAtdXNiMy1waHkKICAgICAgICAg
ICAgICAtIHFjb20saXBxOTU3NC1xbXAtdXNiMy1waHkKWyAuLi4gXQogICAgdGhlbjoKICAgICAg
cHJvcGVydGllczoKICAgICAgICBjbG9ja3M6CiAgICAgICAgICBtYXhJdGVtczogNAogICAgICAg
IGNsb2NrLW5hbWVzOgogICAgICAgICAgaXRlbXM6CiAgICAgICAgICAgIC0gY29uc3Q6IGF1eAog
ICAgICAgICAgICAtIGNvbnN0OiByZWYKICAgICAgICAgICAgLSBjb25zdDogY2ZnX2FoYgogICAg
ICAgICAgICAtIGNvbnN0OiBwaXBlCgpJZiBxY29tLGlwcTUyMTAtcW1wLXVzYjMtcGh5IGlzIG9t
aXR0ZWQgZnJvbSB0aGlzIGVudW0gYXJyYXksIGl0IGJ5cGFzc2VzCnRoZXNlIHNwZWNpZmljIGNs
b2NrIGNvbnN0cmFpbnRzIGFuZCBpbnZhbGlkIGRldmljZSB0cmVlIGNvbmZpZ3VyYXRpb25zIG1p
Z2h0CnNpbGVudGx5IHBhc3Mgc2NoZW1hIHZhbGlkYXRpb24uCgpTaG91bGQgdGhpcyBuZXcgY29t
cGF0aWJsZSBzdHJpbmcgYWxzbyBiZSBhZGRlZCB0byB0aGUgYWxsT2YgY29uZGl0aW9uYWwKYmxv
Y2sgdGhhdCBlbmZvcmNlcyB0aGUgY2xvY2sgY29uc3RyYWludHMgZm9yIHRoZSBvdGhlciBJUFEg
dmFyaWFudHM/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNTE1LXVzYjJwaHktdjEtMC01ZjgzMzhkNDY2YmZAb3NzLnF1YWxjb21t
LmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
