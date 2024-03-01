Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3DEAC5478C
	for <linux-phy@archiver.kernel.org>; Fri,  1 Mar 2024 14:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Cc:Date:Message-Id:Subject:
	Mime-Version:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jGY2xAvRX4St4PWtW6IzQJbAeoHvUZuAqwqHfQKJfn0=; b=raE
	OSUERpYGlOz9IetUJTNI7EqslRkbnACUSaH4Wkbi/8mui5t/85W3yJs57eTtm92Vjxs0x78o8FfUN
	yJsneR06rIMGen67l3cS9rKpz58f4VRmS9/jNqA6rwCN7mnQ7OKNiCQt9q/jjXdRFObp8hYIV6e37
	5JHRSv2y2VEwtfwctTH+EbnyQH6qXHF1a+1HqFbN2FVivwLjuV+bjPyjvla8dy9cK3LfN6ifgOo+I
	5sod75+hzNVg2jW3Lxiigi0kQwQRJnI+oWHlpTh/T0DaIERabRfMwuZZzd916yumZdjlaulpf6rF8
	lyoh6E4g0r2mbjkcDszSUHnoZUjFUzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg44u-00000000kd7-1WmM;
	Fri, 01 Mar 2024 14:41:36 +0000
Received: from www530.your-server.de ([188.40.30.78])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg44q-00000000kaO-12Ag;
	Fri, 01 Mar 2024 14:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=geanix.com;
	s=default2211; h=To:Cc:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=LdN5qTEFtlumZuRQEi4VHY/eZtcQU0zxLhU2JW1rtWQ=; b=Z53nd8cp13KDoUb8MDu2wu0L3p
	ZHreIzI1KovhrJL5FOdTlhslLv9ItsqOnoJ2goAUQiKczxpIRBiOJ0E0wKKxP4zkpnAfng9SgYP7D
	DesdtktdS58DMSV5GIOiDXe8fFHuQFWGrlXxtXsTJh9UwcjcY5ypR9GygteBKJQWZBu6LUShnybxG
	RZVvG9aIfpCGbozljZ4065QpSPYgcSye6TvFg5O/Ovs6VY2OLWekVus2iV9wvK3PaZo2f7nZ3x5/1
	aqHZ1Y2hZ8mob3fdHVcABytT8OToh0avzTUBFuVp05A2KJuAOvhvpyZ+C/QpkzXk3nlll4xGiHc8X
	Y1ind1hQ==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www530.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sean@geanix.com>)
	id 1rg44e-00065E-Hy; Fri, 01 Mar 2024 15:41:20 +0100
Received: from [2a06:4004:10df:0:d47e:f3fd:21dc:d516] (helo=smtpclient.apple)
	by sslproxy07.your-server.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sean@geanix.com>)
	id 1rg44d-000Kce-1a;
	Fri, 01 Mar 2024 15:41:19 +0100
From: Sean Nyekjaer <sean@geanix.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.400.31\))
Subject: stm32mp1xx: use of reg11, reg18 and vdd_usb rails
Message-Id: <4807FD7F-FEB5-4460-B1EB-3E2330864C8B@geanix.com>
Date: Fri, 1 Mar 2024 15:41:08 +0100
Cc: =?utf-8?Q?Martin_Hundeb=C3=B8ll?= <martin@geanix.com>
To: vkoul@kernel.org,
 kishon@kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 lgirdwood@gmail.com,
 broonie@kernel.org,
 u.kleine-koenig@pengutronix.de,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 m.grzeschik@pengutronix.de,
 linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 marex@denx.de,
 p.paillet@st.com,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 l.goehrs@pengutronix.de,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: Apple Mail (2.3774.400.31)
X-Authenticated-Sender: sean@geanix.com
X-Virus-Scanned: Clear (ClamAV 0.103.10/27201/Fri Mar  1 10:25:20 2024)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_064132_607163_4D7B8BA1 
X-CRM114-Status: GOOD (  13.55  )
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

