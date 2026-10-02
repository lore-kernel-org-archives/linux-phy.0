Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5AAECA5FC4
	for <linux-phy@archiver.kernel.org>; Fri,  2 Oct 2026 15:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2z9c37uRtFvIgSebW0ZQTRozYgmiC0fXrf38ATUzkDI=; b=Vk2fVQQm+Dv2Um
	2snBU3kmPHnw6LnQrqy6QQLluAa6mhd/7KbnI8BvbgAoAjFqgcmImJ4lQI7ZOlDkns6tlXlBAKYOU
	WtORmPo5iSZ+LzvInlX7KxpUO1oyqXNFir8EH0RAK07JyWJ/nknIFaaDtdS7KVTFfIVsI9imDzCVq
	hdERUoB+0AryUsZ6yFk9IWkOYCsx3h9ptXUmmJsCp36aL7lW4tnJuGUWJ078OfTRqM8BPv6oL9SQh
	vPESO425oVW6eAEwSrLFJ6l5DwPN6DUM1/zy3mXPHFQspiFeAQ+McxiREmIvjNNddD8HswlS7wcpi
	0dS6GR9SIdrABBedqUow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCesM-0000000BrkB-1J5m;
	Fri, 02 Oct 2026 15:08:42 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCesI-0000000Brh8-3QY7
	for linux-phy@lists.infradead.org;
	Fri, 02 Oct 2026 15:08:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1790953716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LD/A3nglaC31jBIMtUDrqXBiepN73OFs6DJpCa6dtO4=;
	b=Gf3pglWfrqbJTauSJEYdtySw15tpLwpmvdX4QPA8PCQTvTLYRw5O7Yt1XRqlFx8Yqi74mH
	Hb3A1Fxhsv8i0lkm/cTXBaG0bh7qs+X05+6bPkdki6E5jV8dK3w7QU33+6aIFbgO+dmzGA
	p4F+YuLSyQiCHhblyCDltkkX9/sv14Y=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-244-p0jBoi5kPX6biWzIYjgoZA-1; Fri, 02 Oct 2026 11:08:34 -0400
X-MC-Unique: p0jBoi5kPX6biWzIYjgoZA-1
X-Mimecast-MFC-AGG-ID: p0jBoi5kPX6biWzIYjgoZA_1790953714
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51c26012cd0so154314351cf.0
        for <linux-phy@lists.infradead.org>; Fri, 02 Oct 2026 08:08:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790953714; x=1791558514;
        h=content-transfer-encoding:content-type:mime-version:date:message-id
         :subject:references:in-reply-to:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LD/A3nglaC31jBIMtUDrqXBiepN73OFs6DJpCa6dtO4=;
        b=2LlKlKexjh5+s4Mr1ZURYqI3MIFYcqlPJ6Z2vd3FgHRd9CavM3BUwSwuQ59UfCC41x
         8Mc2VGAGRDi4AERk1aCiPknmkRDo/dL0M8//DFUp4xaoq8zVRMHbFWJL/PXZh/ISFkcJ
         lxOh4LleSu1sw+5REFv8+ku/ZMr3WufdaaQbPBun/IPei0gIiBULr2TNnpV1RrqeTFgY
         KsLUeuc0PBimMgBeH7hx0tyIsxGUgv5DZrUWScshEOc6OSl6bygn7z1eG0FudUkIk68y
         cx1CBQhqyaxvTftjy3m7MryQ2rLMvoA+AEaZt1YdBwvMcXQm7f79VjByHOBiadQoa1ps
         EVjg==
X-Forwarded-Encrypted: i=1; AKwUvBwdbyaDCxdkzmcGbwW8sV+0DQUdo6cfLo+tYfHT/gYXFy6hjNVzxUg6YTl4AfwSSd8qk9ksXyMXhRE=@lists.infradead.org
X-Gm-Message-State: AFuF++kgIkBzDWBX02tof4faRCZc7/JAeRBWn4QfBXQRugjA2Jyq4b0k
	n6I+AIRV+XkQd0bZ7MkYxgxcMB6jisRgEpk7sNXtrV2F7e5UwswjWslOZ9kI20FpAWN8jw7am/g
	d7agS3CN02eIMfbfWiqI+tuKr11TOAoHAb8aT1Qt9MOXlD/GS3S/Dik9VuzTt6ibRU2k=
