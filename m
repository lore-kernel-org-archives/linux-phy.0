Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A188606A31F
	for <linux-phy@archiver.kernel.org>; Mon, 23 Nov 2026 10:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XRDUZYVk;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.a=rsa-sha256 header.s=courrier-s1 header.b=C2WNYsX2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8YVfHsu3UOGsqSL6fX5HSE8PwAIa0U14XY5Jt2MICxU=; b=XRDUZYVkN3q5NM0fwRPbJ2f0C7
	FPYxxu+eh9b+h9SMBo3/NgPXmAewWgrV8KmMxr0BVjG/2DI2r0Mf45JOawfoca9eNO1yFIHNd2F0y
	GJxFSRnnvm0OM22LUNeg7yEp5/y8fKgD6nvOzEd9CCW+T/d7YX5Ixmbg+wBIIz5vSFwB2QfzWywzu
	CY4xetqC7O8Vb7wfyBO20KIjdvIeuP2I+JKYVSvijl3HV8Kbfx0OKrteM7M4Pnz9kX/oPqD4A3BAn
	cujtKj4YEeBIt2L7Nr62c+P8Cj4B6Fhr/dFtO3OejqvXQSnBYu0LtxEUMCnQwpRwbbkQgxkV9r4+u
	wQ/o1Jug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRAr-00000002vdp-4Bcf;
	Mon, 23 Nov 2026 10:21:25 +0000
Received: from courrier.aliel.fr ([2a01:4f9:c011:1c83::1])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRAn-00000002vc2-2PRT;
	Mon, 23 Nov 2026 10:21:24 +0000
Message-ID: <54fb42e5-42cc-40d2-9e6b-de88c170484a@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1795429273;
	bh=5ugiLH8lIxJwk2DYuuNikhUFR3FPn+L3PzjLMFkEA3U=;
	h=Date:From:Subject:To:Cc:References:In-Reply-To;
	b=C2WNYsX2VUK9ubAkdBA8l0eMLilWAxyZlFEc2Qvs2xDobxtWLrufuX3r313vblNTE
	 eXjlth2bTiE2z/VpKnFsjdzX9O+zQ1LxfA3k3i4FSURIvPLl2qiLg0qZL3ces7qJ2o
	 HtKSU5feeEJZ5SFK19lakycAhR7lcjrhR43sDd8E=
Date: Mon, 23 Nov 2026 11:20:42 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
Subject: Re: [PATCH v3 02/11] dt-bindings: phy: amlogic: Add Meson HDMI TX PHY
 binding
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org,
 robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, olteanv@gmail.com,
 sashiko-reviews@lists.linux.dev
References: <20261121-meson-drm-create-hdmitx-phy-v3-0-f8f471788076@aliel.fr>
 <20261121-meson-drm-create-hdmitx-phy-v3-2-f8f471788076@aliel.fr>
 <sashiko-outbox-227302@kernel.org>
 <2d8dd4ba-26ec-4b01-8361-09e6dfcfa5ed@linaro.org>
Content-Language: en-US
In-Reply-To: <2d8dd4ba-26ec-4b01-8361-09e6dfcfa5ed@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_022122_412690_6FD849F7 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTEvMjMvMjYgMDk6MDYsIG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmcgd3JvdGU6Cj4gT24g
MTEvMjEvMjYgMjA6MjYsIHNhc2hpa28tYm90QGtlcm5lbC5vcmcgd3JvdGU6Cj4+IFRoYW5rIHlv
dSBmb3IgeW91ciBjb250cmlidXRpb24hIFNhc2hpa28gQUkgcmV2aWV3IGZvdW5kIDEgcG90ZW50
aWFsCj4+IGlzc3VlIHRvIGNvbnNpZGVyOgo+PiAtIFtMb3ddIGR0LWJpbmRpbmdzOiBwaHk6IGFt
bG9naWM6IHJlZHVuZGFudCB3b3JkIGJpbmRpbmcgaW4gY29tbWl0Cj4+IMKgwqAgc3ViamVjdAo+
PiAtLSAKPj4KPj4gY29tbWl0IGZiZDQ1NjNiNWNkMTBkYjNmNzVkYjA1MjE5N2Y4MDhlM2IzNmJj
NTUKPj4gQXV0aG9yOiBSb25hbGQgQ2xhdmVhdSA8bGludXgta2VybmVsLWRldkBhbGllbC5mcj4K
Pj4KPj4gZHQtYmluZGluZ3M6IHBoeTogYW1sb2dpYzogQWRkIE1lc29uIEhETUkgVFggUEhZIGJp
bmRpbmcKPj4KPj4gVGhpcyBjb21taXQgYWRkcyBhIERldmljZSBUcmVlIGJpbmRpbmcgc2NoZW1h
IGZvciB0aGUgSERNSSBUWCBQSFkKPj4gZm91bmQgb24KPj4gQW1sb2dpYyBNZXNvbiBHWEJCLCBH
WEwsIGFuZCBHMTJBIFNvQ3MuCj4+Cj4+PiBkdC1iaW5kaW5nczogcGh5OiBhbWxvZ2ljOiBBZGQg
TWVzb24gSERNSSBUWCBQSFkgYmluZGluZwo+Pgo+PiBbU2V2ZXJpdHk6IExvd10KPj4gVGhlIGR0
LWJpbmRpbmdzOiBwcmVmaXggYWxyZWFkeSBpbmRpY2F0ZXMgdGhhdCB0aGlzIHBhdGNoIGFkZHMg
YSBiaW5kaW5nLAo+PiBzbyByZXBlYXRpbmcgImJpbmRpbmciIGF0IHRoZSBlbmQgb2YgdGhlIHN1
YmplY3QgaXMgcmVkdW5kYW50ICgiZHQtCj4+IGJpbmRpbmdzOgo+PiBwaHk6IGFtbG9naWM6IEFk
ZCBNZXNvbiBIRE1JIFRYIFBIWSIpLgo+Pgo+IAo+IFVzZSB0aGUgImR0LWJpbmRpbmdzOiBwaHk6
IGFtbG9naWM6IGRvY3VtZW50IHRoZSBBbWxvZ2ljIE1lc29uIEhETUkgVFggUEhZIgoKVGhhbmtz
LCBJIHdpbGwgZG8gdGhhdC4KCi0tIApCZXN0IHJlZ2FyZHMsClJvbmFsZAoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
