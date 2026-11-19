Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A76606A324
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 19:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tyH3nBVO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=YCQfi5AT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=oeLJi/psOvB4vN1nuuC0ogihWFRvN9LIIZWTJc+Ujwo=; b=tyH3nBVOA/NqDbkMslSBnYBR+H
	DRpLJemDeJFRaSCnSQEsvZ1pGa9yJcst0Ownzw3bz1es6Jy4yvCbjer4BHdP72n8n/8Cbus0RTC0E
	0TWQ/kejLJfGOxsYkv3zHQdY0LwCryfcsiXEZzjN1+zaTIlbeEKClWnO7NGecrW7Pt9XCkoOxsfno
	r2rz5WLiC6yRkhKCHSoEj6ODQiMg9oY6rifwKw2gSat2qtiMLpo7dZuyvkO8Tw99DjgnKAlyh/4EE
	9v2DRpJlCpfI7oJroVtIzT6agsVvpKdyfwgiblbaHMAClRDXgfu3uIKJOqB4PjLPMY8y60J+ps2Pf
	Ru3HybJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7eI-0000000DB8y-2W8w;
	Thu, 19 Nov 2026 19:18:22 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7eC-0000000DB7Q-26tZ
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 19:18:21 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-6b894d9a075so89083a12.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Nov 2026 11:18:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1795115894; x=1795720694; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=VtOWtZ3YiekVd4GKDKB0dokNmDLbKi4y9lRQRY8pzpo=;
        b=YCQfi5AT0vXrA1rVY3c49xu0HxsxqpjH7Eqw9+K7q+X55LsNyKyvAGkxNYULFSnOth
         QfKy/7KrHp9kJoawWnNSxvmJdnDGIJfwaUSEFJeoq8PtcAcYvjmWD2+ZzT6vDj6OvCKI
         d4vQuR20TTK6LHaMaFsYuahs3PgmqPMmOMXU82w1k4g9JyQdsyBBY75aliuuxZ25opir
         b8AKybGFw2Y1u8KjlShRUvK6pP3NDhf+d2Ns3vkH+NHjuJECsJSI19GMxuhK+enaQl+x
         E5NEGyOn3da+DnLElkxFDcHthkX9knk5qHuqaY0J6re9keTHNcOoLViPMJtB9F+Wh623
         pWKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795115894; x=1795720694;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=VtOWtZ3YiekVd4GKDKB0dokNmDLbKi4y9lRQRY8pzpo=;
        b=MiwRaVZ6ztf3sNvJp4FMwEBZ2enElv0+HbzayXJyBdhkDPThavM8Usm9aNo1mNjOcP
         ovqViTZ4qtRs8oS96r4mqrIIqgfMjs/hSCC+AoWP7QqH9AVtW56OjGIBCewawkNte2Mc
         HGBHLL3ZEPyvuQFULGQwL9fC/EO7Kcl2PXu4jwl7g4eXdp2YOZCuPFUpY8duFgwvhwyz
         JA6qtWFbJCpCb6F46+PrO39iPrrgnQJOBWS0fmdlIDFawPAQQlfsP6fnHPRCpwmXHDOY
         HkMqqq3fktFQdTnCu9UkwT4coLeKCLh/fiYPGFizQh/jNdKq7vp2BrDnv7Aqm7/rfr+g
         Am4A==
X-Forwarded-Encrypted: i=1; AL+hErEQGwWdNn90n+q/brIPJg4SKNhvbLdtwAhtzPzdxqES2giZ20PSha7stu1AwZTwHXBpr4ZGh88oYFc=@lists.infradead.org
X-Gm-Message-State: APuU4Z8kqnAQa04+ieOrK1x1AHvkJMuLKigxaJs7iJ06DDGueWNgyAic
	1ITgvPQvp+ayxBkaApuosh0PCVBa1+hcsDokO0YPPT7YzM7oMMkBrkJVe3bF7HF/xVA=