X-Gm-Gg: AYBFou0iBA177KOfRhvlu3dvWaWKrVlhUeHKvlN8cAIKCZoYGwlDy+9gLAHGFvilaFo
	S51duf+fRFOQregCFDiWQinN7nmB4GWt7oLh6dHyuKnVR3rzbUmJiFRA9kDVapHorzqzY84j6CQ
	ZRoNhxIYlr0Tm55bRzrR7Aw1uUXCkjbNIp9SHHW3U/vtDoBcoIBnRlc+nhCWwpT8By0IGciTnIU
	R63xrDERxjwQKm/ecGsjChNU4s9ftx3NyX09PitFv+4zz+E0U+2uDefjJZ3GMMlPQiNrAAcEPOy
	eNztb6g3G8V0HbL+u+7od8nWalT2DQpuE6dHpFIK0gksGzjaq1iy4ptwGate/x6gL0aATWXuykq
	yi714rjMwnL9NiJDKvJYZdGUPAMBc5qahKP+q82MX0IeV6VFen5U=
X-Received: by 2002:a05:622a:1353:b0:533:3610:c5eb with SMTP id d75a77b69052e-533d96b6966mr49792621cf.53.1790953713826;
        Fri, 02 Oct 2026 08:08:33 -0700 (PDT)
X-Received: by 2002:a05:622a:1353:b0:533:3610:c5eb with SMTP id d75a77b69052e-533d96b6966mr49791681cf.53.1790953713259;
        Fri, 02 Oct 2026 08:08:33 -0700 (PDT)
Received: from bmasney-x1.rmtuswv.csb (c-73-183-53-213.hsd1.pa.comcast.net. [73.183.53.213])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-53398d128ccsm27596841cf.24.2026.10.02.08.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2026 08:08:32 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Russell King <linux@armlinux.org.uk>, Lee Jones <lee@kernel.org>, 
 Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 =?utf-8?q?Stefan_D=C3=B6singer?= <stefandoesinger@gmail.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, mfd@lists.linux.dev, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
References: <20260927-zx29clk-v13-0-70d8f673386c@gmail.com>
Subject: Re: (subset) [PATCH v13 00/13] ZTE zx297520v3 clock bindings and
 driver
Message-Id: <179095369547.791677.11922932020340915175.b4-ty@b4>
Date: Fri, 02 Oct 2026 11:08:15 -0400
MIME-Version: 1.0
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1464; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=LWMTx7OVyEurkrK8gxvgvVLf0aBDX7nOCsHhfPnuLAk=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGLL2n3j1sCJv/pFzhTZJnIp6XLMW1T+Zsn17zf5NPhp2l
 nuniVRzdZSyMIhxMciKKbIsyTUqiEhdZXvvjiYLzBxWJpAhDFycAjARdn2GP5ylRUdjm2eldZ5u
 XD5jQ+j9xzleR9dJh/49fXhFlVPSDB9Ght0/fk9fsCKpqrNG5anMU3n7TWp/uuXyZ0pIxLpUpGv
 P4wMA
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 6AD6ENt5kwkmJhcqXu_hHqb_NefleP9fxDhWEiGGuGU_1790953714
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_080838_953047_41A822C8 
X-CRM114-Status: UNSURE (   8.60  )
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

