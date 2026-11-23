Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8BA606A31E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 14:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4CyO86ed;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=b0Pa1QP0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=zakirKc/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bh/NOCQFzOpmGlB+KotMKMd8+uZpcBlGEooncfMjFrk=; b=4CyO86edgfL6qQhsq+LZLfxeyk
	83U5HJV58ceDa7DCjYcwcjF7UuNPPtgX3Ttkj2JD3EkNMCwb8KQsQRYozrXanL8QAeDkVrUrcTRZi
	ZxVelOunpgT3bmEenCMOeUtpaOw8Ja7d035Jf6e4HeLVGiral2xH3dTqlsDix6o+F3p2nVkWeuVdC
	Icrjz79/17NlLZm8owawAsGOaEKXO52zXYs/jtuo+8u5y4otK9A++3bM1RpKyglpRRiDIYtEPfbS/
	UtZLuAHljzZhH9BykSFosTID/eOuiI96Td/8ER6r4o4smwVUmcsuaZexfQXtqoDBHgNmOzNQ5iayj
	TqicqU/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVUzj-00000003jr2-3OYZ;
	Mon, 23 Nov 2026 14:26:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVUzd-00000003jlm-3uEb
	for linux-phy@bombadil.infradead.org;
	Mon, 23 Nov 2026 14:26:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=AbBHRaOVrs4oNPVZha/XJgVq6qZj1LS6Zw3LSu9DhIg=; b=b0Pa1QP0bFcmiAechIubnOktnp
	4CjkJHRApAXhUyuHduWbdnoZ4wlSLnoQ5qXAd3MAfIDYPGGH/NtfQhxv2ucucdlh3xP2NimA6QeHT
	2EV+EZuu6Iiraok6OSWKFUlGnZLPNujQRH4ZEeQ45aiCPD7REqi9VeJLkl2GwxhV74a2sRSGwmIjP
	1JT/9lbfXd8W6PYG5kW0qL5cn9uEOz+v0Pgnl5SqTlvmoiS09kxqw5eOSyVSvVFUySu3iFBzp4BMu
	49ZbC2PN1N3dC+J+geqaQTUL6jZnRJ9EvzYkgOIhrPodd7XczYe1CK9AC2mk40voWrVzhfrISzJLe
	gshCfGUA==;
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVUzY-00000003EcC-1E7F
	for linux-phy@lists.infradead.org;
	Mon, 23 Nov 2026 14:26:03 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-c4cb6834eaaso565297166b.2
        for <linux-phy@lists.infradead.org>; Mon, 23 Nov 2026 06:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795443956; x=1796048756; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AbBHRaOVrs4oNPVZha/XJgVq6qZj1LS6Zw3LSu9DhIg=;
        b=zakirKc/NHQ+4xekvq9XWwbUjVcpkzB7CwzJRFFEUmfHBAkB8+i4/f6IUJ9ceNv1kT
         osidYf2viUcyNZBx92qjPQGv9MGmGA8m571inQT9TdP/Klxd1nc7xkfiHjkrvTsZTyTi
         UvZ/RDkixSWNr4jo3du4HCKf6R4KgiP9qCJ5pT4NiAY8khGBlqqIAceKisd6F7kuQiTz
         6NCXHjSQnLXZ0hWjmLbHO28vLoeDh/HmpK8hcDRcy+4oepTiQ/5J+jAiIno3l1Fgi71M
         q3N80jEVuh/rgBZ+HVd90Q/zsq2xoWHNSXkNFUcBHp4gbpIiwsqaopjejPEZ7mxv3mJB
         s0CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795443956; x=1796048756;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AbBHRaOVrs4oNPVZha/XJgVq6qZj1LS6Zw3LSu9DhIg=;
        b=JoIGB67ECmctA2vlpCF27+Vnb2XqMUkcQOyFqmkVZNCvpurl5N31ynEJ0WcvBBCM2x
         xaXvViFC3jXXfrZ0oLAnhqELPcubb6a/ENv5H39juEGPtR3HY+Tz5IDB2tELFj3Tmxop
         E4hFEhEDoSih+8z1wjMCBTZrzKwxUXScmLhz9iqwcba9R0XkOylhD2C/vZi8zfYIfXEU
         WiiTQwOUbAgd3xAxRYP0iRULQeRQu/HosR4QlmYIQ1mchhwukrhk9rPrBX47UWxBx9CC
         Bgw88oWQpfWSYyfgH77XaIN7rl7pRO2HQNgeptRplgCwq1NcphVqRfYNNBC+6wRjvdyb
         C3dA==
