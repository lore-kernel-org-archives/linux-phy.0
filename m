Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADCB606A31A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 10:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Bzw4+dWY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=YDHgpOe8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BqWJA5+ThDEKNXby5m7ZtXai/UjKxgeW3HmErNhA6vc=; b=Bzw4+dWYhPzOOMSfavira2CJdZ
	9t4rDDAD9PENrgwbKNG18ZgG4SuFRiVx5qKrjFdDmy2JKHFvO8iGUJaTSo8INDGbDw7NsemwmE5v9
	Ougud2ELZzFMUOaGU6vT9IjtA81jgUbbgU+ftcNtLINdn36bbQMtvfWwgqWQDUkqfsZLpg112Qci0
	IGU9b8pBMxJt1aZKB+eqG4fWCPfAsjs6vLIeCBCtWDBanWpiqk2cFFAY1lnFEwYIyrcsFGyJCP0vf
	7i3U7D+10+kXg+sWPa45UteNJ1da3WR+0g5tRBE0ku47zSqVoVW0KeGxak7jaTeQuKpXSxwBUV0eM
	4o6Bn+7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1D2-00000006nVP-2CkR;
	Wed, 28 Oct 2026 10:48:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM1D1-00000006nVH-0Zez
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 10:48:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 38AD5601FE;
	Wed, 28 Oct 2026 10:48:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E3381F01828;
	Wed, 28 Oct 2026 10:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793184521;
	bh=DdIf3sZqhdnmymiugzFF7ADDpB9PBwVzncM98300sAQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YDHgpOe8gcpBEYDbwm80oTv45jjhefAoXJKKZVu/wDMnnC7ofKdf6hMhnc19JwXBP
	 QlTaO7Q6EAaQIg3MrQORHfkTSAhkQASFJB6/cTrpeNnkcKeeKF3tNx6iPhwSnAqbKF
	 G43hRQKIqqqRVP22H1NASIseykQtbMCbHOCd7ZBfK4Hn5/IZl/Fg5yLk7Il4E31Jbw
	 uAG8YAyc42vVN4LVJYRR8NJN8O8QB5pQckGRAnPYVgD9pG0rit0Y1WYEGks6Yz5LjO
	 S0MqCMSmuLgD0vb8QZi77/q/Ss4r958jx+hr+NIt9Xd+C/tSTzpP0cr382Pk4pqf8r
	 41Vn9UdQmR9Fg==
Message-ID: <sashiko-outbox-187776@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 05/11] phy: qualcomm: qmp-combo: Add
 hardware-specific dp_aux_cfg2 and dp_phy_cfg1 fields
