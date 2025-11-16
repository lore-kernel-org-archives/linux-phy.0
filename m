Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B453CEACEF
	for <linux-phy@archiver.kernel.org>; Sun, 16 Nov 2025 13:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URmjWmjK2kbZAVtT2nY3Stj9eZJvBdF+iFD8YfA7AGg=; b=16qocU9u8QxH42
	Fx+7Bd4etev018bUYbF4XML4zBPUTyukUN8UStvjtXcptX0s9mKHhAUIFWSc1k7OWP2v+XZfWPJKZ
	OJBHn3cl2IiIqRamVPgXqfGRGwImvGjkAoYUaP0qCEbixGhmjcA0hHnnMzvrWvTu/33o9kxGxCLmp
	e6e2lK7kS4AH52V4w6P/+oVVJf6tposnAN6Ow2jQlOT6rdUNY21s7rTb55ZAYrDmHiTDenWz4wSNX
	wGj6A/9XX3e2XKFlqfSEO20YuggKysQdjKE1Ilo9pef3hqOuk6M0HBT0TbTEBA7dje1+3Ha31i1F7
	Uwgd86BBsZ4kMhvTxFOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKcgo-0000000EfG8-0eQI;
	Sun, 16 Nov 2025 13:21:12 +0000
Received: from s2.avantea.pl ([46.242.128.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKcgk-0000000EfBW-2QcW;
	Sun, 16 Nov 2025 13:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=szczodrzynski.pl; s=x; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=HFF4qIvkAwehv5Tg/aWnvtUclSg9Yim0HrFAtniNGnY=; b=uLGN+3BGEu68Q6BwLAPx9ma3Pw
	RLFQV8uLIgKsI4NtaOHnQxsKMVEGjwlrrOmjbK64KegiWERnqJh7rz2GWiBGCgmMpY0dksH6FmhlZ
	/0UMMLo1l/DyCcs/zpaF6GIOTLaIzoQNejeKB5Q761mCEYyqvRUDz0jisCPw98MwzA6ugefwsqGTK
	bzohRmZvMF2Uzibg5hU6s4P6WliQiDzE8z61DaJTJ/pxqH2chHCJKAw0rF3rB+nKz7qo3yunqbGLx
	cqi0kXDU95YPTGwDFJm0Q6apEp+u3BtX+R3q8ADdQf1y1K7s3tWLwsv3HhJc4JoS66QBPY0mwHwPq
	f3qvtMlg==;
Received: from [62.171.184.96] (helo=buildhost.contaboserver.net)
	by s2.avantea.pl with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <kuba@szczodrzynski.pl>)
	id 1vKcgf-0000000FW4E-0Sdh;
	Sun, 16 Nov 2025 14:21:01 +0100
From: =?UTF-8?q?Kuba=20Szczodrzy=C5=84ski?= <kuba@szczodrzynski.pl>
To: Maxime Ripard <mripard@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	parthiban@linumiz.com,
	paulk@sys-base.io
Subject: [PATCH v2 4/6] dt-bindings: display: sun4i: Add D1s/T113 combo D-PHY bindings
Date: Sun, 16 Nov 2025 14:18:51 +0100
Message-Id: <20251116131853.440863-5-kuba@szczodrzynski.pl>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251116131853.440863-1-kuba@szczodrzynski.pl>
References: <20250221161751.1278049-1-kuba@szczodrzynski.pl>
 <20251116131853.440863-1-kuba@szczodrzynski.pl>
MIME-Version: 1.0
X-Authenticated-Id: kuba@szczodrzynski.pl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251116_052106_840979_37BE6878 
X-CRM114-Status: UNSURE (   7.62  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhlIHN1bjRpIFRDT04gbmVlZHMgYSByZWZlcmVuY2UgdG8gdGhlIEQtUEhZIGluIG9yZGVyIHRv
IHN1cHBvcnQgTFZEUwpvbiBBbGx3aW5uZXIgRDFzL1QxMTMuCgpBZGQgcGh5cyBhbmQgcGh5LW5h
bWVzIHRvIERUIGJpbmRpbmdzLgoKU2lnbmVkLW9mZi1ieTogS3ViYSBTemN6b2RyennFhHNraSA8
a3ViYUBzemN6b2Ryenluc2tpLnBsPgotLS0KIC4uLi9iaW5kaW5ncy9kaXNwbGF5L2FsbHdpbm5l
cixzdW40aS1hMTAtdGNvbi55YW1sICAgICAgICAgIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZGlzcGxheS9hbGx3aW5uZXIsc3VuNGktYTEwLXRjb24ueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2FsbHdpbm5lcixzdW40aS1hMTAtdGNv
bi55YW1sCmluZGV4IDcyNGQ5M2I5MS4uNTI1ODkzNDFmIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9hbGx3aW5uZXIsc3VuNGktYTEwLXRjb24u
eWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9hbGx3
aW5uZXIsc3VuNGktYTEwLXRjb24ueWFtbApAQCAtMTE1LDYgKzExNSwxMiBAQCBwcm9wZXJ0aWVz
OgogICAgICAgICAgIC0gY29uc3Q6IGVkcAogICAgICAgICAgIC0gY29uc3Q6IGx2ZHMKIAorICBw
aHlzOgorICAgIG1heEl0ZW1zOiAxCisKKyAgcGh5LW5hbWVzOgorICAgIGNvbnN0OiBjb21iby1w
aHkKKwogICBwb3J0czoKICAgICAkcmVmOiAvc2NoZW1hcy9ncmFwaC55YW1sIy9wcm9wZXJ0aWVz
L3BvcnRzCiAKLS0gCjIuMjUuMQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