X-Forwarded-Encrypted: i=1; AL+hErHfFySV9dofHK/BR4K8Z4L4J4yeO8J+A5BzVUwPKmt0sM3casF4lvRk2zqYuMdOAvaHZ4RZX//llk0=@lists.infradead.org
X-Gm-Message-State: APuU4Z8611KY4ZtDiExvUlysFh7l+Ul7N3pGL308yL3vjw5PX0PdS3L6
	EK8VsxJIt7T4A0tmxRoCMJ0XQCApuCLMmjPimI34VQhpWQUdIR453Jf/hInn30JyB3U=
X-Gm-Gg: AZFdTZdIr4qQmBCZ+82g1raciHvyT2DTbjJIdtRZo7yF6XfTQdUEl9KKrwmUddZWza/
	DkJszusv+Wul/M8F8mHC0+Ge3V58je+5HN7ThdnPHbtyZNAhdrHg2p/ByN/w099INquxSNMBpud
	Ou865p+dNjC0+Salzq/m41ta0I3tn6/hQVZUpglqhNNK/SQjZdOpM6QTZeU7RgzIpofIulcn2FF
	pd5DIbE3yB7bNu7YbModcXRQQlUuzJZ4Pg9H6pN5mDjrAD8/NEI6fq3FaAghxfl67NxIqVDjM0T
	GNEpZTRWjtim8Zc5EvCmWYVt9bxWn+X1fjUP0zf7w/iXEoxSGJm7Xr9NuCP/4n2ZcGGGfqVuFWA
	xzfk4J8a6tiU83/DpqxqsYvis1pYtw29L5cN/LPu7kdCG50lobGFZB/Il+Lu0Eyr/BpX3QSsMJ9
	Fupjht2zxLDddM9QuLY3xdco8rB7HO7DER0Lf5N5DPgommBCRUnnbwlC3WP68mYMqehVZTW/RC1
	v1qQDRi5pqy2Mnwn6V80vn35tlXE7ivKWLACI5GZA7DqtKqdOJzqa4UiItrZHuWGSEmZQkvl1EX
	bwSthI2Wt5awnbY3EONPEryuFjw8g7XEN6jHAogcTlh7gzh+jxo5ptfN94acsb0U976cpNpKoKN
	eGiNNBu9Ryj4v1+w3tg==
X-Received: by 2002:a17:906:8cc:b0:c50:933a:e12f with SMTP id a640c23a62f3a-c513a8669bamr567298066b.27.1795443956033;
        Mon, 23 Nov 2026 06:25:56 -0800 (PST)
Received: from puffmais2.c.googlers.com (226.124.90.34.bc.googleusercontent.com. [34.90.124.226])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c513ae67cbfsm428224366b.14.2026.11.23.06.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 06:25:55 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 23 Nov 2026 14:25:54 +0000
Subject: [PATCH v2 1/2] phy: exynos5-usbdrd: gs101: re-init PIPE3 on
 orientation change
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261123-gs101-usb-phy-orientation-v2-1-3361fa5f7543@linaro.org>
References: <20261123-gs101-usb-phy-orientation-v2-0-3361fa5f7543@linaro.org>
In-Reply-To: <20261123-gs101-usb-phy-orientation-v2-0-3361fa5f7543@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 RD Babiera <rdbabiera@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, phone-devel@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_142601_963073_0B44E52A 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -0.2 (/)
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

