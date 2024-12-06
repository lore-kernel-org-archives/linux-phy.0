Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AADDE77173
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 16:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSlKmgnd2PccFwXIMNOFSvrkSG/D4Fw38VNRvFzSfus=; b=lrepIcPRH7pfCV
	9nZqpSKyj+r3J4pIjMB3HtfOdESU5cXedAuVQIOfIgRnIyjCAgyOCa2pIpFD2v1YZjZl4/o4nvkj5
	S2MGL4BxtDDwc6wNFFEaFzZl9IPGP1WWSpf8E4nyVfy89A+UMN0cRI29+PXY2deJwhwL1j+Fx8qrl
	kphOjKlmJBsIyVMWzjeD4lLlqzi8pzs6DYz/9sTHlvBL85QmKbKl+mgm7zNDvIWnHDQv+nrOwHpy7
	40xphP1SiQ41vaO6UJfHLvSMwIAeW11lf4/k4TDyWXCBop+207McUu4FgsxLqphJdmpeVcEQ/YWVC
	81ycSGX6vNR9IRzftZow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbHR-00000002B83-45e8;
	Fri, 06 Dec 2024 16:34:13 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbEO-00000002ACx-1PO9
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 16:31:07 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5d3d74363cbso328574a12.2
        for <linux-phy@lists.infradead.org>; Fri, 06 Dec 2024 08:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733502662; x=1734107462; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VPcp32i194zjkohuP3ghdoazYclk/zwkpzXjsI6FYvY=;
        b=cJiC1N3RpzTfC+2WemAML9EZFB1y/XRY+qAyzWojTtaZ41YVLcwyZ6c8aBjNfCD2uO
         KXI6hAqrHBmIdc3fXyrPJvCcq0ue1iHaBrUgIvaUsjjhLoetJFQjxl7xRAHZG6lLGbwW
         kM7TVfajl63AxERS1cocTamFrXwXxo6ket83EC6/RRuMZIxhYuwMy0AgjTLtdqbfFg5O
         X9fuXaZT9dDPecwklBeZk3yx5Wp+w4447bcRs5TjMOoiQRFd7qvqDXsfc42wZg+/oKgf
         zlNoof3SMannJHHKCVxzST6yCf6pR04cblT/v0UEAU421xwcM8DD5tkp9xY6DajZ0OBn
         ACDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733502662; x=1734107462;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VPcp32i194zjkohuP3ghdoazYclk/zwkpzXjsI6FYvY=;
        b=EAJu2iLE9eluqCcMBK0e7lve2MDOb6jbrYm9XUfZ7YTFIdgCvwH0zFSDOBAf5Kz0AA
         UYWQu2zL1HtAWVv01+w1Zo2aogaJNHOmZvGwVQ1sXXjqSmZtVaySqYQyKyi6zVcrHC+0
         +Qbho++sqdU4QkT0IXdTXLgNTBgynjAadgtnO17dhIxpapux9J1vFi3Q7xSxffD2xb++
         4lyUf0bEgeGrEWVCiVbmOKN/UhBR7pg6Mho31o62+5cbtaA8inl9SCfaspOhfqVavmx7
         UefCSNkSSqSKmPhLsUn/U+iIMZoC8C1neaYveOEc9VgremdLldaK393y2XuUj1gfvBE9
         Z64g==
X-Forwarded-Encrypted: i=1; AJvYcCUx3MM4hL2XclUC2FN3h/uthIsg7h4qg2juBi0TjtyTnjyrV4G1xQlcNOdQcpEdlNGvqi2Bt3+E3pA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyeRHVaDH5iOiiKOZ9Ve0WizVSnjiCRaJKse/Bqp9RMbz2pj0Vs
	HpxZaIkzhkRzfWJ3hoFDiRoaVP/vVA2M/aUnCFvX1PAu7UuROR5DXpmPlTo6RJ4=