X-Gm-Gg: AYBFou1XhpTSOWkgIm28PJVyMqu76v9vsoOHamdSLUuULVeSLxOr9XuDeuCiiUDcn3s
	eLi9L8t9OgUufzJhogTlJb+rcBFwGUptnFxjbnE0SqKz5JCe449sdIC7gZp7LBx13C4WDqP686a
	di84zAjbGopmkbs6871IIRVMI7DR5YMP9n2Bbt6T6i3eAVDRAYkY5uH1X7tHuLpPY4Gri4i/IKR
	9PQIgbCUhBDqZ+ncxMJPTPSj6ctE6HW1rU2VXJ4CxP8Inow01ZJQf8wo79s7NTjRqZXRq7xRBZS
	vh+/ZQAnZDPwkNxHCNaPcMZ/xce7USnuWhrFwBITM19eVeiBuS9j4gY35aoyUHpBNvPGQu4biar
	V6st/XtF3xESG4QOJnGT+2/PWB8GwlJZ41dqquosHz3tf6/0mzeNnzcwcSzFOlD2VhO5MaJw1ZG
	hafZb5qqFrcdrNOLOpfu8CAVKizoXXFqkn+BMml+i9VSvq39dbbvpyNENpB9DCp9uyqxY3AnJlt
	zlE40uK9ab2TFM6dg29XlTAkmMd0SRTSeVqsjfTG2/SCC0nqy/PGNbERbi06qR0QuPi+WwtNs1A
	3a9BGkHq1jYcOczR/dYVlzflBh7mwPgrL4FTBU1ROuywiwbHBRUWQm7u2VE7zFuKbG/Y3gLmylx
	IVw3XM/216cv8nvtH0FWbYdhOSatpvC+a1tR9AtE=
X-Received: by 2002:a05:6402:540a:b0:6b1:c5c3:9624 with SMTP id 4fb4d7f45d1cf-6ba37e75559mr319355a12.22.1795115894304;
        Thu, 19 Nov 2026 11:18:14 -0800 (PST)
Received: from puffmais2.c.googlers.com (226.124.90.34.bc.googleusercontent.com. [34.90.124.226])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6ba370cd368sm217651a12.8.2026.11.19.11.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2026 11:18:13 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 19 Nov 2026 19:18:12 +0000
Subject: [PATCH] phy: exynos5-usbdrd: gs101: re-init PIPE3 on orientation
 change
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261119-gs101-usb-phy-orientation-v1-1-bf3c4bbf328e@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHNL/2oC/x3MwQqDMAyA4VeRnA00pYjbq8gOrkvbXKo0Thziu
 xt2/A/ff4JyE1Z4dic03kVlqRbUdxDLXDOjfKzBOz8Q0QOzkiP86hvX8sPFcN3mzRSGEOOYKCT
 nHZhfGyc5/u/pdV036x4sgmsAAAA=
X-Change-ID: 20261119-gs101-usb-phy-orientation-44cc8f14f020
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
 linux-samsung-soc@vger.kernel.org, stable@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_111819_622514_3D4BD852 