VGhlIFNTIGxhbmUgbXV4IG9uIGdzMTAxIGlzIHByb2dyYW1tZWQgb25seSB3aGVuIHRoZSBQSVBF
MyBwaHkgaXMKaW5pdGlhbGl6ZWQsIGJhc2VkIG9uIHRoZSBUeXBlLUMgb3JpZW50YXRpb24ga25v
d24gYXQgdGhhdCB0aW1lLgpUaGUgb3JpZW50YXRpb24gc3dpdGNoIGNhbGxiYWNrIGp1c3Qgc3Rv
cmVzIHRoZSBuZXcgb3JpZW50YXRpb24gYW5kCnJlbGllcyBvbiB0aGUgVVNCIGNvbnRyb2xsZXIg
dG8gZXhpdCBhbmQgcmUtaW5pdGlhbGl6ZSB0aGUgcGh5LCB3aGljaApvbmx5IGhhcHBlbnMgaWYg
RFdDMyBlbnRlcnMgcnVudGltZSBzdXNwZW5kLgoKSWYgYSBjYWJsZSBpcyBjb25uZWN0ZWQgZHVy
aW5nIGJvb3QsIHRoZSBwaHkgaXMgaW5pdGlhbGl6ZWQgYmVmb3JlIHRoZQpUQ1BDIHJlcG9ydHMg
dGhlIG9yaWVudGF0aW9uIChlLmcuIH40LjBzIHZzLiB+NS4zcyBvbiBQaXhlbCA2KSwgc28gdGhl
CmxhbmVzIGFyZSBwcm9ncmFtbWVkIGZvciBUWVBFQ19PUklFTlRBVElPTl9OT05FLCBpLmUuIGFz
IGlmIHJldmVyc2VkLgpEV0MzIGRvZXNuJ3QgcnVudGltZSBzdXNwZW5kIHdoaWxlIHRoZSBjYWJs
ZSBzdGF5cyBjb25uZWN0ZWQgKGFuZApydW50aW1lIFBNIGlzIGZvcmJpZGRlbiBieSBkZWZhdWx0
IGFueXdheSksIHNvIHRoZSBwaHkgaXMgbmV2ZXIKcmUtaW5pdGlhbGl6ZWQgYW5kIHRoZSBsaW5r
IGNvbWVzIHVwIGluIGhpZ2gtc3BlZWQgb25seS4KClJlLXJ1biB0aGUgUElQRTMgaW5pdCBmcm9t
IHRoZSBvcmllbnRhdGlvbiBzd2l0Y2ggY2FsbGJhY2sgaWYgdGhlClBJUEUzIHBoeSBpcyBpbml0
aWFsaXplZCBhbmQgaXRzIGxhbmVzIGFyZSBwcm9ncmFtbWVkIGZvciB0aGUgb3RoZXIKb3JpZW50
YXRpb24uIFJld3JpdGluZyB0aGUgbGFuZSBtdXggcmVnaXN0ZXJzIGFsb25lIGlzbid0IHN1ZmZp
Y2llbnQsCnRoZSBsaW5rIHN0aWxsIGNvbWVzIHVwIGluIGhpZ2gtc3BlZWQgb25seSB3aXRoIHRo
YXQuIFJlLWluaXRpYWxpemUKYmVmb3JlIHNpZ25hbGxpbmcgVkJVUyB2YWxpZCwgc28gdGhhdCBE
V0MzIG9ubHkgc2VlcyBWQlVTIG9uY2UgdGhlCmxhbmVzIGFyZSByaWdodC4gQSBmYWlsdXJlIGlz
IG9ubHkgbG9nZ2VkLCBzbyB0aGF0IHRoZSBUQ1BNIHN0aWxsCmNvbmZpZ3VyZXMgdGhlIFVTQiBy
b2xlLgoKTWFyayB0aGUgUElQRTMgcGh5IGFzIGluaXRpYWxpemVkIGluIHRoZSBzYW1lIGNyaXRp
Y2FsIHNlY3Rpb24gdGhhdApwcm9ncmFtcyB0aGUgbGFuZXMsIHNvIHRoYXQgYW4gb3JpZW50YXRp
b24gY2hhbmdlIGNhbid0IGdldCBsb3N0IGluCmJldHdlZW4uCgpBbHNvIHN0b3Agc3RvcmluZyBU
WVBFQ19PUklFTlRBVElPTl9OT05FIG9uIHVucGx1Zywgc28gdGhhdCB0aGUgc3RvcmVkCm9yaWVu
dGF0aW9uIGFsd2F5cyBkZXNjcmliZXMgdGhlIGxhbmVzOiB3aGlsZSB0aGUgUElQRTMgcGh5IGlz
CmluaXRpYWxpemVkLCB0aGV5IHN0YXkgcHJvZ3JhbW1lZCBmb3IgaXQsIGFuZCB3aGVuIHRoZSBw
aHkgaXMKaW5pdGlhbGl6ZWQgYWdhaW4gYWZ0ZXIgcGh5X2V4aXQoKSwgd2hpY2ggZ2F0ZXMgaXRz
IHBvd2VyLCB0aGV5IGFyZQpwcm9ncmFtbWVkIGZyb20gaXQuIFRoaXMgYXZvaWRzIHJlLWluaXRp
YWxpemluZyB0aGUgUElQRTMgcGh5IHdoZW4gYQpjYWJsZSBpcyBwbHVnZ2VkIGluIGFnYWluIGlu
IHRoZSBzYW1lIG9yaWVudGF0aW9uIGFuZCB0aGUgcGh5IHN0YXllZAppbml0aWFsaXplZC4KCkNj
OiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyA2LjE1Lng6IDJlZjFlNzhlZjcyMjogcGh5OiBz
YW1zdW5nOiB1c2JkcmQ6IHByb3BhZ2F0ZSBHUzEwMSBQSVBFMyBsb2NrIGZhaWx1cmVzCkNjOiA8
c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyA2LjE1LngKRml4ZXM6IDA5ZGM2NzQyOTVhMyAoInBo
eTogZXh5bm9zNS11c2JkcmQ6IHN1YnNjcmliZSB0byBvcmllbnRhdGlvbiBub3RpZmllciBpZiBy
ZXF1aXJlZCIpClNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxp
bmFyby5vcmc+Ci0tLQogZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyB8
IDYxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNTgg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9z
YW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5
bm9zNS11c2JkcmQuYwppbmRleCAyMTg2Yjc0NWQ1OGYuLmNjYWYwZjI3YzRjOCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYworKysgYi9kcml2ZXJz
L3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCkBAIC01MDksNiArNTA5LDcgQEAgc3Ry
dWN0IGV4eW5vczVfdXNiZHJkX3BoeV9kcnZkYXRhIHsKICAqIEByZWd1bGF0b3JzOiByZWd1bGF0
b3JzIGZvciBwaHkKICAqIEBzdzogVHlwZUMgb3JpZW50YXRpb24gc3dpdGNoIGhhbmRsZQogICog
QG9yaWVudGF0aW9uOiBUeXBlQyBjb25uZWN0b3Igb3JpZW50YXRpb24gLSBub3JtYWwgb3IgZmxp
cHBlZAorICogQHBpcGUzX2luaXRpYWxpemVkOiBnczEwMSBQSVBFMyBwaHkgaXMgaW5pdGlhbGl6
ZWQgKGFuZCBub3QgaXNvbGF0ZWQpCiAgKi8KIHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgewog
CXN0cnVjdCBkZXZpY2UgKmRldjsKQEAgLTUzMiw2ICs1MzMsNyBAQCBzdHJ1Y3QgZXh5bm9zNV91
c2JkcmRfcGh5IHsKIAogCXN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdzsKIAllbnVtIHR5cGVj
X29yaWVudGF0aW9uIG9yaWVudGF0aW9uOworCWJvb2wgcGlwZTNfaW5pdGlhbGl6ZWQ7CiB9Owog
CiBzdGF0aWMgaW5saW5lCkBAIC0xNzEzLDYgKzE3MTUsOCBAQCBzdGF0aWMgaW50IGV4eW5vczVf
dXNiZHJkX2dzMTAxX3BpcGUzX2luaXQoc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSAqcGh5X2Ry
ZCkKIAl1MzIgcmVnOwogCWludCByZXQ7CiAKKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZwaHlfZHJk
LT5waHlfbXV0ZXgpOworCiAJZXh5bm9zNV91c2JkcmRfdXNiZHBfZzJfdjRfY3RybF9wbWFfcmVh
ZHkocGh5X2RyZCk7CiAKIAkvKiBmb3JjZSBhdXggb2ZmICovCkBAIC0xNzM3LDcgKzE3NDEsMTcg
QEAgc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9nczEwMV9waXBlM19pbml0KHN0cnVjdCBleHlu
b3M1X3VzYmRyZF9waHkgKnBoeV9kcmQpCiAJaWYgKHJldCkKIAkJcmV0dXJuIHJldDsKIAotCXJl
dHVybiBleHlub3M1X3VzYmRyZF91c2JkcF9nMl92NF9wbWFfY2hlY2tfY2RyX2xvY2socGh5X2Ry
ZCk7CisJcmV0ID0gZXh5bm9zNV91c2JkcmRfdXNiZHBfZzJfdjRfcG1hX2NoZWNrX2Nkcl9sb2Nr
KHBoeV9kcmQpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKKwkvKgorCSAqIFNldCB0aGlz
IHdoaWxlIHN0aWxsIGhvbGRpbmcgcGh5X211dGV4LCBzbyB0aGF0IHRoZSBvcmllbnRhdGlvbgor
CSAqIHN3aXRjaCBjYWxsYmFjayBjYW4ndCBtaXNzIGFuIG9yaWVudGF0aW9uIGNoYW5nZS4KKwkg
Ki8KKwlwaHlfZHJkLT5waXBlM19pbml0aWFsaXplZCA9IHRydWU7CisKKwlyZXR1cm4gMDsKIH0K
IAogc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9nczEwMV9waHlfaW5pdChzdHJ1Y3QgcGh5ICpw
aHkpCkBAIC0xNzgzLDYgKzE3OTcsOSBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX2dzMTAx
X3BoeV9leGl0KHN0cnVjdCBwaHkgKnBoeSkKIAkJcmV0ID0gZXh5bm9zODUwX3VzYmRyZF9waHlf
ZXhpdChwaHkpOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKKwl9IGVsc2UgeworCQlzY29w
ZWRfZ3VhcmQobXV0ZXgsICZwaHlfZHJkLT5waHlfbXV0ZXgpCisJCQlwaHlfZHJkLT5waXBlM19p
bml0aWFsaXplZCA9IGZhbHNlOwogCX0KIAogCWV4eW5vczVfdXNiZHJkX3BoeV9pc29sKGluc3Qs
IHRydWUpOwpAQCAtMTg4MCw4ICsxODk3LDQ4IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRf
b3JpZW5fc3dfc2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywKIAogCXNjb3BlZF9ndWFy
ZChtdXRleCwgJnBoeV9kcmQtPnBoeV9tdXRleCkgewogCQl2b2lkIF9faW9tZW0gKiBjb25zdCBy
ZWdzX2Jhc2UgPSBwaHlfZHJkLT5yZWdfcGh5OworCQlib29sIHJlaW5pdF9waXBlMyA9IGZhbHNl
OwogCQl1bnNpZ25lZCBpbnQgcmVnOwogCisJCS8qCisJCSAqIFRoZSBTUyBsYW5lcyBhcmUgY29u
ZmlndXJlZCBkdXJpbmcgUElQRTMgaW5pdCwgZm9yCisJCSAqIFRZUEVDX09SSUVOVEFUSU9OX05P
Uk1BTCBvciBlbHNlIGFzIHJldmVyc2VkLiBJZiB0aGUgUElQRTMKKwkJICogcGh5IGlzIGluaXRp
YWxpemVkIGFscmVhZHkgKGUuZy4gdGhlIG9yaWVudGF0aW9uIGlzIG9ubHkKKwkJICoga25vd24g
YWZ0ZXIgdGhlIFVTQiBjb250cm9sbGVyIHByb2JlZCkgYW5kIHRoZSBsYW5lcyBoYXZlCisJCSAq
IHRvIGNoYW5nZSwgaW5pdGlhbGl6ZSBpdCBhZ2FpbiwgYmVmb3JlIHNpZ25hbGxpbmcgVkJVUyB2
YWxpZAorCQkgKiB0byB0aGUgY29udHJvbGxlci4gUmV3cml0aW5nIHRoZSBsYW5lIG11eCBhbG9u
ZSBpc24ndCBlbm91Z2gKKwkJICogZm9yIHRoZSBTUyBsaW5rIHRvIGNvbWUgdXAuCisJCSAqCisJ
CSAqIFRZUEVDX09SSUVOVEFUSU9OX05PTkUgKHVucGx1ZykgaXNuJ3Qgc3RvcmVkOiB3aGlsZSB0
aGUgUElQRTMKKwkJICogcGh5IGlzIGluaXRpYWxpemVkLCBwaHlfZHJkLT5vcmllbnRhdGlvbiBp
cyB3aGF0IHRoZSBsYW5lcyBhcmUKKwkJICogcHJvZ3JhbW1lZCBmb3IsIG90aGVyd2lzZSBpdCBp
cyB3aGF0IHRoZSBuZXh0IFBJUEUzIGluaXQgd2lsbAorCQkgKiBwcm9ncmFtLgorCQkgKgorCQkg
KiBEb24ndCByZXR1cm4gYW4gZXJyb3IsIHNvIHRoYXQgdGhlIFR5cGUtQyBwb3J0IG1hbmFnZXIg
c3RpbGwKKwkJICogY29uZmlndXJlcyB0aGUgVVNCIHJvbGUuCisJCSAqLworCQlpZiAob3JpZW50
YXRpb24gIT0gVFlQRUNfT1JJRU5UQVRJT05fTk9ORSkgeworCQkJYm9vbCB3YXNfbm9ybWFsID0g
KHBoeV9kcmQtPm9yaWVudGF0aW9uID09CisJCQkJCSAgIFRZUEVDX09SSUVOVEFUSU9OX05PUk1B
TCk7CisJCQlib29sIGlzX25vcm1hbCA9IChvcmllbnRhdGlvbiA9PQorCQkJCQkgIFRZUEVDX09S
SUVOVEFUSU9OX05PUk1BTCk7CisKKwkJCXJlaW5pdF9waXBlMyA9IChwaHlfZHJkLT5waXBlM19p
bml0aWFsaXplZCAmJgorCQkJCQlpc19ub3JtYWwgIT0gd2FzX25vcm1hbCk7CisJCQlwaHlfZHJk
LT5vcmllbnRhdGlvbiA9IG9yaWVudGF0aW9uOworCQl9CisKKwkJaWYgKHJlaW5pdF9waXBlMykg
eworCQkJY29uc3Qgc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeV9jb25maWcgKmNmZyA9CisJCQkJ
cGh5X2RyZC0+cGh5c1tFWFlOT1M1X0RSRFBIWV9QSVBFM10ucGh5X2NmZzsKKworCQkJcmV0ID0g
Y2ZnLT5waHlfaW5pdChwaHlfZHJkKTsKKwkJCWlmIChyZXQpCisJCQkJZGV2X3dhcm4ocGh5X2Ry
ZC0+ZGV2LAorCQkJCQkgIkZhaWxlZCB0byByZWNvbmZpZ3VyZSBTUyBsYW5lczogJWRcbiIsCisJ
CQkJCSByZXQpOworCQl9CisKIAkJaWYgKG9yaWVudGF0aW9uID09IFRZUEVDX09SSUVOVEFUSU9O
X05PTkUpIHsKIAkJCXJlZyA9IHJlYWRsKHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfVVRNSSk7
CiAJCQlyZWcgJj0gfihVVE1JX0ZPUkNFX1ZCVVNWQUxJRCB8IFVUTUlfRk9SQ0VfQlZBTElEKTsK
QEAgLTE5MDAsOCArMTk1Nyw2IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRfb3JpZW5fc3df
c2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywKIAkJCXJlZyB8PSBIU1BfVkJVU1ZMREVY
VFNFTCB8IEhTUF9WQlVTVkxERVhUOwogCQkJd3JpdGVsKHJlZywgcmVnc19iYXNlICsgRVhZTk9T
ODUwX0RSRF9IU1ApOwogCQl9Ci0KLQkJcGh5X2RyZC0+b3JpZW50YXRpb24gPSBvcmllbnRhdGlv
bjsKIAl9CiAKIAljbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShwaHlfZHJkLT5kcnZfZGF0YS0+
bl9jbGtzLCBwaHlfZHJkLT5jbGtzKTsKCi0tIAoyLjU2LjEuNzUwLmdmNzBkYzY4MmNmLWdvb2cK
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