X-Gm-Gg: ASbGncunxp4O0RhxR8+gxrvNohxO7mpPJKSOPDbGx8ozb6Qz9WRyK/JHBQfN4DZUeKh
	m0Gj+sW3fgyPUMLCIgNcyBS//sVEr6+qr4hPOxxyc9jOdhmhFIUuoCevNbfgPByPvZc8d2dETez
	ye1cx9IvflO+4C/dCj4lN+ISmu3V3pu4hBUWe7qtNOVieA/slnT0JPxO7ES3k+B8S9p7seOR8cK
	+i6vs/BoG3ehH9jReb93qGI7mOdA3U0zePOErAuprYscI8E/Y51yGtSJRLTxpj4ipyao62qdKWO
	bDvp07WMFrMcJdBeEABqGDsl8iKv61GA0g==
X-Google-Smtp-Source: AGHT+IEYYMQ/h9d08asabi/0+odqzF/CyOlSqdYyLjSN9hUXcwqfK0GjZYzhh1sXE6LLkhg8iDS+AQ==
X-Received: by 2002:a17:907:9145:b0:aa5:1cdf:7c02 with SMTP id a640c23a62f3a-aa639fa52d3mr294338966b.3.1733502662183;
        Fri, 06 Dec 2024 08:31:02 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260e8af8sm257710266b.191.2024.12.06.08.31.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 08:31:01 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Dec 2024 16:31:01 +0000
Subject: [PATCH v4 1/7] dt-bindings: phy: samsung,usb3-drd-phy: add blank
 lines between DT properties
MIME-Version: 1.0
Message-Id: <20241206-gs101-phy-lanes-orientation-phy-v4-1-f5961268b149@linaro.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_083104_375384_97301DF6 
X-CRM114-Status: UNSURE (   7.02  )
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

