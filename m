Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F4E3C27C79
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jun 2024 16:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5aCt1SXVZPly3uC1pDECVlUJwkrnigPjnWeBNJsFpM=; b=KiZUMlIOviFMLG
	yUO3mVqj1noq+y2qvRbEpGjwjunAtyXQFa0V7AP6SopxQkxBv9UTYIlh0yeF+9WlL5OOh1TjE2Tos
	CZbmBqmqvENgNr4aFHg9W5s15JNYoYMMRcYNao6PvCLsiI+dzXT2phUA9a6aKOOZ1LFORW9MxfXu/
	RqcMOAX2bWhx9foWT16X2tIB4crbWwDCCg+nig1K0PelvqGn35GaTqGOkouBMPGRGOu53f1pX+E9U
	r9UVxmEyRpJHorzj0cq7NS9ks0gyS7p1iws+QU7Y2ZO1Z/BGZEyiK1H5zG4T+z8cw7NEWMDl0+rRQ
	/K9q818GRg/Ws0tmHVqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJFTt-0000000Bn8s-3i6Y;
	Mon, 17 Jun 2024 16:45:21 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJFTl-0000000Bn0W-1x4j
	for linux-phy@lists.infradead.org;
	Mon, 17 Jun 2024 16:45:17 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a6f09eaf420so531080566b.3
        for <linux-phy@lists.infradead.org>; Mon, 17 Jun 2024 09:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718642711; x=1719247511; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wYub/RSqb8Rt0WMbKUbwYUc1IlmByIMY38T9EwCcE9I=;
        b=r+4IhVX5QrwIlNoe+uLYcggIGGqJqT/B9tFRxqJJgLOQAmJWUNkeSfqq6DdkIf5ayZ
         OHLV431jNDhlsWkkUqxhTbRpVhEsRF5+PNKVGAxp/6XSMVCvSG7N4F23o0ynt2uoJcHA
         muqGA+wg1gDriAZRKn2ucIhKkcEbqof95VGWRQwEQH3MS/GbxJ7QsRqDI+Q1KWsah+MR
         XwtgQGq3Y0kB2EOPgY01+gL4+AI7Au65q2s61lg95JSCeRi8qrUpETCWggeH3bsiFXmZ
         NRQdQ8W4MAIgOm1ZPNKrdl1vfQQP7d664E4CWHGgGh1/mPFIfgUw6C2bHCRP+XWurWpF
         Hbow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718642711; x=1719247511;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wYub/RSqb8Rt0WMbKUbwYUc1IlmByIMY38T9EwCcE9I=;
        b=v7T0UFHYRIW4rqCI/zqPakeIouPQSl2Bi89uMSR434JItQgupXEfm6Zueole/eHBjj
         rozq7VPi4Rqrhxyfw4VzxJbDUgX5IA9GJib8ubFiAFkhdNy5Xa5F5ZdW8SkMTRHs5p1c
         0/ulcHwsh41CD6GblMVdPqBeK3etWIKQ1l+Zn7yed2TwNYhv2kwu/WTYGQTAynXwlFon
         YOyOGmB3LltTLMnr3DetlGLyedASYewCAFIdNjtwKIqYc1OCw6jUqqJpCH3P4wmWESZC
         XUaeomnTVnPFmRyEEX6cCOalRPMeLjrvQaaw2mFNKpIe6YRJvJVrjpNQ3K6zQoIypNX5
         EP2A==
X-Forwarded-Encrypted: i=1; AJvYcCV88no0abyS6qPKz04Eb7mGkBzT3FYhJLiJsqESCZHTTz5kQ/hcEABm7hSlYKqb00O5DMenQQpcpS/+ZSmqQtpY5cy0Vmv2fzTJJwL2HA==
X-Gm-Message-State: AOJu0YwOpvU4jQsAyyzsIhQcVC1hv299zjt3xGM5WiwWO+/lGsM7jgOt
	qrV8kx+Z+tCWOCJrHipOGVBLjyOp9WxmLj87M4883OLNHjP2CqBAusx1aDFzex4=