SGkgYWxsLAoKV2UgYXJlIHVzaW5nIHRoZSBvc2QzMm1wMSBTSVAgbW9kdWxlIFswXS4KV2UgYXJl
IHNlZWluZyBzb21lIGhhcmR3YXJlIGdldOKAmXMgZnJpZWQgaW5zaWRlIHRoZSBTSVAgbW9kdWxl
LgpJdOKAmXMgc29tZXdoYXQgdHJhY2VkIGRvd24gdG8gdGhlIHVzYiBjb250cm9sbGVyL3BoeS9y
ZWd1bGF0b3IuCgpXaXRoIHRoaXMgZGV2aWNlIHRyZWVbMV0uIFdlIGhhdmUgbm90aWNlZCBkdXJp
bmcgYm9vdCB0aGUgcmVnMTggaXMgdG9nZ2xlZCBvbiBhbmQgb2ZmCndpdGhvdXQgdmRkX3VzYiBi
ZWluZyB0dXJuZWQgb2ZmIGJlZm9yZSByZWcxOCBhcyByZXF1aXJlZCBpbiB0aGUgZGF0YSBzaGVl
dFsyXSwgc2VjdGlvbiAzLjguMToKVkREM1YzX1VTQkhTIG11c3Qgbm90IGJlIHByZXNlbnQgdW5s
ZXNzIFZEREExVjhfUkVHIGlzIHByZXNlbnQsIG90aGVyd2lzZSBwZXJtYW5lbnQgClNUTTMyTVAx
NTdDL0YgZGFtYWdlIGNvdWxkIG9jY3VyLiBNdXN0IGJlIGVuc3VyZWQgYnkgUE1JQyByYW5raW5n
IG9yZGVyIG9yIHdpdGgKZXh0ZXJuYWwgY29tcG9uZW50IGluIGNhc2Ugb2YgZGlzY3JldGUgY29t
cG9uZW50IHBvd2VyIHN1cHBseSBpbXBsZW1lbnRhdGlvbi4KCkl04oCZcyBoYXBwZW5zIGJlY2F1
c2UgdGhlIHNvbWV0aGluZyBpcyBhbHJlYWR5IHVzZXMgdGhlIHZkZF91c2IsIGl04oCZcyBib3Ro
IHRoZSBkcml2ZXJzL3BoeS9zdC9waHktc3RtMzItdXNicGh5Yy5jCmFuZCBkcml2ZXJzL3JlZ3Vs
YXRvci9zdG0zMi1wd3IuYyB0aGF0IGNvbnN1bWVzIGl0LgoKSSBjYW4gZml4IGl0IGJ5IHJlbW92
aW5nIHRoZSB2ZGRfdXNiIGZyb20gdGhlIHVzYjMzIHN1cHBseVszXToKVGhlIHN0bTMyLXB3ci5j
IGlzICh0byBtZSkgcmF0aGVyIHdlaXJkLCBhcyBpdCBleHBvc2VzIHRoZSB1c2IzMyBhcyBhIHJl
Z3VsYXRvciB3aGVuIGluIGZhY3QgaXTigJlzIGEgZGV0ZWN0aW9uIHBpbi4KSXMgdGhhdCBkb25l
IG9uIHB1cnBvc2U/CgpJIHdvdWxkIGxpa2UgaW50cm9kdWNlIGEgZXJyb3IgaW4gdGhlIHN0bTMy
LXB3ci5jIGlmIHNvbWV0aGluZyBpcyB0cnlpbmcgdG8gcG93ZXIgb2ZmIHJlZzE4IHdpdGggdXNi
MzMgcHJlc2VudD8KV291bGQgaXQgYmUgb2theSB0byByZXR1cm4gLUVCVVNZPyBPciBldmVuIC1F
U01PS0U/IDopCgpPciBpcyBpdCBiZXR0ZXIgdG8gZG8gaXQgaW4gcGh5LXN0bTMyLXVzYnBoeWMu
Y1s0XT8KCi9TZWFuCgpbMF06IGh0dHBzOi8vb2N0YXZvc3lzdGVtcy5jb20vb2N0YXZvX3Byb2R1
Y3RzL29zZDMybXAxNXgvClsxXTogaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvYXJjaC9hcm0vYm9vdC9kdHMvc3Qv
c3RtMzJtcDE1N2Mtb3NkMzJtcDEtcmVkLmR0cwpbMl06IGh0dHBzOi8vd3d3LnN0LmNvbS9yZXNv
dXJjZS9lbi9kYXRhc2hlZXQvc3RtMzJtcDE1N2MucGRmClszXToKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtL2Jvb3QvZHRzL3N0L3N0bTMybXAxNTdjLW9zZDMybXAxLXJlZC5kdHMgYi9hcmNoL2FybS9i
b290L2R0cy9zdC9zdG0zMm1wMTU3Yy1vc2QzMm1wMS1yZWQuZHRzCmluZGV4IDUyN2MzM2JlNjZj
Yy4uMGQ2NzAwNjgwNmM0IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdC9zdG0zMm1w
MTU3Yy1vc2QzMm1wMS1yZWQuZHRzCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0L3N0bTMybXAx
NTdjLW9zZDMybXAxLXJlZC5kdHMKQEAgLTE0OSw3ICsxNDksNiBAQCAmbV9jYW4xIHsKCiAmcHdy
X3JlZ3VsYXRvcnMgewogICAgICAgIHZkZC1zdXBwbHkgPSA8JnZkZD47Ci0gICAgICAgdmRkXzN2
M191c2Jmcy1zdXBwbHkgPSA8JnZkZF91c2I+OwogfTsKCiAmcnRjIHsKWzRdOgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvc3QvcGh5LXN0bTMyLXVzYnBoeWMuYyBiL2RyaXZlcnMvcGh5L3N0L3Bo
eS1zdG0zMi11c2JwaHljLmMKaW5kZXggZDVlN2U0NDAwMGI1Li41OGZjYzMwOTk4MDMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvcGh5L3N0L3BoeS1zdG0zMi11c2JwaHljLmMKKysrIGIvZHJpdmVycy9w
aHkvc3QvcGh5LXN0bTMyLXVzYnBoeWMuYwpAQCAtMTg4LDggKzE4OCwxOCBAQCBzdGF0aWMgaW50
IHN0bTMyX3VzYnBoeWNfcmVndWxhdG9yc19lbmFibGUoc3RydWN0IHN0bTMyX3VzYnBoeWMgKnVz
YnBoeWMpCgogc3RhdGljIGludCBzdG0zMl91c2JwaHljX3JlZ3VsYXRvcnNfZGlzYWJsZShzdHJ1
Y3Qgc3RtMzJfdXNicGh5YyAqdXNicGh5YykKIHsKKyAgICAgICBzdHJ1Y3Qgc3RtMzJfdXNicGh5
Y19waHkgKnVzYnBoeWNfcGh5OwogICAgICAgIGludCByZXQ7CgorICAgICAgIGZvciAocG9ydCA9
IDA7IHBvcnQgPCB1c2JwaHljLT5ucGh5czsgcG9ydCsrKSB7CisgICAgICAgICAgICAgICB1c2Jw
aHljX3BoeSA9IHVzYnBoeWMtPnBoeXNbcG9ydF07CisKKyAgICAgICAgICAgICAgIGlmKHJlZ3Vs
YXRvcl9pc19lbmFibGVkKHVzYnBoeWNfcGh5LT5waHktPnB3cikpIHsKKyAgICAgICAgICAgICAg
ICAgICAgICAgcHJfZXJyKCIlczogcGh5IGlzIHBvd2VyZWQgbm90IGFsbG93ZWQgdG8gc3dpdGNo
IG9mZiByZWd1bGF0b3JcbiIsIF9fZnVuY19fKTsKKyAgICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuIC1FQlVTWTsKKyAgICAgICAgICAgICAgIH0KKyAgICAgICB9CisKICAgICAgICByZXQgPSBy
ZWd1bGF0b3JfZGlzYWJsZSh1c2JwaHljLT52ZGRhMXY4KTsKICAgICAgICBpZiAocmV0KQogICAg
ICAgICAgICAgICAgcmV0dXJuIHJldDsKCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