Ck9uIFN1biwgMjcgU2VwIDIwMjYgMjM6MTM6MjggKzAzMDAsIFN0ZWZhbiBEw7ZzaW5nZXIgd3Jv
dGU6Cj4gWlRFIHp4Mjk3NTIwdjMgY2xvY2sgYmluZGluZ3MgYW5kIGRyaXZlcgo+IAo+IEhpLAo+
IAo+IEkgYW0gc2VuZGluZyB2ZXJzaW9uIDEzIG9mIG15IHp4Mjk3NTIwdjMgY2xvY2sgcGF0Y2gu
IEl0IGFkZHJlc3NlcyByZXZpZXcKPiBjb21tZW50cyBmb3IgdGhlIE1GRCBkcml2ZXIgYnV0IGhh
cyBubyBvdGhlciBzdWJzdGFudGlhbCBjaGFuZ2VzCj4gCj4gWy4uLl0KCkFwcGxpZWQsIHRoYW5r
cyEKClswMS8xM10gZHQtYmluZGluZ3M6IGNsazogenRlOiBBZGQgengyOTc1MjB2MyB0b3AgY2xv
Y2sgYW5kIHJlc2V0IGNvbnRyb2xsZXIKICAgICAgICBjb21taXQ6IDliOWU1ZGFhZWE4ZmViY2Rm
NjdhNjU2ZTc2YjNhN2UxZDBmMjI5MGEKWzAyLzEzXSBkdC1iaW5kaW5nczogY2xrOiB6dGU6IEFk
ZCB6eDI5NzUyMHYzIG1hdHJpeCBjbG9jayBhbmQgcmVzZXQgY29udHJvbGxlcgogICAgICAgIGNv
bW1pdDogMzg0N2JjOTRkMTc0NmMxNDQ4Yzk4NDMzOGZjZmRmMTIxNmRiMDgyNwpbMDMvMTNdIGR0
LWJpbmRpbmdzOiBjbGs6IHp0ZTogQWRkIHp4Mjk3NTIwdjMgTFNQIGNsb2NrIGFuZCByZXNldCBj
b250cm9sbGVyCiAgICAgICAgY29tbWl0OiA0NTAwZTJlMzYxZWNiYTQyY2IxYWJkNmY2ODkxYTQ1
ZDk5ZjU3NzQxClswNi8xM10gY2xrOiB6dGU6IEFkZCBDbG9jayByZWdpc3RyYXRpb24gaW5mcmFz
dHJ1Y3R1cmUKICAgICAgICBjb21taXQ6IGFkNTEwN2E4OGU5OTNiNTc2YjAxNzYxYzY1NjBlMTU3
NTE5ZTBmODQKWzA3LzEzXSBjbGs6IHp0ZTogQWRkIHJlZ21hcC1iYXNlZCBjbG9ja3MKICAgICAg
ICBjb21taXQ6IDBmOTczZmZkMTAzOGUyYmNhNWFkODkyNzk0MTJhNTA4ZGY2MmY0NGYKWzA4LzEz
XSBjbGs6IHp0ZTogQWRkIHp4IFBMTCBzdXBwb3J0IGluZnJhc3RydWN0dXJlCiAgICAgICAgY29t
bWl0OiA3NzczMmU2NmNkNDdlODQ5MDMxZTRmYzg5OTljYmZmMGVjOTU4ZGViClswOS8xM10gY2xr
OiB6dGU6IEludHJvZHVjZSBhIGRyaXZlciBmb3IgengyOTc1MjB2MyB0b3AgY2xvY2tzCiAgICAg
ICAgY29tbWl0OiAzOTJhNDk1N2RiNWMyZjJjMzdiZjAxOTFkOTUzMTcxMGIzMDgwZGJmClsxMC8x
M10gY2xrOiB6dGU6IEludHJvZHVjZSBhIGRyaXZlciBmb3IgengyOTc1MjB2MyBtYXRyaXggY2xv
Y2tzCiAgICAgICAgY29tbWl0OiA0ZWEyOTlhZmZmNDJjNmEwOWViMWFlYTFkMjljNjc4YzMzNzRi
ODI0ClsxMS8xM10gY2xrOiB6dGU6IEludHJvZHVjZSBhIGRyaXZlciBmb3IgengyOTc1MjB2MyBM
U1AgY2xvY2tzCiAgICAgICAgY29tbWl0OiBmOGEzY2JmODY3OGFiODBkM2FiYTU5MThmMmY1ZTFh
Y2MxZTcyODdkCgpCZXN0IHJlZ2FyZHMsCi0tIApCcmlhbiBNYXNuZXkgPGJtYXNuZXlAcmVkaGF0
LmNvbT4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