To: "Nabige Aala" <nabige.aala@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261028-glymur-phy-v3-v6-5-1f1d2e565a66@oss.qualcomm.com>
References: <20261028-glymur-phy-v3-v6-0-1f1d2e565a66@oss.qualcomm.com>
 <20261028-glymur-phy-v3-v6-5-1f1d2e565a66@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 10:48:41 +0000
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHBoeTogcWNvbS1xbXAt
Y29tYm86IG1pc3NpbmcgZHBfYXV4X2NmZzIgYW5kIGRwX3BoeV9jZmcxIGluIG5vcmRfdXNiM2Rw
cGh5X2NmZwotLQoKY29tbWl0IGUxODNlOTQzMTY0MWQyYTdkYjkxMzE1MTdmMjI3MjVhZTdkMGNl
OTYKQXV0aG9yOiBSaXRlc2ggS3VtYXIgPHJpdGVzaC5rdW1hckBvc3MucXVhbGNvbW0uY29tPgoK
cGh5OiBxdWFsY29tbTogcW1wLWNvbWJvOiBBZGQgaGFyZHdhcmUtc3BlY2lmaWMgZHBfYXV4X2Nm
ZzIgYW5kIGRwX3BoeV9jZmcxIGZpZWxkcwoKVGhpcyBjb21taXQgYWRkcyBkcF9hdXhfY2ZnMiBh
bmQgZHBfcGh5X2NmZzEgZmllbGRzIHRvIHN0cnVjdCBxbXBfcGh5X2NmZwphbmQgcG9wdWxhdGVz
IHRoZW0gd2l0aCBoYXJkd2FyZS12ZXJzaW9uLXNwZWNpZmljIGNvbnN0YW50cyBhY3Jvc3MgZXhp
c3RpbmcKRFAgUEhZIGNvbmZpZ3VyYXRpb25zLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1xbXAtY29tYm8uYwo+IGluZGV4IDA2MmVlNDM5NzE3MWUuLjJhNGNjNDVkNmRhYTEgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPiAr
KysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtY29tYm8uYwoKWyAuLi4gXQoK
PiBAQCAtMzQzMSw3ICszNDY1LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyBn
bHltdXJfdXNiM2RwcGh5X2NmZyA9IHsKPiAgCS5jb25maWd1cmVfZHBfdHgJPSBxbXBfdjRfY29u
ZmlndXJlX2RwX3R4LAo+ICAJLmNvbmZpZ3VyZV9kcF9jbG9ja3MJPSBxbXBfdjhfY29uZmlndXJl
X2RwX2Nsb2NrcywKPiAgCS5jb25maWd1cmVfZHBfcGh5CT0gcW1wX3Y4X2NvbmZpZ3VyZV9kcF9w
aHksCj4gLQo+ICsJLmRwX2F1eF9jZmcyCQk9IFFTRVJERVNfRFBfUEhZX0FVWF9DRkcyX1Y4LAo+
ICsJLmRwX3BoeV9jZmcxCQk9IFFTRVJERVNfRFBfUEhZX0NGRzFfVjgsCj4gIAkuZHBfbW9kZV9p
Z25vcmVfcmV2ZXJzZQk9IHRydWUsCj4gIAo+ICAJLnJlZ3MJCQk9IHFtcF92OF9uM191c2I0M2Rw
cGh5X3JlZ3NfbGF5b3V0LAoKW1NldmVyaXR5OiBIaWdoXQpTaG91bGQgbm9yZF91c2IzZHBwaHlf
Y2ZnIHJpZ2h0IGJlbG93IGdseW11cl91c2IzZHBwaHlfY2ZnIGFsc28gc2V0CmRwX2F1eF9jZmcy
IGFuZCBkcF9waHlfY2ZnMT8KCkxpa2UgdGhlIG90aGVyIFY2IGNvbmZpZ3VyYXRpb25zLCBub3Jk
X3VzYjNkcHBoeV9jZmcgdXNlcyBxbXBfdjRfY29uZmlndXJlX2RwX3BoeToKCnN0YXRpYyBjb25z
dCBzdHJ1Y3QgcW1wX3BoeV9jZmcgbm9yZF91c2IzZHBwaHlfY2ZnID0gewoJLi4uCgkuZHBfYXV4
X2luaXQJCT0gcW1wX3Y0X2RwX2F1eF9pbml0LAoJLmNvbmZpZ3VyZV9kcF90eAk9IHFtcF92NF9j
b25maWd1cmVfZHBfdHgsCgkuY29uZmlndXJlX2RwX2Nsb2Nrcwk9IHFtcF92M19jb25maWd1cmVf
ZHBfY2xvY2tzLAoJLmNvbmZpZ3VyZV9kcF9waHkJPSBxbXBfdjRfY29uZmlndXJlX2RwX3BoeSwK
CgkucmVncwkJCT0gcW1wX3Y2X3VzYjNwaHlfcmVnc19sYXlvdXQsCgkuLi4KfTsKCkluIHRoZSBz
dWJzZXF1ZW50IGNvbW1pdCAoInBoeTogcXVhbGNvbW06IHFtcC1jb21ibzogRXh0cmFjdCBjb21t
b24gRFAgUEhZCmluaXQgc2VxdWVuY2UiKSwgcW1wX3Y0X2NvbmZpZ3VyZV9kcF9waHkoKSBpcyB1
cGRhdGVkIHRvIGNhbGwKcW1wX2NvbWJvX2NvbmZpZ3VyZV9kcF9waHlfY29tbW9uKCksIHdoaWNo
IHJlamVjdHMgYSB6ZXJvIGRwX2F1eF9jZmcyIHdpdGgKLUVJTlZBTCwgYW5kICgicGh5OiBxdWFs
Y29tbTogcW1wLWNvbWJvOiBGaXggZXJyb3IgcHJvcGFnYXRpb24gaW4KcW1wX2NvbWJvX2RwX3Bv
d2VyX29uKCkiKSBwcm9wYWdhdGVzIHRoYXQgZXJyb3IgZHVyaW5nIERpc3BsYXlQb3J0IHBvd2Vy
LW9uOgoKcW1wX2NvbWJvX2RwX3Bvd2VyX29uKCkKICAtPiBxbXBfdjRfY29uZmlndXJlX2RwX3Bo
eSgpCiAgICAtPiBxbXBfY29tYm9fY29uZmlndXJlX2RwX3BoeV9jb21tb24oKQogICAgICAgICBp
ZiAoIWNmZy0+ZHBfYXV4X2NmZzIpCiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7CgpX
aXRob3V0IFFTRVJERVNfRFBfUEhZX0FVWF9DRkcyX1Y0NTYgYW5kIFFTRVJERVNfRFBfUEhZX0NG
RzFfVjQ1NiBwb3B1bGF0ZWQKaW4gbm9yZF91c2IzZHBwaHlfY2ZnLCB3aWxsIERpc3BsYXlQb3J0
IGluaXRpYWxpemF0aW9uIHVuY29uZGl0aW9uYWxseSBmYWlsCm9uIE5vcmQgcGxhdGZvcm1zPwoK
LS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8y
MDI2MTAyOC1nbHltdXItcGh5LXYzLXY2LTAtMWYxZDJlNTY1YTY2QG9zcy5xdWFsY29tbS5jb20/
cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