X-CRM114-Status: GOOD (  20.20  )
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
OiBzdGFibGVAdmdlci5rZXJuZWwub3JnICMgNi4xNS54OiAyZWYxZTc4ZWY3MjI6IHBoeTogc2Ft
c3VuZzogdXNiZHJkOiBwcm9wYWdhdGUgR1MxMDEgUElQRTMgbG9jayBmYWlsdXJlcwpDYzogc3Rh
YmxlQHZnZXIua2VybmVsLm9yZyAjIDYuMTUueApGaXhlczogMDlkYzY3NDI5NWEzICgicGh5OiBl
eHlub3M1LXVzYmRyZDogc3Vic2NyaWJlIHRvIG9yaWVudGF0aW9uIG5vdGlmaWVyIGlmIHJlcXVp
cmVkIikKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJv
Lm9yZz4KLS0tCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwgNjEg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA1OCBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1
bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1
LXVzYmRyZC5jCmluZGV4IDIxODZiNzQ1ZDU4Zi4uY2NhZjBmMjdjNGM4IDEwMDY0NAotLS0gYS9k
cml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCisrKyBiL2RyaXZlcnMvcGh5
L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKQEAgLTUwOSw2ICs1MDksNyBAQCBzdHJ1Y3Qg
ZXh5bm9zNV91c2JkcmRfcGh5X2RydmRhdGEgewogICogQHJlZ3VsYXRvcnM6IHJlZ3VsYXRvcnMg
Zm9yIHBoeQogICogQHN3OiBUeXBlQyBvcmllbnRhdGlvbiBzd2l0Y2ggaGFuZGxlCiAgKiBAb3Jp
ZW50YXRpb246IFR5cGVDIGNvbm5lY3RvciBvcmllbnRhdGlvbiAtIG5vcm1hbCBvciBmbGlwcGVk
CisgKiBAcGlwZTNfaW5pdGlhbGl6ZWQ6IGdzMTAxIFBJUEUzIHBoeSBpcyBpbml0aWFsaXplZCAo
YW5kIG5vdCBpc29sYXRlZCkKICAqLwogc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSB7CiAJc3Ry
dWN0IGRldmljZSAqZGV2OwpAQCAtNTMyLDYgKzUzMyw3IEBAIHN0cnVjdCBleHlub3M1X3VzYmRy
ZF9waHkgewogCiAJc3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3OwogCWVudW0gdHlwZWNfb3Jp
ZW50YXRpb24gb3JpZW50YXRpb247CisJYm9vbCBwaXBlM19pbml0aWFsaXplZDsKIH07CiAKIHN0
YXRpYyBpbmxpbmUKQEAgLTE3MTMsNiArMTcxNSw4IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91c2Jk
cmRfZ3MxMDFfcGlwZTNfaW5pdChzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJkKQog
CXUzMiByZWc7CiAJaW50IHJldDsKIAorCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJnBoeV9kcmQtPnBo
eV9tdXRleCk7CisKIAlleHlub3M1X3VzYmRyZF91c2JkcF9nMl92NF9jdHJsX3BtYV9yZWFkeShw
aHlfZHJkKTsKIAogCS8qIGZvcmNlIGF1eCBvZmYgKi8KQEAgLTE3MzcsNyArMTc0MSwxNyBAQCBz
dGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX2dzMTAxX3BpcGUzX2luaXQoc3RydWN0IGV4eW5vczVf
dXNiZHJkX3BoeSAqcGh5X2RyZCkKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCi0JcmV0dXJu
IGV4eW5vczVfdXNiZHJkX3VzYmRwX2cyX3Y0X3BtYV9jaGVja19jZHJfbG9jayhwaHlfZHJkKTsK
KwlyZXQgPSBleHlub3M1X3VzYmRyZF91c2JkcF9nMl92NF9wbWFfY2hlY2tfY2RyX2xvY2socGh5
X2RyZCk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKworCS8qCisJICogU2V0IHRoaXMgd2hp
bGUgc3RpbGwgaG9sZGluZyBwaHlfbXV0ZXgsIHNvIHRoYXQgdGhlIG9yaWVudGF0aW9uCisJICog
c3dpdGNoIGNhbGxiYWNrIGNhbid0IG1pc3MgYW4gb3JpZW50YXRpb24gY2hhbmdlLgorCSAqLwor
CXBoeV9kcmQtPnBpcGUzX2luaXRpYWxpemVkID0gdHJ1ZTsKKworCXJldHVybiAwOwogfQogCiBz
dGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX2dzMTAxX3BoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkK
QEAgLTE3ODMsNiArMTc5Nyw5IEBAIHN0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRfZ3MxMDFfcGh5
X2V4aXQoc3RydWN0IHBoeSAqcGh5KQogCQlyZXQgPSBleHlub3M4NTBfdXNiZHJkX3BoeV9leGl0
KHBoeSk7CiAJCWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OworCX0gZWxzZSB7CisJCXNjb3BlZF9n
dWFyZChtdXRleCwgJnBoeV9kcmQtPnBoeV9tdXRleCkKKwkJCXBoeV9kcmQtPnBpcGUzX2luaXRp
YWxpemVkID0gZmFsc2U7CiAJfQogCiAJZXh5bm9zNV91c2JkcmRfcGh5X2lzb2woaW5zdCwgdHJ1
ZSk7CkBAIC0xODgwLDggKzE4OTcsNDggQEAgc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9vcmll
bl9zd19zZXQoc3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3LAogCiAJc2NvcGVkX2d1YXJkKG11
dGV4LCAmcGh5X2RyZC0+cGh5X211dGV4KSB7CiAJCXZvaWQgX19pb21lbSAqIGNvbnN0IHJlZ3Nf
YmFzZSA9IHBoeV9kcmQtPnJlZ19waHk7CisJCWJvb2wgcmVpbml0X3BpcGUzID0gZmFsc2U7CiAJ
CXVuc2lnbmVkIGludCByZWc7CiAKKwkJLyoKKwkJICogVGhlIFNTIGxhbmVzIGFyZSBjb25maWd1
cmVkIGR1cmluZyBQSVBFMyBpbml0LCBmb3IKKwkJICogVFlQRUNfT1JJRU5UQVRJT05fTk9STUFM
IG9yIGVsc2UgYXMgcmV2ZXJzZWQuIElmIHRoZSBQSVBFMworCQkgKiBwaHkgaXMgaW5pdGlhbGl6
ZWQgYWxyZWFkeSAoZS5nLiB0aGUgb3JpZW50YXRpb24gaXMgb25seQorCQkgKiBrbm93biBhZnRl
ciB0aGUgVVNCIGNvbnRyb2xsZXIgcHJvYmVkKSBhbmQgdGhlIGxhbmVzIGhhdmUKKwkJICogdG8g
Y2hhbmdlLCBpbml0aWFsaXplIGl0IGFnYWluLCBiZWZvcmUgc2lnbmFsbGluZyBWQlVTIHZhbGlk
CisJCSAqIHRvIHRoZSBjb250cm9sbGVyLiBSZXdyaXRpbmcgdGhlIGxhbmUgbXV4IGFsb25lIGlz
bid0IGVub3VnaAorCQkgKiBmb3IgdGhlIFNTIGxpbmsgdG8gY29tZSB1cC4KKwkJICoKKwkJICog
VFlQRUNfT1JJRU5UQVRJT05fTk9ORSAodW5wbHVnKSBpc24ndCBzdG9yZWQ6IHdoaWxlIHRoZSBQ
SVBFMworCQkgKiBwaHkgaXMgaW5pdGlhbGl6ZWQsIHBoeV9kcmQtPm9yaWVudGF0aW9uIGlzIHdo
YXQgdGhlIGxhbmVzIGFyZQorCQkgKiBwcm9ncmFtbWVkIGZvciwgb3RoZXJ3aXNlIGl0IGlzIHdo
YXQgdGhlIG5leHQgUElQRTMgaW5pdCB3aWxsCisJCSAqIHByb2dyYW0uCisJCSAqCisJCSAqIERv
bid0IHJldHVybiBhbiBlcnJvciwgc28gdGhhdCB0aGUgVHlwZS1DIHBvcnQgbWFuYWdlciBzdGls
bAorCQkgKiBjb25maWd1cmVzIHRoZSBVU0Igcm9sZS4KKwkJICovCisJCWlmIChvcmllbnRhdGlv
biAhPSBUWVBFQ19PUklFTlRBVElPTl9OT05FKSB7CisJCQlib29sIHdhc19ub3JtYWwgPSAocGh5
X2RyZC0+b3JpZW50YXRpb24gPT0KKwkJCQkJICAgVFlQRUNfT1JJRU5UQVRJT05fTk9STUFMKTsK
KwkJCWJvb2wgaXNfbm9ybWFsID0gKG9yaWVudGF0aW9uID09CisJCQkJCSAgVFlQRUNfT1JJRU5U
QVRJT05fTk9STUFMKTsKKworCQkJcmVpbml0X3BpcGUzID0gKHBoeV9kcmQtPnBpcGUzX2luaXRp
YWxpemVkICYmCisJCQkJCWlzX25vcm1hbCAhPSB3YXNfbm9ybWFsKTsKKwkJCXBoeV9kcmQtPm9y
aWVudGF0aW9uID0gb3JpZW50YXRpb247CisJCX0KKworCQlpZiAocmVpbml0X3BpcGUzKSB7CisJ
CQljb25zdCBzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5X2NvbmZpZyAqY2ZnID0KKwkJCQlwaHlf
ZHJkLT5waHlzW0VYWU5PUzVfRFJEUEhZX1BJUEUzXS5waHlfY2ZnOworCisJCQlyZXQgPSBjZmct
PnBoeV9pbml0KHBoeV9kcmQpOworCQkJaWYgKHJldCkKKwkJCQlkZXZfd2FybihwaHlfZHJkLT5k
ZXYsCisJCQkJCSAiRmFpbGVkIHRvIHJlY29uZmlndXJlIFNTIGxhbmVzOiAlZFxuIiwKKwkJCQkJ
IHJldCk7CisJCX0KKwogCQlpZiAob3JpZW50YXRpb24gPT0gVFlQRUNfT1JJRU5UQVRJT05fTk9O
RSkgewogCQkJcmVnID0gcmVhZGwocmVnc19iYXNlICsgRVhZTk9TODUwX0RSRF9VVE1JKTsKIAkJ
CXJlZyAmPSB+KFVUTUlfRk9SQ0VfVkJVU1ZBTElEIHwgVVRNSV9GT1JDRV9CVkFMSUQpOwpAQCAt
MTkwMCw4ICsxOTU3LDYgQEAgc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9vcmllbl9zd19zZXQo
c3RydWN0IHR5cGVjX3N3aXRjaF9kZXYgKnN3LAogCQkJcmVnIHw9IEhTUF9WQlVTVkxERVhUU0VM
IHwgSFNQX1ZCVVNWTERFWFQ7CiAJCQl3cml0ZWwocmVnLCByZWdzX2Jhc2UgKyBFWFlOT1M4NTBf
RFJEX0hTUCk7CiAJCX0KLQotCQlwaHlfZHJkLT5vcmllbnRhdGlvbiA9IG9yaWVudGF0aW9uOwog
CX0KIAogCWNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKHBoeV9kcmQtPmRydl9kYXRhLT5uX2Ns
a3MsIHBoeV9kcmQtPmNsa3MpOwoKLS0tCmJhc2UtY29tbWl0OiA3NDlhNGRlMzcwNDA5NDY0Y2Y4
NTAxZWM1YjI0NTFkZjQ1Yzg0ZWI0CmNoYW5nZS1pZDogMjAyNjExMTktZ3MxMDEtdXNiLXBoeS1v
cmllbnRhdGlvbi00NGNjOGYxNGYwMjAKCkJlc3QgcmVnYXJkcywKLS0gCkFuZHLDqSBEcmFzemlr
IDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