SW4gWzFdLCBSb2IgcG9pbnRlZCBvdXQgdGhhdCB3ZSBzaG91bGQgcmVhbGx5IGJlIHNlcGFyYXRp
bmcgcHJvcGVydGllcwp3aXRoIGJsYW5rIGxpbmVzIGluIGJldHdlZW4sIHdoaWNoIGlzIHVuaXZl
cnNhbCBzdHlsZS4gT25seSB3aGVyZQpwcm9wZXJ0aWVzIGFyZSBib29sZWFucywgZW1wdHkgbGlu
ZXMgYXJlIG5vdCByZXF1aXJlZC4KCkRvIHNvLgoKTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjQwNzExMjEyMzU5LkdBMzAyMzQ5MC1yb2JoQGtlcm5lbC5vcmcvIFsxXQpSZXZp
ZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgpBY2tlZC1i
eTogUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1ieTogQW5k
csOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KCi0tLQp2MzoKKiB1cGRhdGUg
c3ViamVjdCBsaW5lIChSb2IpCiogY29sbGVjdCB0YWdzCgp2MjoKKiBjb2xsZWN0IHRhZ3MKLS0t
CiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbCAg
ICAgfCAxNSArKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1z
dW5nLHVzYjMtZHJkLXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sCmluZGV4IDE2MzIxY2RkNDkxOS4uMWY4YjM1
OTE3YjExIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sCkBAIC04MywxNCArODMsMTkg
QEAgcHJvcGVydGllczoKIAogICBwbGwtc3VwcGx5OgogICAgIGRlc2NyaXB0aW9uOiBQb3dlciBz
dXBwbHkgZm9yIHRoZSBVU0IgUExMLgorCiAgIGR2ZGQtdXNiMjAtc3VwcGx5OgogICAgIGRlc2Ny
aXB0aW9uOiBEVkREIHBvd2VyIHN1cHBseSBmb3IgdGhlIFVTQiAyLjAgcGh5LgorCiAgIHZkZGgt
dXNiMjAtc3VwcGx5OgogICAgIGRlc2NyaXB0aW9uOiBWRERoIHBvd2VyIHN1cHBseSBmb3IgdGhl
IFVTQiAyLjAgcGh5LgorCiAgIHZkZDMzLXVzYjIwLXN1cHBseToKICAgICBkZXNjcmlwdGlvbjog
My4zViBwb3dlciBzdXBwbHkgZm9yIHRoZSBVU0IgMi4wIHBoeS4KKwogICB2ZGRhLXVzYmRwLXN1
cHBseToKICAgICBkZXNjcmlwdGlvbjogVkREYSBwb3dlciBzdXBwbHkgZm9yIHRoZSBVU0IgRFAg
cGh5LgorCiAgIHZkZGgtdXNiZHAtc3VwcGx5OgogICAgIGRlc2NyaXB0aW9uOiBWRERoIHBvd2Vy
IHN1cHBseSBmb3IgdGhlIFVTQiBEUCBwaHkuCiAKQEAgLTExNyw2ICsxMjIsNyBAQCBhbGxPZjoK
ICAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IEdhdGUgb2YgY29udHJvbCBpbnRlcmZhY2UgQVhJ
IGNsb2NrCiAgICAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBHYXRlIG9mIGNvbnRyb2wgaW50ZXJm
YWNlIEFQQiBjbG9jawogICAgICAgICAgICAgLSBkZXNjcmlwdGlvbjogR2F0ZSBvZiBTQ0wgQVBC
IGNsb2NrCisKICAgICAgICAgY2xvY2stbmFtZXM6CiAgICAgICAgICAgaXRlbXM6CiAgICAgICAg
ICAgICAtIGNvbnN0OiBwaHkKQEAgLTEyNCwxMCArMTMwLDEzIEBAIGFsbE9mOgogICAgICAgICAg
ICAgLSBjb25zdDogY3RybF9hY2xrCiAgICAgICAgICAgICAtIGNvbnN0OiBjdHJsX3BjbGsKICAg
ICAgICAgICAgIC0gY29uc3Q6IHNjbF9wY2xrCisKICAgICAgICAgcmVnOgogICAgICAgICAgIG1p
bkl0ZW1zOiAzCisKICAgICAgICAgcmVnLW5hbWVzOgogICAgICAgICAgIG1pbkl0ZW1zOiAzCisK
ICAgICAgIHJlcXVpcmVkOgogICAgICAgICAtIHJlZy1uYW1lcwogICAgICAgICAtIHBsbC1zdXBw
bHkKQEAgLTE0OSw2ICsxNTgsNyBAQCBhbGxPZjoKICAgICAgICAgY2xvY2tzOgogICAgICAgICAg
IG1pbkl0ZW1zOiA1CiAgICAgICAgICAgbWF4SXRlbXM6IDUKKwogICAgICAgICBjbG9jay1uYW1l
czoKICAgICAgICAgICBpdGVtczoKICAgICAgICAgICAgIC0gY29uc3Q6IHBoeQpAQCAtMTU2LDgg
KzE2NiwxMCBAQCBhbGxPZjoKICAgICAgICAgICAgIC0gY29uc3Q6IHBoeV91dG1pCiAgICAgICAg
ICAgICAtIGNvbnN0OiBwaHlfcGlwZQogICAgICAgICAgICAgLSBjb25zdDogaXRwCisKICAgICAg
ICAgcmVnOgogICAgICAgICAgIG1heEl0ZW1zOiAxCisKICAgICAgICAgcmVnLW5hbWVzOgogICAg
ICAgICAgIG1heEl0ZW1zOiAxCiAKQEAgLTE3NCwxMiArMTg2LDE1IEBAIGFsbE9mOgogICAgICAg
ICBjbG9ja3M6CiAgICAgICAgICAgbWluSXRlbXM6IDIKICAgICAgICAgICBtYXhJdGVtczogMgor
CiAgICAgICAgIGNsb2NrLW5hbWVzOgogICAgICAgICAgIGl0ZW1zOgogICAgICAgICAgICAgLSBj
b25zdDogcGh5CiAgICAgICAgICAgICAtIGNvbnN0OiByZWYKKwogICAgICAgICByZWc6CiAgICAg
ICAgICAgbWF4SXRlbXM6IDEKKwogICAgICAgICByZWctbmFtZXM6CiAgICAgICAgICAgbWF4SXRl
bXM6IDEKIAoKLS0gCjIuNDcuMC4zMzguZzYwY2NhMTU4MTktZ29vZwoKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
