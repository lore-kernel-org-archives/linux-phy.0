Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9488C36014
	for <linux-phy@archiver.kernel.org>; Mon, 31 Mar 2025 20:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tdu4OouYVIIbs29Ns9ALKGZ9GI0Pb1yKRqJdMQE8B5U=; b=AypiFC+4dJ3jZm5i0HsSTyF5Le
	hxiRipJZWvZO0zBoQCI2lbj1WgIlHG4wxSLbMoZ/JEMuWiHThfKlteJlxpBbBCZfasbKAcLEkEHBx
	A6ZhgTSgOsTanSbOhuolD0Lw+MoHbo7Dvl+AFrCf5+nejOvkRFus9rHoSYr9HIqq6zMzLA9iMozGM
	n/eU4pD4/aNYKQr80Guj7cd3cyHLSkbBnBNklNagnpylkZvjn4hb9SL2tD1WlxHV1S8cOWggaMRpa
	3bA/eYfL85MIM2MHfhhaLjOfd9PEk21YClSAMEF54nrsNtTwgb6BNvY45kxwcbK5NXeSggUYXWSdd
	c7Z1u0Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzLWn-00000001I4Q-16Qh;
	Mon, 31 Mar 2025 20:14:37 +0000
Received: from 6.mo584.mail-out.ovh.net ([188.165.36.253])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzLWj-00000001I2F-1mV4
	for linux-phy@lists.infradead.org;
	Mon, 31 Mar 2025 20:14:36 +0000
Received: from director11.ghost.mail-out.ovh.net (unknown [10.108.25.249])
	by mo584.mail-out.ovh.net (Postfix) with ESMTP id 4ZRMmD5chCz1Ryg
	for <linux-phy@lists.infradead.org>; Mon, 31 Mar 2025 20:14:20 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-4mz9s (unknown [10.110.118.186])
	by director11.ghost.mail-out.ovh.net (Postfix) with ESMTPS id F374C1FD74;
	Mon, 31 Mar 2025 20:14:19 +0000 (UTC)
Received: from milecki.pl ([37.59.142.113])
	by ghost-submission-5b5ff79f4f-4mz9s with ESMTPSA
	id mP8fM5v36meqRSMABD4k1A
	(envelope-from <rafal@milecki.pl>); Mon, 31 Mar 2025 20:14:19 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-113S0072c0309d9-39e6-4a93-8cf3-8f7db1d966e4,
                    EB34EEC9BB259E122037596A09A6C3749AFF5F1D) smtp.auth=rafal@milecki.pl
X-OVh-ClientIp: 151.80.29.22
MIME-Version: 1.0
Date: Mon, 31 Mar 2025 22:14:19 +0200
From: =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
To: justin.chen@broadcom.com
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, alcooperx@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, kishon@kernel.org,
 vkoul@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: brcmstb-usb-phy: Add support for
 bcm74110
In-Reply-To: <20250327185623.3047893-3-justin.chen@broadcom.com>
References: <20250327185623.3047893-1-justin.chen@broadcom.com>
 <20250327185623.3047893-3-justin.chen@broadcom.com>
Message-ID: <4a9f8974a6d140c0aaf8d51740015b15@milecki.pl>
X-Sender: rafal@milecki.pl
X-Originating-IP: 89.151.31.88
X-Webmail-UserID: rafal@milecki.pl
X-Ovh-Tracer-Id: 17842135827268152153
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddukedtkeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeggfffhvfevufgjfhfkgihitgfgsehtkehjtddttdejnecuhfhrohhmpeftrghfrghlucfoihhlvggtkhhiuceorhgrfhgrlhesmhhilhgvtghkihdrphhlqeenucggtffrrghtthgvrhhnpeejjeekkeegjedtffffveffieevtdeuieefueffgeekheekleeiudfgleefuddtueenucfkphepuddvjedrtddrtddruddpkeelrdduhedurdefuddrkeekpdduhedurdektddrvdelrddvvddpfeejrdehledrudegvddruddufeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomheprhgrfhgrlhesmhhilhgvtghkihdrphhlpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqphhhhieslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdpoffvtefjohhsthepmhhoheekgegmpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=rFxQjhwgGjgwXR07IRfDibfTQlpNOIRjJpt1yIGy69g=;
 c=relaxed/relaxed; d=milecki.pl; h=From; s=ovhmo3028686-selector1;
 t=1743452061; v=1;
 b=RDeesNDtXOvyafrlInjkbDzdHcRboDgB/P4MQnC+B0XlRNPmbm8tgQaExL9J72OLn57yZ5Pu
 PyDluevzCh60nrq95OEzfT+dHDx+LY1nShuiRtNGeh3Li3vl4tDk9MPZYmXUDh2yHUPw0RMXyvU
 Qsu5XKIkTEQOVwI+Wgro46eOAKHqqwxH8S/Pw0YM9ZlhqrBbXSteZAG8HTFQgeJB/M/uE7Sl8XR
 OVWwU9qmDtM0c4ae4Gla/YcyehzqlgvxnlKNUBZqwyokNWWaIiXLS3u52IBHhHEfM6kkqRUSWNE
 IVTQXHcBKPLuuRCiiCyAcxFqKZ/Ax8hb1fVbYpkZ8BEKA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_131434_589820_70F72A8C 
X-CRM114-Status: GOOD (  10.73  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjAyNS0wMy0yNyAxOTo1NiwganVzdGluLmNoZW5AYnJvYWRjb20uY29tIHdyb3RlOgo+IEZy
b206IEp1c3RpbiBDaGVuIDxqdXN0aW4uY2hlbkBicm9hZGNvbS5jb20+Cj4gCj4gYmNtNzQxMTAg
YnJjbXN0YiB1c2IgcGh5IGFkZHMgZnVydGhlciBwb3dlciBzYXZpbmdzIGR1cmluZyBzdXNwZW5k
Cj4gc3RhdGVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEp1c3RpbiBDaGVuIDxqdXN0aW4uY2hlbkBi
cm9hZGNvbS5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvYnJjbSxicmNtc3RiLXVzYi1waHkueWFtbCB8IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0Cj4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L2JyY20sYnJjbXN0Yi11c2ItcGh5LnlhbWwKPiBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxicmNtc3RiLXVzYi1waHkueWFtbAo+IGluZGV4
IDU4MGZiZTM3YjM3Zi4uMmU2Njg5MzViNDU0IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxicmNtc3RiLXVzYi1waHkueWFtbAo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYnJjbSxicmNtc3RiLXVzYi1w
aHkueWFtbAo+IEBAIC0xNSw2ICsxNSw3IEBAIG1haW50YWluZXJzOgo+ICBwcm9wZXJ0aWVzOgo+
ICAgIGNvbXBhdGlibGU6Cj4gICAgICBlbnVtOgo+ICsgICAgICAtIGJyY20sYmNtNzQxMTAtdXNi
LXBoeQo+ICAgICAgICAtIGJyY20sYmNtNDkwOC11c2ItcGh5Cj4gICAgICAgIC0gYnJjbSxiY203
MjExLXVzYi1waHkKPiAgICAgICAgLSBicmNtLGJjbTcyMTYtdXNiLXBoeQoKS2VlcGluZyB0aG9z
ZSBlbnVtIGVudGlyZXMgc29ydGVkIHdvdWxkIGJlIG5pY2UgZm9yIG1haW50ZW5hbmNlLgoKLS0g
ClJhZmHFgiBNacWCZWNraQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