X-Google-Smtp-Source: AGHT+IHv0ukUOJDUc8BdVmzy7hmS+1oi69QOBMofoFgHRV33yO4xcJwLLTOoJRJaGOBhau06DyTjJg==
X-Received: by 2002:a17:907:6d25:b0:a6e:a97c:fc9a with SMTP id a640c23a62f3a-a6f60cef313mr888080866b.8.1718642711038;
        Mon, 17 Jun 2024 09:45:11 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f4170bsm527139966b.157.2024.06.17.09.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 09:45:10 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 17 Jun 2024 17:44:42 +0100
Subject: [PATCH v3 1/6] dt-bindings: phy: samsung,usb3-drd-phy: add gs101
 compatible
MIME-Version: 1.0
Message-Id: <20240617-usb-phy-gs101-v3-1-b66de9ae7424@linaro.org>
References: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
In-Reply-To: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_094514_005235_2D9A3411 
X-CRM114-Status: UNSURE (   9.55  )
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

QWRkIGEgZGVkaWNhdGVkIGdvb2dsZSxnczEwMS11c2IzMWRyZC1waHkgY29tcGF0aWJsZSBmb3Ig
R29vZ2xlIFRlbnNvcgpnczEwMSBTb0MuCgpJdCBuZWVkcyBhZGRpdGlvbmFsIGNsb2NrcyBlbmFi
bGVkIGZvciByZWdpc3RlciBhY2Nlc3MsIGFuZCBhZGRpdGlvbmFsCm1lbW9yeSByZWdpb25zIChQ
Q1MgJiBQTUEpIGFyZSByZXF1aXJlZCBmb3Igc3VjY2Vzc2Z1bCBjb25maWd1cmF0aW9uLgoKSXQg
YWxzbyByZXF1aXJlcyB2YXJpb3VzIHBvd2VyIHN1cHBsaWVzIChyZWd1bGF0b3JzKSBmb3IgdGhl
IGludGVybmFsCmNpcmN1aXRyeSB0byB3b3JrLiBUaGUgcmVxdWlyZWQgdm9sdGFnZXMgYXJlOgoq
IHBsbC1zdXBwbHk6IDAuODVWCiogZHZkZC11c2IyMC1zdXBwbHk6IDAuODVWICgrMTAlLCAtNyUp
CiogdmRkaC11c2IyMC1zdXBwbHk6IDEuOFYgKCsxMCUsIC03JSkKKiB2ZGQzMy11c2IyMC1zdXBw
bHk6IDMuM1YgKCsxMCUsIC03JSkKKiB2ZGRhLXVzYmRwLXN1cHBseTogMC44NVYKKiB2ZGRoLXVz
YmRwLXN1cHBseTogMS44VgoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRy
YXN6aWtAbGluYXJvLm9yZz4KCi0tLQp2MzoKKiBkcm9wIGRlc2NyaXB0aW9ucyBvZiByZWcgaXRl
bXMgKEtyenlzenRvZikKICBSYXRoZXIgdGhhbiBjb21pbmcgdXAgd2l0aCBhbm90aGVyIGRlc2Ny
aXB0aW9uIGZvciB0aGUgcmVnIGl0ZW1zLCBJCiAgb3B0ZWQgdG8gZnVsbHkgZHJvcCB0aGUgZGVz
Y3JpcHRpb25zIGZyb20gdGhlIHJlZyBpdGVtcyBhcyByZWctbmFtZXMKICBkZXNjcmliZXMgdGhl
c2UgYWxyZWFkeSB1c2luZyB0aGUgc3RhbmRhcmQsIHdlbGwta25vd24KICBhYmJyZXZpYXRpb25z
LgoqIGFkZCByZXF1aXJlZCBwb3dlciBzdXBwbGllcwp2MjogYXZvaWQgaGF2aW5nIG5lc3RlZCBl
bHNlL2lmLCBhbmQgaW5zdGVhZCBjaGFuZ2UgdGhlIGV4aXN0aW5nICdlbHNlJwogICAgdG8gZXhw
bGljaXRseSBzdGF0ZSB0aGUgcGxhdGZvcm1zIHVzaW5nICdpZicKLS0tCiAuLi4vYmluZGluZ3Mv
cGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwgICAgICAgICB8IDc3ICsrKysrKysrKysrKysr
KysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA3NSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ft
c3VuZyx1c2IzLWRyZC1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbAppbmRleCA0NTJlNTg0ZDk4MTIuLjE2MzIx
Y2RkNDkxOSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbApAQCAtMjUsNiArMjUsNyBA
QCBkZXNjcmlwdGlvbjogfAogcHJvcGVydGllczoKICAgY29tcGF0aWJsZToKICAgICBlbnVtOgor
ICAgICAgLSBnb29nbGUsZ3MxMDEtdXNiMzFkcmQtcGh5CiAgICAgICAtIHNhbXN1bmcsZXh5bm9z
NTI1MC11c2JkcmQtcGh5CiAgICAgICAtIHNhbXN1bmcsZXh5bm9zNTQyMC11c2JkcmQtcGh5CiAg
ICAgICAtIHNhbXN1bmcsZXh5bm9zNTQzMy11c2JkcmQtcGh5CkBAIC01Nyw3ICs1OCwxNSBAQCBw
cm9wZXJ0aWVzOgogICAgICAgdGhlIE9GIGdyYXBoIGJpbmRpbmdzIHNwZWNpZmllZC4KIAogICBy
ZWc6Ci0gICAgbWF4SXRlbXM6IDEKKyAgICBtaW5JdGVtczogMQorICAgIG1heEl0ZW1zOiAzCisK
KyAgcmVnLW5hbWVzOgorICAgIG1pbkl0ZW1zOiAxCisgICAgaXRlbXM6CisgICAgICAtIGNvbnN0
OiBwaHkKKyAgICAgIC0gY29uc3Q6IHBjcworICAgICAgLSBjb25zdDogcG1hCiAKICAgc2Ftc3Vu
ZyxwbXUtc3lzY29uOgogICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25z
L3BoYW5kbGUKQEAgLTcyLDYgKzgxLDE5IEBAIHByb3BlcnRpZXM6CiAgICAgZGVzY3JpcHRpb246
CiAgICAgICBWQlVTIEJvb3N0IDVWIHBvd2VyIHNvdXJjZS4KIAorICBwbGwtc3VwcGx5OgorICAg
IGRlc2NyaXB0aW9uOiBQb3dlciBzdXBwbHkgZm9yIHRoZSBVU0IgUExMLgorICBkdmRkLXVzYjIw
LXN1cHBseToKKyAgICBkZXNjcmlwdGlvbjogRFZERCBwb3dlciBzdXBwbHkgZm9yIHRoZSBVU0Ig
Mi4wIHBoeS4KKyAgdmRkaC11c2IyMC1zdXBwbHk6CisgICAgZGVzY3JpcHRpb246IFZERGggcG93
ZXIgc3VwcGx5IGZvciB0aGUgVVNCIDIuMCBwaHkuCisgIHZkZDMzLXVzYjIwLXN1cHBseToKKyAg
ICBkZXNjcmlwdGlvbjogMy4zViBwb3dlciBzdXBwbHkgZm9yIHRoZSBVU0IgMi4wIHBoeS4KKyAg
dmRkYS11c2JkcC1zdXBwbHk6CisgICAgZGVzY3JpcHRpb246IFZERGEgcG93ZXIgc3VwcGx5IGZv
ciB0aGUgVVNCIERQIHBoeS4KKyAgdmRkaC11c2JkcC1zdXBwbHk6CisgICAgZGVzY3JpcHRpb246
IFZERGggcG93ZXIgc3VwcGx5IGZvciB0aGUgVVNCIERQIHBoeS4KKwogcmVxdWlyZWQ6CiAgIC0g
Y29tcGF0aWJsZQogICAtIGNsb2NrcwpAQCAtODEsNiArMTAzLDQwIEBAIHJlcXVpcmVkOgogICAt
IHNhbXN1bmcscG11LXN5c2NvbgogCiBhbGxPZjoKKyAgLSBpZjoKKyAgICAgIHByb3BlcnRpZXM6
CisgICAgICAgIGNvbXBhdGlibGU6CisgICAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgICBj
b25zdDogZ29vZ2xlLGdzMTAxLXVzYjMxZHJkLXBoeQorICAgIHRoZW46CisgICAgICBwcm9wZXJ0
aWVzOgorICAgICAgICBjbG9ja3M6CisgICAgICAgICAgaXRlbXM6CisgICAgICAgICAgICAtIGRl
c2NyaXB0aW9uOiBHYXRlIG9mIG1haW4gUEhZIGNsb2NrCisgICAgICAgICAgICAtIGRlc2NyaXB0
aW9uOiBHYXRlIG9mIFBIWSByZWZlcmVuY2UgY2xvY2sKKyAgICAgICAgICAgIC0gZGVzY3JpcHRp
b246IEdhdGUgb2YgY29udHJvbCBpbnRlcmZhY2UgQVhJIGNsb2NrCisgICAgICAgICAgICAtIGRl
c2NyaXB0aW9uOiBHYXRlIG9mIGNvbnRyb2wgaW50ZXJmYWNlIEFQQiBjbG9jaworICAgICAgICAg
ICAgLSBkZXNjcmlwdGlvbjogR2F0ZSBvZiBTQ0wgQVBCIGNsb2NrCisgICAgICAgIGNsb2NrLW5h
bWVzOgorICAgICAgICAgIGl0ZW1zOgorICAgICAgICAgICAgLSBjb25zdDogcGh5CisgICAgICAg
ICAgICAtIGNvbnN0OiByZWYKKyAgICAgICAgICAgIC0gY29uc3Q6IGN0cmxfYWNsaworICAgICAg
ICAgICAgLSBjb25zdDogY3RybF9wY2xrCisgICAgICAgICAgICAtIGNvbnN0OiBzY2xfcGNsawor
ICAgICAgICByZWc6CisgICAgICAgICAgbWluSXRlbXM6IDMKKyAgICAgICAgcmVnLW5hbWVzOgor
ICAgICAgICAgIG1pbkl0ZW1zOiAzCisgICAgICByZXF1aXJlZDoKKyAgICAgICAgLSByZWctbmFt
ZXMKKyAgICAgICAgLSBwbGwtc3VwcGx5CisgICAgICAgIC0gZHZkZC11c2IyMC1zdXBwbHkKKyAg
ICAgICAgLSB2ZGRoLXVzYjIwLXN1cHBseQorICAgICAgICAtIHZkZDMzLXVzYjIwLXN1cHBseQor
ICAgICAgICAtIHZkZGEtdXNiZHAtc3VwcGx5CisgICAgICAgIC0gdmRkaC11c2JkcC1zdXBwbHkK
KwogICAtIGlmOgogICAgICAgcHJvcGVydGllczoKICAgICAgICAgY29tcGF0aWJsZToKQEAgLTEw
MCw3ICsxNTYsMjAgQEAgYWxsT2Y6CiAgICAgICAgICAgICAtIGNvbnN0OiBwaHlfdXRtaQogICAg
ICAgICAgICAgLSBjb25zdDogcGh5X3BpcGUKICAgICAgICAgICAgIC0gY29uc3Q6IGl0cAotICAg
IGVsc2U6CisgICAgICAgIHJlZzoKKyAgICAgICAgICBtYXhJdGVtczogMQorICAgICAgICByZWct
bmFtZXM6CisgICAgICAgICAgbWF4SXRlbXM6IDEKKworICAtIGlmOgorICAgICAgcHJvcGVydGll
czoKKyAgICAgICAgY29tcGF0aWJsZToKKyAgICAgICAgICBjb250YWluczoKKyAgICAgICAgICAg
IGVudW06CisgICAgICAgICAgICAgIC0gc2Ftc3VuZyxleHlub3M1MjUwLXVzYmRyZC1waHkKKyAg
ICAgICAgICAgICAgLSBzYW1zdW5nLGV4eW5vczU0MjAtdXNiZHJkLXBoeQorICAgICAgICAgICAg
ICAtIHNhbXN1bmcsZXh5bm9zODUwLXVzYmRyZC1waHkKKyAgICB0aGVuOgogICAgICAgcHJvcGVy
dGllczoKICAgICAgICAgY2xvY2tzOgogICAgICAgICAgIG1pbkl0ZW1zOiAyCkBAIC0xMDksNiAr
MTc4LDEwIEBAIGFsbE9mOgogICAgICAgICAgIGl0ZW1zOgogICAgICAgICAgICAgLSBjb25zdDog
cGh5CiAgICAgICAgICAgICAtIGNvbnN0OiByZWYKKyAgICAgICAgcmVnOgorICAgICAgICAgIG1h
eEl0ZW1zOiAxCisgICAgICAgIHJlZy1uYW1lczoKKyAgICAgICAgICBtYXhJdGVtczogMQogCiBh
ZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKIAoKLS0gCjIuNDUuMi42MjcuZzdhMmM0ZmQ0NjQt
Z29vZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
